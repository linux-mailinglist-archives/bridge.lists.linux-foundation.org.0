Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9B021CBC8
	for <lists.bridge@lfdr.de>; Mon, 13 Jul 2020 00:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0163287C91;
	Sun, 12 Jul 2020 22:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rvsxm_FI3YBy; Sun, 12 Jul 2020 22:18:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00B0187C82;
	Sun, 12 Jul 2020 22:18:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8258C0733;
	Sun, 12 Jul 2020 22:18:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81A2EC0733
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 22:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 69FAF88CAE
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 22:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FCcd-qIGsu72 for <bridge@lists.linux-foundation.org>;
 Sun, 12 Jul 2020 22:18:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD4A1889DE
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 22:18:45 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 932AD1284AF42;
 Sun, 12 Jul 2020 15:18:44 -0700 (PDT)
Date: Sun, 12 Jul 2020 15:18:41 -0700 (PDT)
Message-Id: <20200712.151841.665763672459551082.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200711150504.885831-1-nikolay@cumulusnetworks.com>
References: <20200711150504.885831-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 12 Jul 2020 15:18:44 -0700 (PDT)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: notify on vlan tunnel
 changes done via the old api
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Sat, 11 Jul 2020 18:05:04 +0300

> If someone uses the old vlan API to configure tunnel mappings we'll only
> generate the old-style full port notification. That would be a problem
> if we are monitoring the new vlan notifications for changes. The patch
> resolves the issue by adding vlan notifications to the old tunnel netlink
> code. As usual we try to compress the notifications for as many vlans
> in a range as possible, thus a vlan tunnel change is considered able
> to enter the "current" vlan notification range if:
>  1. vlan exists
>  2. it has actually changed (curr_change == true)
>  3. it passes all standard vlan notification range checks done by
>     br_vlan_can_enter_range() such as option equality, id continuity etc
> 
> Note that vlan tunnel changes (add/del) are considered a part of vlan
> options so only RTM_NEWVLAN notification is generated with the relevant
> information inside.
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Applied, thank you.

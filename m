Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA9279520
	for <lists.bridge@lfdr.de>; Sat, 26 Sep 2020 01:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A06CA86DEB;
	Fri, 25 Sep 2020 23:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSQw2HuonEEN; Fri, 25 Sep 2020 23:50:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A60886DF2;
	Fri, 25 Sep 2020 23:50:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C698C0051;
	Fri, 25 Sep 2020 23:50:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AE1AC0051
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 23:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39D6486CD4
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 23:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3ao5KvX6JtA for <bridge@lists.linux-foundation.org>;
 Fri, 25 Sep 2020 23:50:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AD5086C93
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 23:50:38 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 751D613BA0E61;
 Fri, 25 Sep 2020 16:33:50 -0700 (PDT)
Date: Fri, 25 Sep 2020 16:50:37 -0700 (PDT)
Message-Id: <20200925.165037.78422409470029269.davem@davemloft.net>
To: razor@blackwall.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200925102549.1704905-1-razor@blackwall.org>
References: <20200925102549.1704905-1-razor@blackwall.org>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 25 Sep 2020 16:33:50 -0700 (PDT)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: mcast: remove only S,
 G port groups from sg_port hash
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

From: Nikolay Aleksandrov <razor@blackwall.org>
Date: Fri, 25 Sep 2020 13:25:49 +0300

> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> We should remove a group from the sg_port hash only if it's an S,G
> entry. This makes it correct and more symmetric with group add. Also
> since *,G groups are not added to that hash we can hide a bug.
> 
> Fixes: 085b53c8beab ("net: bridge: mcast: add sg_port rhashtable")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied, thanks.

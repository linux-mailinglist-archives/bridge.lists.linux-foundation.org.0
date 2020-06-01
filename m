Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 189871EAA30
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 20:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EA5986D7A;
	Mon,  1 Jun 2020 18:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7OqNDediwDa; Mon,  1 Jun 2020 18:09:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3116786BC4;
	Mon,  1 Jun 2020 18:09:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DAF4C0176;
	Mon,  1 Jun 2020 18:09:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59D0DC0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51AB8204EF
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJDq6MsaaZPo for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 18:09:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 84413203F7
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:09:43 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E5C5411D53F8B;
 Mon,  1 Jun 2020 11:09:41 -0700 (PDT)
Date: Mon, 01 Jun 2020 11:09:41 -0700 (PDT)
Message-Id: <20200601.110941.803066444820067254.davem@davemloft.net>
To: idosch@idosch.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200601125855.1751343-1-idosch@idosch.org>
References: <20200601125855.1751343-1-idosch@idosch.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jun 2020 11:09:42 -0700 (PDT)
Cc: mlxsw@mellanox.com, nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dlstevens@us.ibm.com, idosch@mellanox.com, allas@mellanox.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net 0/2] Fix infinite loop in bridge and vxlan
	modules
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

From: Ido Schimmel <idosch@idosch.org>
Date: Mon,  1 Jun 2020 15:58:53 +0300

> From: Ido Schimmel <idosch@mellanox.com>
> 
> When suppressing invalid IPv6 Neighbour Solicitation messages, it is
> possible for the bridge and vxlan modules to get stuck in an infinite
> loop. See the individual changelogs for detailed explanation of the
> problem and solution.
> 
> The bug was originally reported against the bridge module, but after
> auditing the code base I found that the buggy code was copied from the
> vxlan module. This patch set fixes both modules. Could not find more
> instances of the problem.
> 
> Please consider both patches for stable releases.

Series applied and queued up for -stable, thank you.

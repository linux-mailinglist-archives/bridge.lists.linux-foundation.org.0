Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 576CD27B5A5
	for <lists.bridge@lfdr.de>; Mon, 28 Sep 2020 21:48:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01CCA83AF8;
	Mon, 28 Sep 2020 19:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQbYeOu-VxRG; Mon, 28 Sep 2020 19:48:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 393BE82534;
	Mon, 28 Sep 2020 19:48:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2257FC1AD6;
	Mon, 28 Sep 2020 19:48:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5CAE5C0051
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 19:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B4CC2000E
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 19:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fYo13plOUPo for <bridge@lists.linux-foundation.org>;
 Mon, 28 Sep 2020 19:48:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 1307F2000A
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 19:48:25 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9561214530BC7;
 Mon, 28 Sep 2020 12:31:36 -0700 (PDT)
Date: Mon, 28 Sep 2020 12:48:23 -0700 (PDT)
Message-Id: <20200928.124823.1821386447234078357.davem@davemloft.net>
To: razor@blackwall.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200928153002.1697183-1-razor@blackwall.org>
References: <20200928153002.1697183-1-razor@blackwall.org>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Mon, 28 Sep 2020 12:31:36 -0700 (PDT)
Cc: bridge@lists.linux-foundation.org, netdev@vger.kernel.org, roopa@nvidia.com,
 nikolay@nvidia.com, idosch@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: fdb: don't flush ext_learn
	entries
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
Date: Mon, 28 Sep 2020 18:30:02 +0300

> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> When a user-space software manages fdb entries externally it should
> set the ext_learn flag which marks the fdb entry as externally managed
> and avoids expiring it (they're treated as static fdbs). Unfortunately
> on events where fdb entries are flushed (STP down, netlink fdb flush
> etc) these fdbs are also deleted automatically by the bridge. That in turn
> causes trouble for the managing user-space software (e.g. in MLAG setups
> we lose remote fdb entries on port flaps).
> These entries are completely externally managed so we should avoid
> automatically deleting them, the only exception are offloaded entries
> (i.e. BR_FDB_ADDED_BY_EXT_LEARN + BR_FDB_OFFLOADED). They are flushed as
> before.
> 
> Fixes: eb100e0e24a2 ("net: bridge: allow to add externally learned entries from user-space")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied and queued up for -stable, thank you.

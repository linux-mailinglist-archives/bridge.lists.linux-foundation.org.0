Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC996266A4B
	for <lists.bridge@lfdr.de>; Fri, 11 Sep 2020 23:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAE7C878CB;
	Fri, 11 Sep 2020 21:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GZVP0XDdEpTM; Fri, 11 Sep 2020 21:50:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47E3A878CA;
	Fri, 11 Sep 2020 21:50:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 328BCC089E;
	Fri, 11 Sep 2020 21:50:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C6527C0051
 for <bridge@lists.linux-foundation.org>; Fri, 11 Sep 2020 21:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A816420412
 for <bridge@lists.linux-foundation.org>; Fri, 11 Sep 2020 21:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueWkP57yr2T6 for <bridge@lists.linux-foundation.org>;
 Fri, 11 Sep 2020 21:50:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id BFD75203FB
 for <bridge@lists.linux-foundation.org>; Fri, 11 Sep 2020 21:50:28 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 457041366B446;
 Fri, 11 Sep 2020 14:33:40 -0700 (PDT)
Date: Fri, 11 Sep 2020 14:50:25 -0700 (PDT)
Message-Id: <20200911.145025.2133088801719324101.davem@davemloft.net>
To: idosch@idosch.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200911132447.3158141-1-idosch@idosch.org>
References: <20200911132447.3158141-1-idosch@idosch.org>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 11 Sep 2020 14:33:40 -0700 (PDT)
Cc: netdev@vger.kernel.org, idosch@nvidia.com,
 bridge@lists.linux-foundation.org, nikolay@nvidia.com, jiri@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, mlxsw@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] bridge: mcast: Fix incomplete MDB dump
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
Date: Fri, 11 Sep 2020 16:24:47 +0300

> From: Ido Schimmel <idosch@nvidia.com>
> 
> Each MDB entry is encoded in a nested netlink attribute called
> 'MDBA_MDB_ENTRY'. In turn, this attribute contains another nested
> attributed called 'MDBA_MDB_ENTRY_INFO', which encodes a single port
> group entry within the MDB entry.
> 
> The cited commit added the ability to restart a dump from a specific
> port group entry. However, on failure to add a port group entry to the
> dump the entire MDB entry (stored in 'nest2') is removed, resulting in
> missing port group entries.
> 
> Fix this by finalizing the MDB entry with the partial list of already
> encoded port group entries.
> 
> Fixes: 5205e919c9f0 ("net: bridge: mcast: add support for src list and filter mode dumping")
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Applied, thank you.

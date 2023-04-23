Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FABD6EBE17
	for <lists.bridge@lfdr.de>; Sun, 23 Apr 2023 10:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95E2E403F8;
	Sun, 23 Apr 2023 08:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95E2E403F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_oW-d7C_PIH; Sun, 23 Apr 2023 08:50:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3C36140B94;
	Sun, 23 Apr 2023 08:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C36140B94
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D65EBC008A;
	Sun, 23 Apr 2023 08:50:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F3F6C002A
 for <bridge@lists.linux-foundation.org>; Sun, 23 Apr 2023 08:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1D7040BCB
 for <bridge@lists.linux-foundation.org>; Sun, 23 Apr 2023 08:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1D7040BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3Fo2pXzz0G5 for <bridge@lists.linux-foundation.org>;
 Sun, 23 Apr 2023 08:50:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00BAB403F8
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00BAB403F8
 for <bridge@lists.linux-foundation.org>; Sun, 23 Apr 2023 08:50:20 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 245ED1883692;
 Sun, 23 Apr 2023 08:50:16 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 2043E25003AB;
 Sun, 23 Apr 2023 08:50:16 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 1060F9B403E2; Sun, 23 Apr 2023 08:50:16 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from fujitsu (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 94AB891201E3;
 Sun, 23 Apr 2023 08:50:15 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230418155902.898627-1-vladimir.oltean@nxp.com>
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
Date: Sun, 23 Apr 2023 10:47:15 +0200
Message-ID: <875y9nt27g.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: switchdev: don't notify
 FDB entries with "master dynamic"
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

On Tue, Apr 18, 2023 at 18:59, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index de18e9c1d7a7..ba95c4d74a60 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -148,6 +148,17 @@ br_switchdev_fdb_notify(struct net_bridge *br,
>  	if (test_bit(BR_FDB_LOCKED, &fdb->flags))
>  		return;
>  
> +	/* Entries with these flags were created using ndm_state == NUD_REACHABLE,
> +	 * ndm_flags == NTF_MASTER( | NTF_STICKY), ext_flags == 0 by something
> +	 * equivalent to 'bridge fdb add ... master dynamic (sticky)'.
> +	 * Drivers don't know how to deal with these, so don't notify them to
> +	 * avoid confusing them.
> +	 */
> +	if (test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags) &&
> +	    !test_bit(BR_FDB_STATIC, &fdb->flags) &&
> +	    !test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
> +		return;
> +

I do not understand this patch. It seems to me that it basically blocks
any future use of dynamic fdb entries from userspace towards drivers.

I would have expected that something would be done in the DSA layer,
where (switchcore) drivers would be able to set some flags to indicate
which features are supported by the driver, including non-static
fdb entries. But as the placement here is earlier in the datapath from
userspace towards drivers it's not possible to do any such thing in the
DSA layer wrt non-static fdb entries.

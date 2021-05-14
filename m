Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3BA380685
	for <lists.bridge@lfdr.de>; Fri, 14 May 2021 11:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9DD384284;
	Fri, 14 May 2021 09:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upkzr4PT0KV3; Fri, 14 May 2021 09:52:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A7B9842CD;
	Fri, 14 May 2021 09:52:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F0CAC001C;
	Fri, 14 May 2021 09:52:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE899C0001
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 09:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A88F3842CD
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 09:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXY_JxXxRaku for <bridge@lists.linux-foundation.org>;
 Fri, 14 May 2021 09:52:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B09684284
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 09:52:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 10FC23E906; Fri, 14 May 2021 11:52:27 +0200 (CEST)
Date: Fri, 14 May 2021 11:52:26 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20210514095226.GE2222@otheros>
References: <20210514073233.2564187-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514073233.2564187-1-razor@blackwall.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
Cc: bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, davem@davemloft.net,
 roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: fix
 br_multicast_is_router stub when igmp is disabled
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

On Fri, May 14, 2021 at 10:32:33AM +0300, Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> br_multicast_is_router takes two arguments when bridge IGMP is enabled
> and just one when it's disabled, fix the stub to take two as well.
> 
> Fixes: 1a3065a26807 ("net: bridge: mcast: prepare is-router function for mcast router split")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
>  net/bridge/br_private.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 53cace4d9487..28f91b111085 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1081,7 +1081,8 @@ static inline void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
>  {
>  }
>  
> -static inline bool br_multicast_is_router(struct net_bridge *br)
> +static inline bool br_multicast_is_router(struct net_bridge *br,
> +					  struct sk_buff *skb)
>  {
>  	return false;
>  }
> -- 
> 2.30.2
> 

Acked-by: Linus Lüssing <linus.luessing@c0d3.blue>

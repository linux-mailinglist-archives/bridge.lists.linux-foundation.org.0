Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 357434FE351
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:59:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC12860ECF;
	Tue, 12 Apr 2022 13:59:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j7hm55z_MmW7; Tue, 12 Apr 2022 13:59:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 452FB60EAF;
	Tue, 12 Apr 2022 13:59:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05639C0088;
	Tue, 12 Apr 2022 13:59:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADD9FC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DB6A82C1E
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wz-I0SOU6mNI for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:59:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6089812CC
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:59:36 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id r13so37563069ejd.5
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0oxRiV7Xn2OLfcaX35f0mhFMqIdT52sPuFOy5Wtxayg=;
 b=j0xDg/N5jPDnYazxjhUZrOxM/pqiLjdpsSWw1j58vOt00NshCPgnp8oCGjRVk6XR86
 kf5KjKEwooK2Z2QHr0qaPbUIup0weH3MB279FadHubQq4/nN2fq/IYDLrISMRBfNraB2
 RkyNqgFANKQEX7uvB24hvBGFmQoSUg0WaN99ne+0wkZBnh1yvceRrAJDNrHdN5K+A9Tl
 JwaR1laBRsYEIu/XXoiTWTzdeR6P6moeqniWQOvZe0xS8kO05tADOiYObhJyHq3ZHjNf
 2V8AilUXumKAkb/QCkxdFxDdLpbBjXKSinsHAm6vg2UVGaT/IVQW171/nAO7dG4HHlL/
 OlwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0oxRiV7Xn2OLfcaX35f0mhFMqIdT52sPuFOy5Wtxayg=;
 b=Bkgf5QdDBh6kw0+B2e98YV52Zpk5vyKPWFPKsvXZFPLg6BmCeP6qmFUSCQgXeRGCsL
 bJXzIn3NV8c/SR4Md/7ici0z2y08N+OeDMaQ01gGqOd4AC6mW0vFNJI8oJaSZ/EHVz4B
 HFwkQioDn221LzBpmQP/TwewILKUUff6nIgmdQoZ7SOEp+D58VV/2RpHo9huqHhrnzu4
 SbXJeX8tyymHChWQDKxDGUHITqJBinXyB0tOMxHRjZp3RT5Syz7IPemMkJ5a9QbPO2fu
 XSSb5iM1F85QJzrW/1MKWYBE7rgwc1VdbrSNYha9PK+/BIw9z5iJ4UX/zOrS2kVY6um0
 JtnQ==
X-Gm-Message-State: AOAM532nj3/PFiNR03Pq1NnCC91BpalbJgA/9sVsKl6gL6EF2NOo82Lp
 5T9eVzLktH9BiQKpGwqJ99lkdQ==
X-Google-Smtp-Source: ABdhPJwZTPu50LzeTguTLdfwFmqnXO2fqq1Q/aKCshQcVxo01cgRD23S0faffFKTbNqoCv3Q5PXVMw==
X-Received: by 2002:a17:907:7209:b0:6da:9781:ae5d with SMTP id
 dr9-20020a170907720900b006da9781ae5dmr33150269ejc.73.1649771974943; 
 Tue, 12 Apr 2022 06:59:34 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 gq5-20020a170906e24500b006e87644f2f7sm3887789ejb.38.2022.04.12.06.59.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 06:59:34 -0700 (PDT)
Message-ID: <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
Date: Tue, 12 Apr 2022 16:59:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220411133837.318876-9-troglobit@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 08/13] net: bridge: avoid
 classifying unknown multicast as mrouters_only
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

On 11/04/2022 16:38, Joachim Wiberg wrote:
> Unknown multicast, MAC/IPv4/IPv6, should always be flooded according to
> the per-port mcast_flood setting, as well as to detected and configured
> mcast_router ports.
> 
> This patch drops the mrouters_only classifier of unknown IP multicast
> and moves the flow handling from br_multicast_flood() to br_flood().
> This in turn means br_flood() must know about multicast router ports.
> 
> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
> ---
>  net/bridge/br_forward.c   | 11 +++++++++++
>  net/bridge/br_multicast.c |  6 +-----
>  2 files changed, 12 insertions(+), 5 deletions(-)
> 

If you'd like to flood unknown mcast traffic when a router is present please add
a new option which defaults to the current state (disabled).

> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
> index 02bb620d3b8d..ab5b97a8c12e 100644
> --- a/net/bridge/br_forward.c
> +++ b/net/bridge/br_forward.c
> @@ -199,9 +199,15 @@ static struct net_bridge_port *maybe_deliver(
>  void br_flood(struct net_bridge *br, struct sk_buff *skb,
>  	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig)
>  {
> +	struct net_bridge_mcast *brmctx = &br->multicast_ctx;

Note this breaks per-vlan mcast. You have to use the inferred mctx.

> +	struct net_bridge_port *rport = NULL;
>  	struct net_bridge_port *prev = NULL;
> +	struct hlist_node *rp = NULL;
>  	struct net_bridge_port *p;
>  
> +	if (pkt_type == BR_PKT_MULTICAST)
> +		rp = br_multicast_get_first_rport_node(brmctx, skb);
> +
>  	list_for_each_entry_rcu(p, &br->port_list, list) {
>  		/* Do not flood unicast traffic to ports that turn it off, nor
>  		 * other traffic if flood off, except for traffic we originate
> @@ -212,6 +218,11 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
>  				continue;
>  			break;
>  		case BR_PKT_MULTICAST:
> +			rport = br_multicast_rport_from_node_skb(rp, skb);
> +			if (rport == p) {
> +				rp = rcu_dereference(hlist_next_rcu(rp));
> +				break;
> +			}
>  			if (!(p->flags & BR_MCAST_FLOOD) && skb->dev != br->dev)
>  				continue;
>  			break;
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index db4f2641d1cd..c57e3bbb00ad 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -3643,9 +3643,7 @@ static int br_multicast_ipv4_rcv(struct net_bridge_mcast *brmctx,
>  	err = ip_mc_check_igmp(skb);
>  
>  	if (err == -ENOMSG) {
> -		if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr)) {
> -			BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
> -		} else if (pim_ipv4_all_pim_routers(ip_hdr(skb)->daddr)) {
> +		if (pim_ipv4_all_pim_routers(ip_hdr(skb)->daddr)) {
>  			if (ip_hdr(skb)->protocol == IPPROTO_PIM)
>  				br_multicast_pim(brmctx, pmctx, skb);
>  		} else if (ipv4_is_all_snoopers(ip_hdr(skb)->daddr)) {
> @@ -3712,8 +3710,6 @@ static int br_multicast_ipv6_rcv(struct net_bridge_mcast *brmctx,
>  	err = ipv6_mc_check_mld(skb);
>  
>  	if (err == -ENOMSG || err == -ENODATA) {
> -		if (!ipv6_addr_is_ll_all_nodes(&ipv6_hdr(skb)->daddr))
> -			BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
>  		if (err == -ENODATA &&
>  		    ipv6_addr_is_all_snoopers(&ipv6_hdr(skb)->daddr))
>  			br_ip6_multicast_mrd_rcv(brmctx, pmctx, skb);


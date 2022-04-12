Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A04FE7EE
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 20:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A75C983F90;
	Tue, 12 Apr 2022 18:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6mi2dffKR-0; Tue, 12 Apr 2022 18:27:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 30FE583F94;
	Tue, 12 Apr 2022 18:27:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ECEE5C0088;
	Tue, 12 Apr 2022 18:27:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71009C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4797E610B9
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iYV4-dGNv_DT for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 18:27:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77D4D60FAA
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:27:12 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id k23so38991666ejd.3
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 11:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=J21PHEN7ZRAhcQmfolizIm1UZz66Yv5HSRs/omXTjN4=;
 b=ai8AgLXzydofSQZYGhVg7c3L0xJtwlCQ/he+hWR563VgxfEm1WR0HZH33PaD9aOrtv
 T7DsGo8mSqIxdWBy9yJpH8UqK02zv5pHUno7fE7yp28p2Waa0EHhcSIAWx6zrAORViMP
 Av+SUe2Va+KR3vHLBeNWuBMDlGPKPXOTq3VwRaxhdZ043ysEqbkKdbrLVdoBKxTmjmHI
 QIXA4EhqDqaNU72tLcvFLH2/kYpSRxq7hvu3PnsLEa3BeEma9GK4Hjkq1qXg1VYeCZNv
 evWVPSvqkTLrlLlgL0Sr1X0GsqF7hr0leUiwt4uc+65orFj6SksEc4Zz+gpWJz1CqhyZ
 NzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=J21PHEN7ZRAhcQmfolizIm1UZz66Yv5HSRs/omXTjN4=;
 b=WcW1ADUQIlJ0LSbEhNqBG8KGnhwqx4uR5voe6QhBLRgGZpfYgYRWvVFP6vQU06O9bD
 QZEUZLv/ReH5Gy6KDZ4dfdJICX7uMvE6nxuIvQmRrCff2zo/dAtzte660+iaBxJDRS6i
 hPIBRek1G5FX2UZdmTj7NDutLZd7e7bxZdn6vEjFsGEYd0bLQ8KzZJrVAfUlV7mX2aWV
 0wZ3ApiIaWbXZ+rrhpdVPgn43sL7VnkVC2MLDrurkyrCkHLYl0uSzhKcXlhiAIN1VirK
 o0kvd0K2MyIvs84z3Qfwvi3txQuR8l7eDHgZ+2z00SjaukzN8XGjyyNbfSyHm5W9mK2N
 gbXA==
X-Gm-Message-State: AOAM532S8H8zdmc6QXiPDQKjJLlagf093+7StQ9oM6546f5d/O2AFfTl
 N4ZzQusIUx8ELCL/7sVV5RhIvw==
X-Google-Smtp-Source: ABdhPJxwxFwX2iQZaaU5kN48pPo1VZcaBojtGCWpHMds4VBe5NySbatRDe9kMehvAkCg1RcU2j3IOg==
X-Received: by 2002:a17:907:7242:b0:6da:b561:d523 with SMTP id
 ds2-20020a170907724200b006dab561d523mr34414251ejc.118.1649788030496; 
 Tue, 12 Apr 2022 11:27:10 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 j4-20020a509d44000000b0041cdc7ffda4sm105406edk.59.2022.04.12.11.27.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 11:27:10 -0700 (PDT)
Message-ID: <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
Date: Tue, 12 Apr 2022 21:27:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-2-troglobit@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220411133837.318876-2-troglobit@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 01/13] net: bridge: add control of
 bum flooding to bridge itself
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
> The bridge itself is also a port, but unfortunately it does not (yet)
> have a 'struct net_bridge_port'.  However, in many cases we want to
> treat it as a proper port so concessions have been made, e.g., NULL
> port or host_joined attributes.
> 
> This patch is an attempt to more of the same by adding support for
> controlling flooding of unknown broadcast/unicast/multicast to the
> bridge.  Something we often also want to control in an offloaded
> switching fabric.
> 
> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
> ---
>  net/bridge/br_device.c  |  4 ++++
>  net/bridge/br_input.c   | 11 ++++++++---
>  net/bridge/br_private.h |  3 +++
>  3 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 8d6bab244c4a..0aa7d21ac82c 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -526,6 +526,10 @@ void br_dev_setup(struct net_device *dev)
>  	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
>  	dev->max_mtu = ETH_MAX_MTU;
>  
> +	br_opt_toggle(br, BROPT_UNICAST_FLOOD, 1);

This one must be false by default. It changes current default behaviour.
Unknown unicast is not currently passed up to the bridge if the port is
not in promisc mode, this will change it. You'll have to make it consistent
with promisc (e.g. one way would be for promisc always to enable unicast flood
and it won't be possible to be disabled while promisc).

> +	br_opt_toggle(br, BROPT_MCAST_FLOOD, 1);
> +	br_opt_toggle(br, BROPT_BCAST_FLOOD, 1);

s/1/true/ for consistency

> +
>  	br_netfilter_rtable_init(br);
>  	br_stp_timer_init(br);
>  	br_multicast_init(br);
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 196417859c4a..d439b876bdf5 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -118,7 +118,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  		/* by definition the broadcast is also a multicast address */
>  		if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
>  			pkt_type = BR_PKT_BROADCAST;
> -			local_rcv = true;
> +			if (br_opt_get(br, BROPT_BCAST_FLOOD))
> +				local_rcv = true;
>  		} else {
>  			pkt_type = BR_PKT_MULTICAST;
>  			if (br_multicast_rcv(&brmctx, &pmctx, vlan, skb, vid))
> @@ -161,12 +162,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  			}
>  			mcast_hit = true;
>  		} else {
> -			local_rcv = true;
> -			br->dev->stats.multicast++;
> +			if (br_opt_get(br, BROPT_MCAST_FLOOD)) {
> +				local_rcv = true;
> +				br->dev->stats.multicast++;
> +			}
>  		}
>  		break;
>  	case BR_PKT_UNICAST:
>  		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
> +		if (!dst && br_opt_get(br, BROPT_UNICAST_FLOOD))
> +			local_rcv = true;
>  		break;

This adds new tests for all fast paths for host traffic,
especially the port - port communication which is the most critical one.
Please at least move the unicast test to the "else" block of "if (dst)" later.

The other tests can be moved to host only code too, but would require bigger changes.
Please try to keep the impact on the fast-path at minimum.

>  	default:
>  		break;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 18ccc3d5d296..683bd0ee4c64 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -449,6 +449,9 @@ enum net_bridge_opts {
>  	BROPT_VLAN_BRIDGE_BINDING,
>  	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
>  	BROPT_MST_ENABLED,
> +	BROPT_UNICAST_FLOOD,
> +	BROPT_MCAST_FLOOD,
> +	BROPT_BCAST_FLOOD,
>  };
>  
>  struct net_bridge {


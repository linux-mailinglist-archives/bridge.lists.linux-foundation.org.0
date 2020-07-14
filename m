Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27421F23A
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A9A82EB61;
	Tue, 14 Jul 2020 13:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RuqwedbmI8hf; Tue, 14 Jul 2020 13:15:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3845121517;
	Tue, 14 Jul 2020 13:15:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D54FC0733;
	Tue, 14 Jul 2020 13:15:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9B9CC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B26798A287
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3x4h5-UDyZL for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:15:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D861D8A284
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:15:50 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id s10so21472558wrw.12
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=FxJqrHhg0G0ncHUrHEuIRffmrZYQGuHLCnGks1j1bQM=;
 b=TqSa14w7dWnNYezldSLiuWoHhgo2zcjASexkPXEh+2iGpB2nAcR54Vdz6cuj8Oz9B0
 atzp+jjuGO56jmDKvCcRCNrZPIRHALoy+bV3oqGvUCCyB/SO9HPvF1qSUL8iyjwiM2ZN
 r950qHEUsa//TUKVU5SBVVDe1V/hqHRyghU+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FxJqrHhg0G0ncHUrHEuIRffmrZYQGuHLCnGks1j1bQM=;
 b=UD9iG/iKxo5Tgi0w3DQnR1sOPjq7EXAAVRs8ftPENxpv5kZO+VjG/g5jwKjFd2nsLU
 Hvv3AY71IwRceBYbD9TAkdCOEsmF79Ro3nBjNWTXXRvH8UbzBJTJHF55686ExQ4EcJMZ
 0zlUMeA2z1eZm0dIXNftN4sbsZrhsB4zmbjJzgRV+nfJ0ekWKLVLEujQIb6+PJo6J1Tr
 2VeP+qo7d83KyZIUaeUVZeo1D2yXBKqAEgYX9qpVXEODZKn9FrJBT6nMu2JtMaXEwqA9
 KkmHRjYOanUljW2uJL4ZlAylPTBakEQtTc5A/LaaaZkiur6wZlui+cz9B/CkJo9sFA+5
 xmug==
X-Gm-Message-State: AOAM530dM5bbk/rs9DXde5B3yS2nBIeXJa1VleO6KtmyniZXxj0r/UWr
 AgdrbVafHkbUC19Wp8cHEpj8LuU4n6MIyQ==
X-Google-Smtp-Source: ABdhPJxAejX7e0cIDmVXbcaejKJR9o77DDTzyzXJOg3PPlA6j89HyUpCZ2ISzb4W6Wh0uyKIKLY8xw==
X-Received: by 2002:a5d:62d1:: with SMTP id o17mr5291848wrv.162.1594732548828; 
 Tue, 14 Jul 2020 06:15:48 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e17sm27788229wrr.88.2020.07.14.06.15.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:15:48 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-6-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <622d77e3-6ea0-9a5e-2745-4231dd40b1e8@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:15:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-6-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 05/12] bridge: mrp: Rename
 br_mrp_port_open to br_mrp_ring_port_open
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> This patch renames the function br_mrp_port_open to
> br_mrp_ring_port_open. In this way is more clear that a ring port lost
> the continuity because there will be also a br_mrp_in_port_open.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c         | 6 +++---
>  net/bridge/br_mrp_netlink.c | 2 +-
>  net/bridge/br_private_mrp.h | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index 90592af9db619..fe7cf1446b58a 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -213,7 +213,7 @@ static void br_mrp_test_work_expired(struct work_struct *work)
>  		}
>  
>  		if (notify_open && !mrp->ring_role_offloaded)
> -			br_mrp_port_open(p->dev, true);
> +			br_mrp_ring_port_open(p->dev, true);
>  	}
>  
>  	p = rcu_dereference(mrp->s_port);
> @@ -229,7 +229,7 @@ static void br_mrp_test_work_expired(struct work_struct *work)
>  		}
>  
>  		if (notify_open && !mrp->ring_role_offloaded)
> -			br_mrp_port_open(p->dev, true);
> +			br_mrp_ring_port_open(p->dev, true);
>  	}
>  
>  out:
> @@ -537,7 +537,7 @@ static void br_mrp_mrm_process(struct br_mrp *mrp, struct net_bridge_port *port,
>  	 * not closed
>  	 */
>  	if (mrp->ring_state != BR_MRP_RING_STATE_CLOSED)
> -		br_mrp_port_open(port->dev, false);
> +		br_mrp_ring_port_open(port->dev, false);
>  }
>  
>  /* Determin if the test hdr has a better priority than the node */
> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index c4f5c356811f3..acce300c0cc29 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -368,7 +368,7 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
>  	return -EMSGSIZE;
>  }
>  
> -int br_mrp_port_open(struct net_device *dev, u8 loc)
> +int br_mrp_ring_port_open(struct net_device *dev, u8 loc)
>  {
>  	struct net_bridge_port *p;
>  	int err = 0;
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index 8841ba847fb29..e93c8f9d4df58 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -74,6 +74,6 @@ int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
>  				   enum br_mrp_port_role_type role);
>  
>  /* br_mrp_netlink.c  */
> -int br_mrp_port_open(struct net_device *dev, u8 loc);
> +int br_mrp_ring_port_open(struct net_device *dev, u8 loc);
>  
>  #endif /* _BR_PRIVATE_MRP_H */
> 


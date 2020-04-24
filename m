Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4A1B76A2
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 15:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AB5E87E5F;
	Fri, 24 Apr 2020 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAuvMHlMGniY; Fri, 24 Apr 2020 13:12:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BEAC87E91;
	Fri, 24 Apr 2020 13:12:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F1BFC0175;
	Fri, 24 Apr 2020 13:12:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EBE94C0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CC87E203DC
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCb1b0spLs0t for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 13:12:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C46282039A
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:04 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id l19so9861526lje.10
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 06:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9BcUMuWu+VNLqROvvMiYmkUjwNZj8mEI6zOXCjGTZxo=;
 b=PWNcKVYqHTwiMFgcLh7n20tJrrsK/zpNBWaw3Rp0qZdPq2BLfukmh0GIkMVeAuctcY
 Xf9shxjyJXpfiY73Myty+VBxZpg1XpMip0sdhaHc2N+y+1gc7bW53Ua8/P0TFX3RAoAn
 /c6jPNWF57LlMgvDF93pNokpLg5oR44Nsw8eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9BcUMuWu+VNLqROvvMiYmkUjwNZj8mEI6zOXCjGTZxo=;
 b=oZUb0P0qvAP6ETUlW/LYAIjDKkahvhstFSYnCjDWou9cuHn5PhjlJgFYjpmeV9sqqo
 zhzYocssT0pKMZhxBzkh1wcxfrDAN0s5tJIZBrRD2s6kdULhe9aN9dG5rq4A9F4lm8aG
 uKitvcwIvGJkOAdQgP4IBFVuSetSCTeQ2Zr/Ci4uRUVXfGSZb12XqOnuGBZ4JB09wUA0
 F4LsfjgtrsZV3n+DNjO2BJGKzTcS6o0wQTQiGAvM7ElFBCXQFfy2M1MQB6fGNN4n4Y40
 t3Q/10pIaT7jNbrbTTznWI3XNFKBrHBuEHUD/CS03xWif3BbHpJYRQ2jidnNmL4qHK8S
 +HSA==
X-Gm-Message-State: AGi0PuZ6XWaKMDrsHSS9mawNKaihFLE3lWFFt5MEExyXaU8zVgfVkY58
 LYQrWy54w75v1Vs1JorMErROO0vTQIS9+Q==
X-Google-Smtp-Source: APiQypJfAx+GKKpCQ20WxRaIJTCoQVCKp2g4ouW9mDRPf9ldLGQXwuqlakEeYzLPzXQTTAe3hVNd2g==
X-Received: by 2002:a05:651c:326:: with SMTP id
 b6mr4651717ljp.259.1587733922298; 
 Fri, 24 Apr 2020 06:12:02 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id p13sm4135969ljg.103.2020.04.24.06.12.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 06:12:01 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
 <20200422161833.1123-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <620390de-6f5a-d3a8-e48c-42089355eefa@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 16:11:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422161833.1123-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 03/11] bridge: mrp: Extend bridge
	interface
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

On 22/04/2020 19:18, Horatiu Vultur wrote:
> To integrate MRP into the bridge, first the bridge needs to be aware of ports
> that are part of an MRP ring and which rings are on the bridge.
> Therefore extend bridge interface with the following:
> - add new flag(BR_MPP_AWARE) to the net bridge ports, this bit will be
>   set when the port is added to an MRP instance. In this way it knows if
>   the frame was received on MRP ring port
> - add new flag(BR_MRP_LOST_CONT) to the net bridge ports, this bit will be set
>   when the port lost the continuity of MRP Test frames.
> - add a list of MRP instances
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/linux/if_bridge.h | 2 ++
>  net/bridge/br_private.h   | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 9e57c4411734..b3a8d3054af0 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -47,6 +47,8 @@ struct br_ip_list {
>  #define BR_BCAST_FLOOD		BIT(14)
>  #define BR_NEIGH_SUPPRESS	BIT(15)
>  #define BR_ISOLATED		BIT(16)
> +#define BR_MRP_AWARE		BIT(17)
> +#define BR_MRP_LOST_CONT	BIT(18)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 1f97703a52ff..835a70f8d3ea 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -428,6 +428,10 @@ struct net_bridge {
>  	int offload_fwd_mark;
>  #endif
>  	struct hlist_head		fdb_list;
> +
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +	struct list_head		__rcu mrp_list;
> +#endif
>  };
>  
>  struct br_input_skb_cb {
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


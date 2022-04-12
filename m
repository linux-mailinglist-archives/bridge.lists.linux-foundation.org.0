Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2E84FE81A
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 20:36:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83EB44172F;
	Tue, 12 Apr 2022 18:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-ifL8iKRnlH; Tue, 12 Apr 2022 18:36:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A55B641737;
	Tue, 12 Apr 2022 18:36:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6874EC0088;
	Tue, 12 Apr 2022 18:36:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7F0F9C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54AE641737
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZsm6nxAIZEs for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 18:36:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62AAB4172F
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 18:36:37 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id u18so12744352eda.3
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 11:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Qzn148We9XavLCPnkjKAVkx4J24baZYNxkMK7Z/8yLA=;
 b=6zcvRk4t6zjIi9VUqhYdQe5+Y/t3BN+bwbv90esoK9EZDsSs6uD08xfUsY5UgyewXR
 c2roVuOjy6N2Mi1WzTgSTN80CWaQKrdCwAuGud5odlmrPqbDKs4wTuuorWJSNJJ75h5l
 kplFvdJdLES5TaVpqwOJKtG0YD1lbIgtg9j7dGBplZZdnesop0BhKVkBC0URr9GqoqvI
 ZAJSKtRXAFAINt/zKBta4T2sBoc4MAi1BaYEdTrXrzuc90f8HdFwRxKNCE/Y4jAYtyc7
 YGuzMfU+Q6Q+ML8z8vzSstV3dyqe76Wl1ABDb5DHolRI9g3lU+S25RmzBYMbE7G/mr51
 gGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Qzn148We9XavLCPnkjKAVkx4J24baZYNxkMK7Z/8yLA=;
 b=090+f1ahXz3XX5mLD+P5aTrGd+wkMcj1QtLp+qGGtlI64g4t5qlojM1Mum5g8J3YCO
 8KOBjdhljtlk2+eGhMX5DBWDo8wnazozU5zfBLxLWcl9Nb84u61DbR0ZxmJPEHU77D1x
 +iRRmNhUEQSXUQHSxxXfYgAIU1g75oTETVORuDAwrttWlW369tZYsAN0q1EfIRWMUqJP
 pabiC6Csp/Pko+pPb+940YtqRN3gPimGww1n+J8pMjywWF9t5cPtIJqQeJ23N16tN2Cc
 MBneirFjB4guZSM03n4HBeHNLf2GqhLgkm0ndR7kY+W34NJnqSQJGFLVneCW2oD6zVcR
 RflA==
X-Gm-Message-State: AOAM530PkvbKEl1PK1Ds7amUHfRlDV23GklplsGL5/Oy/0hDiqLAPcNd
 evqVkLgp4B5NtGS6BNVyjDMotg==
X-Google-Smtp-Source: ABdhPJzLImArn19hcTzskeUAA6UBsS/8tRIgHLMti+GKp8gVts2J0FivZnrdVJ/Nvf1D+H85sMvGlw==
X-Received: by 2002:a05:6402:5cf:b0:41d:7aa7:152a with SMTP id
 n15-20020a05640205cf00b0041d7aa7152amr12703378edx.68.1649788595591; 
 Tue, 12 Apr 2022 11:36:35 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 m3-20020a17090679c300b006cf9ce53354sm13411208ejo.190.2022.04.12.11.36.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 11:36:35 -0700 (PDT)
Message-ID: <76490693-ea6d-7174-0546-b9361ab5088c@blackwall.org>
Date: Tue, 12 Apr 2022 21:36:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-4-troglobit@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220411133837.318876-4-troglobit@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 03/13] net: bridge: minor refactor
 of br_setlink() for readability
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
> The br_setlink() function extracts the struct net_bridge pointer a bit
> sloppy.  It's easy to interpret the code wrong.  This patch attempts to
> clear things up a bit.
> 
> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
> ---
>  net/bridge/br_netlink.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

I think you can make it more straight-forward, remove the first br = netdev_priv
and do something like (completely untested):
...
struct net_bridge_port *p = NULL;
...
if (netif_is_bridge_master(dev)) {
 br = netdev_priv(dev);
} else {
 p = br_port_get_rtnl(dev);
 if (WARN_ON(!p))
	return -EINVAL;
 br = p->br;
}

So br is always and only set in this block.

> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 7fca8ff13ec7..8f4297287b32 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1040,6 +1040,8 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
>  		return 0;
>  
>  	p = br_port_get_rtnl(dev);
> +	if (p)
> +		br = p->br;
>  	/* We want to accept dev as bridge itself if the AF_SPEC
>  	 * is set to see if someone is setting vlan info on the bridge
>  	 */
> @@ -1055,17 +1057,17 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
>  			if (err)
>  				return err;
>  
> -			spin_lock_bh(&p->br->lock);
> +			spin_lock_bh(&br->lock);
>  			err = br_setport(p, tb, extack);
> -			spin_unlock_bh(&p->br->lock);
> +			spin_unlock_bh(&br->lock);
>  		} else {
>  			/* Binary compatibility with old RSTP */
>  			if (nla_len(protinfo) < sizeof(u8))
>  				return -EINVAL;
>  
> -			spin_lock_bh(&p->br->lock);
> +			spin_lock_bh(&br->lock);
>  			err = br_set_port_state(p, nla_get_u8(protinfo));
> -			spin_unlock_bh(&p->br->lock);
> +			spin_unlock_bh(&br->lock);
>  		}
>  		if (err)
>  			goto out;


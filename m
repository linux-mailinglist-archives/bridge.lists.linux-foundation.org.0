Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FDD4F84B5
	for <lists.bridge@lfdr.de>; Thu,  7 Apr 2022 18:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 257876128C;
	Thu,  7 Apr 2022 16:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQtBxaAK11Lr; Thu,  7 Apr 2022 16:16:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A83256128E;
	Thu,  7 Apr 2022 16:16:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69FB8C0082;
	Thu,  7 Apr 2022 16:16:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81A90C0012
 for <bridge@lists.linux-foundation.org>; Thu,  7 Apr 2022 16:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6925B40C93
 for <bridge@lists.linux-foundation.org>; Thu,  7 Apr 2022 16:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6uM5nVdSWUAJ for <bridge@lists.linux-foundation.org>;
 Thu,  7 Apr 2022 16:16:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89009400FF
 for <bridge@lists.linux-foundation.org>; Thu,  7 Apr 2022 16:16:44 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 i10-20020a17090a2aca00b001ca56c9ab16so6452746pjg.1
 for <bridge@lists.linux-foundation.org>; Thu, 07 Apr 2022 09:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0yrxVL6xhRd/sdLuiSvmYyX87dqeoDckLZbdQPLqkd8=;
 b=YLx0Q8tKCRfI/UO7dFeN4/R+v2Tp/kB7N0smu8bt0DssonIDnzvxDIV3O/s6WLCWXE
 3kTeeulbNvJlxV3Hg4JnQ+PMORipZXgsjNNadhhPEV6d3knnxD9SGQmifnJeoP8zQ2nH
 NdFlpJaW8O7LnVgJoge/9/DWjfQqmOcrWZBwMAaVlgC86NdG6jzHA7v1OoEUVRnOxhwE
 kbKllme/FsqhEIX8glGlhM0kO/KpBhgR+LmA/Csnoa4ZjO53azDAekaB+hpbBAJAPYge
 dglPKpT5wJ2tlQwM2UPHk8lszSKPvWYePjvoqzDAofDfq21rcM7kkgP5oNSZSU78dc6o
 zy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0yrxVL6xhRd/sdLuiSvmYyX87dqeoDckLZbdQPLqkd8=;
 b=t0y1E1d0Su6bFmfiby1jwR+GIriL8GqAReOQAopWRdR/q+GTNpL2nRqcNxxcBwk81S
 dzfe1C03uAJiLVfxErLn3RoLbmR7ad8zEzBOIYIFst0UPiQUDLKCNhPYVfqjpQ5PVQMw
 e1hvToBl86uTpSMh9fK6tJZA+xbd9hi9UlosCKQEP5gyarITDv+S/qMj10RRjDXeyIh5
 RAFCEvkntbvdoW9JmUWGs5fM6TjN6dFKW8iaePFudFXp23VWqw5UxnTcWaZ7QzYdGNAt
 p+7wSvQ2UpUv3q1yUIamc45ns1zasFuKxNsjcRT3eDagxBD8oZ0A/Fgu8mI2AhJw/OaL
 Klcg==
X-Gm-Message-State: AOAM532GWx2N/XdJ/RVX32sMG+6a/4KOb2tD5RTWXSyQJ2ouKoLDj88E
 j8Pr9SUWJKZkVzYrofLFE2QZbw==
X-Google-Smtp-Source: ABdhPJwfA7nNG9jVbCWmPh2bqGFoRCrVJ1/xJcVPzuBoJ0Twx2exhcOLf6U05UxRLCnoFSf/0NSA1A==
X-Received: by 2002:a17:90a:1142:b0:1ca:ad6b:cab4 with SMTP id
 d2-20020a17090a114200b001caad6bcab4mr16730953pje.144.1649348203819; 
 Thu, 07 Apr 2022 09:16:43 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 nn7-20020a17090b38c700b001c9ba103530sm9390070pjb.48.2022.04.07.09.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 09:16:43 -0700 (PDT)
Date: Thu, 7 Apr 2022 09:16:40 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Dave Jones <davej@codemonkey.org.uk>
Message-ID: <20220407091640.1551b9d4@hermes.local>
In-Reply-To: <20220407151217.GA8736@codemonkey.org.uk>
References: <20220407151217.GA8736@codemonkey.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Jakub Kicinski <kuba@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH] decouple llc/bridge
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

On Thu, 7 Apr 2022 11:12:17 -0400
Dave Jones <davej@codemonkey.org.uk> wrote:

> I was wondering why the llc code was getting compiled and it turned out
> to be because I had bridging enabled. It turns out to only needs it for
> a single function (llc_mac_hdr_init).
> 
> Converting this to a static inline like the other llc functions it uses
> allows to decouple the dependency
> 
> Signed-off-by: Dave Jones <davej@codemonkey.org.uk>
> 
> diff --git include/net/llc.h include/net/llc.h
> index e250dca03963..edcb120ee6b0 100644
> --- include/net/llc.h
> +++ include/net/llc.h
> @@ -13,6 +13,7 @@
>   */
>  
>  #include <linux/if.h>
> +#include <linux/if_arp.h>
>  #include <linux/if_ether.h>
>  #include <linux/list.h>
>  #include <linux/spinlock.h>
> @@ -100,8 +101,34 @@ extern struct list_head llc_sap_list;
>  int llc_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt,
>  	    struct net_device *orig_dev);
>  
> -int llc_mac_hdr_init(struct sk_buff *skb, const unsigned char *sa,
> -		     const unsigned char *da);
> +/**
> + *      llc_mac_hdr_init - fills MAC header fields
> + *      @skb: Address of the frame to initialize its MAC header
> + *      @sa: The MAC source address
> + *      @da: The MAC destination address
> + *
> + *      Fills MAC header fields, depending on MAC type. Returns 0, If MAC type
> + *      is a valid type and initialization completes correctly 1, otherwise.
> + */
> +static inline int llc_mac_hdr_init(struct sk_buff *skb,
> +				   const unsigned char *sa, const unsigned char *da)
> +{
> +	int rc = -EINVAL;
> +
> +	switch (skb->dev->type) {
> +	case ARPHRD_ETHER:
> +	case ARPHRD_LOOPBACK:
> +		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> +				     skb->len);
> +		if (rc > 0)
> +			rc = 0;
> +		break;
> +	default:
> +		break;
> +	}
> +	return rc;
> +}
> +
>  
>  void llc_add_pack(int type,
>  		  void (*handler)(struct llc_sap *sap, struct sk_buff *skb));
> diff --git net/802/Kconfig net/802/Kconfig
> index aaa83e888240..8bea5d1d5118 100644
> --- net/802/Kconfig
> +++ net/802/Kconfig
> @@ -1,7 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config STP
>  	tristate
> -	select LLC
>  
>  config GARP
>  	tristate
> diff --git net/bridge/Kconfig net/bridge/Kconfig
> index 3c8ded7d3e84..c011856d3386 100644
> --- net/bridge/Kconfig
> +++ net/bridge/Kconfig
> @@ -5,7 +5,6 @@
>  
>  config BRIDGE
>  	tristate "802.1d Ethernet Bridging"
> -	select LLC
>  	select STP
>  	depends on IPV6 || IPV6=n
>  	help
> diff --git net/llc/llc_output.c net/llc/llc_output.c
> index 5a6466fc626a..ad66886ed141 100644
> --- net/llc/llc_output.c
> +++ net/llc/llc_output.c
> @@ -13,34 +13,6 @@
>  #include <net/llc.h>
>  #include <net/llc_pdu.h>
>  
> -/**
> - *	llc_mac_hdr_init - fills MAC header fields
> - *	@skb: Address of the frame to initialize its MAC header
> - *	@sa: The MAC source address
> - *	@da: The MAC destination address
> - *
> - *	Fills MAC header fields, depending on MAC type. Returns 0, If MAC type
> - *	is a valid type and initialization completes correctly 1, otherwise.
> - */
> -int llc_mac_hdr_init(struct sk_buff *skb,
> -		     const unsigned char *sa, const unsigned char *da)
> -{
> -	int rc = -EINVAL;
> -
> -	switch (skb->dev->type) {
> -	case ARPHRD_ETHER:
> -	case ARPHRD_LOOPBACK:
> -		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> -				     skb->len);
> -		if (rc > 0)
> -			rc = 0;
> -		break;
> -	default:
> -		break;
> -	}
> -	return rc;
> -}
> -
>  /**
>   *	llc_build_and_send_ui_pkt - unitdata request interface for upper layers
>   *	@sap: sap to use

You may break other uses of LLC.

Why not open code as different function.  I used the llc stuff because there
were multiple copies of same code (DRY).

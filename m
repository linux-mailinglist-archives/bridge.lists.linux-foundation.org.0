Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7277820C84E
	for <lists.bridge@lfdr.de>; Sun, 28 Jun 2020 15:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C66F861AA;
	Sun, 28 Jun 2020 13:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lk5y4kkTS4Ir; Sun, 28 Jun 2020 13:51:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0950861F4;
	Sun, 28 Jun 2020 13:51:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E287EC016E;
	Sun, 28 Jun 2020 13:51:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CCB2C016E
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 13:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69D582049F
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 13:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Ddmj8rQK-mk for <bridge@lists.linux-foundation.org>;
 Sun, 28 Jun 2020 13:51:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 02C3720450
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 13:51:39 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id g18so14029469wrm.2
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 06:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5mgxW9hsOT95jVSdqt76TrXzIwErXLqCYT4Cq2hSi2M=;
 b=NFO8nqxL0+fVz+1c89X1diLzfnP3FW2Y6K5MMkeSE24rXbkHW+OserBRVE94mmgKbk
 EOUijvy/Tbs9J39/PjQy9jMxzC83AaxW5gepBY90eFM55griMlLeJG6f9m7MDEEfuADR
 0vuA9xtQR55aG9Dx7YJx/cxCY/+yQlanRB2aI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5mgxW9hsOT95jVSdqt76TrXzIwErXLqCYT4Cq2hSi2M=;
 b=HOuNC8W3az6DXNdEUDoi7oEGbNKUICTreiovYseo4UNC2OFnVT7NWt5eMSQYoqg42x
 drjx551abzKbUMJylW0PR0HwiHv1EnofJENnUKyEeqWx9CeQRWA1CPajmK3F7oC142sI
 FrigVY/6Fr9kZaZbQvauQhh8woAYh4j+IsaPjMMBZauUbpX4ABExK3gDX4rsFVsxoNiF
 raMa87L7FxYwMD26Yn2cSAx6Js2rjY26Nt3KQ82XWUWLOoZ85mnHtho+yV/Z4ze4uGc7
 3lyaJNGBYIzVhD0osG0sIfh3qZo3ZUgCUO+RmDJDBqy/icEjmwnYLieag+xmDrYFsQHW
 oAgw==
X-Gm-Message-State: AOAM531VvHGig+hky7RnnyzwI7Ae0ay8X2aNhJJBKi3QdocH0gt/oWLh
 tqpGFQxuJFEtD7xmLLEMHz60gg==
X-Google-Smtp-Source: ABdhPJwL9ReXwP1aRuRXCzuMl/FylxRej/lPdxWKwZRbrGQtRzVjp8f4q95EKHzgOAL03Z3H1xMPLw==
X-Received: by 2002:adf:f20a:: with SMTP id p10mr13696730wro.41.1593352298280; 
 Sun, 28 Jun 2020 06:51:38 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 138sm26714390wma.23.2020.06.28.06.51.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 28 Jun 2020 06:51:37 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com
References: <20200628134516.3767607-1-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <3adf6b93-6cd7-0a9f-9411-736b3d9ca148@cumulusnetworks.com>
Date: Sun, 28 Jun 2020 16:51:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200628134516.3767607-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: kernel test robot <lkp@intel.com>
Subject: Re: [Bridge] [PATCH net] bridge: mrp: Fix endian conversion and
 some other warnings
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

On 28/06/2020 16:45, Horatiu Vultur wrote:
> The following sparse warnings are fixed:
> net/bridge/br_mrp.c:106:18: warning: incorrect type in assignment (different base types)
> net/bridge/br_mrp.c:106:18:    expected unsigned short [usertype]
> net/bridge/br_mrp.c:106:18:    got restricted __be16 [usertype]
> net/bridge/br_mrp.c:281:23: warning: incorrect type in argument 1 (different modifiers)
> net/bridge/br_mrp.c:281:23:    expected struct list_head *entry
> net/bridge/br_mrp.c:281:23:    got struct list_head [noderef] *
> net/bridge/br_mrp.c:332:28: warning: incorrect type in argument 1 (different modifiers)
> net/bridge/br_mrp.c:332:28:    expected struct list_head *new
> net/bridge/br_mrp.c:332:28:    got struct list_head [noderef] *
> net/bridge/br_mrp.c:332:40: warning: incorrect type in argument 2 (different modifiers)
> net/bridge/br_mrp.c:332:40:    expected struct list_head *head
> net/bridge/br_mrp.c:332:40:    got struct list_head [noderef] *
> net/bridge/br_mrp.c:682:29: warning: incorrect type in argument 1 (different modifiers)
> net/bridge/br_mrp.c:682:29:    expected struct list_head const *head
> net/bridge/br_mrp.c:682:29:    got struct list_head [noderef] *
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: 2f1a11ae11d222 ("bridge: mrp: Add MRP interface.")
> Fixes: 4b8d7d4c599182 ("bridge: mrp: Extend bridge interface")
> Fixes: 9a9f26e8f7ea30 ("bridge: mrp: Connect MRP API with the switchdev API")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c         | 2 +-
>  net/bridge/br_private.h     | 2 +-
>  net/bridge/br_private_mrp.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index 779e1eb754430..90592af9db619 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -86,7 +86,7 @@ static struct sk_buff *br_mrp_skb_alloc(struct net_bridge_port *p,
>  {
>  	struct ethhdr *eth_hdr;
>  	struct sk_buff *skb;
> -	u16 *version;
> +	__be16 *version;
>  
>  	skb = dev_alloc_skb(MRP_MAX_FRAME_LENGTH);
>  	if (!skb)
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 2130fe0194e64..e0ea6dbbc97ed 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -430,7 +430,7 @@ struct net_bridge {
>  	struct hlist_head		fdb_list;
>  
>  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
> -	struct list_head		__rcu mrp_list;
> +	struct list_head		mrp_list;
>  #endif
>  };
>  
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index 33b255e38ffec..315eb37d89f0f 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -8,7 +8,7 @@
>  
>  struct br_mrp {
>  	/* list of mrp instances */
> -	struct list_head		__rcu list;
> +	struct list_head		list;
>  
>  	struct net_bridge_port __rcu	*p_port;
>  	struct net_bridge_port __rcu	*s_port;
> 


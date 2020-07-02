Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD6212079
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 12:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4ECF250F6;
	Thu,  2 Jul 2020 10:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KdjcG6Dg9vsk; Thu,  2 Jul 2020 10:01:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D0F6925048;
	Thu,  2 Jul 2020 10:01:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53414C08A2;
	Thu,  2 Jul 2020 10:01:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D52DEC0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C96A788FBF
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kiNdWUiG97NU for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 10:01:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16B4288FB2
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:32 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w3so14730905wmi.4
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jul 2020 03:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=P8VRDASVxiHXInnBJtuHCeHYaC40885qiMW2neBVGgE=;
 b=QS1Ajp3cV7aOZj2W/e8M7r19JKqzcKjR9Nbbui47IRXJsgYLKZYFd18KBNAHM/1Xh6
 kKAurfe2x5ZGNsjp8VGOXf+rzXBnax/oYbBY3V1KXhHZ/Ay6pwqSM9xwHMcsAE2ii8FD
 7mScoEd8ZomV9oC0vYU/2nLHjjQ9QMnePWuo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P8VRDASVxiHXInnBJtuHCeHYaC40885qiMW2neBVGgE=;
 b=rUqN/F9oKViLPMTs8P/1POkkPO4WxQvx8/3Zh4VxlFGpe3pRVghxPjsDaCbnJgAj0G
 wQ8I3Iar30To0rbOSXsxQPXMW09O3QW+UbQTTo4jLDvZl3WbXp0H9YwMjZNFStUrdb4m
 Rj8O5JwvKQ4Z5gTgPvaHn+BCUznqk1+Uz97Ju5ujK0qIlfTd85Z4E9Kb1T3WSSx7jvVi
 Z+65RGt89JHgdmNwTMUPKGOfVJb2qCOIOUtHlJWI5DPqZlFW65W99HMtDsr5A1ZFSKnx
 D4XC8N0q+EHcwBL5Lvau8PRybdri9EtV7/PBFuaIb45ld7YjECvbpW5WCd+fRSVqXIsJ
 MO4Q==
X-Gm-Message-State: AOAM530IoAIje8OFd+Ehs/xluFWG7N4JmkbaqUQyKyLMuAsGjmaTZIdd
 QbNsVBOcACQe/9GMY6VxFCj+iA==
X-Google-Smtp-Source: ABdhPJzhkVTUIaRQdXBalg5IODovnlwavdJDf81WJwJeMaH242RWoZQ3g+wpVdJ5oER726YW8k2Egg==
X-Received: by 2002:a7b:ca43:: with SMTP id m3mr23750275wml.120.1593684090438; 
 Thu, 02 Jul 2020 03:01:30 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id g195sm10340168wme.38.2020.07.02.03.01.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jul 2020 03:01:27 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@mellanox.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
 <20200702081307.933471-2-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <4b46f59a-2676-6efd-fddf-c0fcbebdce0f@cumulusnetworks.com>
Date: Thu, 2 Jul 2020 13:01:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702081307.933471-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 1/3] bridge: uapi: mrp: Extend MRP
 attributes to get the status
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

On 02/07/2020 11:13, Horatiu Vultur wrote:
> Add MRP attribute IFLA_BRIDGE_MRP_INFO to allow the userspace to get the
> current state of the MRP instances. This is a nested attribute that
> contains other attributes like, ring id, index of primary and secondary
> port, priority, ring state, ring role.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/if_bridge.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index caa6914a3e53a..c114c1c2bd533 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -166,6 +166,7 @@ enum {
>  	IFLA_BRIDGE_MRP_RING_STATE,
>  	IFLA_BRIDGE_MRP_RING_ROLE,
>  	IFLA_BRIDGE_MRP_START_TEST,
> +	IFLA_BRIDGE_MRP_INFO,
>  	__IFLA_BRIDGE_MRP_MAX,
>  };
>  
> @@ -228,6 +229,22 @@ enum {
>  
>  #define IFLA_BRIDGE_MRP_START_TEST_MAX (__IFLA_BRIDGE_MRP_START_TEST_MAX - 1)
>  
> +enum {
> +	IFLA_BRIDGE_MRP_INFO_UNSPEC,
> +	IFLA_BRIDGE_MRP_INFO_RING_ID,
> +	IFLA_BRIDGE_MRP_INFO_P_IFINDEX,
> +	IFLA_BRIDGE_MRP_INFO_S_IFINDEX,
> +	IFLA_BRIDGE_MRP_INFO_PRIO,
> +	IFLA_BRIDGE_MRP_INFO_RING_STATE,
> +	IFLA_BRIDGE_MRP_INFO_RING_ROLE,
> +	IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
> +	IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
> +	IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
> +	__IFLA_BRIDGE_MRP_INFO_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_INFO_MAX (__IFLA_BRIDGE_MRP_INFO_MAX - 1)
> +
>  struct br_mrp_instance {
>  	__u32 ring_id;
>  	__u32 p_ifindex;
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


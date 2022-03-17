Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1764DC22C
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:01:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 874EE400B9;
	Thu, 17 Mar 2022 09:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-Mp8Qgzqi8g; Thu, 17 Mar 2022 09:01:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C4F6740424;
	Thu, 17 Mar 2022 09:01:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 83668C0073;
	Thu, 17 Mar 2022 09:01:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 292DFC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07997400B9
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WierQ-hFjkor for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:01:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D6594000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:10 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id b24so5686999edu.10
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mqnfH2RwXdarMVwKF+nv5QuaQLBfob4wf1DSy23UJb4=;
 b=ul+xv5XYmQa87mwY3Pl+CK3Ymdn+nwciL6xvIH8oADHISfZR0NKOusBw8asM5BCN5Q
 qNFfCEriVVS79FjTiU6SruM/gVMc6CyJFqeesfFHqBHI92P6HgRR0QoT5l/q92Ujog2t
 5MvsWjoy5X8TmfL9YyRZduQqtJt66dfQV8X0rmXUYWXl34Iaw0NsuqquFf+yJPvlXqqw
 ftGEAR2D9HfB3RKrtYJIVtwp1i4nC15nfwiI1u3ekuPeFIHBOAZ+BnCRWwGUSdOn7Zwq
 phVnIBo+kgXQvTImtHkHCRbra3oO3zSP+J8qUBfLMCmxR5gSxvCI8VXQKxGb5cCjUQSj
 9uLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mqnfH2RwXdarMVwKF+nv5QuaQLBfob4wf1DSy23UJb4=;
 b=1lMAx2BiHcc70vqjihD8ctWXRNGClpDH2QP/QkiXdG+CJh+d3IUwLymIWSsyBrUWnb
 TC/aMVPW7V0nqIGQxF5HA0ICWhY8aX3mJ992JohChovymB4/VvOQzNln46A3ELWH2pWt
 s0UbIlnnR6D1W0m5zTP84BZTv0IabGw0oypEIcCFz4Myj0M0mJAoCTUlBLqNQY+COqXO
 5VUOHDZSHwu5dJKgodtpP7ScJpWSrn99Ka8+j/LtxAAMIrmr4PPCv4NafrLKUSsyUErd
 BRo3ArdsUIEqnLdrGCPG/dAMIaXsYvi5YO6wGAuyZSeu1hz8KfgZ2tpbl6baZyA5Hk9C
 6mUA==
X-Gm-Message-State: AOAM531lOn7dzX0pvk0OZ1oOXer+9f9kU/a5ol3aA3gD4JyF/OWSTzXQ
 Nfw1FDaIst44rc9JKCK3hVtWkA==
X-Google-Smtp-Source: ABdhPJwA93yiQ1QO4LSQtMVQKkdC8xuzOclHDYnGksSW2Bv3VF1oVflM5cU1QAJkzrUl7wnTlM6Z+g==
X-Received: by 2002:a05:6402:430c:b0:416:c695:7c23 with SMTP id
 m12-20020a056402430c00b00416c6957c23mr3179483edc.367.1647507668159; 
 Thu, 17 Mar 2022 02:01:08 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 kw3-20020a170907770300b006b2511ea97dsm2050088ejc.42.2022.03.17.02.01.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 02:01:07 -0700 (PDT)
Message-ID: <68e92033-1dea-87bd-bc9b-8b2abdaa4a85@blackwall.org>
Date: Thu, 17 Mar 2022 11:01:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-8-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-8-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 07/15] net: bridge: mst: Add helper
 to map an MSTI to a VID set
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> br_mst_get_info answers the question: "On this bridge, which VIDs are
> mapped to the given MSTI?"
> 
> This is useful in switchdev drivers, which might have to fan-out
> operations, relating to an MSTI, per VLAN.
> 
> An example: When a port's MST state changes from forwarding to
> blocking, a driver may choose to flush the dynamic FDB entries on that
> port to get faster reconvergence of the network, but this should only
> be done in the VLANs that are managed by the MSTI in question.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/linux/if_bridge.h |  7 +++++++
>  net/bridge/br_mst.c       | 26 ++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



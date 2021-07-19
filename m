Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2473D3CCC38
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3809540410;
	Mon, 19 Jul 2021 02:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFDpfyq2HMwS; Mon, 19 Jul 2021 02:26:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 479E340310;
	Mon, 19 Jul 2021 02:26:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F178AC0022;
	Mon, 19 Jul 2021 02:26:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42D21C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CF2E400EA
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2GSDGobgDgg for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:26:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F54C400E0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:26:49 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id u15so19087370oiw.3
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T4ERkVqJZcwb9mf7YWlUyzp+3vyVmdMQC/BK4sjX73w=;
 b=vdhQbeqMeu5Oj0KMv2kIJcn5mjbmuTwDk/tRFXMAF7M0o8XLBjKPzj8Yx6uAAlQncz
 I7ik6Di1US+9Ul/KYgmFHa1eCB862EDGbz4RY9wYGHd/F1642e5/uRvgi9d21HYjA+b3
 KaEVSQ+Ah5U+ffBcwwbF9xY8akNAM2ywNVKQAdJnxew+PpNsVUfAE3s4acsYplIRa/QR
 4+xtLT/pWbLGbzNGwfkL9AStdGQIZ5jJstUtf2UbLCRy9h23uRNVscsFsptZMUVrs34T
 d6Y4X8d4QUBNw+9lc4VwXwZcYxr/CEGX8s53Crw99lQ4Y040ke1jkNMuYjQ+Rq7pBxgs
 yyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T4ERkVqJZcwb9mf7YWlUyzp+3vyVmdMQC/BK4sjX73w=;
 b=KUftQHfyjJfGqnI0ZU9R0TXOW4VpsCV+5/wRUB9Ssqjcw21QpoyHXF6NP088T3SshF
 nDQDGZ+4jp5yX6WZk9kk/nz3AHKFx/TCR6DHoKIl2k3RBr4ilp/an6fi24ayu6TpXvxL
 4xoBelQxdQz8gN7l/MgXwBOMsfClgqE5zBBQRNQAelZHVRSkBsyo1cx8yeoJAtSOWjl6
 TA5mJtQel4yJEkhtg4WqSnDwqDXXQ4ngcUhI18jxqeYtwELctE+GJ2yx/XuLC+LnOIFI
 pMl51QJUhqgN5s9yL+aLT0B47IIX7CpxpE/Vno1p79zxLl1vqjIrYG5aRgyqeRFFQA2c
 r8kA==
X-Gm-Message-State: AOAM533QP5idDtP6e9c9pRboGilkDVwOe2c0IHuzkYqA75hyy6acVDGT
 JrMDyXaMmDCsP1JdEJSm7vg=
X-Google-Smtp-Source: ABdhPJwz6pqKGHASJJMw9oBP2CA5u5K/Zhphz0niCowtFLjoKDAf5Xsb35CaUUdwZeZDZz0NlKOSzw==
X-Received: by 2002:a05:6808:1455:: with SMTP id
 x21mr20707750oiv.51.1626661608396; 
 Sun, 18 Jul 2021 19:26:48 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id i16sm3565796oie.5.2021.07.18.19.26.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:26:47 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-8-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4191ea0a-09ce-d52f-f40e-2d680ef4b9ca@gmail.com>
Date: Sun, 18 Jul 2021 19:26:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-8-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 07/15] net: bridge: disambiguate
 offload_fwd_mark
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



On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> From: Tobias Waldekranz <tobias@waldekranz.com>
> 
> Before this change, four related - but distinct - concepts where named
> offload_fwd_mark:
> 
> - skb->offload_fwd_mark: Set by the switchdev driver if the underlying
>    hardware has already forwarded this frame to the other ports in the
>    same hardware domain.
> 
> - nbp->offload_fwd_mark: An idetifier used to group ports that share
>    the same hardware forwarding domain.
> 
> - br->offload_fwd_mark: Counter used to make sure that unique IDs are
>    used in cases where a bridge contains ports from multiple hardware
>    domains.
> 
> - skb->cb->offload_fwd_mark: The hardware domain on which the frame
>    ingressed and was forwarded.
> 
> Introduce the term "hardware forwarding domain" ("hwdom") in the
> bridge to denote a set of ports with the following property:
> 
>      If an skb with skb->offload_fwd_mark set, is received on a port
>      belonging to hwdom N, that frame has already been forwarded to all
>      other ports in hwdom N.
> 
> By decoupling the name from "offload_fwd_mark", we can extend the
> term's definition in the future - e.g. to add constraints that
> describe expected egress behavior - without overloading the meaning of
> "offload_fwd_mark".
> 
> - nbp->offload_fwd_mark thus becomes nbp->hwdom.
> 
> - br->offload_fwd_mark becomes br->last_hwdom.
> 
> - skb->cb->offload_fwd_mark becomes skb->cb->src_hwdom. The slight
>    change in naming here mandates a slight change in behavior of the
>    nbp_switchdev_frame_mark() function. Previously, it only set this
>    value in skb->cb for packets with skb->offload_fwd_mark true (ones
>    which were forwarded in hardware). Whereas now we always track the
>    incoming hwdom for all packets coming from a switchdev (even for the
>    packets which weren't forwarded in hardware, such as STP BPDUs, IGMP
>    reports etc). As all uses of skb->cb->offload_fwd_mark were already
>    gated behind checks of skb->offload_fwd_mark, this will not introduce
>    any functional change, but it paves the way for future changes where
>    the ingressing hwdom must be known for frames coming from a switchdev
>    regardless of whether they were forwarded in hardware or not
>    (basically, if the skb comes from a switchdev, skb->cb->src_hwdom now
>    always tracks which one).
> 
>    A typical example where this is relevant: the switchdev has a fixed
>    configuration to trap STP BPDUs, but STP is not running on the bridge
>    and the group_fwd_mask allows them to be forwarded. Say we have this
>    setup:
> 
>          br0
>         / | \
>        /  |  \
>    swp0 swp1 swp2
> 
>    A BPDU comes in on swp0 and is trapped to the CPU; the driver does not
>    set skb->offload_fwd_mark. The bridge determines that the frame should
>    be forwarded to swp{1,2}. It is imperative that forward offloading is
>    _not_ allowed in this case, as the source hwdom is already "poisoned".
> 
>    Recording the source hwdom allows this case to be handled properly.
> 
> v2->v3: added code comments
> v3->v4: none
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

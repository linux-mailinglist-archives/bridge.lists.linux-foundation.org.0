Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB6C7028CB
	for <lists.bridge@lfdr.de>; Mon, 15 May 2023 11:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB15A60BBA;
	Mon, 15 May 2023 09:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB15A60BBA
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=D7GbvBX6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFAbackgeVtz; Mon, 15 May 2023 09:35:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5304F60C12;
	Mon, 15 May 2023 09:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5304F60C12
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 063E5C008A;
	Mon, 15 May 2023 09:35:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 394AEC002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1391341C80
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1391341C80
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=D7GbvBX6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CEkl7Iyiw_Uq for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 09:35:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5775B41C73
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5775B41C73
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:35:51 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-96ab81aa68dso573864866b.3
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 02:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684143349; x=1686735349;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HSSdUyfUPyGYycaIqfuqW/+pghUKLLVTSGYMfpy13LM=;
 b=D7GbvBX6PgLbCDR/Yqdo2kXDxg5n5V1DaOw9R41jA3f2HwW8Qv1g9yHj76/W/q7ZT4
 7pvp31roCIgy6seejg9uqmy1l//Is7be6P50+9GoKYlgFLdB6fm3DaEHNSUiINYbHmEg
 vHoBo+e/pvj2G155jQwlO1vvz3CavlYZgFmDZ+5MrPN9qj1W29XUt86sdNSsGl4wKozd
 Ndx28demcmGTOz05b1Mq6xWMv0dq6mS4sXNRzgDp9LVhF78Xe8Vrge8DTZap3xlu2nAo
 H3bc1/ig/YC78MTvoXHdH+FhXhcZOw6I4vHtnUOnPrVW3r1tNnTy2cYuD60RLdb38BPh
 +8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684143349; x=1686735349;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HSSdUyfUPyGYycaIqfuqW/+pghUKLLVTSGYMfpy13LM=;
 b=MTpe5LfiP6/3BadrCUMVdLNE1g8ijSXN216o8G5VDq2tBu6qSaaMEehKxdiCWHijl6
 D2a4HSoEw7XKvNXwBDDo9Zt74V3ZbrSGxjxQXrNKEYXwjXzQ591EiT6xIv3BU4E2iX5P
 cJsYf13QgRRhPN1vXdxz6oyi/G2+bf/BdJURJaq0+MQBwMuY1kTf+i6QOI90byJznXrF
 mm1jbxTYwIOYCf/BaXIrxEFjj5vzE0J9yqF9uTTgHycAJ4N61h93gIQejNxd5umTuGXQ
 bmU49qf2PuTJsuud84ukPDwf5slAz7uOKUb88JTMyjzgViEnpD7DhfX3UZVJGLBG9AlI
 UYGQ==
X-Gm-Message-State: AC+VfDwQX87ffmOXeX+nPBihq5v0kf69Oz2GVEbF+ypMIUceIgoapC4I
 EsjO6Eb70PSOqh0SODYDljRTkQ==
X-Google-Smtp-Source: ACHHUZ5guZjQyt+ewDulYxDM52KKMRKk8m+mePj3t6ZRQDTy77O/PteUoTkSWv1vLYs8FVpLToDAYA==
X-Received: by 2002:a17:907:360c:b0:961:800b:3f1e with SMTP id
 bk12-20020a170907360c00b00961800b3f1emr31728686ejc.73.1684143349443; 
 Mon, 15 May 2023 02:35:49 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 hu7-20020a170907a08700b00969fa8a3533sm8421674ejc.165.2023.05.15.02.35.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 May 2023 02:35:48 -0700 (PDT)
Message-ID: <dc8dfe0b-cf22-c4f9-8532-87643a6a9ceb@blackwall.org>
Date: Mon, 15 May 2023 12:35:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <20230515085046.4457-2-jnixdorf-oss@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230515085046.4457-2-jnixdorf-oss@avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 2/2] bridge: Add a sysctl to limit new
 brides FDB entries
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

On 15/05/2023 11:50, Johannes Nixdorf wrote:
> This is a convenience setting, which allows the administrator to limit
> the default limit of FDB entries for all created bridges, instead of
> having to set it for each created bridge using the netlink property.
> 
> The setting is network namespace local, and defaults to 0, which means
> unlimited, for backwards compatibility reasons.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>  net/bridge/br.c         | 83 +++++++++++++++++++++++++++++++++++++++++
>  net/bridge/br_device.c  |  4 +-
>  net/bridge/br_private.h |  9 +++++
>  3 files changed, 95 insertions(+), 1 deletion(-)
> 

The bridge doesn't need private sysctls. Netlink is enough.
Nacked-by: Nikolay Aleksandrov <razor@blackwall.org>

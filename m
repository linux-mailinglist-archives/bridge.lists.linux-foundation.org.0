Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350966800DC
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 19:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A9D04010F;
	Sun, 29 Jan 2023 18:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A9D04010F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=TEyhofPv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTnbTuAVXxay; Sun, 29 Jan 2023 18:44:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E9D2740201;
	Sun, 29 Jan 2023 18:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9D2740201
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A67A8C007C;
	Sun, 29 Jan 2023 18:44:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2D1DC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 18:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B005401ED
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 18:44:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B005401ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6_LM2a7Xw6pM for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 18:44:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E2894010F
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E2894010F
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 18:44:46 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id kt14so26263541ejc.3
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=i4DbpifCqabRgCyCKd8UEM5w26sLROwDi22v6917074=;
 b=TEyhofPv/3fZEM5gSXQq3zJGsQqeL5iVEnb9IUXSl9sHFoeUNzf1trCcve0zg+JoAR
 Z0QHqwd8fPynZgr6nZAWUpJFJ3IoYrs6WG+JvCBNRZxExuXtoakkyP8FMvX0meJhkWQo
 7OSibO+xWr+pYYAv5hszN01KrH5uDAcq7UN9XlrWwHdDcTfLuUJExukgRVHOF/iE7R0G
 KTY88XS91OvXMY2ZD41fjSCHNkgEHQLlrIvKRSxMcuH9MN1aN9gULcasEj2yNaJ18C6Z
 XGMKEqylkFKgoU0KBYgvTeLl/PTZP1jqDusucxa7KS2zGHJK+tJpafQty9ou4gTStI/z
 YSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i4DbpifCqabRgCyCKd8UEM5w26sLROwDi22v6917074=;
 b=uLJrYOje/iUgyrUtsQ90j+iTG88UQRWJEfx+AFXIMQDZw/5okP3y/VFzMVF2JQOTlz
 s16/VG7egRD8rt28JAB4Gml9NYhJVNl++cY1A+MKiAO4P1GIOveavWJ6h/l7DjU1NSXX
 I1iDIBgy4UObKaRCHY0HgafKhIpisjV9kYHHqGFV+C3SeYKFOfuzG5MnCosNl22YuP2b
 u3+Bx1OLVZZWyl5EtYvcF/XVtVQqrfRKaJw4XwQn8LYZyU1Gydemw/gG+YNwT0HF9D00
 2gFYBfAksY13hqER36/E7B5FTuP16RrBM+t0IDhXjjiIyhKTRuToOE7hJOWSXH1nPe8M
 QUiQ==
X-Gm-Message-State: AFqh2kqHHbYYfjdukN++AIln3IsLi3Vci8RFQXXCIH0iqCShSEP8W0d3
 X0E83lOAWKwXvHwiuhZPJaFkmw==
X-Google-Smtp-Source: AMrXdXuKMGClb4vuI98zxF7uhYaGzagu25lMseZ08PYThnSOqV0hNzzoGbwJXos8Ts9z63SdfMRpuA==
X-Received: by 2002:a17:907:7e9c:b0:86e:2c11:9bca with SMTP id
 qb28-20020a1709077e9c00b0086e2c119bcamr66832803ejc.30.1675017884598; 
 Sun, 29 Jan 2023 10:44:44 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 e6-20020a1709061e8600b0085e0882cd02sm5734172ejj.92.2023.01.29.10.44.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 10:44:44 -0800 (PST)
Message-ID: <9b66580a-f158-43d0-36e1-511e6fe63da7@blackwall.org>
Date: Sun, 29 Jan 2023 20:44:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <c1a88f471a8aa6d780dde690e76b73ba15618b6d.1675010984.git.leon@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <c1a88f471a8aa6d780dde690e76b73ba15618b6d.1675010984.git.leon@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Vladimir Oltean <olteanv@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [Bridge] [PATCH net-next v2] netlink: provide an ability to set
 default extack message
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

On 29/01/2023 18:51, Leon Romanovsky wrote:
> In netdev common pattern, extack pointer is forwarded to the drivers
> to be filled with error message. However, the caller can easily
> overwrite the filled message.
> 
> Instead of adding multiple "if (!extack->_msg)" checks before any
> NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> add new macro to common code.
> 
> [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
> Changelog:
> v2:
>  * Removed () brackets around msg to fix compilation error.
> v1: https://lore.kernel.org/all/d4843760219f20367c27472f084bd8aa729cf321.1674995155.git.leon@kernel.org
>  * Added special *_WEAK() macro instead of embedding same check in
>    NL_SET_ERR_MSG_MOD/NL_SET_ERR_MSG_FMT.
>  * Reuse same macro for XFRM code which triggered this patch.
> v0: https://lore.kernel.org/all/2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org
> ---
>  include/linux/netlink.h   | 10 ++++++++++
>  net/bridge/br_switchdev.c | 10 ++++------
>  net/dsa/master.c          |  4 +---
>  net/dsa/slave.c           |  4 +---
>  net/xfrm/xfrm_device.c    |  5 ++++-
>  5 files changed, 20 insertions(+), 13 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>



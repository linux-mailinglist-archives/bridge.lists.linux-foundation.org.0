Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2061639A
	for <lists.bridge@lfdr.de>; Wed,  2 Nov 2022 14:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C81A3414FA;
	Wed,  2 Nov 2022 13:17:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C81A3414FA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=DFPfB3M7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZJ4g5m15PmW; Wed,  2 Nov 2022 13:17:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 012B440934;
	Wed,  2 Nov 2022 13:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 012B440934
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B535BC007B;
	Wed,  2 Nov 2022 13:17:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46E04C002D
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2F5A860EC4
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F5A860EC4
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=DFPfB3M7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpbfYQTuKK1f for <bridge@lists.linux-foundation.org>;
 Wed,  2 Nov 2022 13:17:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BEDD60E89
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BEDD60E89
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:17:18 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id f5so23664614ejc.5
 for <bridge@lists.linux-foundation.org>; Wed, 02 Nov 2022 06:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=W2GcMv8pOvaPEAMnxR0b2BFRXC3cBLDvdSpZBuBV1Jo=;
 b=DFPfB3M7oAMC8PkVivnCzgQtBs8Kl+Kxm4iFZUX85i3y/zxbsp8GJBbkwbWC8zs9/6
 wDFSpVDIgIEcow+viNHpAUcg3A1zbBJ0Anchwb+GpDiRKpHNYTuBQtahpx97MliiwYxc
 6UzOySWlUatBjH7Br9tfPFD2HSaKcJgwfEgYftIzLHH61aKu3JzVXnn/Dvk3JBYp5Sev
 RVMgJ0IUizD9ETrAltXjTdBocmplkPH4/A+fGsXQKxsXZfiK8ysuhTrYC7klDFV6eU32
 3shOmCpL0VEJKeiRgSoxHdhS5cGgy4P9QgG95C8iNK/no8IDlHDFhs/o+cNvcwB9NUwo
 YIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=W2GcMv8pOvaPEAMnxR0b2BFRXC3cBLDvdSpZBuBV1Jo=;
 b=AfCHuYpJGd1vO4gR3znzCLNNp7GpXehYcWP/ufojd7qQfeA6k09zWurwoef5jpkOd7
 8l3G0I2/8tedeI8epZHgbKDHvAUP1URrZ7hLRguiT/aLfY0GQn9KZmHklT8NYvuJVu7T
 OmMdjZWHFTozJ//cyfFXZLHoLQ6BjfP4rRiUmiYBjPlH8UPpdRXgzyvAbBEdVS0qIRN7
 oxkj7/jilabwR5rwt5rSVUim5fOuYt1u5JsVBA1jegMEy8AiZgTPaGmHyeeZnhqo5wsl
 Rh54DYYQi6nxGUc+jrXb1AVcIc/FVZJ9s5Vnuyb8rFc+9J+7Yjw0rBKMUXLUEOBtBOcL
 C/2A==
X-Gm-Message-State: ACrzQf2v8PhxUboBPh0pWAzcRiK0O2+zhc04cbQAO7xGWHaN+0X0Oxn6
 UXJYSZaCtDkMct5xsBQmabcbbQ==
X-Google-Smtp-Source: AMsMyM6txEVEJeNLSxpDnBkjqJ2yO8QGYeyGgGIMZVVy2WqGO9znnisGLd6jZDtsLN19HuuCNXqKwg==
X-Received: by 2002:a17:907:7e87:b0:78e:1a4:130 with SMTP id
 qb7-20020a1709077e8700b0078e01a40130mr24314284ejc.101.1667395036455; 
 Wed, 02 Nov 2022 06:17:16 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 s14-20020a056402014e00b00463a83ce063sm2253048edu.96.2022.11.02.06.17.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Nov 2022 06:17:16 -0700 (PDT)
Message-ID: <b3d528d1-a7b7-9e8c-c7d0-3f658c0162c0@blackwall.org>
Date: Wed, 2 Nov 2022 15:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221101193922.2125323-1-idosch@nvidia.com>
 <20221101193922.2125323-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221101193922.2125323-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: vladimir.oltean@nxp.com, roopa@nvidia.com, edumazet@google.com,
 mlxsw@nvidia.com, netdev@kapio-technology.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/2] selftests: forwarding: Add MAC
 Authentication Bypass (MAB) test cases
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

On 01/11/2022 21:39, Ido Schimmel wrote:
> From: "Hans J. Schultz" <netdev@kapio-technology.com>
> 
> Add four test cases to verify MAB functionality:
> 
> * Verify that a locked FDB entry can be generated by the bridge,
>   preventing a host from communicating via the bridge. Test that user
>   space can clear the "locked" flag by replacing the entry, thereby
>   authenticating the host and allowing it to communicate via the bridge.
> 
> * Test that an entry cannot roam to a locked port, but that it can roam
>   to an unlocked port.
> 
> * Test that MAB can only be enabled on a port that is both locked and
>   has learning enabled.
> 
> * Test that locked FDB entries are flushed from a port when MAB is
>   disabled.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Adjust commit message.
>     * Add FDB flushing test case.
>     
>     Changes made by me:
>     * Reword commit message.
>     * Remove blackhole tests as they are not relevant for this series.
>     * Add configuration test case.
>     * Add a few additional test cases.
> 
>  .../net/forwarding/bridge_locked_port.sh      | 155 +++++++++++++++++-
>  tools/testing/selftests/net/forwarding/lib.sh |   8 +
>  2 files changed, 162 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



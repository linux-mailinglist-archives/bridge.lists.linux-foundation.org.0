Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 885F6602718
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 10:37:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C332960FEB;
	Tue, 18 Oct 2022 08:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C332960FEB
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=kg/V4I4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJ15hYWNqHaE; Tue, 18 Oct 2022 08:37:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6FE5B60FEE;
	Tue, 18 Oct 2022 08:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FE5B60FEE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A061C007E;
	Tue, 18 Oct 2022 08:37:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5D86AC002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 387BD60FEF
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 387BD60FEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AHuLAIvmqC0m for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 08:37:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8880B60FEB
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8880B60FEB
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:19 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id a67so19358736edf.12
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 01:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0r0CEcLzdsN43NZU3heQZC4qAAFpuw6sOVS1maYA6DQ=;
 b=kg/V4I4ASB09J7gYLUa/gilZUDLGVdLNMAycukH5jFUSl0VvTO+ZzwHyE6/Goz4/cs
 QK4W0TXDkNQwIBj/yB2sBe/zLQdNagY0v/PLCjvQxu1e5jwdp8Q6Jni0TFQxk5KhBGt2
 AQUyiGnzfE5suUPbgUJmYzsFbPpfR8eTP1IWzxu/zEmvCAT5UqQVQhvFsee6QWxcn8N0
 NRWp/Va/RKQUt4JickpDloreBm8vwNDzXlYb7c5REu62D/UzzA/7nnPYRqv+EBlC7gb8
 5+5SYr21pI66uIm++99fDREbhlj+o1OHi+4hFXPYKboAM+fFkBvt7sdFd6+jslS2WfEq
 uzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0r0CEcLzdsN43NZU3heQZC4qAAFpuw6sOVS1maYA6DQ=;
 b=WJdhFZmh8kQp1bHKaM9smyu2bQz4Jkx4OmlVt1i9Xsym9Lh2sE6ughIcMt07lJ/yea
 VFz2wMnDbyTtCkkL6rUoetkXY1VT8s6DGSMaW38uHeI0muqVFx3t9xZSfU1xa0DfuAW/
 Vkw3V1JbJ9wCcr8pAEGXpoi1ZZZYKhaBJv45290kZg6Tyf8BT/3Op/Yo3m0PTZv1y7fq
 ixX3iafca6qOELUNmLE5D9uHg1nJo8kJeaoBrlqPvnkchWTBdXXVRLL5k20SDW5ZVmvm
 7Q2dksAPlPH7+uhMVxQoMIFUqYgnFWpzdFPk1XpJZ3R6W2h8L8OVVMPL6fekuqKGKfXb
 9YnA==
X-Gm-Message-State: ACrzQf2JRaXy34J3OdcOdfrdtJt8YHOYkzbKobI2TMcNM6vqwbANoWl/
 RhrUNNDZ13W6a8eCAp5kCku76w==
X-Google-Smtp-Source: AMsMyM6IRFBzi6KglBRS082eAFbVOrF3V2P1sRTRQR0MgPU4LTMYWAEv5s5SJW0fcKRI2BVbj4DF4g==
X-Received: by 2002:a50:fe85:0:b0:458:5562:bf1e with SMTP id
 d5-20020a50fe85000000b004585562bf1emr1572766edt.167.1666082237618; 
 Tue, 18 Oct 2022 01:37:17 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u13-20020aa7d54d000000b00458478a4295sm8584754edr.9.2022.10.18.01.37.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 01:37:17 -0700 (PDT)
Message-ID: <b22a460d-88bb-f159-c75a-acd635430167@blackwall.org>
Date: Tue, 18 Oct 2022 11:37:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018064001.518841-1-idosch@nvidia.com>
 <20221018064001.518841-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018064001.518841-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/4] selftests: bridge_igmp: Remove
 unnecessary address deletion
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

On 18/10/2022 09:39, Ido Schimmel wrote:
> The test group address is added and removed in v2reportleave_test().
> There is no need to delete it again during cleanup as it results in the
> following error message:
> 
>  # bash -x ./bridge_igmp.sh
>  [...]
>  + cleanup
>  + pre_cleanup
>  [...]
>  + ip address del dev swp4 239.10.10.10/32
>  RTNETLINK answers: Cannot assign requested address
>  + h2_destroy
> 
> Solve by removing the unnecessary address deletion.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/bridge_igmp.sh | 3 ---
>  1 file changed, 3 deletions(-)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEA2714C55
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 16:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23CC84010C;
	Mon, 29 May 2023 14:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23CC84010C
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=2+ehGTQD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sCZd6s87ynk; Mon, 29 May 2023 14:48:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9F99F402E6;
	Mon, 29 May 2023 14:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F99F402E6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40F7DC0089;
	Mon, 29 May 2023 14:48:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 905D6C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DDD960B23
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DDD960B23
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=2+ehGTQD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EkGw0cE1DCDD for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 14:48:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6C0960D95
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6C0960D95
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:48:50 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-5147aee9d7cso4571513a12.3
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 07:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685371729; x=1687963729;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JKlNcGPxl9mlN8rwjzjxvcvFuvq/iuxFaFEW8rQumgw=;
 b=2+ehGTQDV5i5XJKBMKEJVAhpQenFILVf+B4gsexsUA5Um9FxW43qvQqvOrdqirhTEh
 ahCo3yiNK4qUcuNG84897QIHQEkj3azmE9Jt2axQJTuFpucPSFSppGjhSv2FApgi8B4G
 wzDVZs3vr4mRQTvehmPNDW26wmFKvq90rAEfWzFBkVFBSRcm8c+m+18OvDfUZmcIlO7J
 MM+CpI6DKSzIR8+Tgl9BT3UooNwsRct8Kn5tsgmmMdd55oYm3LIYDyKCgI8cQ9Fdadjk
 hU9HZz0lxCjl/ARgVd7UfC8N6Z+Z+f5N3XapYLTuzBHPbbiFh3akqI1glxSm0oMA6KjX
 UENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685371729; x=1687963729;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JKlNcGPxl9mlN8rwjzjxvcvFuvq/iuxFaFEW8rQumgw=;
 b=BMwRGHOgpvMQD3MegAp+QtB9XkZ5ZwIVokCwW+KrQwMv2cnZlu0ByUfjUL2WYehg59
 X7x5XqYxjmPzEVBXHJs8jxzxbTtnaxAbpZvOZc7g3t6+yAMo64pdQ0w7cY95B9+up9R7
 kgZAkU3vxbKNICuMef160Ty6q3UQEOQgtxE+2e/OA8aO0STVYNwVhWyybZ1QoKBhU+xB
 3fjuzGC8pEziSZXudiLMaI0BUvQBSim7coSEkOmfcxVaUr7H1mhFiDby1V1xLCv7QEHD
 muAsGcnWuFGU7d2NJQw19X2DPSTBqkkWySlB4lb441yyT1nEV4lJOkB098hO3KrQV6QL
 ACOg==
X-Gm-Message-State: AC+VfDxw1sFLt20bJEQe57cFjxL6IfjA8xZ1DV5/qP8nRxYPSEM9Lr93
 e3egextODhKiMqq+2B7yYopLsg==
X-Google-Smtp-Source: ACHHUZ4otyt7KxDZSKbwEIycXi3UyHAbhclKomWNF0GW/MKFbOX/+3i/05mdCzdQ7zJuRSJcd45vxA==
X-Received: by 2002:a17:907:7b87:b0:966:5c04:2c61 with SMTP id
 ne7-20020a1709077b8700b009665c042c61mr12095103ejc.8.1685371728690; 
 Mon, 29 May 2023 07:48:48 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 ja20-20020a170907989400b0096f89c8a2f7sm6022518ejc.90.2023.05.29.07.48.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 07:48:48 -0700 (PDT)
Message-ID: <098121b7-7118-5605-e701-0c47c759ee6c@blackwall.org>
Date: Mon, 29 May 2023 17:48:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-9-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-9-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 8/8] selftests: forwarding: Add
 layer 2 miss test cases
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

On 29/05/2023 14:48, Ido Schimmel wrote:
> Add test cases to verify that the bridge driver correctly marks layer 2
> misses only when it should and that the flower classifier can match on
> this metadata.
> 
> Example output:
> 
>  # ./tc_flower_l2_miss.sh
>  TEST: L2 miss - Unicast                                             [ OK ]
>  TEST: L2 miss - Multicast (IPv4)                                    [ OK ]
>  TEST: L2 miss - Multicast (IPv6)                                    [ OK ]
>  TEST: L2 miss - Link-local multicast (IPv4)                         [ OK ]
>  TEST: L2 miss - Link-local multicast (IPv6)                         [ OK ]
>  TEST: L2 miss - Broadcast                                           [ OK ]
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Test that broadcast does not hit miss filter.
> 
>  .../testing/selftests/net/forwarding/Makefile |   1 +
>  .../net/forwarding/tc_flower_l2_miss.sh       | 350 ++++++++++++++++++
>  2 files changed, 351 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/tc_flower_l2_miss.sh

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FB7714C72
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 16:50:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FF4560D95;
	Mon, 29 May 2023 14:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FF4560D95
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=rzoJFhFQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7C4FfLYEQYN; Mon, 29 May 2023 14:50:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2EFAF60E35;
	Mon, 29 May 2023 14:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EFAF60E35
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7CAAC0089;
	Mon, 29 May 2023 14:50:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3573C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A135F821B3
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A135F821B3
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=rzoJFhFQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2TlI_CAxLX0a for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 14:50:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDA9382174
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDA9382174
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:50:05 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-973f8dbcc02so249215866b.3
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 07:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685371804; x=1687963804;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mHZZ92GJ5ZTas5TwDw4/gd16Yq3qwKu+NLw4y0txzO8=;
 b=rzoJFhFQwd8s2j0J7YhRub5SjpCMeLl4XSuJ5tuxJ1gWgsWYZwM/IUDgQvJ33THL1Y
 HQRpxqwQ4LQlX4SHLiJBrjNX6EvsiUVykMAlYInmQsEfkDFzqUHrbBxrMTc67zqz9tKf
 u7hX3Nm1SBoes1oiAsIJityu5J3ca/IqYFmc7bpF32JpIeFM4hIUpkZOIqNng5oynjc4
 fntEcEud09bnR9aniI14YdNxQ+GPcDrQyvT8owt/J5ygvrPJNfqmj8y6+kR+UVVl9cwC
 YVJ52ohCWkgJ+cLe50SgA6CWhBYvcy/LmsSy+1yYV0Pk52jC9AXikoh8YZYBT4So0z6D
 ksdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685371804; x=1687963804;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mHZZ92GJ5ZTas5TwDw4/gd16Yq3qwKu+NLw4y0txzO8=;
 b=d5h9Xd7etSjmzgaBAdQlkVvReZF75FJ6cD1Dn+2Odi0ve0EQRdtIb/RZGVXEy3T4bS
 FDsEmB8hx90mWT4HL5bIaMwG8kvKrUjzsP1UOb/cSJIrh5xwCHwbIf1YLGGMeSmns4yH
 jjZd1jaR5hjoMkWy/2K8Moj6vvrDrhutjZ6Uqu337xlmX1rrpOrLUU9axGEr5FM31X28
 ouxyhR1+0vdEnncxexfIwl/Bzt71xwXKv8KGa3vJXcwab7ZdK/J25wcvLynpG+li7LsY
 Y1bptPlZzjN+Qz9DXCDj39fgR13lGcfFeX/f46gs0HUBiCUcG0H4rY0nKzQ1mGZESd7Z
 /t3w==
X-Gm-Message-State: AC+VfDxhjG99pe/5Fl1ub6Sk7eP7iG//3N2cXW+2BvAS3YNDrb7UT6EC
 gLvrBG6fvi7RyEengs2w+7L/zA==
X-Google-Smtp-Source: ACHHUZ7Zq+bK1sQ2zvEhivXDtGUvRbpP9L9r6myOfqAciLlbpkE5eW4RFbfhISzOcXXd3xs8nIFg1w==
X-Received: by 2002:a17:907:3187:b0:966:37b2:7354 with SMTP id
 xe7-20020a170907318700b0096637b27354mr10995943ejb.31.1685371803889; 
 Mon, 29 May 2023 07:50:03 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 z11-20020a170906714b00b0096f89fd4bf8sm5957708ejj.122.2023.05.29.07.50.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 07:50:03 -0700 (PDT)
Message-ID: <cae7f2be-cc0b-b6bb-16c5-eb014e07e73f@blackwall.org>
Date: Mon, 29 May 2023 17:50:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 7/8] mlxsw: spectrum_flower: Add
 ability to match on layer 2 miss
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
> Add the 'fdb_miss' key element to supported key blocks and make use of
> it to match on layer 2 miss.
> 
> The key is only supported on Spectrum-{2,3,4}. An error is returned for
> Spectrum-1 since the key element is not present in any of its key
> blocks.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Use 'fdb_miss' key element instead of 'dmac_type'.
> 
>  drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c    | 1 +
>  drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h    | 3 ++-
>  .../net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c    | 2 ++
>  drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c       | 6 ++----
>  4 files changed, 7 insertions(+), 5 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>



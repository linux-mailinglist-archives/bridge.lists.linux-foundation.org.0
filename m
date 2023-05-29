Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAA4714A22
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 15:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB2DA40644;
	Mon, 29 May 2023 13:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB2DA40644
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=KLEPR262
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X8wEZatEiH4H; Mon, 29 May 2023 13:19:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D20AB4063C;
	Mon, 29 May 2023 13:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D20AB4063C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 96D5FC0089;
	Mon, 29 May 2023 13:19:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EF29FC002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC34340644
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC34340644
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qh2MESHK6G1o for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 13:19:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFA494063C
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFA494063C
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:19:22 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-51475e981f0so5515966a12.1
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 06:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685366361; x=1687958361;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7liou2UMGklqRO9dLDDOCk0JRNw6KtAVNVlIZMEBmcs=;
 b=KLEPR262FOslxo55V+tYUh11CnbmuKwlngkBTAky1p8umNg5QkIQI38Z+WeJjBGE12
 mTo1wstdR1L3Nc60NQMJ84pybpUYD7b8Qki9ssLYEfDB2lWGw0jpHfVDwGs3T0twMVi/
 6ka5i2joKgJKGAltya1QnjrVtLEV6/cKNa+2v4khPlSqLl1NY17cP9b84mtZwbzsO+Qk
 tcfzeuzvWocAmamqtjZo7aAeew57i4swF3AbZkCZ7Y8U1IfVIgquLHvnMHVzlEb24sUa
 H1wCIkOEINjeqd6IrFGY8B5WA4yUTRjvJqQIKHcWa/MVAWMCSMBgbiUArnVIzW8N/5S4
 V2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685366361; x=1687958361;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7liou2UMGklqRO9dLDDOCk0JRNw6KtAVNVlIZMEBmcs=;
 b=AAo+3buGP7LAbUthHogOFcsufqUBhp+T2zCoEVzCc+SmqbVXDpd4TGyBUAZethyNiU
 GIdWu1zd7pnuoQO/B9qLFIAAhvcMM6LGKGAVfMeaGtwW0/hzB1R/tNpFF1e/R6M8m1bL
 NB3lrDhWsTCzdcNunL0HYPKGwq07lvpuSlOq96pj4oi7vtFrk7OgUKS3icjd+v/kLAf4
 FjNxHiFm0r+TC+ykzlA/R/BG7oCLLDbOwh+Ohl09QUPY20ebiEtXXpm9CqfbOReHh44f
 J4MIhtgi7hSOi406bPExnvpWBSM5HNdq5BUKgajSuoNMYQ7VuuruVuDHV9Ax8FZ/cVKq
 tg9A==
X-Gm-Message-State: AC+VfDwfAtDe8ENTKLJqNg054pnITPfDtwwsrgXl7oiaRzBEOzswynfv
 ltbxiVSVoXQBliPa0U/2pgEMRA==
X-Google-Smtp-Source: ACHHUZ7N/lXymSO4KkAUma1tzAydULDjaCN5ORz1N/mJAB0SGLYVqb1nWG2s9sReyZMjGUKJWPnTsg==
X-Received: by 2002:aa7:c91a:0:b0:514:94ff:f67e with SMTP id
 b26-20020aa7c91a000000b0051494fff67emr6307174edt.5.1685366360627; 
 Mon, 29 May 2023 06:19:20 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 b7-20020aa7dc07000000b0051056dc47e0sm3058753edu.8.2023.05.29.06.19.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 06:19:20 -0700 (PDT)
Message-ID: <a6d5285b-641e-16a1-ca29-2d020b628ff8@blackwall.org>
Date: Mon, 29 May 2023 16:19:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 4/8] flow_offload: Reject matching
 on layer 2 miss
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
> Adjust drivers that support the 'FLOW_DISSECTOR_KEY_META' key to reject
> filters that try to match on the newly added layer 2 miss field. Add an
> extack message to clearly communicate the failure reason to user space.
> 
> The following users were not patched:
> 
> 1. mtk_flow_offload_replace(): Only checks that the key is present, but
>    does not do anything with it.
> 2. mlx5_tc_ct_set_tuple_match(): Used as part of netfilter offload,
>    which does not make use of the new field, unlike tc.
> 3. get_netdev_from_rule() in nfp: Likewise.
> 
> Example:
> 
>  # tc filter add dev swp1 egress pref 1 proto all flower skip_sw l2_miss true action drop
>  Error: mlxsw_spectrum: Can't match on "l2_miss".
>  We have an error talking to the kernel
> 
> Acked-by: Elad Nachman <enachman@marvell.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Expand commit message to explain why some users were not patched.
> 
>  .../net/ethernet/marvell/prestera/prestera_flower.c    |  6 ++++++
>  drivers/net/ethernet/mellanox/mlx5/core/en_tc.c        |  6 ++++++
>  drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c  |  6 ++++++
>  drivers/net/ethernet/mscc/ocelot_flower.c              | 10 ++++++++++
>  4 files changed, 28 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>



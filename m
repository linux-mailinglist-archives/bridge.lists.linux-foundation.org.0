Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4807CBF68
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BF8060AD1;
	Tue, 17 Oct 2023 09:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BF8060AD1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=niuAUFEa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7MGyywY7PpL; Tue, 17 Oct 2023 09:30:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 005F360F40;
	Tue, 17 Oct 2023 09:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 005F360F40
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AB0B3C0DD3;
	Tue, 17 Oct 2023 09:30:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8E30C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0D354060F
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D354060F
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=niuAUFEa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rnf42nP6v496 for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:30:12 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07FE740554
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07FE740554
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4065f29e933so57977955e9.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697535010; x=1698139810;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eqrKYPUPhr46HriX5Pvcq+Sh5npTGfsVC23Gye75nLU=;
 b=niuAUFEaO+qH5wsYeChnEpi+7dERwIqsRtRitHis0ed/V7qqwcy8FFXtHevj+TJ18d
 MaR8pwQb8J47bmjkXiSnKDkg9mfF3TJiARgKq/F5o+WVbHUDYFku0xK13543EbmQgouM
 1xUGYRkb4q8vpRGHQCGTCe2OOGKsnJtV5NfWsAsrntYQ0tSGvKDLLI8/P3j08kpFbjHy
 NNMHyWDLCgekcNG9zg3U/HeVfPs2+8/FzEQMc6kKTNaLw39ywxLowMTltVuPcBrukKRR
 Z/xLx1E0CGjdO3Gyz5YF4u9I6GJBFGfpKeUYUiMTaV5xIHfl5h1GGUEK5raZeSHqT8C3
 nXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697535010; x=1698139810;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eqrKYPUPhr46HriX5Pvcq+Sh5npTGfsVC23Gye75nLU=;
 b=GAhuwh+sQCtVqCWj0/W3ydi6+f5mqVFvRSr7R2LDXdRKd6dbd65JV2qREe9hkhngr2
 RJYnX6nc32HxjkbT3so87TZ+c9OzDqWOr22D6tcdSx79H8bLAiLic4kDNd+Vih+P+VRv
 F2kxgdz36udHWW4g2imna9JRZSJF7UpC71eB05jmprdUFntt9oHh8OjnK1+QBitnEfZj
 0DoVDTEmyIV9dAzzgGQIpLhfxMJWHE5OOWbEsfMUqlxaSZAVafvyryR2g9NhwAFz4CcC
 zlUv+BusYDD02+wNBs4bG9qTyE8qpRrEC52+DHMKucNxMz0lNxlUYNDFrUL4szJDRwgi
 qQbA==
X-Gm-Message-State: AOJu0YwmzbpEZqsc+dGugLX6KgvhzZ7HiHwCGFKY6tmW5JqDTSWK9sGE
 6p92rQcyrcbfjmiPgc6LYdIE+g==
X-Google-Smtp-Source: AGHT+IEz0cSf9I9DG4JViRBG6/BP7CYJncZSGulHtHhouaCMKvLNfhqaxxANno1jAcx5xlsuPblu7A==
X-Received: by 2002:a05:600c:3b19:b0:406:44fe:7621 with SMTP id
 m25-20020a05600c3b1900b0040644fe7621mr1323993wms.25.1697535009869; 
 Tue, 17 Oct 2023 02:30:09 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 q18-20020a056000137200b003143867d2ebsm1247954wrz.63.2023.10.17.02.30.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:30:09 -0700 (PDT)
Message-ID: <40dcbbde-3e3e-fd7e-a48c-0aa2ff3bf2db@blackwall.org>
Date: Tue, 17 Oct 2023 12:30:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-14-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-14-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 13/13] selftests: vxlan_mdb: Use MDB
 get instead of dump
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Test the new MDB get functionality by converting dump and grep to MDB
> get.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   tools/testing/selftests/net/test_vxlan_mdb.sh | 108 +++++++++---------
>   1 file changed, 54 insertions(+), 54 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



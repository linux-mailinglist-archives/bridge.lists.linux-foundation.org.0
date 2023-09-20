Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A757A7983
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 12:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31FF541B97;
	Wed, 20 Sep 2023 10:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31FF541B97
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=pV8qwlB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Co_ZyJyq9N-n; Wed, 20 Sep 2023 10:44:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 715A041BDF;
	Wed, 20 Sep 2023 10:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 715A041BDF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEDC4C008C;
	Wed, 20 Sep 2023 10:44:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7483DC0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37DD08392C
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37DD08392C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=pV8qwlB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6j5OJAuKQrFU for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 10:44:20 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5915B83925
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5915B83925
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-9a65f9147ccso876180566b.1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 03:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695206658; x=1695811458;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7O7mWyhJga1IYEYoLQcrmnzYFbmyVRQyHT7Q+TKsjdE=;
 b=pV8qwlB8fvU58k7cqNKv2CnlHhou84aQyWrR1rxqY4FJ5ZPXng5aQVU/FtJGJ2hhdJ
 ikzCskr5gDLYJwm1eMDDjc61VXim5CsQ10DR13OHAHx8fOFIIihu+svRNVNDyRmo9hoH
 SbHjAdX/hXXK6CK43nJAkgt2xYVJCiWomGTQ1qL0L09CjFdkO4OuVk/wVriIOgXokFG8
 fXl4v+Ey0tyyOLDsH6C59V4Z5VQIU50kq800PWR2jl5TQZk6FARDLhUNR1/p2vMoD/le
 Ld0z+qdBD21Gzxss9/IJgKDtEzjP+A2TLCGU2OQryXBSBALTp1AT1/TOxa6nCUiQNMh0
 +lFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695206658; x=1695811458;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7O7mWyhJga1IYEYoLQcrmnzYFbmyVRQyHT7Q+TKsjdE=;
 b=wIG9RNWKSu9Lq2UO7VD348A9N411CmbDGj/colwp9nwfLmgxRrEqyFkE8gOgoXQoHZ
 QSY95Qk3kQ4Brd9QMoql3s/E/wzpfWYSTlIxoRkHuBjd9M/j7CTSs2ykmpQ4MOul3Cth
 9HlCyc6wj1lbj2ISxFVYQmIK2d6GRM6lJV9fYc3ksOCi6PWbwmSRFufttHHVocNDU/4E
 bdOn8iX+nADF7/SuynwC7v58aKKc4aaS1nyBSN761MEHDgl7+gsrII1rhkI/pxEWzVQs
 GQm1DQyHDaNkEN5xnFXvQ5s8q6BfexK6Gtq/aZOsC7wXXz8zP7Ay71p+PM180/SYVo49
 ySaw==
X-Gm-Message-State: AOJu0Yz16JiwZXTuiTT/JL5jroFEjCCVEue53mK8mN6TNxHnRHRoZ/h5
 Q+dpOWJPLRtGTctTqTZHAGahSA==
X-Google-Smtp-Source: AGHT+IGO3lncIOMxzIVaRUoIoQXNjIcQ22mCx46sIDTt+vAiLFg+skIRbs2SUmaSDzWxxnF2blZYPA==
X-Received: by 2002:a17:907:75c2:b0:9aa:25f5:8d95 with SMTP id
 jl2-20020a17090775c200b009aa25f58d95mr1711323ejc.59.1695206658146; 
 Wed, 20 Sep 2023 03:44:18 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 i13-20020a170906114d00b00992afee724bsm8979517eja.76.2023.09.20.03.44.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 03:44:17 -0700 (PDT)
Message-ID: <a2a5ede9-c93e-915d-61be-c2c2fab18479@blackwall.org>
Date: Wed, 20 Sep 2023 13:44:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-1-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-1-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 1/6] net: bridge: Set
 BR_FDB_ADDED_BY_USER early in fdb_add_entry
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

On 9/19/23 11:12, Johannes Nixdorf wrote:
> In preparation of the following fdb limit for dynamically learned entries,
> allow fdb_create to detect that the entry was added by the user. This
> way it can skip applying the limit in this case.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/br_fdb.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e69a872bfc1d..f517ea92132c 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -1056,7 +1056,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>   		if (!(flags & NLM_F_CREATE))
>   			return -ENOENT;
>   
> -		fdb = fdb_create(br, source, addr, vid, 0);
> +		fdb = fdb_create(br, source, addr, vid,
> +				 BIT(BR_FDB_ADDED_BY_USER));
>   		if (!fdb)
>   			return -ENOMEM;
>   
> @@ -1069,6 +1070,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>   			WRITE_ONCE(fdb->dst, source);
>   			modified = true;
>   		}
> +
> +		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>   	}
>   
>   	if (fdb_to_nud(br, fdb) != state) {
> @@ -1100,8 +1103,6 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>   	if (fdb_handle_notify(fdb, notify))
>   		modified = true;
>   
> -	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> -
>   	fdb->used = jiffies;
>   	if (modified) {
>   		if (refresh)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


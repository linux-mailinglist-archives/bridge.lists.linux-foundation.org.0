Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C047A79F0
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 13:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD5DB41EE3;
	Wed, 20 Sep 2023 11:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD5DB41EE3
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=hSYhlYhJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esoT8xIWXcI5; Wed, 20 Sep 2023 11:01:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E773741ED8;
	Wed, 20 Sep 2023 11:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E773741ED8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F01EC008C;
	Wed, 20 Sep 2023 11:01:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DD2BC0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7455A41DBD
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7455A41DBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbHbKc76Xwr4 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 11:01:14 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E67241BD6
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E67241BD6
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-52f9a45b4bdso8353627a12.3
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 04:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695207672; x=1695812472;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fFCnzCVFLsbuhvtZ9EHw9SNjPT4ld8559k/OSp8m+oI=;
 b=hSYhlYhJW38iCWXGL0adIs9wqFItoIU/7fJKfZ07yY6PsKZGrPfSl+ZwvmSjLv/R9H
 Nd1TwzqekEWvgq3m2O0EA3V+OyOIRxdt3IsUq3MU4+Sbs9Wx+wS/e0iJ09oxalu59YqL
 KFrs0AoC6RtJOJRNiN0ef3o9XJ3EGRAKJBEAw0qjsKnPMiSjXAn56GA/P7x9ofi0mWhM
 PL9jwanzXtuwA60BUEWh6ZG84IErxouAZlMH1/cDZlZD7FJcUbktkPZOau2MlxT5zZRE
 rJd6YkD2lsZzheG44zi0BEYROpsUrmRWjmaIfu6tE59Wn1uUo9lDOiSbiQMWrw9BZaJC
 Y3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695207672; x=1695812472;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fFCnzCVFLsbuhvtZ9EHw9SNjPT4ld8559k/OSp8m+oI=;
 b=SuYpPHpj2nyKyW9rzDjsFNkSvf/XJwphuX04oUhsAKE5nkuk1EsCbMHIVkLV/i3fY5
 2YyouV1LVTpA6YwAOFxcwiKCjSsaWZQ3YLIb2b/BpdtDA3T5HkXc0tWd1M8EWm7lhnKL
 iib2ocEwYznVb2s/o8vrVeNme1GZgQCy8b7c2acrvHnF2sXmotf/fjyKwKKaVigbHi35
 4jPDRp29mCgIS+Ph2+8SKKOVULaLdU5EYQAdf+zVRm21W74SPe+4GLqKtx73QEac7UJK
 U0aN2fF8Q9ao0K6YiXmdi+ACrkgyHpZ1JBkEOO/ikoxAfyv6Aa70IVpEzJ/pko3br2TX
 W0wQ==
X-Gm-Message-State: AOJu0YzskJaYn54/PthDXQfWEQFIbBqqRJDCT5wg6EfRul3sSP2jhKUX
 lw06hHmwinr/qihC5GeDgZwOig==
X-Google-Smtp-Source: AGHT+IG3UkUHhXRFKHx1etLPK3jZZNjDhVAwE4UIfgjnZzVOtLR39Gca5U0GPsI8uvAEiDai68jh1Q==
X-Received: by 2002:a17:907:a087:b0:9aa:186:959a with SMTP id
 hu7-20020a170907a08700b009aa0186959amr1644862ejc.31.1695207672595; 
 Wed, 20 Sep 2023 04:01:12 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 o2-20020a1709062e8200b009ad8338aafasm9320070eji.13.2023.09.20.04.01.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 04:01:12 -0700 (PDT)
Message-ID: <e1c0f5ac-a0bc-dc2c-0638-c580498670e4@blackwall.org>
Date: Wed, 20 Sep 2023 14:01:10 +0300
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
 <20230919-fdb_limit-v4-6-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-6-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 6/6] selftests: forwarding:
 bridge_fdb_learning_limit: Add a new selftest
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
> Add a suite covering the fdb_n_learned and fdb_max_learned bridge
> features, touching all special cases in accounting at least once.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   tools/testing/selftests/net/forwarding/Makefile    |   3 +-
>   .../net/forwarding/bridge_fdb_learning_limit.sh    | 283 +++++++++++++++++++++
>   2 files changed, 285 insertions(+), 1 deletion(-)
> 

Always nice to see new tests. Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



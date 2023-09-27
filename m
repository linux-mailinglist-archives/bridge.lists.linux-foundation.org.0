Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3A77AFDB5
	for <lists.bridge@lfdr.de>; Wed, 27 Sep 2023 10:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3BFD60B9E;
	Wed, 27 Sep 2023 08:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3BFD60B9E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=26Ygd3M1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6udNtY1nTzb; Wed, 27 Sep 2023 08:10:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 25A6A60AB2;
	Wed, 27 Sep 2023 08:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25A6A60AB2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8BC8C0DD3;
	Wed, 27 Sep 2023 08:10:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6520CC0032
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F4DA40965
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:10:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F4DA40965
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=26Ygd3M1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LD7XcJMn0aEu for <bridge@lists.linux-foundation.org>;
 Wed, 27 Sep 2023 08:10:55 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A966C4095E
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A966C4095E
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-31f71b25a99so10406768f8f.2
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 01:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695802252; x=1696407052;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NBmOuCvdW9NVL1Xq7Sds9uqW+w+rqXLS8qDFF1herE8=;
 b=26Ygd3M1Uzh6WVZGuPaGq32XU0TUF+S762qQ49QF8A+1QaMYUlPPBQjpREDcjVKRln
 A8F+AF9Z2TPPVa5tKZ/xo9Y6ZOUEhxxEgbB8t9y/k1aoR1foA5GCnZ4GYDrbOhQwwFjp
 F6MjT1llNHNOx3s21+Fvp1UUh4yoxtQYDwitHpSFJ/RqVdYK8f7V8LiUrfAJXxWu63cV
 FdUGG9RI7ubKs8+FEzKq4aQZB9WozZBPFiQxZXgdL4XcY7zSu77y7rd00137n4Qz6jOq
 +iDAJf6CPdr2HeGQIiCA6C5CECDvcmBLbyk3N47Y8PA6R5NbwkRsHlZW6JvCltzdSYsw
 7YGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695802252; x=1696407052;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NBmOuCvdW9NVL1Xq7Sds9uqW+w+rqXLS8qDFF1herE8=;
 b=E6ONLNguepWXoBgIpC3Blv9KKXX3QlkmFUQzPnooQZGndru/ZQMx7ntYQ88gpBoLID
 fCynx/WnHQ8huSe+4Q4/a7MmM+TvRqi4ABJhqjKKIa4ykDAxjjZ69S5EGwTFPM2kQwsV
 QvtOFu8wu73mmeJf9z93aNhQxd1sZ13Az9X6ZBaavzVx5wMc4pX0ty4I5uMQMfV1e3GH
 1gOtumx3Y8n2c3QrdXvCiZuP0BnZvrW0mLxg1QUbbxzZqgc994wC5wuMWt4RWbOhn59s
 UKgxAlwHBTLn/u6NUwvgCqmyCTBlSNudqY8vDk4iXaWBIR0ZOaeyYZk27nonr06MRzIZ
 AAjA==
X-Gm-Message-State: AOJu0YyhKab8KXQLcjMBoHE8ZTWzc4gpjlRvZiAYEI9ExkO622WdwwsX
 ie0Zxq+HarWxfOUQ4Zg2D+Bgyw==
X-Google-Smtp-Source: AGHT+IEKTsuknU2uuQEZaxLZtK8OwodOqhENja8RJX6uJxZpy29yQQXcdMSM3cppVDtiu8cEn9yLww==
X-Received: by 2002:adf:fe49:0:b0:314:350a:6912 with SMTP id
 m9-20020adffe49000000b00314350a6912mr1190372wrs.36.1695802252428; 
 Wed, 27 Sep 2023 01:10:52 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 m16-20020a056000009000b0031c71693449sm16622619wrx.1.2023.09.27.01.10.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Sep 2023 01:10:52 -0700 (PDT)
Message-ID: <3dccacd8-4249-87f8-690c-6083374dc9d1@blackwall.org>
Date: Wed, 27 Sep 2023 11:10:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Trent Lloyd <trent.lloyd@canonical.com>, Roopa Prabhu <roopa@nvidia.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>
References: <20230927075713.1253681-1-trent.lloyd@canonical.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230927075713.1253681-1-trent.lloyd@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH] bridge: MTU auto tuning ignores IFLA_MTU on
	NEWLINK
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

On 9/27/23 10:57, Trent Lloyd wrote:
> Commit 804b854d374e ("net: bridge: disable bridge MTU auto tuning if it
> was set manually") disabled auto-tuning of the bridge MTU when the MTU
> was explicitly set by the user, however that would only happen when the
> MTU was set after creation. This commit ensures auto-tuning is also
> disabled when the MTU is set during bridge creation.
> 
> Currently when the br_netdev_ops br_change_mtu function is called, the
> flag BROPT_MTU_SET_BY_USER is set. However this function is only called
> when the MTU is changed after interface creation and is not called if
> the MTU is specified during creation with IFLA_MTU (br_dev_newlink).
> 
> br_change_mtu also does not get called if the MTU is set to the same
> value it currently has, which makes it difficult to work around this
> issue (especially for the default MTU of 1500) as you have to first
> change the MTU to some other value and then back to the desired value.
> 

Yep, I think I also described this in the commit message of my patch.

> Add new selftests to ensure the bridge MTU is handled correctly:
>   - Bridge created with user-specified MTU (1500)
>   - Bridge created with user-specified MTU (2000)
>   - Bridge created without user-specified MTU
>   - Bridge created with user-specified MTU set after creation (2000)
> 
> Regression risk: Any workload which erroneously specified an MTU during
> creation but accidentally relied upon auto-tuning to a different value
> may be broken by this change.
> 

Hmm, you're right. There's a risk of regression. Also it acts 
differently when set to 1500 as you've mentioned. I think they should 
act the same, also bridge's fake rtable RTAX_MTU is not set.

> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2034099
> Fixes: 804b854d374e ("net: bridge: disable bridge MTU auto tuning if it was set manually")
> Signed-off-by: Trent Lloyd <trent.lloyd@canonical.com>
> ---


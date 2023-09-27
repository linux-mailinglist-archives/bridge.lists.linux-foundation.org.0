Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 351087AFEAE
	for <lists.bridge@lfdr.de>; Wed, 27 Sep 2023 10:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F06F61052;
	Wed, 27 Sep 2023 08:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F06F61052
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=UUuOu1DI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9aktjl8fbUXE; Wed, 27 Sep 2023 08:35:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A13926100D;
	Wed, 27 Sep 2023 08:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A13926100D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 460B4C0DD3;
	Wed, 27 Sep 2023 08:35:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6D41C0032
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B19B982861
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B19B982861
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UUuOu1DI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQoPJztw8X9s for <bridge@lists.linux-foundation.org>;
 Wed, 27 Sep 2023 08:35:01 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 451DD82849
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 451DD82849
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-405361bb949so113180385e9.1
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 01:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695803699; x=1696408499;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6EzRH8HpBFbjaPAR694gwUNSGbvhoAReDe5zSrIsMYc=;
 b=UUuOu1DIpz+ZvOvluwmWpYFcVNL6+pXD7L9rzuA9hmzHFSb2IXRemucMSnoLU5xwEc
 nq8WDYiDom/6vdkQ23yrgWgG/xbi6I7tU+RW7LW1WiQwXMKFExKACAJLHIxONMlyvU/b
 J2MkNMk4OxikwOCZXc1FHm+V/efrjdRloO5tHzQ+mDOTUkFBHQwKXgwJb6fBJ+cXdxlz
 8wKL8tXSXmhlqI9VqStLo1GREmO2x8Dm9lrfsKg44ij1dZzApJRwlSR0AqSW58U4wPRK
 sLZb2+eLfptkRJQyAUMhsevwqkPzA8j0lNzUiUMWNjDe0HS05u557Z7LaLDsBF5MyW1i
 Q61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695803699; x=1696408499;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6EzRH8HpBFbjaPAR694gwUNSGbvhoAReDe5zSrIsMYc=;
 b=nbiMWGc2V0Dzcu+GY2WTeiffGvRWMRuSA2loDLBCyfzu8Ek0xPzy6vAnIRXIOr1yZc
 pOR8wJRK1NMYYnSvMbK1DID7adhxVxvH6wgVuw1zvFns9pZ2Z7caK1OqmjY3LDYQQKvI
 3psxPnL+ct4WpFfTWZ3iQVxujqIE7aYqwtM+7JvnmLAUB7g/17bqShFjnf9uj8NUrJqf
 Klhh4xwh870+uB6GXmjl99m4qEIFPM0hUreb0A6xQpomCkgghu2pju1eMV4UpRBuN5IV
 6kf2W+kd9UAftzB2Ip0goLbjdTe721Ak8D+Q1C+fVF/cyivMtSE6FsbT3NIRhl1u4Qs1
 t9aw==
X-Gm-Message-State: AOJu0YwtUn+gV5i3xQIkuPJshtUM6KAPj7PNrUtzAgAYAq7J5mol478e
 rD+8tQ8zAHUHOr5Rg3QVpvzElg==
X-Google-Smtp-Source: AGHT+IFuym5R8Qhlx0EFOvWxJLW34MZWMA5h5QfqPC2FB+6Of5cJKCozwBEzMLcTtleEgixAGH9LwQ==
X-Received: by 2002:a05:600c:365a:b0:405:36d7:4579 with SMTP id
 y26-20020a05600c365a00b0040536d74579mr1220226wmq.28.1695803699132; 
 Wed, 27 Sep 2023 01:34:59 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 k12-20020a7bc40c000000b003fc04d13242sm20153631wmi.0.2023.09.27.01.34.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Sep 2023 01:34:58 -0700 (PDT)
Message-ID: <9ac9b0bf-88e9-5156-a01c-507ae331dd9e@blackwall.org>
Date: Wed, 27 Sep 2023 11:34:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Trent Lloyd <trent.lloyd@canonical.com>, Roopa Prabhu <roopa@nvidia.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>
References: <20230927075713.1253681-1-trent.lloyd@canonical.com>
 <3dccacd8-4249-87f8-690c-6083374dc9d1@blackwall.org>
In-Reply-To: <3dccacd8-4249-87f8-690c-6083374dc9d1@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 9/27/23 11:10, Nikolay Aleksandrov wrote:
> On 9/27/23 10:57, Trent Lloyd wrote:
>> Commit 804b854d374e ("net: bridge: disable bridge MTU auto tuning if it
>> was set manually") disabled auto-tuning of the bridge MTU when the MTU
>> was explicitly set by the user, however that would only happen when the
>> MTU was set after creation. This commit ensures auto-tuning is also
>> disabled when the MTU is set during bridge creation.
>>
>> Currently when the br_netdev_ops br_change_mtu function is called, the
>> flag BROPT_MTU_SET_BY_USER is set. However this function is only called
>> when the MTU is changed after interface creation and is not called if
>> the MTU is specified during creation with IFLA_MTU (br_dev_newlink).
>>
>> br_change_mtu also does not get called if the MTU is set to the same
>> value it currently has, which makes it difficult to work around this
>> issue (especially for the default MTU of 1500) as you have to first
>> change the MTU to some other value and then back to the desired value.
>>
> 
> Yep, I think I also described this in the commit message of my patch.
> 
>> Add new selftests to ensure the bridge MTU is handled correctly:
>>   - Bridge created with user-specified MTU (1500)
>>   - Bridge created with user-specified MTU (2000)
>>   - Bridge created without user-specified MTU
>>   - Bridge created with user-specified MTU set after creation (2000)
>>
>> Regression risk: Any workload which erroneously specified an MTU during
>> creation but accidentally relied upon auto-tuning to a different value
>> may be broken by this change.
>>
> 
> Hmm, you're right. There's a risk of regression. Also it acts 
> differently when set to 1500 as you've mentioned. I think they should 
> act the same, also bridge's fake rtable RTAX_MTU is not set.
> 

The last part about RTAX_MTU is probably a separate issue. :)

>> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2034099
>> Fixes: 804b854d374e ("net: bridge: disable bridge MTU auto tuning if 
>> it was set manually")
>> Signed-off-by: Trent Lloyd <trent.lloyd@canonical.com>
>> ---
> 


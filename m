Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B4D5337F7
	for <lists.bridge@lfdr.de>; Wed, 25 May 2022 10:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FD0F41BB5;
	Wed, 25 May 2022 08:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fdikcmdytHHV; Wed, 25 May 2022 08:06:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BE4AD41BB2;
	Wed, 25 May 2022 08:06:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 65664C007E;
	Wed, 25 May 2022 08:06:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19672C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 161BA82730
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJEcEP49YK01 for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 08:06:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BC3A826AA
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 08:06:49 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id t6so28970384wra.4
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=cVq7pwXv2//Gfr1cHlRRSEheHaq4li61MQakSnDYkHk=;
 b=NSbOEN1kEirXXcI0n+Rf9Sy90jmua25IOlwq3lBlny6ebWLJYupmHvohFiRfMPOYyq
 4F5ikMXUckwPZMYV4cy1mkymCR7C/+/APrT91TE45m53C/G8or+AB0C7YnLnAmuFqZxj
 a/5bJX+7SKQT+s4uAyqsGz5KEfN+/60UTN5yTFZEQNyAHD1BVJT73zQdK0VlccjJONE9
 6R2aYtGZx2oDjYvCVCmv2sLZ5HSRUx3w3LKH4wb4s0fzsiBa9yitlqNtoveAi/tXQGzZ
 HxQ1a1kqvyEtO1SgEEEkCr31sl8DHd8EzzaECAtIi2qlVGJgviVNf+Z4TdWIH4CvIbxt
 nT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cVq7pwXv2//Gfr1cHlRRSEheHaq4li61MQakSnDYkHk=;
 b=U/McnswZmnl3M+ivWHF82dqGs2uxLapgmzDyhOLMt+s7bBC2nCwzIthvaB+An0b8H6
 +0HWEaZ+fc/npzCEmWKR+XQxguKimyvscQyCYCsOsFUFWlH4QpUvyT1fepzh24Q0FX35
 O4rWA0cfXRAItn6MqUAaULiIiEMG04WZk/x1riXNZAQM0Df4wQrwG5eRyEdr3H+3LJeQ
 n+zulyrGUtPq2xPmt44MokataGpaSh64/Lw2X9mKTdHGr0Moh82/XJnEI1B+wx3Zatud
 aVVqgwiK6e4DnjyQqmrcvxOAbB+4Ib1xFM6DoocurBgIELJSIKeml3S/h/xHcltYgL/B
 hKpw==
X-Gm-Message-State: AOAM530YtTASSufMispYGuwWImDZpy1xQcRIHIO0fW70SZGg2xZJ48uz
 Q0A/dk1R+b712l9vsFe5K5JW1A==
X-Google-Smtp-Source: ABdhPJxxUHRzsWG9Ga2j1bOgOyilkp0ZbdgwfH/TcJtO2mh86zxzRwq60XFA/9neVmDozoa29iR3JA==
X-Received: by 2002:adf:d1a8:0:b0:20f:f808:2ac8 with SMTP id
 w8-20020adfd1a8000000b0020ff8082ac8mr4694627wrc.495.1653466007320; 
 Wed, 25 May 2022 01:06:47 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 x8-20020a7bc208000000b0039765a7add4sm1038032wmi.29.2022.05.25.01.06.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 May 2022 01:06:46 -0700 (PDT)
Message-ID: <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
Date: Wed, 25 May 2022 11:06:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <86zgj6oqa9.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On 24/05/2022 19:21, Hans Schultz wrote:
>>
>> Hi Hans,
>> So this approach has a fundamental problem, f->dst is changed without any synchronization
>> you cannot rely on it and thus you cannot account for these entries properly. We must be very
>> careful if we try to add any new synchronization not to affect performance as well.
>> More below...
>>
>>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>>>  
>>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
>>> +		atomic_dec(&f->dst->locked_entry_cnt);
>>
>> Sorry but you cannot do this for multiple reasons:
>>  - f->dst can be NULL
>>  - f->dst changes without any synchronization
>>  - there is no synchronization between fdb's flags and its ->dst
>>
>> Cheers,
>>  Nik
> 
> Hi Nik,
> 
> if a port is decoupled from the bridge, the locked entries would of
> course be invalid, so maybe if adding and removing a port is accounted
> for wrt locked entries and the count of locked entries, would that not
> work?
> 
> Best,
> Hans

Hi Hans,
Unfortunately you need the correct amount of locked entries per-port if you want
to limit their number per-port, instead of globally. So you need a consistent
fdb view with all its attributes when changing its dst in this case, which would
require new locking because you have multiple dependent struct fields and it will
kill roaming/learning scalability. I don't think this use case is worth the complexity it
will bring, so I'd suggest an alternative - you can monitor the number of locked entries
per-port from a user-space agent and disable port learning or some similar solution that
doesn't require any complex kernel changes. Is the limit a requirement to add the feature?

I have an idea how to do it and to minimize the performance hit if it really is needed
but it'll add a lot of complexity which I'd like to avoid if possible.

Cheers,
 Nik


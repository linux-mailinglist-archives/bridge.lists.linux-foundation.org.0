Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65C532E98
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 18:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AC9660784;
	Tue, 24 May 2022 16:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QUROnbfWhd4Y; Tue, 24 May 2022 16:08:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1A401605AC;
	Tue, 24 May 2022 16:08:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DA4F9C007E;
	Tue, 24 May 2022 16:08:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F3A1C002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EAA0410B5
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1JfZLCvYPSuw for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 16:08:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4902A410A4
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:08:12 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id 27so16513418ljw.0
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=FYyqUIqX7o7uukxhOxpvy5c6jwFhAW9JG5e+iqj0ZAA=;
 b=c40RMye4tt3qCM6W7eagyel05d9f+ezi9QjwhaQUCVPrgeXySiIl9CgyIOCULFxZRD
 R6hBjevW71JnRlce8PS7Z25IqHWEruI0bmo1pEwvrEZrFMyulwV9euVsIFwx1faYR3pt
 IZOpC8zioCI8T2SnZoD3ZoSTFvlbhGEjtZ8ulllzeUUNb91lhIKU8erEgOQ+3jnIWFjx
 fiv+sihOx6bLRkA5OmLH/IMQpg6fnANudZqfBYeJtNmLbZiq+VIKRXePkKm+JBYSWSOK
 2et3ghTg4DPaTlWwem54LXEFrT27VZvUKSFjYc7yQesvH60Ljkbai0rT9V3qfElTv5FM
 XxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FYyqUIqX7o7uukxhOxpvy5c6jwFhAW9JG5e+iqj0ZAA=;
 b=g4XWZ61QSRiK/P2kOilwMVsfkuEkYrBVpShN771bJxWIbUwdfkOkn6WGdc7IfPfZWB
 Lu7D1uq02YwINo6KXLRP4V752jFo7kPqNDFMo6Razxprh0jMhbWswWZ0GpdkMBYe10cd
 0GMCF4ENewJ4B3TZzYUyLWyLHK4FkIgQX+BrbQG+4nqLxxTRnQEePI+rzRm6s41WSDcC
 YE0SD/7dWTwTTNQ2QEW1/1Svt1D03ryyAgNCUtgxWtxuUSJts2DsVAagUVDH1LjuSI28
 jlqoZE2nKFYgSxGUucX6it/Kwc2nVunaUa0+aa0sdUODXGyujhwWkHCUGntNYfL8azKr
 KVng==
X-Gm-Message-State: AOAM5312iElQPxO8AlZmhSmE8KPHwhxjbpVP82skMnY9hLUkFTJ/NEHx
 bf5lO70Jx80aw1Vfi9MbUvY=
X-Google-Smtp-Source: ABdhPJxuLzq1hI6bqY13WMLFP01JX+UfPxh11e02lJOpXFmfpfy/IHhgLs7X1xQVsl3eRy/uyOdaIA==
X-Received: by 2002:a05:651c:1a14:b0:253:ed7b:c22 with SMTP id
 by20-20020a05651c1a1400b00253ed7b0c22mr5665926ljb.84.1653408490226; 
 Tue, 24 May 2022 09:08:10 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 u26-20020ac248ba000000b0047255d21188sm2597000lfg.183.2022.05.24.09.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 09:08:09 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
Date: Tue, 24 May 2022 18:08:08 +0200
Message-ID: <8635gyvrpz.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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

>
> Hi Hans,
> So this approach has a fundamental problem, f->dst is changed without any synchronization
> you cannot rely on it and thus you cannot account for these entries properly. We must be very
> careful if we try to add any new synchronization not to affect performance as well.
> More below...
>
>> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>>  
>> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
>> +		atomic_dec(&f->dst->locked_entry_cnt);
>
> Sorry but you cannot do this for multiple reasons:
>  - f->dst can be NULL
>  - f->dst changes without any synchronization
>  - there is no synchronization between fdb's flags and its ->dst
>
> Cheers,
>  Nik

Hi Nik,

I could check if f->dst is NULL, but in general this should be able to
work on a per port basis, so do you have an idea of how to keep a per
port counter of added locked fdb entries?

Best,
Hans

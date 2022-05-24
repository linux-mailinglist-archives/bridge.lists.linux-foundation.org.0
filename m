Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B369C532ED3
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 18:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE42F41B53;
	Tue, 24 May 2022 16:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODpQwb5t0suK; Tue, 24 May 2022 16:21:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2113E41B49;
	Tue, 24 May 2022 16:21:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7D44C007E;
	Tue, 24 May 2022 16:21:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 052A4C002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8FC141B55
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8vsNRmK1f-_j for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 16:21:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDDBB41B53
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 16:21:05 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id t25so31668957lfg.7
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 09:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2/bDGPYXufJFzkVnBY8mqDgAglNZetlk8WJ7Djt/e2E=;
 b=e6JB8CI6WFSU+Q/ABVHaxlfYhBRAsmmbmkIDuhn1m6DKPOXKF37gjB/m9GdsVi49dc
 JNf43jPT5zw03LMoVZ8t3fuV30/a2V5p20h02AkSpplyqHBCbbU0BEhybKuk9LvBIU0v
 yF5u5B3igHgLN7iRG8ZQrDAszFgPNI/I5CRCOoGPWgb0Tr5z/PCYQqsyZhaq45tfM2ue
 TR82sVYgQfPiZLzURg9Q0Ng/5eocdGR5EPE8FxukEwr6LoxzCf3TXITUf9yHbYMLAfmG
 vt/o3bafEdXjgzQsP4rsUwQGadPuBcmEHO5dtLS97SrWhTOdZeC4FS/jt5IR6+lcfUJ1
 OuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2/bDGPYXufJFzkVnBY8mqDgAglNZetlk8WJ7Djt/e2E=;
 b=cE0O7MncskaF26NW2LkJjMruTgbVqxH4TH24fgNtkLrcMLbbl0oKBYak2RoVN5Aq1s
 +cVejyOZWF7lfdK6JGbD8NYCKKYQmusNnk7sCoJWBC3fvvIPYe+uvzaR27dHivC/sIxu
 XwX/iCxCodYoBSqOrLBzh6DeWwOs+H4utlhsAOxFoU5XNTOMNQjq2vu54wI8pql5zoqz
 ga/o2SND4fFsgjB6k0is9G063UDPb5HfV6Ecktk8wMIafyoGFk5dp7KZp9Ne2ImMDmOM
 AjXt9h/FliGAo9O0Ebn5p3s9LrYKsaat4EnbUEQR4gblAEZTft+eFIfrsay79H6bdL/f
 rBMQ==
X-Gm-Message-State: AOAM532PDGFwUphxAjhHG+AbzMiNlfezUym+eIzNWF/s8Ka4cBYM5upD
 188hwMX3EgdZU8I53jNc154=
X-Google-Smtp-Source: ABdhPJzIQuFRRQuyC1EsDbZ10YZKs55feovmJnYJ1MTbAEC+b0Jjw4TR7inmyaHD1E/9Z28qwFMM0w==
X-Received: by 2002:a05:6512:1510:b0:445:cbc3:a51f with SMTP id
 bq16-20020a056512151000b00445cbc3a51fmr20695039lfb.116.1653409263918; 
 Tue, 24 May 2022 09:21:03 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 a26-20020a19f81a000000b0047255d21116sm2611832lff.69.2022.05.24.09.21.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 09:21:03 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
Date: Tue, 24 May 2022 18:21:02 +0200
Message-ID: <86zgj6oqa9.fsf@gmail.com>
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

if a port is decoupled from the bridge, the locked entries would of
course be invalid, so maybe if adding and removing a port is accounted
for wrt locked entries and the count of locked entries, would that not
work?

Best,
Hans

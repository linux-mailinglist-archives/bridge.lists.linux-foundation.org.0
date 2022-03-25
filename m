Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A112C4E7895
	for <lists.bridge@lfdr.de>; Fri, 25 Mar 2022 17:02:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50F9D61000;
	Fri, 25 Mar 2022 16:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VF6GYlS26cJx; Fri, 25 Mar 2022 16:02:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CB15561088;
	Fri, 25 Mar 2022 16:02:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8AA1EC0073;
	Fri, 25 Mar 2022 16:02:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7672C0012
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 16:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A20904027F
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 16:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSKE6UaM0mjT for <bridge@lists.linux-foundation.org>;
 Fri, 25 Mar 2022 16:02:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D40340158
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 16:02:10 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id h11so10908998ljb.2
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 09:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+OD60eQPT0VQTzE/zXfu180JDdeuowENv4FkX1dVZFE=;
 b=I8MvfJJg21hFIKhtqvvBctr1gAN5m6sffrS0rOoehEmmIPayRpaTUaRe/GPXScZ/SH
 2azU1M4fHHMRKTdXW6AxUyl/Slloo0KWbjmm4M6AA2COT0ckYY06spj7vr4L/0t+aHuP
 49Dw0R1j2j1bA4IMtVa6mKBme6bH63fkqKJwWv9OP7F3lxP+P4hUmeF5xx+NKJnFMIFr
 3QQetM/VX8SOp7DeM8FnVuM01Q37nBCTnGwbiujgazzVfNlfdxp70Wqa+R8ryl0ACD52
 kBx2038L1+1KxinXX1O1I2hOFRB3gq89vkJrGAO+noJWzqsKm7N7ZEokizNpdn9IS/Ys
 TMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+OD60eQPT0VQTzE/zXfu180JDdeuowENv4FkX1dVZFE=;
 b=7b5MBeJGbi77TUHfX/7PHxJUPbRiMz5sRr+NIqrtZK3WsDMLC8RPgOzUH5f+VpuaDJ
 yqjaMdgWg3HHFHWz6fKW/+93vrNYMK9gFXn8IB+zG7o38PGuFOSp+aForkZniMk6dokI
 5ZdfPOqJ3JVOC5FVp2WLMI+JjkOgXplINedPvG9NkUN0zqYDnsXEmrbJ6/GvNCWlWHy0
 eOuSiA14PDasa1F2gV9IULD9hwMv/YR2GDbJPNRIX07PuMow5MBZFn2kiHi8iHjfO26A
 zemhl/UWAHhjGeQukAuRK5MGIlZ+427OI9mSzpZgXLKDFlt32URQOlv9hcFS85HY04Nv
 iyfg==
X-Gm-Message-State: AOAM531jijHXqWHea6laIcGr0vW9w6VwtB84El7Ivot/gpCOUQXbsZYP
 CciOZtry5dmvmapTI5w4C0g=
X-Google-Smtp-Source: ABdhPJy6jB+HkWeuu+mr4Nf5L0XiH1JsJt71ZKa7Kvg7YTo3UzTPXUwRdrvEMV0xlzbN7/m6plkcTA==
X-Received: by 2002:a05:651c:198b:b0:249:8bf4:498b with SMTP id
 bx11-20020a05651c198b00b002498bf4498bmr8914549ljb.441.1648224128413; 
 Fri, 25 Mar 2022 09:02:08 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 i24-20020a2e8658000000b0024806af7079sm744149ljj.43.2022.03.25.09.02.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 09:02:07 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220325140003.a4w4hysqbzmrcxbq@skbuf>
References: <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
 <86lewzej4n.fsf@gmail.com> <20220324110959.t4hqale35qbrakdu@skbuf>
 <86v8w3vbk4.fsf@gmail.com> <20220324142749.la5til4ys6zva4uf@skbuf>
 <86czia1ned.fsf@gmail.com> <20220325132102.bss26plrk4sifby2@skbuf>
 <86fsn6uoqz.fsf@gmail.com> <20220325140003.a4w4hysqbzmrcxbq@skbuf>
Date: Fri, 25 Mar 2022 17:01:59 +0100
Message-ID: <86tubmt408.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On fre, mar 25, 2022 at 16:00, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Fri, Mar 25, 2022 at 02:48:36PM +0100, Hans Schultz wrote:
>> > If you'd cache the locked ATU entry in the mv88e6xxx driver, and you'd
>> > notify switchdev only if the entry is new to the cache, then you'd
>> > actually still achieve something major. Yes, the bridge FDB will contain
>> > locked FDB entries that aren't in the ATU. But that's because your
>> > printer has been silent for X seconds. The policy for the printer still
>> > hasn't changed, as far as the mv88e6xxx, or bridge, software drivers are
>> > concerned. If the unauthorized printer says something again after the
>> > locked ATU entry expires, the mv88e6xxx driver will find its MAC SA
>> > in the cache of denied addresses, and reload the ATU. What this
>> > achieves
>> 
>> The driver will in this case just trigger a new miss violation and add
>> the entry again I think.
>> The problem with all this is that a malicious attack that spams the
>> switch with random mac addresses will be able to DOS the device as any
>> handling of the fdb will be too resource demanding. That is why it is
>> needed to remove those fdb entries after a time out, which dynamic
>> entries would serve.
>
> An attacker sweeping through the 2^47 source MAC address range is a
> problem regardless of the implementations proposed so far, no?

The idea is to have a count on the number of locked entries in both the
ATU and the FDB, so that a limit on entries can be enforced.

> If unlimited growth of the mv88e6xxx locked ATU entry cache is a
> concern (which it is), we could limit its size, and when we purge a
> cached entry in software is also when we could emit a
> SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?

I think the best would be dynamic entries in both the ATU and the FDB
for locked entries. How the two are kept in sync is another question,
but if there is a switchcore, it will be the 'master', so I don't think
the bridge module will need to tell the switchcore to remove entries in
that case. Or?

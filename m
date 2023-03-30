Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B6E6D01C3
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 12:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B53560B94;
	Thu, 30 Mar 2023 10:45:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B53560B94
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=lGerEYp3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hln7AgurZS-6; Thu, 30 Mar 2023 10:45:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 90EFD60B32;
	Thu, 30 Mar 2023 10:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90EFD60B32
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 405FEC008C;
	Thu, 30 Mar 2023 10:45:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FC73C002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 10:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 391C241F2E
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 10:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391C241F2E
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lGerEYp3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLwQ4JjMLJl8 for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 10:45:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B487341E2E
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B487341E2E
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 10:45:17 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id eg48so74559365edb.13
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 03:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1680173115;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nJ4kHmOyB5GJCNT97r/CEXr1tfWeNmV/zja7PhdakrM=;
 b=lGerEYp3RodGDGGbu9v46KqIKVUtY8TeLHCWxCyKo+lIj9VCOEqmYXb5Luv5Icdw83
 /Q3ohcVMs8/k4KEjqUfKTm0pm1obz2hYyDJZEGwY4xvSV70Uh8/o0fRR62eoC40mv/Bv
 UEBYsZ9wt18DBWpVrq6PHs0ItsJPyhMLJmMVYdRNaFyf6g5o43qmVx2ExIW9JPB5NAcT
 SXRLeONaXaaxnx6NDDtdppC3NfBaEjMNaKyBR43dlSVVCegyF8RxQYNMsOAzUTzA2au6
 2XuJdBK+c0uj4WiQDcWKQjhPoR9V9sl3rqUkq8GEkpgIesqP2468KV0nJR3pSnsRbAgW
 ihWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680173115;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nJ4kHmOyB5GJCNT97r/CEXr1tfWeNmV/zja7PhdakrM=;
 b=ZZC3kb73H/tx9l6/SkxZQ+mAXxoHRCRM4yHRhFGAYa00UVFkOfMwFDmF8csDk5wgFM
 nITXJBu54ye3dDSuES42Wnw4i8MdcIfJkou3EFNdl/u/z+cTVLlwlKEMu/KP79L/W721
 RXZCDGniYcKiD9Qb+vijB7AoudmWYevi0jWDs6fA85IRG3cxfYsdjwr6MyYcG6J1Ae+6
 VI2pnbOy1nn7yAFNtm9qVXH/8ABwwnNFzq/4qWp/qRIJBlHaqYmbiCxYPG1jeTX+g6GS
 z/lDNdCVNv4VsgwJAIPbM7dEU+xImlkBXBH5/SsoalZc9o6XpG1A9yKDJcWh8Gxc5vlQ
 ayPA==
X-Gm-Message-State: AAQBX9ezJJPhrcvaEMJ7bufeRWST8RREgqpK1XeEndbfLaeNzJA8xo4g
 6eROH4O6JGD1zdpfnWFCzzG2Xw==
X-Google-Smtp-Source: AKy350ZCwuMbyX3imXZjyklWc/tn6fTJgMv803a+AfMakTywcrCsiPGJxBzQ+0cpDFJ7UWixfjodXw==
X-Received: by 2002:a17:906:738a:b0:878:58e6:f1eb with SMTP id
 f10-20020a170906738a00b0087858e6f1ebmr20132191ejl.23.1680173115494; 
 Thu, 30 Mar 2023 03:45:15 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 p25-20020a50cd99000000b004bf76fdfdb3sm17878396edi.26.2023.03.30.03.45.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 03:45:15 -0700 (PDT)
Message-ID: <6f0d0f2d-474b-caaf-78a7-289e660c3aa0@blackwall.org>
Date: Thu, 30 Mar 2023 13:45:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Hans Schultz <netdev@kapio-technology.com>,
 Ido Schimmel <idosch@nvidia.com>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <87fs9ollmn.fsf@kapio-technology.com>
 <ZCUuMosWbyq1pK8R@shredder> <87mt3u7csh.fsf@kapio-technology.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <87mt3u7csh.fsf@kapio-technology.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On 30/03/2023 13:29, Hans Schultz wrote:
> On Thu, Mar 30, 2023 at 09:37, Ido Schimmel <idosch@nvidia.com> wrote:
>> On Tue, Mar 28, 2023 at 09:30:08PM +0200, Hans Schultz wrote:
>>>
>>> Sorry, but I have sent you several emails telling you about the problems
>>> I have with running the selftests due to changes in the phy etc. Maybe
>>> you have just not received all those emails?
>>>
>>> Have you checked spamfilters?
>>>
>>> With the kernels now, I cannot even test with the software bridge and
>>> selftests as the compile fails - probably due to changes in uapi headers
>>> compared to what the packages my system uses expects.
>>
>> My spam filters are fine. I saw your emails where you basically said
>> that you are too lazy to setup a VM to test your patches and that your
>> time is more valuable than mine, which is why I should be testing them.
>> Stop making your problems our problems. It's hardly the first time. If
>> you are unable to test your patches, then invest the time in fixing your
>> setup instead of submitting completely broken patches and making it our
>> problem to test and fix them. I refuse to invest time in reviewing /
>> testing / reworking your submissions as long as you insist on doing less
>> than the bare minimum.
>>
>> Good luck
> 
> I never said or indicated that my time is more valuable than yours. I
> have a VM to run these things that some have spent countless hours to
> develop with the right tools etc installed and set up. Fixing that
> system will take quite many hours for me, so I am asking for some simple
> assistance from someone who already has a system running supporting the
> newest kernel.
> 
> Alternatively if there is an open sourced system available that would be
> great.
> 
> As this patch-set is for the community and some companies that would
> like to use it and not for myself, I am asking for some help from the
> community with a task that when someone has the system in place should
> not take more than 15-20 minutes, maybe even less.

I'm sorry but this is absolutely the wrong way to go about this. Your setup's
problems are yours to figure out and fix, if you are going to send *any* future
patches make absolutely sure they build, run and work as intended.
Please do not send any future patches without them being fully tested and, as
Ido mentioned, cover at least the bare minimum for a submission.

Thanks,
 Nik


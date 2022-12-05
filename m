Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FD9642790
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:35:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B3CC402B1;
	Mon,  5 Dec 2022 11:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B3CC402B1
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=FOqOQwAe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lb4F1zt87h_r; Mon,  5 Dec 2022 11:35:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5ACEF4031D;
	Mon,  5 Dec 2022 11:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ACEF4031D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EFC38C007C;
	Mon,  5 Dec 2022 11:35:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0421AC002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C661B60BC0
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C661B60BC0
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=FOqOQwAe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcXIXxLoC8hM for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:34:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 050CD607CA
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 050CD607CA
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:34:58 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id bj12so27007336ejb.13
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ooZLq7sC1+gvKa+ByW5ocyYtYqELg6JGdZXKkHGlG10=;
 b=FOqOQwAe1U/P/Hjau8DIcy0mlJikU16lqvhT7CE6yM/4PjW75TMvkWw/M5y2EvDLNe
 hqxJZNjlaamV903SWrDyFYo1+4HatPbg1zADpCVLwft1OHWtXoIrl3URln022KwzXgIJ
 XtGvxzLoNyj8mr6hruhYTTbAtKNYPQGUxHYS7Wbdvs+VZTP4MQ3KPEMM34zByBcf7gYc
 PhcI3foWpz/B1TgA7xT/4Y7dQ365b8qSu/w9Ku6MmCSOr/gSBZJ6vY2DCtu80Oh8f7un
 taZq/9/FfsCW37s5e1lUMV0p1C0SqkB9GWnq5LL23NhcG5lXJlHZTUY16QJwK0UavAGs
 w3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ooZLq7sC1+gvKa+ByW5ocyYtYqELg6JGdZXKkHGlG10=;
 b=tsQn9H+CRFObekcKlBBzPgB7axR4+GLOvrjT6l7R46f/i/iLDT6VQcOTDbERILq7lD
 /rUW68SloahNqjuT46g4TCgIZm+EXzTi7lj13SQs0gIIgRCE511Z2RNcqDKqtgQK/9sW
 ALLpYo0hBb9uZi6snHRa/DKhmaagQ2ravv1AzLZtccem3iM1Jw+4MlG4ET/3XCgpmzXe
 BiO+jnTk5FBsMiEQlZcL2WswbNMuM3OfxMJpoDKlzoRbttqmsaEUWM95O4A1RDpZTdFs
 i1OUjPGIrHqcwgqjXfpHjuS92iydjJhownHTbuKRuA7LfqHFdbSeZX0OCfg7t4p83fxI
 MyWA==
X-Gm-Message-State: ANoB5pmL58Gmnhj3aNIQvmoZLGZhisY9irVLiscBuHImiHm+OVVNnnxf
 ZTg2OXMw27uZw0aaej/jNVzAZg==
X-Google-Smtp-Source: AA0mqf7H/OELVb6xKddYiVV2gHH48L6eEOu0XpzHxFNdvKfIEgqeSU6U+XauydpxVaxz+xydnnpABA==
X-Received: by 2002:a17:906:39c8:b0:7ad:79c0:5482 with SMTP id
 i8-20020a17090639c800b007ad79c05482mr59470289eje.730.1670240097030; 
 Mon, 05 Dec 2022 03:34:57 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 z3-20020a170906240300b007aef930360asm6190848eja.59.2022.12.05.03.34.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:34:56 -0800 (PST)
Message-ID: <39f8b0e3-96a3-9a36-5a99-48088b229f4e@blackwall.org>
Date: Mon, 5 Dec 2022 13:34:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/8] bridge: mcast: Remove redundant
	checks
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

On 05/12/2022 09:42, Ido Schimmel wrote:
> These checks are now redundant as they are performed by
> br_mdb_config_init() while parsing the RTM_{NEW,DEL}MDB messages.
> 
> Remove them.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 63 +++++++--------------------------------------
>  1 file changed, 9 insertions(+), 54 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



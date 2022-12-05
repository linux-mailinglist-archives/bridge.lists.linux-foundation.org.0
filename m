Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55586427B6
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:42:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BDC140523;
	Mon,  5 Dec 2022 11:42:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BDC140523
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=n/JHSIp5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pA-XmqdI1XtE; Mon,  5 Dec 2022 11:42:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C19BC40570;
	Mon,  5 Dec 2022 11:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C19BC40570
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72CE4C007C;
	Mon,  5 Dec 2022 11:42:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 294B4C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03F9981D18
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03F9981D18
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=n/JHSIp5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkUIhQGh2mZR for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:42:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 462318177A
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 462318177A
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:42:06 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id e13so15326743edj.7
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nrWL8VxV0K9t0uZy6ZzE5+V/ehvOIE3e5uGU6WmUU3g=;
 b=n/JHSIp5f7fAh4109T4B/S5kbuGEk//xfTg/w87G677OjtlH3/YKvF8TZjZSMoP9Ra
 qUQ98PTxBGTeetn12wzisQsFSgoesqRH5HORYzjd4GN+yi/VcZBsu3EGjAI3aC1nrrW9
 9mw58FvzPYZfn5/gYnda4NFrSNsSbWXzf/k3tA0iE649LOq0EXGLbRMzswfvN4eSrp7R
 3qlRany7DwBZYrwvwpCFV/O8B0FyUXJCFUE8SmAy4Fx+Nl+hTGpqFB42N18fY904YwE7
 51q9JRMNPjnI4E2GPnN83p6wc6hyEJoXNTh7a+zBzP8pGNTJDOG4P7RRjjG/b9WPyvKH
 uX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nrWL8VxV0K9t0uZy6ZzE5+V/ehvOIE3e5uGU6WmUU3g=;
 b=vDGVZU7yU1aLLDM1pC6TmcFxGJWrEg1mY5E0DdtcvPZY+IssBCn22OVZtZamoaPEWI
 ki2ocCWgiA1JEjFNnj11vcspxLMiOR+lYZbZx+n8ks32FKtDOlBDu9Pr6oj/743VtvdE
 20Mpwij2i7LFuLrV7vFgHI7cUGEJkvxpvNTLpUho82cxlUG2ssuwyPmryneQUdTpeMFU
 zZxxj1UbKqVPYz00Xer8qMq2FdmVaRRj9P9+BJoLmAiQT5tqiHH4MKBxmx9mfAKTOBDu
 xkTz7WAt+X2ipNufFnG8ywqDoHogyz0T/jCJ6W6cTydJo6EoOkJNjPzMLbplUSykZtO2
 nUMw==
X-Gm-Message-State: ANoB5pmqu2EJa5nruaHgExtAXztqelXvVSABbNMFAnFMMBMEwS+Rl5Uz
 eyVLRtXbAFCn8BJx1lLGaVoAvg==
X-Google-Smtp-Source: AA0mqf7FqZrEI5Sxh/yhl80H3SHBzft7AK1rxYdF4kgIq83YlPSwOsF0dOgYGZV9y1mqbY2kFMaIYw==
X-Received: by 2002:a05:6402:538e:b0:468:ea55:ab40 with SMTP id
 ew14-20020a056402538e00b00468ea55ab40mr9512064edb.323.1670240524429; 
 Mon, 05 Dec 2022 03:42:04 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 v5-20020aa7d805000000b0045723aa48ccsm6091801edq.93.2022.12.05.03.42.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:42:03 -0800 (PST)
Message-ID: <aa2c2350-7210-ce54-f75e-62d56be2b4d2@blackwall.org>
Date: Mon, 5 Dec 2022 13:42:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-7-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-7-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 6/8] bridge: mcast: Remove
	br_mdb_parse()
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
> The parsing of the netlink messages and the validity checks are now
> performed in br_mdb_config_init() so we can remove br_mdb_parse().
> 
> This finally allows us to stop passing netlink attributes deep in the
> MDB control path and only use the MDB configuration structure.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 93 +++------------------------------------------
>  1 file changed, 5 insertions(+), 88 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



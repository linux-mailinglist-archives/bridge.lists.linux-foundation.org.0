Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF355704C24
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 13:18:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C68F9415D3;
	Tue, 16 May 2023 11:18:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C68F9415D3
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=KanS41no
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R48PGk2vivdp; Tue, 16 May 2023 11:18:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 071FB4109B;
	Tue, 16 May 2023 11:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 071FB4109B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F2FBC008A;
	Tue, 16 May 2023 11:18:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB5CBC002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FA8F60BEC
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FA8F60BEC
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=KanS41no
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q8m38WKT2brP for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 11:18:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D969960B35
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D969960B35
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:18:19 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-965fc25f009so2294410166b.3
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 04:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684235898; x=1686827898;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oLNTOgpd74kTGPMOubmCg/68yes1Cl/99CRgAydnyPY=;
 b=KanS41noryOELVYIa+m4eah7qvA+WecJpxc2xTF7gfEUW2viqVfNiPckR+sm7Q2jjY
 edTpP9uSmKSf7Vuu92x+N3iQqUk1cihKECxg3ti3LAQWRVNUJhYvrqhcUNpppV2Lr+3C
 N/U4hyEBmP2cnxxYmsAE8MWcAi/c0zHNwWOOp9R2YeWqk1HXeWl0YtjzN+9rIv/eGUdO
 a61/tgnvSocGwmAsbXJd54448SNms8Z8QYJqM+TGbwEPMAOcVBS6N1S2nuaunCgwvBfR
 GPzwYiYrb8Xdx+GF6mbJDhbce4IrTzSJecEglgqQzpMCXRkRuIZ6yTy8CTLDl7wOpJpT
 6V8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684235898; x=1686827898;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oLNTOgpd74kTGPMOubmCg/68yes1Cl/99CRgAydnyPY=;
 b=cIoGM+r1+xPvaMjDnKGJ+nAnH5T4jmf6COu5uu2i0pKhYYDEhSuNfhd/f8hhw62UTI
 cQL57YTGAelTd+FDL9U4Sqx9pX7BS19pdP4ldwzO+k0wdOtmm5xDlf4Cajbr8k8IHL5E
 D2G2CaJ/rRmLL002WNp5ZgGliL4UsPM6DO8aZoYt0iIjN82x3LtazoUAAdOsepctx98E
 GeLpxqOMYn8LSrl0LIPf3fLcaIaPeqMnv05GX2vzCBoDtvxHgyjQkrgAU3ecDexXUHtt
 IuEd2Kffv9HjDT9kBGwWdexbjBNyppA+AJt7e3kk7sr9lKNMqYLteZNuwQUOVg5d5fSy
 kTMw==
X-Gm-Message-State: AC+VfDxEIQpeyr8bWUQi4xOUW7zvyjkNC8blgT5IboSSocL+9mphduto
 /XLmhv5XlKPoMnexQq31wNLuwQ==
X-Google-Smtp-Source: ACHHUZ5gc7lTURRGrAfJ8U5+sM1JJ/y6/zFwOq/biKUbPIowfKMQ7jVV07UDhRnOO97l3E1nsQ+bpQ==
X-Received: by 2002:a17:907:26c3:b0:96a:f6f6:4efd with SMTP id
 bp3-20020a17090726c300b0096af6f64efdmr7917304ejc.49.1684235897646; 
 Tue, 16 May 2023 04:18:17 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 y10-20020a170906914a00b009663cf5dc3bsm10696963ejw.53.2023.05.16.04.18.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 04:18:17 -0700 (PDT)
Message-ID: <b12a817f-de9f-6d25-f189-67e5e7ef49a4@blackwall.org>
Date: Tue, 16 May 2023 14:18:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
 <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
 <20230516102141.w75yh6pdo53ufjur@skbuf>
 <ce3835d9-c093-cfcb-3687-3a375236cb8f@blackwall.org>
 <20230516104428.i5ou4ogx7gt2x6gq@skbuf>
 <c05b5623-c096-162f-3a2d-db19ca760098@blackwall.org>
 <20230516105509.xaalfs77vrlr663u@skbuf>
 <6a688292-a7a0-20c9-03b9-cad11a61144f@blackwall.org>
 <20230516111005.ni3jygnnxgygoenh@skbuf>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230516111005.ni3jygnnxgygoenh@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On 16/05/2023 14:10, Vladimir Oltean wrote:
> On Tue, May 16, 2023 at 02:04:30PM +0300, Nikolay Aleksandrov wrote:
>> That was one of the questions actually. More that I'm thinking about this, the more
>> I want to break it apart by type because we discussed being able to specify a flag
>> mask for the limit (all, dynamic, dynamic+static etc). If we embed these stats into a
>> bridge fdb count attribute, it can be easily extended later if anything new comes along.
>> If switchdev doesn't support some of these global limit configs, we can pass the option
>> and it can deny setting it later. I think this should be more than enough as a first step.
> 
> Ok, and by "type" you actually mean the impossibly hard to understand
> neighbor discovery states used by the bridge UAPI? Like having

Yes, that is what I mean. It's not that hard, we can limit it to a few combinations
that are well understood and defined.

> (overlapping) limits per NUD_REACHABLE, NUD_NOARP etc flags set in
> ndm->ndm_state? Or how should the UAPI look like?

Hmm, perhaps for the time being and for keeping it simpler it'd be best if the type initially is just about
dynamic entries and the count reflects only those. We can add an abstraction later if we want "per-type"/mask limits.
Adding such abstraction should be pretty-straight forward if we keep in mind the flags that can change only
under lock, otherwise proper counting would have to be revisited.

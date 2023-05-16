Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5253A704BAA
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 13:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CD7D81FD4;
	Tue, 16 May 2023 11:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CD7D81FD4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=ua9GQGF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jCKMOPiMOn42; Tue, 16 May 2023 11:04:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 39ACE8209B;
	Tue, 16 May 2023 11:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39ACE8209B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4E3EC008A;
	Tue, 16 May 2023 11:04:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2339C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC69160ACA
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC69160ACA
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=ua9GQGF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43vgUurmA4Nq for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 11:04:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 140E360ABA
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 140E360ABA
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:04:34 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-50bc4b88998so24542042a12.3
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 04:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684235072; x=1686827072;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kGCJ/W5iGEq3jH2YQIO8Cak7WirO4MEH/2Ql3CIQFcs=;
 b=ua9GQGF5QP7jIELA0XMiXvgx3sZt6AzmsV8XrnPk36Ych0TKFyhT6BSS05R9m+0spS
 Q6wrZXSCagxCV5Zl+36GPGtJjuPlERhLECmbnzYLB6SwV2EvJQG0VM9LJ66ZvOFJOCXt
 1qVTHkio0XWSyvmPSdOwUyJF2gQCbG65vcq1MNLx8VIB41WKwlCHuPj08JEqiDlvRB7U
 PB7bEuMiUUtiBkpFGVLPuntP8q4Zi+WLaqEhxP56bMhIKRZL8z3Xxc70foBYCuDoRimW
 XaJnTp7yDaXIs8Be8XA4oBCCGxgGbirIQpPczctPUQQWVOTceF4E1r6/7mNHiZAz/RE2
 814g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684235072; x=1686827072;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kGCJ/W5iGEq3jH2YQIO8Cak7WirO4MEH/2Ql3CIQFcs=;
 b=GL7g2Q7HJbte+1lM9s7uUKkuBYn2AdqAzQXV4DJyTeNMUISWUc6PDuIkGWRD80RQUU
 rwlnWjdOJrmyyN+OtA42Xi9tXcE/Z4tEP3XontrMdA6I/rZK0yqei8uhiwip3Ac2Gn0x
 RVGjduFknII3vs+N+TOvofBXKfvk1cCbSK6JIsKKD/z8ciAraJrZEMXoZQfMaY7bOBMH
 RwhRG1QRwjLnuy3jFnLx9abelYw39Lw/IAlcv+7mdEGrm5qEcKBtK3XgjdziCCnwyrKX
 Kip6jL0iMykR7OehVMf5yBNLtm6WLQiO/H0kNkMTxrPTofcbJcMRwf9UCweIGP44CfiY
 Bjag==
X-Gm-Message-State: AC+VfDzPlKYsQzwS8LG+VkkIQ5uUNoqJ0Cou671tBuwetQmi4mAxZjb4
 ALma0hOfsyIktNlR0/oPTUB3FA==
X-Google-Smtp-Source: ACHHUZ7lz7AUa6dtlYx3x1UwxBS09jKh2soqnTSrqNwx45qHEa8BXb+sBngmbxQ97qTQBMH8RT4N5A==
X-Received: by 2002:a05:6402:b03:b0:50b:c4a1:c6c0 with SMTP id
 bm3-20020a0564020b0300b0050bc4a1c6c0mr29927619edb.16.1684235072183; 
 Tue, 16 May 2023 04:04:32 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 z24-20020aa7d418000000b0050bfa1905f6sm8429055edq.30.2023.05.16.04.04.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 04:04:31 -0700 (PDT)
Message-ID: <6a688292-a7a0-20c9-03b9-cad11a61144f@blackwall.org>
Date: Tue, 16 May 2023 14:04:30 +0300
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
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230516105509.xaalfs77vrlr663u@skbuf>
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

On 16/05/2023 13:55, Vladimir Oltean wrote:
> On Tue, May 16, 2023 at 01:47:47PM +0300, Nikolay Aleksandrov wrote:
>> Having the current count is just a helper, if you have a high limit dumping the table
>> and counting might take awhile. Thanks for the feedback, then we'll polish and move
>> on with the set for a global limit.
> 
> Ok, but to be useful, the current count will have to be directly
> comparable to the limit, I guess. So the current count will also be for
> dynamically learned entries? Or is the plan to enforce the global limit
> for any kind of FDB entries?

That was one of the questions actually. More that I'm thinking about this, the more
I want to break it apart by type because we discussed being able to specify a flag
mask for the limit (all, dynamic, dynamic+static etc). If we embed these stats into a
bridge fdb count attribute, it can be easily extended later if anything new comes along.
If switchdev doesn't support some of these global limit configs, we can pass the option
and it can deny setting it later. I think this should be more than enough as a first step.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 474B4565269
	for <lists.bridge@lfdr.de>; Mon,  4 Jul 2022 12:33:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70B3060E0B;
	Mon,  4 Jul 2022 10:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70B3060E0B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=hHKaBdrQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqem5fVOKbsB; Mon,  4 Jul 2022 10:33:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DAA3160E00;
	Mon,  4 Jul 2022 10:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAA3160E00
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 674E7C007C;
	Mon,  4 Jul 2022 10:33:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28B56C002D
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 10:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0051C60DFC
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 10:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0051C60DFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xg8PiSnYJdaI for <bridge@lists.linux-foundation.org>;
 Mon,  4 Jul 2022 10:33:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5D31607F6
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5D31607F6
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 10:33:05 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id fi2so15932620ejb.9
 for <bridge@lists.linux-foundation.org>; Mon, 04 Jul 2022 03:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=6Wj87YaxYO/pynZWsS9SuS5fRYRtHj/q6P5VHFbekcg=;
 b=hHKaBdrQ6fJzL+ZL80h+cgSUCPd7+qjDIzGZh8ZWXaChkI5ruA0hp/l+FutHmw9JoV
 W0Ju8bPTVp3GHKVT62HFG73xi017s5mw3lBMxF75N78qHcsgGQv2bqrAj2T5IZkuLRs0
 SiZRY1f2gYqNP7Bm0x86EyLaekNUeVbtUK7WX7p46lcGYODJTm7vzvtBgL8sILSDYoU7
 mTBcJDP4eDs4crZZH2zeDnE3W4M6D6uTY/KhJZv/S7ehDHhZMCAokUixesEVWtGT8mps
 F/BE/qrRiaHtdoRFoE4sXEQtWZG2GpR7A59NNr7EhzOE1LlCAOIYGddTa9T9qupo/uu8
 s3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6Wj87YaxYO/pynZWsS9SuS5fRYRtHj/q6P5VHFbekcg=;
 b=0v6j9wwnBcuH7pwEsY232wjqUhQhdbIKvuQZwGZIeX2yK2IJIBqjGSr1sviY16kSLU
 BClh+YLX1XxfA8Gyj2fwXqGPCyS9AguXWnapwrg9L6fjYl5aqS5v3f2QS7xxJJdz5c2z
 6IqH6arptY+h7V9DeOdec1tLtaDY880kpB+8CFCuLEjePeuGh6imgKqxF9c2dOUd4b5z
 jax/pky8iIR5E5fijnTL+AurOKprV1FMhZdQ3xe1nueb2nTKkgLpAcO6NyAgGvxvOf99
 yLnEpdTx8gQQ72ZPOEaPnIX50nUuGX/tw75MHNYs2fIyfQlGp5zvbfZ2St1fmsEzI4a4
 i90w==
X-Gm-Message-State: AJIora9te73jcyc6qDiEap+7WhRIzn1hKGe87+uE7cEmDrvCpAACvkZY
 K+EmqF/xR6BZ9F/fr8nduwziZQ==
X-Google-Smtp-Source: AGRyM1vj6eWksKadqFD0/n9jE3teDazJGledsxiH91AYbeqgMPTaRoHxC9NTg8B8zmoTjCDFh48tJA==
X-Received: by 2002:a17:907:1c18:b0:72a:3945:c1b2 with SMTP id
 nc24-20020a1709071c1800b0072a3945c1b2mr25693220ejc.604.1656930783896; 
 Mon, 04 Jul 2022 03:33:03 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 k13-20020a170906a38d00b006fed787478asm14169345ejz.92.2022.07.04.03.33.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jul 2022 03:33:03 -0700 (PDT)
Message-ID: <c33c78f8-2be0-07bf-222b-9fae70f9ba32@blackwall.org>
Date: Mon, 4 Jul 2022 13:33:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Casper Andersson <casper.casan@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>
References: <20220701144350.2034989-1-casper.casan@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220701144350.2034989-1-casper.casan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next] selftest: net: bridge mdb add/del
 entry to port that is down
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

On 01/07/2022 17:43, Casper Andersson wrote:
> Tests that permanent mdb entries can be added/deleted on ports with state down.
> 
> Signed-off-by: Casper Andersson <casper.casan@gmail.com>
> ---
> This feature was implemented recently and a selftest was suggested:
> https://lore.kernel.org/netdev/20220614063223.zvtrdrh7pbkv3b4v@wse-c0155/
> 

Indeed, please CC the people who have suggested it and the bridge
maintainers next time. :)

That being said, thank you for the selftest!

Cheers,
 Nik



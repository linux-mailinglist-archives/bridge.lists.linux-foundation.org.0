Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 810BA644335
	for <lists.bridge@lfdr.de>; Tue,  6 Dec 2022 13:32:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C8B960FE7;
	Tue,  6 Dec 2022 12:32:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C8B960FE7
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=YcdOdKov
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6rLUdBhcmzlj; Tue,  6 Dec 2022 12:32:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C27E860FE6;
	Tue,  6 Dec 2022 12:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C27E860FE6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7B858C007C;
	Tue,  6 Dec 2022 12:32:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02670C002D
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D17FB60FE6
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D17FB60FE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hibBrQDzSzBA for <bridge@lists.linux-foundation.org>;
 Tue,  6 Dec 2022 12:32:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1769560FE4
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1769560FE4
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:51 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id vv4so5854618ejc.2
 for <bridge@lists.linux-foundation.org>; Tue, 06 Dec 2022 04:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=a9Apa3uOHTaWpyI4d5WsN/NOtmRrJfK1jH1TKEd9eDA=;
 b=YcdOdKovc+PQRGX9VMh5p9K6mbx4EHAfko7hOFYFKl6CslLrtwYEQ1pHihMNi3IJpe
 2tNikG+7dxK2SPd/XzHhW2POiepzA7XTnqD5Dbp1W1DDtdQPIejXmCms+vJaoWrLznxF
 XCqEkT4DjUFXEbH9r6HqszNwWnIywAdhTyMnBjPlhYqnAcC4i/O3gdqoYEsNhYX79XWq
 5OtJwfLe2AGRASttWlhAu78qy7mhfPcB+lpxg4qhqrTCfLaFOr87MoESEoBT0KZQykuF
 CJqiM+w17KaiYYSueA46iBSDoqbx3SYgvQOc2YhH95ftL5FVOGxE/iMRCJJv8cpNUrXX
 2Q0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=a9Apa3uOHTaWpyI4d5WsN/NOtmRrJfK1jH1TKEd9eDA=;
 b=WgORlk2+eD1RokzsQe/ALbU9pG1CRFYxc9ZGl1DVlqPHnPKO7Aq1OeEz3N0RZitb2I
 Q8MJacWhDVfqkOTlTZWscZDfWUybG26NLPviXQPHBc8CaETKxJQhIk3ulLJrzHH14Qrk
 HuCIWJP72wO9MnmMqmT8o88PmMRq4+9nw2dM/9D0Rak5D0Aqk5/IeB5mh1C0O7BkkEYj
 59D8U1j7PfZlVaH7pWEoMrw0pmX3Enhv8CACNsC02FZx97B69MAFr1oX21ioh783iaQ2
 4xFflJAk6aMprDR9oITxTNBA9JBUXKOErYZn1U0iyG0Hq+jpDdRax/qXAVMTCyIy2iFG
 KwHA==
X-Gm-Message-State: ANoB5pkUWLcrSBU7laKzlmCkmelM7b3YBzb9GkzxY2ve0sF0nhCaDLo+
 JMwvKjiodMsZURe2mhQcnc28tQ==
X-Google-Smtp-Source: AA0mqf6AZqnAyvnO68V/atP6PNMyPfKBlhgDycsLkFkV/+GUlWRGrRmBWHVYwjnVHSammElfwF+b/g==
X-Received: by 2002:a17:906:2a10:b0:7c0:cc6d:5df7 with SMTP id
 j16-20020a1709062a1000b007c0cc6d5df7mr104786eje.68.1670329969196; 
 Tue, 06 Dec 2022 04:32:49 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a170906305600b007c0e6d6bd10sm3053291ejd.132.2022.12.06.04.32.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Dec 2022 04:32:48 -0800 (PST)
Message-ID: <d7f8d88a-531b-4ccf-0310-9e3f78356fac@blackwall.org>
Date: Tue, 6 Dec 2022 14:32:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221206105809.363767-1-idosch@nvidia.com>
 <20221206105809.363767-10-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221206105809.363767-10-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 9/9] bridge: mcast: Constify
 'group' argument in br_multicast_new_port_group()
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

On 06/12/2022 12:58, Ido Schimmel wrote:
> The 'group' argument is not modified, so mark it as 'const'. It will
> allow us to constify arguments of the callers of this function in future
> patches.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * New patch.
> 
>  net/bridge/br_multicast.c | 2 +-
>  net/bridge/br_private.h   | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 

Nice, that's even less than I anticipated. :) 
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 067986427BD
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 908C460BC9;
	Mon,  5 Dec 2022 11:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 908C460BC9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=NHKFcuVc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2Pd-xrgf6vv; Mon,  5 Dec 2022 11:43:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3C5EF60B30;
	Mon,  5 Dec 2022 11:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C5EF60B30
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E9C7DC007C;
	Mon,  5 Dec 2022 11:43:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3EC57C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 198B060B30
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 198B060B30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRGXn1TrWhoj for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:43:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6AD8607B5
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6AD8607B5
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:43:47 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id a16so15336766edb.9
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nq/qiZ4kHuJyfTha/rmI50ZFco+CixoW93NZbxAckHE=;
 b=NHKFcuVc8bLzu0js9axZp84zVm4uj8ElmTmkZW5qt0pHWnr70eBt/L5b8kEVPxNnu7
 79pe7PzngBP9EyDHtXrbw037t6mUsINpZIFyI+jmcFnr2c7JzNy47zT3f8yCDLpgRdiy
 ahOL4MwFW57kHxSTVg8X/obBLW1i0ioSu7grsBoYPSeDabST5PDjLAEAtMyTIT0yx62Z
 yOooM8j9LYBFBlEu2Riy48lsvMiTwOjtcrebLexrwXiS9AZQNj0s6GdeZmQ0V/+SWHEg
 p1Bm3pbIFzozydzO6eDIIjpUbJV3xrzmHHxomO/aI0NaixfGMqyZZ6KrbtOKOVQ13336
 pu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nq/qiZ4kHuJyfTha/rmI50ZFco+CixoW93NZbxAckHE=;
 b=ZBiA8H82Op5iOrlEZsJK0CNk5IggLddNmOr85mSv7N5F6EYfieI0oGD8FJEsmJEI8Y
 mb9kRa+2ZI5mV+HSEFXzgHgE2auC/aD3yRCGXawsgsvdajJ7gR0N+AbRxr7ELfcFIMdJ
 3wobmEQgIUoYtVpWY9FavlOpBCEd+rEEAaEwW4WfORh50mM0+ikml3bnpvWMUeDnvIxb
 6uRVWmNWh24xZpxqODr1aprYFZUWy6uIM0rvFMVnbSCBwX6Zdbhu5qYMO36eqminPurL
 6IQTDlphPsGYR/B/ucFiH+2VsyfC/dj8tVS/JDNW70+VjvFATXEEFBhBe5syW1qLPDdZ
 igYg==
X-Gm-Message-State: ANoB5pleFBZEeMimiFQrszPDjJo1aHRBvErXGcFoUaGDZhv96PGG9tJe
 uvrveHIqfCQ3xWAdd5bf/K3FAw==
X-Google-Smtp-Source: AA0mqf44coxYBVT2Xg5vQx/RkQMNEE9oZxoWP8qeHxvCYCo4iQ+gIojYC5QhDkwFrm3Ls1aROLeA0Q==
X-Received: by 2002:aa7:ce86:0:b0:46b:1872:4194 with SMTP id
 y6-20020aa7ce86000000b0046b18724194mr31842179edv.362.1670240625884; 
 Mon, 05 Dec 2022 03:43:45 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a1709063cb200b0073dbaeb50f6sm6058263ejh.169.2022.12.05.03.43.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:43:45 -0800 (PST)
Message-ID: <f9e8a036-245f-a77b-095c-d1ae709bfb6d@blackwall.org>
Date: Mon, 5 Dec 2022 13:43:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-9-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-9-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 8/8] bridge: mcast: Remove redundant
 function arguments
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
> Drop the first three arguments and instead extract them from the MDB
> configuration structure.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



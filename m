Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 202496427AB
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A404581258;
	Mon,  5 Dec 2022 11:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A404581258
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=lS/ObLnz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-oc5Ysei5OJ; Mon,  5 Dec 2022 11:40:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 428CA81773;
	Mon,  5 Dec 2022 11:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 428CA81773
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9977C007C;
	Mon,  5 Dec 2022 11:40:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 64E61C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C4D14052E
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C4D14052E
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lS/ObLnz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdb_I4HWb7pc for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:40:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B164D4052C
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B164D4052C
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:40:08 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id n21so27031314ejb.9
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3ck7nJMtJWfMXqJ5W4UKDMRT+n97feLu0BpQVT11JQQ=;
 b=lS/ObLnzVsgptiLXORTVWvMO3nrBM2AT6OkFfPPqf87rWVrtfvzCrbYETxTtU4bMQr
 sqObjWGqLJhO+5cq1gZllTYH3VpQRrhhPHQOQHpK22bXgoRDbpxLYuql91FRBeGZFcF4
 xqufuc3Q1cfFQIjwo3KcGlS92PTPq+NoxPJvgzEyjro7l4Z27qXNLZC/AsuumUE5aQNb
 V/rWtepKDqMCNLYgBqrpneI8YVBbWbs+4msacon5ZKGipn5pIHYKZgAZDGV9NVtGW8f5
 WidDsDvctGq05hQaxrmM+6IF6NJ9xhI8G74FyUXeiuaykl8PNjTLlJbo3v3zl4U+aOZW
 bsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3ck7nJMtJWfMXqJ5W4UKDMRT+n97feLu0BpQVT11JQQ=;
 b=pJj1cd1wJ2UVb+B0w74CF9R71NretAq7CADvo95rP66LXVj5W05zH5XpWoQXrzhDFr
 B06hZHsOWSGxu0EiKL4OnN4Pcrk/e4IEBTy1ALkjUayPtzUw11kiB0RcER9acHrxJrjV
 ps1ax99xuLEkPt6YuL7q4sRYAQqckjD4yiTbjO+ukVpKD01oyWvqpQkEMRL82plHy4fk
 1Oq3Xi7JcVUrsRAFDdMpYQhGmjcWLJjamsG9GI2M0xghf6APPTrLZpgh3gYlaoXnbtSm
 cZVBaB9gPikmTmzv/j8TnmnUvMTciiZX8lYLboqns6L4ExcmXFaTeYku2niLWy7XOJP+
 Rdrg==
X-Gm-Message-State: ANoB5pkJU8/mMejoFd1Xe/Wo8hX1+YP9JVyfD0iZDt1hZC1iiO5vlBcF
 FrJimJ3pfETwX1fCTtUeG1BZ4Q==
X-Google-Smtp-Source: AA0mqf6E9ph8sx8+ENkFI2MTctWD4AfjkPQdO61g4GimLfgV69f3Iij40cEnMSM7tJQvDg90K83q2Q==
X-Received: by 2002:a17:906:76c9:b0:7bb:2867:7a92 with SMTP id
 q9-20020a17090676c900b007bb28677a92mr46527232ejn.441.1670240406730; 
 Mon, 05 Dec 2022 03:40:06 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 sa22-20020a170906edb600b0073d7ab84375sm6199100ejb.92.2022.12.05.03.40.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:40:06 -0800 (PST)
Message-ID: <2d043351-0be2-67ea-5da2-1f29777c9fb7@blackwall.org>
Date: Mon, 5 Dec 2022 13:40:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 4/8] bridge: mcast: Propagate MDB
 configuration structure further
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
> As an intermediate step towards only using the new MDB configuration
> structure, pass it further in the control path instead of passing
> individual attributes.
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


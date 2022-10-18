Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30C460271F
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 10:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6031A40A98;
	Tue, 18 Oct 2022 08:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6031A40A98
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=8OGa01pr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ox1c-e7KJ2fr; Tue, 18 Oct 2022 08:37:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E41EF40A8F;
	Tue, 18 Oct 2022 08:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E41EF40A8F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8771EC007C;
	Tue, 18 Oct 2022 08:37:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05A8DC002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCFDD82F39
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCFDD82F39
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=8OGa01pr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wEwPkImaveu for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 08:37:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21DB681434
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21DB681434
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:46 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id u21so19395215edi.9
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 01:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WaPR/tmqWGcHhxRlM7SpojtLJcPC5mdHh5MXF3Ewvbk=;
 b=8OGa01prAdF0y4D0Uz44tSzzEmmgbLu8CCpNNBZ6LdpI+YoIkpNtWrWYfRKDEh8KCB
 bk5oGQ0yMsZ4GjqybOadty3vUndpWRk4khXdCoW85w3dsFUkL4SsZYCIGkIWqqChHoAF
 gcxmXW7THu8+MfWd3fM/GJZM1cm6coTRJ2cquKCiGo+Iv4Sex9ILtXRqWEcRKBFxePCT
 IPslvfR70QjRWwRZE7Q5E780gFbWIOXJ53O2q4IYJao76liUR26wlylXfFepiM6Fu8LG
 H9xa7DGpnweWEnBPTmk545PZgJdzWtP8PwuL8u2juBJnE4bfPAuJ6xtUbA17/0L6VnbX
 ijGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WaPR/tmqWGcHhxRlM7SpojtLJcPC5mdHh5MXF3Ewvbk=;
 b=HOsX61xgQFhaFno/dFWvnp3Yc9yvULTUQ7mk5Yb8AiOKSQ09QYettY7eIPIS1DmKro
 wNA2TKGQHU5ujyMFOVfGhybJOo6Fp8Trhv8uhordg0H0ai1TqmIXsmkCplTIaq2lFlhQ
 I8uwzDuIcMLonkgMb9mjF4uI5gkY5yzxvAxOak4DlnrJpgKWdWezhIaf/qfU+vtMIGDD
 KUHM8o7qJF46iy9NzYrpt4laWZehi3Pel37gRmNlWRxxJ0cFvkzy6TGCtt1LT6xYSjBb
 n2GR94wn2X+TZQMss1LNxv8/mmnpH0ephCQoXMfdvd0ZSdtoKPsqAEl/+3rmyW06478z
 /D6Q==
X-Gm-Message-State: ACrzQf06Ql51j7Hkah143D16Z/JzdVt14XJkJ3IsDdMZE6f837Cky78d
 CHHFFGiChULqFNDhTBK/8bDSEugZ2NeEaeSh
X-Google-Smtp-Source: AMsMyM6SIOcTZVNe2fyjyFBy5PanORL8OYZZduX5sfYJhmsNLOC24nC0Hqo2CvWxsX5es34+8YuPHw==
X-Received: by 2002:a05:6402:1d53:b0:45e:ec87:686e with SMTP id
 dz19-20020a0564021d5300b0045eec87686emr150040edb.380.1666082264334; 
 Tue, 18 Oct 2022 01:37:44 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 g2-20020a1709064e4200b0077016f4c6d4sm7238813ejw.55.2022.10.18.01.37.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 01:37:44 -0700 (PDT)
Message-ID: <8d1c7a93-6189-dd93-f4ee-bb76282bd2c0@blackwall.org>
Date: Tue, 18 Oct 2022 11:37:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018064001.518841-1-idosch@nvidia.com>
 <20221018064001.518841-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018064001.518841-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 4/4] bridge: mcast: Simplify MDB entry
	creation
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

On 18/10/2022 09:40, Ido Schimmel wrote:
> Before creating a new MDB entry, br_multicast_new_group() will call
> br_mdb_ip_get() to see if one exists and return it if so.
> 
> Therefore, simply call br_multicast_new_group() and omit the call to
> br_mdb_ip_get().
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


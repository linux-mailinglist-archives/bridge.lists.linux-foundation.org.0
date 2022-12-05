Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C26427B5
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F01F260706;
	Mon,  5 Dec 2022 11:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F01F260706
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=sP0PT5Ql
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUmOJub4Eory; Mon,  5 Dec 2022 11:41:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8AA74607CA;
	Mon,  5 Dec 2022 11:41:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AA74607CA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37CC0C007C;
	Mon,  5 Dec 2022 11:41:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70A67C002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B7AC4052E
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B7AC4052E
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=sP0PT5Ql
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mylqKEpi4fEw for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:41:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89E4F40522
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89E4F40522
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:41:44 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id bj12so27047526ejb.13
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=knyyPlNbBxcU+qJ0FVDjA2Jr+aOD9AGR8p2XI9iZKlA=;
 b=sP0PT5QlxzUm2mdQs2yeqeVnGD/bCIXNEYE7DgEWFvImqA2UtrKcxkxcsz+kjVAlNB
 xmDrQiUN30zBjZ3KcAbEiOEJym5cF/GxeFBV2d1sS5/dNIn7VyZ7yXDkNyV24XHHu9wE
 l1F1+yspsGkw743BRWBxMuLl1lnfwBtAhGFtw9CdhlP5N6oiNvN6SjvsrwZNTl9Ea1yP
 Ae+uWNI9EMRlDqwtqtMKDwrCqx7m0/xK22qjcCVc4uU/R2fPYBzxHugsO+VJh1LMnB6c
 5ToSgPUCQ82FQmuqb76W/GDzY5oVOBLlhGd/Ml07Ik8V89QwgTPfWrNa6EAuv0bGmRUl
 RUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=knyyPlNbBxcU+qJ0FVDjA2Jr+aOD9AGR8p2XI9iZKlA=;
 b=uIb+WaEEJQRQ+fJuV8FQkwHeq0MdE5d7bCKHT0m/BgqlbuE7gbBjhIw6Qwy1ZQEbWW
 fHq3PVe5OFyau+4KgZCST1Gwi+ngSCQrxzKG4E5t244YayUrpnsAKlPS5roWFn09b6l/
 tzphLK/oxjzDuTD6Hcf0fAkS1KhfYtflxCB4qFKfjJYj3y0P9SwL/Mg6YMQ16e4bP4sU
 SVgDb4YyA3rzMRMxzg/ANAV6Qc9CBaFRqUyKk8TqfxhdTuN3z6Jui2+jq2hCf3wu4Rmw
 38VhrAr3ktyFsq0qqGgyV6jcdQ6TFbX6GRpvsyVb8kPuVPsxMiM03Cm515oSmxChugI3
 MWPw==
X-Gm-Message-State: ANoB5pmIrOU6ra9RSqmgCVGpZoQfQXiUeLMMyckyoWk7lEXiT5b87srt
 h2fI5s/4Xnu7Ng5+sWKVSRAiCQ==
X-Google-Smtp-Source: AA0mqf4bTmxPBnLfpIfTKbXfHkkQFWBx2UZrRTT9ua8aHfhHGyYG80g7p0UsYU2ME9pSr/Ic63PFxA==
X-Received: by 2002:a17:906:774e:b0:782:55de:4fcf with SMTP id
 o14-20020a170906774e00b0078255de4fcfmr69104958ejn.85.1670240502803; 
 Mon, 05 Dec 2022 03:41:42 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 k13-20020a170906680d00b007c0f2d051f4sm1319981ejr.203.2022.12.05.03.41.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:41:42 -0800 (PST)
Message-ID: <729a8f5b-1a4e-1838-93e0-27ac814bb015@blackwall.org>
Date: Mon, 5 Dec 2022 13:41:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
 <20221205074251.4049275-6-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-6-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 5/8] bridge: mcast: Use MDB group key
 from configuration structure
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
> The MDB group key (i.e., {source, destination, protocol, VID}) is
> currently determined under the multicast lock from the netlink
> attributes. Instead, use the group key from the MDB configuration
> structure that was prepared before acquiring the lock.
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



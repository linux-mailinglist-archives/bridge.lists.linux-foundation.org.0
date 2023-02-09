Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E98DD690203
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 09:18:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 797AB81E47;
	Thu,  9 Feb 2023 08:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 797AB81E47
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=MTowCXDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toOs6PXMTpuK; Thu,  9 Feb 2023 08:18:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CE8D581E1C;
	Thu,  9 Feb 2023 08:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE8D581E1C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 83C6BC007C;
	Thu,  9 Feb 2023 08:18:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BFD4C002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30D3660C16
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30D3660C16
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=MTowCXDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MLXq5Xnga3-k for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 08:18:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 539E160C06
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 539E160C06
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:18:50 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id lu11so4027480ejb.3
 for <bridge@lists.linux-foundation.org>; Thu, 09 Feb 2023 00:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IBa8E8PwdjPXkRzD62dAtTjcrA6uST3bjufU3dsZCM8=;
 b=MTowCXDFtV7Xj5ue9879TT9Ap06V2DgRQCk6nXhSg7BXGP8l+/WIriZaVT/18QfdHS
 rTarGG0ojyrm+D6hvNUcqiQCXhn+hj659/cNhvbAGfsqSdMpDP9Ko1mymtolpS+Mp1If
 OJBKTYFg1B5enmxCb1kiHyxEBogWKsKxYaeV1tbGcVH4aMqCgZe3nwivuco7+vER6BK2
 r0SoBcatNMVKT9q9+lNsijM+kAgF1drigZLr4FRaFDidI4YNyc92L0rieAo8cJ88hhCq
 QqGZRFreCbCmDG+Auz9oV+IHq1z4+IvJmm0sBDHHjjGJXbhSLsUo8GpBpPJsUGI35DgR
 wRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IBa8E8PwdjPXkRzD62dAtTjcrA6uST3bjufU3dsZCM8=;
 b=jVKF0Hc8lbhDQI0pd1fzd1Gkx1/FR1bcOLkQ8bV9niAizArl1uAU/kBwc49CbR4wqT
 zW8L8ab89gwZXR1tCtEzdgDLE2bw4xN+Y02S/6NH2zoDE7ZlL5aludqMoBsAOqc9hCAn
 dolNoYc99ZyCgstbpXUYq4oUMrFwGXrpZZklrX+1KCcyvnGv7bAR+/NF2ej7Er48rW1j
 x83N5hdPdkeOtiNPmA5UiUyASky5cSiWD1Esp59q7mb3EcstIUX6kTuW0dfKXTmp3naN
 GSiaCUok4AgftFFl12NinF0/8BXcqU5gJatwCyt0s40l2c2L9gkR0025JB6FgROG17M6
 Ybkw==
X-Gm-Message-State: AO0yUKXSc4zFMYNuuwrhVarf+1Yz4cWBYWVbws2NNGZlUnYPjoDtJBMI
 By82xTvbKjt4akIJtVoWR4qhzQ==
X-Google-Smtp-Source: AK7set/rad4+n8saJlUdFRl0dHukZZ7p5+4oK5g/WwUNtI5VOeALPMcpxqYqS8Idh7FWYHocoHU/Yw==
X-Received: by 2002:a17:907:6d05:b0:87b:6bbb:11ac with SMTP id
 sa5-20020a1709076d0500b0087b6bbb11acmr14726084ejc.60.1675930728285; 
 Thu, 09 Feb 2023 00:18:48 -0800 (PST)
Received: from [192.168.100.228] (212-147-51-13.fix.access.vtx.ch.
 [212.147.51.13]) by smtp.gmail.com with ESMTPSA id
 e20-20020a170906c01400b008ae3324c8adsm548507ejz.214.2023.02.09.00.18.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Feb 2023 00:18:48 -0800 (PST)
Message-ID: <48be3497-7c8f-ac73-0760-a8b1125ab2ab@blackwall.org>
Date: Thu, 9 Feb 2023 09:18:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230209071852.613102-1-idosch@nvidia.com>
 <20230209071852.613102-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230209071852.613102-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] bridge: mcast: Use correct define
 in MDB dump
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

On 2/9/23 09:18, Ido Schimmel wrote:
> 'MDB_PG_FLAGS_PERMANENT' and 'MDB_PERMANENT' happen to have the same
> value, but the latter is uAPI and cannot change, so use it when dumping
> an MDB entry.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 9f22ebfdc518..13076206e497 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -259,7 +259,7 @@ static int __mdb_fill_info(struct sk_buff *skb,
>   #endif
>   	} else {
>   		ether_addr_copy(e.addr.u.mac_addr, mp->addr.dst.mac_addr);
> -		e.state = MDB_PG_FLAGS_PERMANENT;
> +		e.state = MDB_PERMANENT;
>   	}
>   	e.addr.proto = mp->addr.proto;
>   	nest_ent = nla_nest_start_noflag(skb,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

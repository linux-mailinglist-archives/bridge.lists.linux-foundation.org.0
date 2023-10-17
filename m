Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EE07CBE65
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75AEE4179A;
	Tue, 17 Oct 2023 09:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75AEE4179A
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=ndYyrG+j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0ovbEJwjkOY; Tue, 17 Oct 2023 09:05:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 175A8417CE;
	Tue, 17 Oct 2023 09:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 175A8417CE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C350EC0DD3;
	Tue, 17 Oct 2023 09:05:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 234BBC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4B6A60D58
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4B6A60D58
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ndYyrG+j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eySU4tjfpUtg for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:05:18 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A5D660C1A
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A5D660C1A
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-40776b20031so30720255e9.0
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533516; x=1698138316;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cQobCh/g2E6pWLZRUcsnyARFUdw85tRKijfEAX7VrEw=;
 b=ndYyrG+jkTgpf9sbGXdDItdnlyQ++vUWyc0DlynphO8KHXC5+U+A0XIibTdhlt+yj9
 IWgr0bglcHblez3cKw/Y5YoZ7tyGNLQpfeMhxknlcMdwLq06mCAzgcjPJVbCxGmpXQqL
 6XlMRyLVsnruox7fur/iY5KhjVNOUuJ5+aucBvtbqRKK855Ay2cQaQCTouE129cIkWMp
 uUxumasPraeu7ptqgGyHAQuwQVwcg1Ug1UA8EaptTOMNt9agYEA1NpUmSf57694Adwmt
 Ok+RGPzcoJaX2ywI9fPisGisU7UjzcfVBsnnbq53qW2rLQXpF7VZnsX+OrX185dBNB4w
 B+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533516; x=1698138316;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cQobCh/g2E6pWLZRUcsnyARFUdw85tRKijfEAX7VrEw=;
 b=Z9WPa47aAKvK2mGE08n8nKNxycodgUK52iVaIsrIANd8/2Op3woafLFDPsk7oChdpF
 lVNGs+4VLKDtTSjCqSPUt1EMnj8pHs/lvs9g70LqupaDPalvi9EthnFPu4anmNOCuXv5
 d6Rgscee2pD+MBCSWcIAO9qREnphnZuJVl7iqBQMan1BfOdOChc2S/TEwA9mE5UZQub5
 mpMk2sh+Gq1jDBcKhcl8U3o3lgrinpwp32wbwAxWKRmle3QqS12Xj3FvXDJmpSHRcSV5
 wHK6Plr/Re0QtDNjxGdsnTRutrNv8Yao7q3896L4se843rVP/vdUV1rK6lKek4Nj0HQ6
 MoTg==
X-Gm-Message-State: AOJu0YyeGXVgZv67qBDvBUPrLxSS6l5NqRoZ0wHwJitVNV0S/Pk4wIr3
 Z56+F8PKhrbdvP0gSsWoJSDaQA==
X-Google-Smtp-Source: AGHT+IF0nPcEY5QCyjfcGXmi5f3ifq4uFLj55kLfSAzlvZhLPfQaDvBmGoIMXsJrBvIbuQB70/dPqA==
X-Received: by 2002:a05:600c:468d:b0:407:566c:a9e3 with SMTP id
 p13-20020a05600c468d00b00407566ca9e3mr1160630wmo.21.1697533516073; 
 Tue, 17 Oct 2023 02:05:16 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 bg5-20020a05600c3c8500b00405bbfd5d16sm1371218wmb.7.2023.10.17.02.05.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:05:15 -0700 (PDT)
Message-ID: <48fcf444-f411-b4de-7ece-9ec2dfe89d47@blackwall.org>
Date: Tue, 17 Oct 2023 12:05:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 02/13] bridge: mcast: Account for
 missing attributes
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

On 10/16/23 16:12, Ido Schimmel wrote:
> The 'MDBA_MDB' and 'MDBA_MDB_ENTRY' nest attributes are not accounted
> for when calculating the size of MDB notifications. Add them along with
> comments for existing attributes.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index fb58bb1b60e8..08de94bffc12 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -452,11 +452,18 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
>   
>   static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
>   {
> -	size_t nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
> -			    nla_total_size(sizeof(struct br_mdb_entry)) +
> -			    nla_total_size(sizeof(u32));
>   	struct net_bridge_group_src *ent;
> -	size_t addr_size = 0;
> +	size_t nlmsg_size, addr_size = 0;
> +
> +	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
> +		     /* MDBA_MDB */
> +		     nla_total_size(0) +
> +		     /* MDBA_MDB_ENTRY */
> +		     nla_total_size(0) +
> +		     /* MDBA_MDB_ENTRY_INFO */
> +		     nla_total_size(sizeof(struct br_mdb_entry)) +
> +		     /* MDBA_MDB_EATTR_TIMER */
> +		     nla_total_size(sizeof(u32));
>   
>   	if (!pg)
>   		goto out;

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


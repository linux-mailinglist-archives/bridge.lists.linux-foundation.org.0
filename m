Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08572690208
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 09:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7372661165;
	Thu,  9 Feb 2023 08:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7372661165
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=3wdeSMrs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fk58vCL2E_cy; Thu,  9 Feb 2023 08:19:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1ACBC61033;
	Thu,  9 Feb 2023 08:19:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ACBC61033
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BEB3FC007C;
	Thu,  9 Feb 2023 08:19:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B5E1C002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1653C6108E
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1653C6108E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySvFrpfTElY3 for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 08:19:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A54761033
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A54761033
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:19:03 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id l12so1513580edb.0
 for <bridge@lists.linux-foundation.org>; Thu, 09 Feb 2023 00:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OScVKXBFx0PGgNxDsW0PI1/fpjTd06DrYTq/VBuYPDo=;
 b=3wdeSMrsOlQbCU0LGgDZBIDA9jEsyURuUKe3Lg6q6xWd8Pc/G9xmy85O7u1troTO8J
 YirhL8X9T7NBSRsRX+aDCwlGcXrHwWQzAGppBJAsedYuVYfMX+gbulfqS/Lb68/Xgd1P
 jSenRPB3//w2ckzFLw9iUpgReHF4NeBvMLpuayq0D/GAuduuMATMBjrYYsGKD7SZYHLy
 ScqByJb1Eg+hpYbQntj6/4OicwqRkiahzjA5VetgJ1nHAslk0Ry/iwXTdevvx+KtWVh9
 zLcJDiTB5x5C58zONjba+pvPA49bBFh6mTiQsT94axpLwROMefcIpO6RXP9jUV/qHYyg
 sT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OScVKXBFx0PGgNxDsW0PI1/fpjTd06DrYTq/VBuYPDo=;
 b=ZJBfvCbefvMmVmFsJeyYMXNebAf56fz5IGQsIFYeB9rpm6c9X1emfZhTMOu5ke50Gq
 N+43HyZyXhgTSN3O0TRu4eq4OBgPGV+l6TgBtvYsQ5LeUfVQdrMGrAax26KXN3Zq3iNj
 U0NVadZgA+9wL5+/3NnWA0rQcLFgm0pXHCw3G6L+TQbJddISmwpcbEY5C/t95XiBUT6r
 1xWbcKuhKKfIvZFeFO+D95HQFODrlkYFoBEmywckDbv3WuNsP3CSx6qUJu7qNfzC7eOn
 +hkCD3xV58oYu9Mwj0B6jREZ7/sTNbnEfCoV52wxnxHVC/o5hK7edI4rDLXTYmECiu3B
 8w9A==
X-Gm-Message-State: AO0yUKXbgbTPjDS5RYas3+6i3Ji7NleVfOeA/VS2hU1a/7mBu/1nWr4a
 RkXzBtlArT3xo7X8uSxRis2O7A==
X-Google-Smtp-Source: AK7set+g6tO8/TJD+Q8qvYJ90JjmZ0arZaNag0sOGb3E8WY8ptLpf3/+m2g3+wMeu5wIGv8ccs1TNg==
X-Received: by 2002:a50:d642:0:b0:4ab:e03:661f with SMTP id
 c2-20020a50d642000000b004ab0e03661fmr5722435edj.15.1675930741507; 
 Thu, 09 Feb 2023 00:19:01 -0800 (PST)
Received: from [192.168.100.228] (212-147-51-13.fix.access.vtx.ch.
 [212.147.51.13]) by smtp.gmail.com with ESMTPSA id
 c90-20020a509fe3000000b004ab16843035sm403977edf.80.2023.02.09.00.19.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Feb 2023 00:19:01 -0800 (PST)
Message-ID: <ca8740bc-0c72-efd9-670e-617dfd46f0f6@blackwall.org>
Date: Thu, 9 Feb 2023 09:19:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230209071852.613102-1-idosch@nvidia.com>
 <20230209071852.613102-3-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230209071852.613102-3-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/4] bridge: mcast: Remove pointless
 sequence generation counter assignment
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
> The purpose of the sequence generation counter in the netlink callback
> is to identify if a multipart dump is consistent or not by calling
> nl_dump_check_consistent() whenever a message is generated.
> 
> The function is not invoked by the MDB code, rendering the sequence
> generation counter assignment pointless. Remove it.
> 
> Note that even if the function was invoked, we still could not
> accurately determine if the dump is consistent or not, as there is no
> sequence generation counter for MDB entries, unlike nexthop objects, for
> example.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 13076206e497..96f36febfb30 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -421,8 +421,6 @@ static int br_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
>   
>   	rcu_read_lock();
>   
> -	cb->seq = net->dev_base_seq;
> -
>   	for_each_netdev_rcu(net, dev) {
>   		if (netif_is_bridge_master(dev)) {
>   			struct net_bridge *br = netdev_priv(dev);


Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

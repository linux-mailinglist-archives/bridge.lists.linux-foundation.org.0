Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41AA7CBE64
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:05:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0CF94038D;
	Tue, 17 Oct 2023 09:05:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0CF94038D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=U8Qbso5j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GZpqs9JlaOC; Tue, 17 Oct 2023 09:05:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 18EA34057B;
	Tue, 17 Oct 2023 09:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18EA34057B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95E5DC0DD3;
	Tue, 17 Oct 2023 09:05:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78F3DC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D89681065
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D89681065
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=U8Qbso5j
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiE4Aw7Tv3z2 for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:04:58 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94D0381000
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D0381000
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-4065dea9a33so51340645e9.3
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533495; x=1698138295;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GLkwIKpccGDhl2g/IAel1atWebFPpXTz7dxlcfet/9o=;
 b=U8Qbso5jZ5daFm9jwzXj5Xydw0+nens/Kf4+P3Tr9YC7yVyunTLys39dOrLT6b7aaq
 9nFQxRSDzxgdrE2EviRU8lj5aF78ZDuQwthyRvRqp6Q2yDeO3O+XujRbHLbMaBpfCiDZ
 gk+WWBc/M3IDKx7on0R4/DdlZgnVAtAyOho+YRuhcuz+xjm+IUDbqUtMMwX7hEmflzf7
 a83F0v9ZCSdUvpJ3u5qn+w2Gp3XqWoigowBT1bwekCZ5ZiWJ/6fB7yXxc/ue0TxoWd45
 4z4Spn3prccWUz+/nGkgvzLlEucQXU6j6k8FUKsVBUniRwKXLWytij77EEJKjqmBGMt6
 BRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533495; x=1698138295;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GLkwIKpccGDhl2g/IAel1atWebFPpXTz7dxlcfet/9o=;
 b=bLAXUdTjggM2jH6Aklc7ubezb+6oLj8G47lsX67RDAdTWk39VAXycbRDAD4B81KS8i
 sHjd4WKg5r2vwl0jdcytsd1/d+FEESSAqJDZ1MsqggZCe+6NAxL3a3kQi2ZNtLlVRhlF
 dSy3+RpsR03eTVH7Tk3YxuqN0JkW4pb//IFF5PsctvkVA9ySRxgMljKTfZ16C9EEawoS
 AoIvpoj5Jmk3DZLfZe+qbJkCKzhkbHvzwk4YemjQNWx6f4KUOciTeO5mcmaS+ieOpbuZ
 Sz1JqBmRMaQXHtB20dx8L3ZEpgfvU0c162Gh+ozF7LyA2Na1yp106ZyF+yTwWOlhRje+
 dr3A==
X-Gm-Message-State: AOJu0YwR7zvtsYWZQbHMuPxq1P/9PP0mfWaQf+4CCr3mLwsxkEVAOK4O
 Rh+B3/QtogTvGQrImDka4EJ25A==
X-Google-Smtp-Source: AGHT+IF3cEUI3F2vErWkTlpLAbSQ5XM/SWvyATBG6VSsHoKO0SkhuTCLQXUl8O/7wmzfxFKQOdeuHg==
X-Received: by 2002:a05:600c:3143:b0:3f6:58ad:ed85 with SMTP id
 h3-20020a05600c314300b003f658aded85mr1216597wmo.10.1697533495396; 
 Tue, 17 Oct 2023 02:04:55 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 p3-20020a05600c430300b004076f522058sm9264765wme.0.2023.10.17.02.04.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:04:54 -0700 (PDT)
Message-ID: <6a6a2919-c414-0b13-9488-2c81655c2b8a@blackwall.org>
Date: Tue, 17 Oct 2023 12:04:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 01/13] bridge: mcast: Dump MDB entries
 even when snooping is disabled
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
> Currently, the bridge driver does not dump MDB entries when multicast
> snooping is disabled although the entries are present in the kernel:
> 
>   # bridge mdb add dev br0 port swp1 grp 239.1.1.1 permanent
>   # bridge mdb show dev br0
>   dev br0 port swp1 grp 239.1.1.1 permanent
>   dev br0 port br0 grp ff02::6a temp
>   dev br0 port br0 grp ff02::1:ff9d:e61b temp
>   # ip link set dev br0 type bridge mcast_snooping 0
>   # bridge mdb show dev br0
>   # ip link set dev br0 type bridge mcast_snooping 1
>   # bridge mdb show dev br0
>   dev br0 port swp1 grp 239.1.1.1 permanent
>   dev br0 port br0 grp ff02::6a temp
>   dev br0 port br0 grp ff02::1:ff9d:e61b temp
> 
> This behavior differs from other netlink dump interfaces that dump
> entries regardless if they are used or not. For example, VLANs are
> dumped even when VLAN filtering is disabled:
> 
>   # ip link set dev br0 type bridge vlan_filtering 0
>   # bridge vlan show dev swp1
>   port              vlan-id
>   swp1              1 PVID Egress Untagged
> 
> Remove the check and always dump MDB entries:
> 
>   # bridge mdb add dev br0 port swp1 grp 239.1.1.1 permanent
>   # bridge mdb show dev br0
>   dev br0 port swp1 grp 239.1.1.1 permanent
>   dev br0 port br0 grp ff02::6a temp
>   dev br0 port br0 grp ff02::1:ffeb:1a4d temp
>   # ip link set dev br0 type bridge mcast_snooping 0
>   # bridge mdb show dev br0
>   dev br0 port swp1 grp 239.1.1.1 permanent
>   dev br0 port br0 grp ff02::6a temp
>   dev br0 port br0 grp ff02::1:ffeb:1a4d temp
>   # ip link set dev br0 type bridge mcast_snooping 1
>   # bridge mdb show dev br0
>   dev br0 port swp1 grp 239.1.1.1 permanent
>   dev br0 port br0 grp ff02::6a temp
>   dev br0 port br0 grp ff02::1:ffeb:1a4d temp
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 7305f5f8215c..fb58bb1b60e8 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -323,9 +323,6 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
>   	struct net_bridge_mdb_entry *mp;
>   	struct nlattr *nest, *nest2;
>   
> -	if (!br_opt_get(br, BROPT_MULTICAST_ENABLED))
> -		return 0;
> -
>   	nest = nla_nest_start_noflag(skb, MDBA_MDB);
>   	if (nest == NULL)
>   		return -EMSGSIZE;

Finally! Thanks :) this has been a long-standing annoyance.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


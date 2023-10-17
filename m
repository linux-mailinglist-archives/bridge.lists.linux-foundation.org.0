Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7DA7CBE8F
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF73C60F40;
	Tue, 17 Oct 2023 09:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF73C60F40
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=WsWzX0a4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gq8W7yrHANMS; Tue, 17 Oct 2023 09:08:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 67E9960E7B;
	Tue, 17 Oct 2023 09:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67E9960E7B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A68DC0DD3;
	Tue, 17 Oct 2023 09:08:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9016C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE1AB41528
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE1AB41528
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=WsWzX0a4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btb_QcAdTXyz for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:08:51 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFE9541518
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFE9541518
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-4054f790190so57636425e9.2
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533729; x=1698138529;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=978qXrc9YEW7M0wZEw9ore1peLfv22bFLkhcrdH2ft8=;
 b=WsWzX0a4ey6g+I73/q1JIWrvJjlPDzSNAmdgy+pcFhamvI+C9tEXUO/6YmQQu5x8LS
 SddUKJNeI8wWSKGmF09fnUNxel4xQroBKJYc/oU4t/p2LpJrCB75MNnEut7Gm89yvQh5
 C80CNqOTm4CaDsud64rZy78y993ZoNnYazrQJBSX3V3OA2Qx+HBDyL90K97Fda2AyVaE
 pnTprlkSNQKESHxFQ2QZAVl9RG3luBBU3RtsmcrzVOYMiKSg4b53SRN5iQ7U+9eXczq1
 3MSndBUqfJuN/C3LwyXnY5Oj3KCeajp4rfW/FdUytYceV/DjORtfBaRMoLVWZ5rIk5dT
 jZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533729; x=1698138529;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=978qXrc9YEW7M0wZEw9ore1peLfv22bFLkhcrdH2ft8=;
 b=BAZQvau2KAF1lHlbUWYPc3LUWDd5+e/s3+SFlyEwbrD14AwXrZW5RgwRjXHFxK2Vxu
 iVxcq8jbQfFAM//7HVumSwMU8bHZ/SojuSxr1sUqd3xNKYllEwwIVW3ntjCjXYmj6UKi
 lytxH/ET1a8VgwMMi2ho1gwgjMy2imPNQpwUTejBABT/IxqpqnOZqlzBsnPK8RXe2N3P
 dzxiPXySBwtkV0wOraXcQVFHl8Q12qZCwz5bJOrKCWysYb3YFtf5Ncuo0yw8RI7UIvzt
 bSaYDtCAhCO0d6Vxj3UlFrZboZ5yVgIXG0SC975qHse6FUi2IAinB6qYIcyrYwDq95VT
 hCYg==
X-Gm-Message-State: AOJu0YyJjK7h+SLDSdtCgxgUdxguAJ74ANS7iYbv3pXgY75DeG8nf4tr
 NQxXLHVbuepo6HDDWHlnDMXtPQ==
X-Google-Smtp-Source: AGHT+IFtmVgY2Etjqgkq/2FalSMZlzKy8YOSFyq+CGURWoaZHhN9z7rm9HMIdunpvXJJQZOdd6t1hg==
X-Received: by 2002:a05:600c:19c6:b0:407:8e85:899f with SMTP id
 u6-20020a05600c19c600b004078e85899fmr1206909wmq.16.1697533728868; 
 Tue, 17 Oct 2023 02:08:48 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 t15-20020a05600c450f00b004064288597bsm1339463wmo.30.2023.10.17.02.08.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:08:48 -0700 (PDT)
Message-ID: <8558d00c-ae0c-54dc-8b41-4feeb991f8f8@blackwall.org>
Date: Tue, 17 Oct 2023 12:08:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-9-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-9-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 08/13] net: Add MDB get device
	operation
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
> Add MDB net device operation that will be invoked by rtnetlink code in
> response to received RTM_GETMDB messages. Subsequent patches will
> implement the operation in the bridge and VXLAN drivers.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   include/linux/netdevice.h | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 1c7681263d30..18376b65dc61 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -1586,6 +1586,10 @@ struct net_device_ops {
>   	int			(*ndo_mdb_dump)(struct net_device *dev,
>   						struct sk_buff *skb,
>   						struct netlink_callback *cb);
> +	int			(*ndo_mdb_get)(struct net_device *dev,
> +					       struct nlattr *tb[], u32 portid,
> +					       u32 seq,
> +					       struct netlink_ext_ack *extack);
>   	int			(*ndo_bridge_setlink)(struct net_device *dev,
>   						      struct nlmsghdr *nlh,
>   						      u16 flags,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



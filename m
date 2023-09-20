Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6517A7995
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 12:46:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79E94612CE;
	Wed, 20 Sep 2023 10:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79E94612CE
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=1jQfdg/h
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOgf2npP6MeK; Wed, 20 Sep 2023 10:46:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id EF27560F12;
	Wed, 20 Sep 2023 10:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF27560F12
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4AF05C008C;
	Wed, 20 Sep 2023 10:46:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DCD4DC0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C41D0822DD
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C41D0822DD
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=1jQfdg/h
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mE4NlGgAurdK for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 10:46:06 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B485822D5
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 10:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B485822D5
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-991c786369cso922447766b.1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 03:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695206764; x=1695811564;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1t+EHZZa+DoV/W1tEtqY5C53ytLGnx5U13L/26n+omc=;
 b=1jQfdg/hP05ZCnFJI0/CwTExroXpkOgX2jvyytVPa7L1BncWdNp3SETQ1sTDMFLjjq
 x5D4D8IBPbKfbLA+/xc9qdN/Wm39Ck33hHdfZV9/Jcicozp4JTPgvDhOGQUjDiNKbV2s
 E0ZP3sFvM6s9Za5vSzEepe4mhsLkKVjQNtxB5ldqWGRPXdc2LVgRdLUyPhyr/m/RKVVM
 zzP4AF1oSYWNDkwg5iFAcGOtRMI+6TbtWmfqtalrik0+6dRFbKUvX3Mz/EUoa7CKa07s
 1dgXyhE1Bx0LKAA1Rv3h79gGbV3bPMV7pHB+jVyjWR4XEEgVMN2ycYudSnK/kmMl64ua
 7LWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695206764; x=1695811564;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1t+EHZZa+DoV/W1tEtqY5C53ytLGnx5U13L/26n+omc=;
 b=Vi47x8ECEO6USp4uQ9BePzKJSyS7TgDgF2GE/PP2z2wKzKFpr1Sulyy69nRr9/v2YH
 6hI21TUnj7xoVXChpEUOg0hR9p9AVcciqztPgS4bboAKZO+aZ8U9G47rSJlwoOpSyymK
 dUiQcHogh/c/DUHAh0LlMmKGngbtNLivHjDWVTkoC1ytGyozZtSIuIqOfiKXrU+whkFG
 NnPlRpziN7lY01uq9GzVN/racmdFBGXKjuBMu/39qEyVpVKSn6VSpXLC5Ebe9H0tdEs7
 uPk+GZyofhZmPhyzTPlkfIPDgywVy+NOPOoxnOVe4GnYv+Ox4xUwQuLaKdtOpZ9BMLLT
 9jag==
X-Gm-Message-State: AOJu0Yx6SOclvxEC3HLy3hxY6GD32HRUxf0XMdFZ9xvRnHpRtBqT3JHU
 O9pY5tWPSn85UuzVSgKhKv/yiw==
X-Google-Smtp-Source: AGHT+IEn9v5CmjikvnJiuR62Cfdh+Se8CP5j2IauqDOuNZIhLdU7Ki2o39Vo6T+KBU1ZVfagZsuX5g==
X-Received: by 2002:a17:907:77ca:b0:9a2:19ea:88f7 with SMTP id
 kz10-20020a17090777ca00b009a219ea88f7mr1801929ejc.64.1695206764525; 
 Wed, 20 Sep 2023 03:46:04 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 qx9-20020a170906fcc900b0099d0a8ccb5fsm9183266ejb.152.2023.09.20.03.46.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 03:46:04 -0700 (PDT)
Message-ID: <1c12b8f2-b28b-f326-b24f-f1ea602832d7@blackwall.org>
Date: Wed, 20 Sep 2023 13:46:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Oleksij Rempel <linux@rempel-privat.de>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 Shuah Khan <shuah@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-2-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-2-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 2/6] net: bridge: Set
 strict_start_type for br_policy
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

On 9/19/23 11:12, Johannes Nixdorf wrote:
> Set any new attributes added to br_policy to be parsed strictly, to
> prevent userspace from passing garbage.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/br_netlink.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 10f0d33d8ccf..505683ef9a26 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1229,6 +1229,8 @@ static size_t br_port_get_slave_size(const struct net_device *brdev,
>   }
>   
>   static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
> +	[IFLA_BR_UNSPEC]	= { .strict_start_type =
> +				    IFLA_BR_MCAST_QUERIER_STATE + 1 },
>   	[IFLA_BR_FORWARD_DELAY]	= { .type = NLA_U32 },
>   	[IFLA_BR_HELLO_TIME]	= { .type = NLA_U32 },
>   	[IFLA_BR_MAX_AGE]	= { .type = NLA_U32 },
> 

instead of IFLA_BR_MCAST_QUERIER_STATE + 1, why not move around the 
patch and just use the new attribute name?
These are uapi, they won't change.

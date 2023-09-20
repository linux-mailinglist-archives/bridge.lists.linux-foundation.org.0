Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2764A7A79EB
	for <lists.bridge@lfdr.de>; Wed, 20 Sep 2023 13:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CB8741811;
	Wed, 20 Sep 2023 11:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CB8741811
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=poI7+H4w
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNTLYJn09k09; Wed, 20 Sep 2023 11:00:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id AD61641BD6;
	Wed, 20 Sep 2023 11:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD61641BD6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6014CC008C;
	Wed, 20 Sep 2023 11:00:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30058C0032
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02DE24016C
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02DE24016C
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=poI7+H4w
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jdf9zBshSu1t for <bridge@lists.linux-foundation.org>;
 Wed, 20 Sep 2023 11:00:31 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32A3240127
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 11:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32A3240127
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-9a6190af24aso901748166b.0
 for <bridge@lists.linux-foundation.org>; Wed, 20 Sep 2023 04:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695207629; x=1695812429;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AEvvL7wq7MhG98C7oNkHR86nxOx9QCzBZgqGLXsj1BY=;
 b=poI7+H4wX4Lt4YsboLU8Pe1L+XonfeayQE5FrrVP0idxORYOAjLRr54UWYY7dmHO3R
 p5S/oXDCqvEeiNTpCxfDXWfKJ862Mc6lEJY/FrnPJ/ZnD/kER6NILZYYJJYBoDqp08Fm
 KncOdwvzrci0RUPKLcGRGhDMSiX+SuU9BH2VnbUniANNl4KU5rvXzWNezBoWLoma69Ez
 NNajah9UUDlovWvGhv2JEAbKPy03aHXffwSBN2Op8DP35MuFgA1W9rZsyCru7HqIACvq
 JTJwO+4mtjGRW783wVtse4FM0XeIJF0VQ46YyrjZVS/7VyQhNGrHXJYpQkcXBw/nV8oj
 5D3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695207629; x=1695812429;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AEvvL7wq7MhG98C7oNkHR86nxOx9QCzBZgqGLXsj1BY=;
 b=WUebiWbcN621quFmT00vRmgxHbewKV5+x6V7J3TcwYdExXro686cE/D+Fp4n8o6txZ
 1uCqbWMb8Z40OPhVOhJHzLMRGl4FiXa7vM77Hqtvvxo71RuvlEHpLEBuQDjRp2Ug5k1Z
 kmdJG/nCuKnLuv0lNMETsB9pfponGqgRV+k4nnxA1OguV6HqFDFQVpTSskH1ctqwD9J+
 lO7wLVGRlj1CVG/WlCIkGe5N0Nm2oe1NzACqCqpXq3LsrzlN/dKqy1Yj6HWASm4qh5RC
 QY+Ss+zOFzLAkd60oETfVje5SD30b6rr8zLiWZfA4HMu4Wpk/S14sUZVCJwK735CNtfu
 WHFQ==
X-Gm-Message-State: AOJu0Yyp2v/GNdyIuJj2U3I3XGHSOWoirn/GGDmPjcMxeKc3o9E7pA2k
 X5c1rGtNh3BjdbGxVEgF+xrptg==
X-Google-Smtp-Source: AGHT+IHZRGAJ8bXIHQMw7UiAB7gVCRXdBqDtsNv5um0prvMS5i4MV874e/3AQCZ9kJa8prT8L6JIYA==
X-Received: by 2002:a17:906:92:b0:9a1:c0e9:58ff with SMTP id
 18-20020a170906009200b009a1c0e958ffmr1669524ejc.11.1695207629279; 
 Wed, 20 Sep 2023 04:00:29 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 se17-20020a170907a39100b009adc86b75d5sm7857126ejc.189.2023.09.20.04.00.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 04:00:29 -0700 (PDT)
Message-ID: <cc14cd4a-f3bb-3d6f-5b38-ec73cad32570@blackwall.org>
Date: Wed, 20 Sep 2023 14:00:27 +0300
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
 <20230919-fdb_limit-v4-5-39f0293807b8@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230919-fdb_limit-v4-5-39f0293807b8@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v4 5/6] net: bridge: Add a
 configurable default FDB learning limit
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
> Add a Kconfig option to configure a default FDB learning limit system
> wide, so a distributor building a special purpose kernel can limit all
> created bridges by default.
> 
> The limit is only a soft default setting and overrideable on a per bridge
> basis using netlink.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/Kconfig     | 13 +++++++++++++
>   net/bridge/br_device.c |  2 ++
>   2 files changed, 15 insertions(+)
> 
> diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
> index 3c8ded7d3e84..c0d9c08088c4 100644
> --- a/net/bridge/Kconfig
> +++ b/net/bridge/Kconfig
> @@ -84,3 +84,16 @@ config BRIDGE_CFM
>   	  Say N to exclude this support and reduce the binary size.
>   
>   	  If unsure, say N.
> +
> +config BRIDGE_DEFAULT_FDB_MAX_LEARNED
> +	int "Default FDB learning limit"
> +	default 0
> +	depends on BRIDGE
> +	help
> +	  Sets a default limit on the number of learned FDB entries on
> +	  new bridges. This limit can be overwritten via netlink on a
> +	  per bridge basis.
> +
> +	  The default of 0 disables the limit.
> +
> +	  If unsure, say 0.
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 9a5ea06236bd..3214391c15a0 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -531,6 +531,8 @@ void br_dev_setup(struct net_device *dev)
>   	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
>   	dev->max_mtu = ETH_MAX_MTU;
>   
> +	br->fdb_max_learned = CONFIG_BRIDGE_DEFAULT_FDB_MAX_LEARNED;
> +
>   	br_netfilter_rtable_init(br);
>   	br_stp_timer_init(br);
>   	br_multicast_init(br);
> 

This one I'm not sure about at all. Distributions can just create the 
bridge with a predefined limit. This is not flexible and just adds
one more kconfig option that is rather unnecessary. Why having a kconfig
knob is better than bridge creation time limit setting? You still have
to create the bridge, so why not set the limit then?

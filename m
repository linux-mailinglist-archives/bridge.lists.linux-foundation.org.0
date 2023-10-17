Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DEF7CBF74
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D383081314;
	Tue, 17 Oct 2023 09:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D383081314
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=k7jYQD9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ht-n4CavA6Kt; Tue, 17 Oct 2023 09:31:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5B2AE8123E;
	Tue, 17 Oct 2023 09:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B2AE8123E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DCF5C0DD3;
	Tue, 17 Oct 2023 09:31:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F4B5C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DBB760F45
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DBB760F45
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=k7jYQD9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdGvUBGwuDwG for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:31:42 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AD1C60A5E
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AD1C60A5E
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2c50ec238aeso44264771fa.0
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697535100; x=1698139900;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fsrKPD/7qupxjLmT8Mi5PT6TYfrkzaLblWhZdBHfHxE=;
 b=k7jYQD9EA5S0XTd62CN6QFyzgnLjkUQ+kX5uFRw6S+0bCXkt3yUd7X+d6sf0rnpcbd
 b7DlmFX5Bg9R+GrzlQu4LWSRbaCVvHOqfwmeQ8AwnmcXF6CGiU1dJ6wYC4M+9c1r5AyV
 G7Fl3tMYf1/Mi7suFYkYK1leGdq7VX0UeITw1qt82JdJRMIvlny1A5H1j8kcXZF0dTy4
 ZXEZtKfTXxrRJQwSLmAuBJYqCtZ3RHvPkhTrNmA2gTcKYUj78GaiBFgg5wi2P55HZM8x
 3PhpbcfCyUOm+NdWPym1q+fJ/vJl0xDWmOsXJ12/gYKIxRMtUrNdY1akLv27ND473E0P
 xngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697535100; x=1698139900;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fsrKPD/7qupxjLmT8Mi5PT6TYfrkzaLblWhZdBHfHxE=;
 b=uJXH/NlQnBxa1JaESmPNgFGaLJraYQ+zuCNqjfVuqf8NOkGAoHOAhu9rdBU8xnfTRB
 xS2edQVpjXxe0DtSDyQ6BxEVENhtgyzrGKjm6NaOxnRzGfb2eHy8bkPGXmHx2ySp4Eq3
 vLTwXnmvxB9Cjv20scxtkFeDluzfh+m4Zhcs83VSvI1aXpI/R0OzFrvc9xmUVYTFz3hU
 H8hOdbHcSoPOZ00D6CUZ60dRXqna/mav1uC6Iqq+AJGj6boVsggIdnMLoBFjsBtkbJXz
 Kyv11Poxr/GaEe7G1jM/XjH3qjwDnD6YEJW3X0OK8+8EOb56TZZMbYmVXp1ocHv92sCs
 8QCg==
X-Gm-Message-State: AOJu0YxVHVpkMHVX+Y9/5GATiRLQvZ4vf80SzhIfo2v3RW5U0XnOEBL1
 c6ZksJbet8/jNQ+wdmt1/SXapQ==
X-Google-Smtp-Source: AGHT+IGzWf/WEPHpLeoowdpeEwKEiGcC14iNGScA2CK7eBKsOPCa8z2I7ioO6L1QMCV6+SIZy+/6yQ==
X-Received: by 2002:a2e:3c08:0:b0:2c5:1900:47a4 with SMTP id
 j8-20020a2e3c08000000b002c5190047a4mr1310758lja.0.1697535100199; 
 Tue, 17 Oct 2023 02:31:40 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 t7-20020a1c7707000000b0040586360a36sm9267266wmi.17.2023.10.17.02.31.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:31:39 -0700 (PDT)
Message-ID: <6f679d47-f099-7345-0d97-6e07bfd7ceec@blackwall.org>
Date: Tue, 17 Oct 2023 12:31:38 +0300
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
References: <20231016-fdb_limit-v5-0-32cddff87758@avm.de>
 <20231016-fdb_limit-v5-3-32cddff87758@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016-fdb_limit-v5-3-32cddff87758@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v5 3/5] net: bridge: Add netlink knobs
 for number / max learned FDB entries
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

On 10/16/23 16:27, Johannes Nixdorf wrote:
> The previous patch added accounting and a limit for the number of
> dynamically learned FDB entries per bridge. However it did not provide
> means to actually configure those bounds or read back the count. This
> patch does that.
> 
> Two new netlink attributes are added for the accounting and limit of
> dynamically learned FDB entries:
>   - IFLA_BR_FDB_N_LEARNED (RO) for the number of entries accounted for
>     a single bridge.
>   - IFLA_BR_FDB_MAX_LEARNED (RW) for the configured limit of entries for
>     the bridge.
> 
> The new attributes are used like this:
> 
>   # ip link add name br up type bridge fdb_max_learned 256
>   # ip link add name v1 up master br type veth peer v2
>   # ip link set up dev v2
>   # mausezahn -a rand -c 1024 v2
>   0.01 seconds (90877 packets per second
>   # bridge fdb | grep -v permanent | wc -l
>   256
>   # ip -d link show dev br
>   13: br: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 [...]
>       [...] fdb_n_learned 256 fdb_max_learned 256
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   include/uapi/linux/if_link.h |  2 ++
>   net/bridge/br_netlink.c      | 15 ++++++++++++++-
>   2 files changed, 16 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



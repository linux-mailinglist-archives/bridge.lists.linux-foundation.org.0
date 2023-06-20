Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521DD7363DD
	for <lists.bridge@lfdr.de>; Tue, 20 Jun 2023 08:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DE4F40A18;
	Tue, 20 Jun 2023 06:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DE4F40A18
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=pVTj1zp0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCfxezyhxnlH; Tue, 20 Jun 2023 06:56:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E1A66404F6;
	Tue, 20 Jun 2023 06:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1A66404F6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A74FAC008C;
	Tue, 20 Jun 2023 06:56:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ACB67C0029
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 06:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7AAE3610C5
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 06:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AAE3610C5
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=pVTj1zp0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6EiqGfkV4VD for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jun 2023 06:56:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BD5560E24
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BD5560E24
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jun 2023 06:56:10 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-51a3f911135so4989691a12.2
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jun 2023 23:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1687244168; x=1689836168;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qURJBP/qdgAxM7ZVrKekMbXpVFwIY0w1rl0S98JqRrY=;
 b=pVTj1zp0/qrrmSSVqckn6CBxM+ggdMfq78nPOEWemBGEdrykXBI0XQ2kljMCagq+Vg
 RMvni/PxPuD77mR/DRMbO9fRTIVKirSfiVMekLPIVnnwr7XnyDHWokPxjnK+xs4VQURU
 FmX+jgJujhzW9VZb1h6oYENi7XasxDaHeICz7Emgf1EUbFcPpPP5HGeHzPAfssfx+dHy
 jreQhybyKOcFqVFQMIITHbBHTit45bw8tk/Xx2V7G/mU/3vTgzUXos68Mhl+kYwt/RZc
 DZFeV8EIClWcZzRaJ/gbgY6a/zyR+8uJNyeZ06zruiaIjtSpTBgJpxwcgkrqWbOKYn2M
 Kk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687244168; x=1689836168;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qURJBP/qdgAxM7ZVrKekMbXpVFwIY0w1rl0S98JqRrY=;
 b=PCa/0zkIhRhux3ZEkS5n+S6GvuvnOc52s93f0ffUL5iHvNN+HO4Mv6KtUB4OKH8ktU
 kxPShcowinW7Ix1QkBmww8DO2xXnqj/FYw+aMQAMO9DuIXbKZcnRH8LKX69Lss1fDf6c
 3Qu6ZXqUOqcavoY6rCsBwtr5ixdAE3hlgkB9hp7SgAaX3M1QnofJj69EzrnzEvIhOX4q
 poFpDWD8jQ6GClEXN9DDt93OkQGHAxj/Tpnjmj/rT/JYJTGDS6X3VOlquQXNGefJMvU0
 cTLriKKTGktqQxpwNlVHfe7gNgHhdIKtaS8oVkQLMRyJHKi9mq+uXweflTxw3gq7QCQd
 wZug==
X-Gm-Message-State: AC+VfDx3LRHkOjG/TnBL2d3cZIOXspMhEQihDpPXe0aIvpoz1T15g1Wv
 83KkX/qlaMx4bEVdzX89753+RQ==
X-Google-Smtp-Source: ACHHUZ6T+UQkCne8j38UODWyu51fpIgrxO7cDkOq+q+esKt8D9DFBUhL4FlvIu8PyhIgbGfDEBRtAQ==
X-Received: by 2002:a17:907:6092:b0:94a:845c:3529 with SMTP id
 ht18-20020a170907609200b0094a845c3529mr11896530ejc.9.1687244168414; 
 Mon, 19 Jun 2023 23:56:08 -0700 (PDT)
Received: from [192.168.8.136] ([37.63.21.25])
 by smtp.gmail.com with ESMTPSA id
 z14-20020a1709064e0e00b00987ac9cfb8esm782108eju.67.2023.06.19.23.56.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Jun 2023 23:56:08 -0700 (PDT)
Message-ID: <3fdb4091-3dc9-e1f2-26a6-561c021c9fae@blackwall.org>
Date: Tue, 20 Jun 2023 09:56:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>, bridge@lists.linux-foundation.org
References: <20230619071444.14625-1-jnixdorf-oss@avm.de>
 <20230619071444.14625-4-jnixdorf-oss@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230619071444.14625-4-jnixdorf-oss@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@nvidia.com>,
 David Ahern <dsahern@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2 3/3] net: bridge: Add a
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

On 6/19/23 10:14, Johannes Nixdorf wrote:
> This adds a Kconfig option to configure a default FDB learning limit
> system wide, so a distributor building a special purpose kernel can
> limit all created bridges by default.
> 
> The limit is only a soft default setting and overridable per bridge
> using netlink.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> 
> ---
> 
> Changes since v1:
>   - Added a default limit in Kconfig. (deemed acceptable in review
>     comments)
> 
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
> index 8eca8a5c80c6..93f081ce8195 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -530,6 +530,8 @@ void br_dev_setup(struct net_device *dev)
>   	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
>   	dev->max_mtu = ETH_MAX_MTU;
>   
> +	br->fdb_max_learned_entries = CONFIG_BRIDGE_DEFAULT_FDB_MAX_LEARNED;
> +
>   	br_netfilter_rtable_init(br);
>   	br_stp_timer_init(br);
>   	br_multicast_init(br);

IMO this is pointless, noone will set the kconfig option except very 
specific users. I prefer if we leave it to the distribution to set a 
maximum on bridge creation, i.e. make it a distro policy.


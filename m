Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BBD7CBF7B
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:32:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 433A940554;
	Tue, 17 Oct 2023 09:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 433A940554
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=tyOAzvG5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zxTp588kaHht; Tue, 17 Oct 2023 09:32:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9B9934060F;
	Tue, 17 Oct 2023 09:32:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B9934060F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 414FEC0DD3;
	Tue, 17 Oct 2023 09:32:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 921E9C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C99440949
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C99440949
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=tyOAzvG5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MgVBEZfoeO8R for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:32:06 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D5F240438
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D5F240438
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-4054f790190so57840035e9.2
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697535124; x=1698139924;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3kgbT4HUwVO3dRrS+UXwvsR6kcnDepF12o+Z+tvmQWQ=;
 b=tyOAzvG5t7HfiOOXKC4GP1E/NzUDDafLR4J739RS3dyNktrfJyZnuTP5jIk0AYeha6
 jgZ0uGEDkJSAxZuqEKJ4j31zJChKuO57tYJcAM5ZRo5h6o7jxZuPpWgb9P1AWDAqc5pA
 KfNsjkhLQdNhBJRsjxkzmIZjA+/r5GrKDw4vT3/5HqB5iXUKuwpR7KeRfVs1jmvavbAC
 dMs+thW5TYXvpKi6GLHt8n686z/o3togdj6tRRYlF6ShxQtJv11LWskd0TIe9pzlK3DU
 GS7bR+LVcTVpewuaTnElX5Zw7PQdTk+QFSTMDtOVd2BxEctyiwl7ViATdejTuPex9Qom
 IT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697535124; x=1698139924;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3kgbT4HUwVO3dRrS+UXwvsR6kcnDepF12o+Z+tvmQWQ=;
 b=AzUee5PJsAotyI2LOK3CcoxWT82dtzWLjWm/Y69m1M/vjCyu4+wnGTRtVubj+SkiRT
 ArwEcW21G9fK6bvIl8HuqWDv1GndCg1rNeBvYnQb69NT46qQ2Zb7Qqq1yDHeugpGxaYr
 TJSDHKH2IEDUjwTeOPtLr2D29EAxoFmVuiAV6mbRsq9s6gxwi1i79UbBnjhnXR5R+xaQ
 4Njm7o5pYMlzaQic8GRgppk0ViSkuLbDGoIYg+kIL8Zb3RelhnlNcUSSUpIjUY1HpUYS
 4DbLOTWLBcLzhS4MbXblJ0EueeeKWMl2gp1y+LZ5i8M57h2+85NBBP44sX28aaBzLWdG
 LIOw==
X-Gm-Message-State: AOJu0YyTOiu+FNE96nSuE8GfhOaAQ5lr821r83nDfPi3XD7gE/Pd9nPF
 PmE4iv1ZV+hD2uY2cSV2hXIzAQ==
X-Google-Smtp-Source: AGHT+IEFCAFLbJTRsa9Q+OR2Uc4qdYh8ECcQZKGv69/zvXpR+D7cI+ScKKATcZsdrGR677hHJRW8VA==
X-Received: by 2002:a05:600c:3595:b0:3ff:ca80:eda3 with SMTP id
 p21-20020a05600c359500b003ffca80eda3mr1240848wmq.10.1697535123998; 
 Tue, 17 Oct 2023 02:32:03 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 a6-20020a05600c348600b0040652e8ca13sm9406919wmq.43.2023.10.17.02.32.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:32:03 -0700 (PDT)
Message-ID: <f4657a17-1b81-f8e3-a781-714f1dc5174f@blackwall.org>
Date: Tue, 17 Oct 2023 12:32:01 +0300
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
 <20231016-fdb_limit-v5-4-32cddff87758@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016-fdb_limit-v5-4-32cddff87758@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v5 4/5] net: bridge: Set
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

On 10/16/23 16:27, Johannes Nixdorf wrote:
> Set any new attributes added to br_policy to be parsed strictly, to
> prevent userspace from passing garbage.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
>   net/bridge/br_netlink.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 0c3cf6e6dea2..5ad4abfcb7ba 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1229,6 +1229,8 @@ static size_t br_port_get_slave_size(const struct net_device *brdev,
>   }
>   
>   static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
> +	[IFLA_BR_UNSPEC]	= { .strict_start_type =
> +				    IFLA_BR_FDB_N_LEARNED },
>   	[IFLA_BR_FORWARD_DELAY]	= { .type = NLA_U32 },
>   	[IFLA_BR_HELLO_TIME]	= { .type = NLA_U32 },
>   	[IFLA_BR_MAX_AGE]	= { .type = NLA_U32 },
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


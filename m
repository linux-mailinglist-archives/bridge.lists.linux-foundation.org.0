Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2645467FDBE
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:09:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D4AF81BB0;
	Sun, 29 Jan 2023 09:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D4AF81BB0
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=fjrTGrhi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbsUlS5Y_p5o; Sun, 29 Jan 2023 09:09:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D5DD481BB2;
	Sun, 29 Jan 2023 09:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DD481BB2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C049C0078;
	Sun, 29 Jan 2023 09:09:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3A31C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9951A41706
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9951A41706
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=fjrTGrhi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szfos0JD_eBr for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:09:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68A0A41705
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68A0A41705
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:09:33 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id dr8so2547000ejc.12
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=w/AZ/A/olYCP18HetNsEPN25VtnURtcy+kAXgeU7ycM=;
 b=fjrTGrhig1y4OqWIksdP6M4gdfwa71nXHU9U/H7D7xPlxVJ+zyBk2qqW5YfW0OAwX1
 PNkeIbHDkAKnRhhZV2G0GEknGvaUi82PvwJqeZ5jQJ/zh/I8fZuNI0uDKckoBfVI49AZ
 RMrG3mTEOjU1ZlJMbpxWVr9BKBsvaHodQfpGksB0+qnZ4hbJeWAJwgXitwJGyeyj7Q6x
 hgUXtqI7GCcUYj3Azk0GrGJTx5RdEKSGNl1QXzS+D2IHFfTFUmHSIAo0TunNi7eOZ7en
 abS5zii44GGB8pDiHYuMORB5OI7eyTzWqqAa7kp3XnP3jCVhkoun01+63SGyPH4zEf4d
 peug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w/AZ/A/olYCP18HetNsEPN25VtnURtcy+kAXgeU7ycM=;
 b=eNlnGjfmNXnYi5RyKCH/3hpyzRFi8LdycwumXXWaQbR6lszpkHFJLyiLhKAYqkacje
 H8DUPGnCwWbjx1UR/IHxtpx+Aqr3TAQ4oW4WQUu3pAImKDV6R+7E6sU1p27dXw8Smz3g
 ipENPx9sWLlhgEBgkkECrWQa7Le5vv6tGh180aCG2wbRVj2EnwyqbkqgYvconPIFlwWw
 bQLN0pJGBk9A4zNjxLhkBpQAD2/tL1XjD+u8vdL+ihOn8tJjIzWgdbtnOCUcrg/vtiXv
 7Cch20nCvNvNef1G7V2FhOLspkyImOYcQPbkhfix75YGXn+o6WqSKzhrF5jnZyLfwwR3
 pEKQ==
X-Gm-Message-State: AO0yUKVFrs8gYuRsl1RbndJQfVre1OXcC3aY6Evxzt9FkjxShpYEO6up
 qX/AYhril7X43GIXEBST90S/uA==
X-Google-Smtp-Source: AK7set+xrkOl75NXQGdbhKa3dA+O1VoVZVhRT37/njPIz0GGw6OkB75sdaM2Bjtu4xcUfT2TbBDiig==
X-Received: by 2002:a17:907:9a89:b0:880:ffaa:16f4 with SMTP id
 km9-20020a1709079a8900b00880ffaa16f4mr5602985ejc.10.1674983371424; 
 Sun, 29 Jan 2023 01:09:31 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 n5-20020a1709061d0500b0084d420503a3sm5126497ejh.178.2023.01.29.01.09.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:09:31 -0800 (PST)
Message-ID: <dbfe0af4-24f8-bdc9-38ea-c873936bdd7f@blackwall.org>
Date: Sun, 29 Jan 2023 11:09:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 01/16] net: bridge: Set
 strict_start_type at two policies
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

On 26/01/2023 19:01, Petr Machata wrote:
> Make any attributes newly-added to br_port_policy or vlan_tunnel_policy
> parsed strictly, to prevent userspace from passing garbage. Note that this
> patchset only touches the former policy. The latter was adjusted for
> completeness' sake. There do not appear to be other _deprecated calls
> with non-NULL policies.
> 
> Suggested-by: Ido Schimmel <idosch@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_netlink.c        | 2 ++
>  net/bridge/br_netlink_tunnel.c | 3 +++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 4316cc82ae17..a6133d469885 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -858,6 +858,8 @@ static int br_afspec(struct net_bridge *br,
>  }
>  
>  static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
> +	[IFLA_BRPORT_UNSPEC]	= { .strict_start_type =
> +					IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT + 1 },
>  	[IFLA_BRPORT_STATE]	= { .type = NLA_U8 },
>  	[IFLA_BRPORT_COST]	= { .type = NLA_U32 },
>  	[IFLA_BRPORT_PRIORITY]	= { .type = NLA_U16 },
> diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
> index 8914290c75d4..17abf092f7ca 100644
> --- a/net/bridge/br_netlink_tunnel.c
> +++ b/net/bridge/br_netlink_tunnel.c
> @@ -188,6 +188,9 @@ int br_fill_vlan_tunnel_info(struct sk_buff *skb,
>  }
>  
>  static const struct nla_policy vlan_tunnel_policy[IFLA_BRIDGE_VLAN_TUNNEL_MAX + 1] = {
> +	[IFLA_BRIDGE_VLAN_TUNNEL_UNSPEC] = {
> +		.strict_start_type = IFLA_BRIDGE_VLAN_TUNNEL_FLAGS + 1
> +	},
>  	[IFLA_BRIDGE_VLAN_TUNNEL_ID] = { .type = NLA_U32 },
>  	[IFLA_BRIDGE_VLAN_TUNNEL_VID] = { .type = NLA_U16 },
>  	[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS] = { .type = NLA_U16 },

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


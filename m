Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D72E6714C67
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 16:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 616AB6114A;
	Mon, 29 May 2023 14:49:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 616AB6114A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=5WKAVKkE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O70JTMZo-1rO; Mon, 29 May 2023 14:49:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D6E5B6112E;
	Mon, 29 May 2023 14:49:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6E5B6112E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97231C0089;
	Mon, 29 May 2023 14:49:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26503C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E87E740527
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E87E740527
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=5WKAVKkE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCVg9Vsz2YFr for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 14:49:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DBC0400DC
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DBC0400DC
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 14:49:39 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5147dce372eso4796640a12.0
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 07:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685371777; x=1687963777;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GcrQMrKy+OprIuWHewbOIu72Ifyis4UMZQEl5zsj5eY=;
 b=5WKAVKkEka7F0V0UH/QnKyjgdHe+0JlZ0H/UYvuVK0qFeJdBKuUTGb7Ccq3NilLS1S
 TLrrUB/INdpL2M8vqh60VCxX1sHnDt2DHwOgVT7tbRB0l9UGhcELh2EFolhT5vfQTzw6
 nJoWcyC0TayAZCw1zX5V0ojydpm1ay5LFdludzqFNmOqKlAXg0t7WqmL7rg7t3HXKTG8
 Ypzx+MAqYQNJpxwl0l3oYtFp6aKR/KYTWkkDEVywSyM3UKE+h+fZWTd6QPJv4C0s4k0y
 oRLru+0fOFmYXUAX1BCuYBr59dsQTa3pzdT8WPotzHaURpElQoOuSXC2wB50IxO3KgVe
 AmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685371777; x=1687963777;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GcrQMrKy+OprIuWHewbOIu72Ifyis4UMZQEl5zsj5eY=;
 b=BRpA95uTzzNWc3pwmrvh+gTA+ktdzKb4s8GPnnqkE+6Hurcl5ZBKmSZEePCbFZLsEE
 kw16mS3sQivMwl6rvVXq+kBsMSKG8fDjdk5S281MOb4wrV4lJqioJSRHZ7+PrwMyik0T
 2DkZZaHwdFqulRtMQtHJQqj6ssE7teYtpzM6+Us8e5vileTrvOykPlpaVsl9lGjz4HVn
 BVKdWSScKtq4hQL1lh4RnoNW6uavpP8wV21+NfbPAq7wEGnqpc3EptFCD75QKcksfuc9
 uw76ENQijEdSKk6qIQO4O7ckoPGYROSC+SpM4uzPN3LqDU1plBUwz+NVOqAsfafYs9QU
 +wwA==
X-Gm-Message-State: AC+VfDw0KrRu+45j1rYX7l6ABCGYyl2Nnd1x4XJTLPmg8RkJjfO+ZCNC
 OZDw5L0jwUmqZo0I6JFNwhy0Qg==
X-Google-Smtp-Source: ACHHUZ4CTx+wsIkMqU8r9brgNPXFOT4qvFlxNMOVfZ0JUFhyry3TT6MpnRC6crtec+uJwZDGjjJ3QA==
X-Received: by 2002:a05:6402:54e:b0:514:80ba:4be8 with SMTP id
 i14-20020a056402054e00b0051480ba4be8mr7877065edx.31.1685371777386; 
 Mon, 29 May 2023 07:49:37 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 f14-20020a056402004e00b0050c0b9d31a7sm3182608edu.22.2023.05.29.07.49.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 07:49:36 -0700 (PDT)
Message-ID: <923b2fdc-6313-67d7-5577-720da309eccf@blackwall.org>
Date: Mon, 29 May 2023 17:49:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-7-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-7-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 6/8] mlxsw: spectrum_flower: Do not
 force matching on iif
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

On 29/05/2023 14:48, Ido Schimmel wrote:
> Currently, mlxsw only supports the 'ingress_ifindex' field in the
> 'FLOW_DISSECTOR_KEY_META' key, but subsequent patches are going to add
> support for the 'l2_miss' field as well. It is valid to only match on
> 'l2_miss' without 'ingress_ifindex', so do not force matching on it.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * New patch.
> 
>  drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
> index 2b0bae847eb9..9c62c12e410b 100644
> --- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
> +++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c
> @@ -290,6 +290,9 @@ mlxsw_sp_flower_parse_meta_iif(struct mlxsw_sp_acl_rule_info *rulei,
>  	struct mlxsw_sp_port *mlxsw_sp_port;
>  	struct net_device *ingress_dev;
>  
> +	if (!match->mask->ingress_ifindex)
> +		return 0;
> +
>  	if (match->mask->ingress_ifindex != 0xFFFFFFFF) {
>  		NL_SET_ERR_MSG_MOD(extack, "Unsupported ingress ifindex mask");
>  		return -EINVAL;


Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


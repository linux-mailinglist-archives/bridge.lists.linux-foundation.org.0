Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D34751D2B
	for <lists.bridge@lfdr.de>; Thu, 13 Jul 2023 11:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FD9A61317;
	Thu, 13 Jul 2023 09:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FD9A61317
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=I8bje+1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3HPX7GlTqC7; Thu, 13 Jul 2023 09:29:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CE94B60B33;
	Thu, 13 Jul 2023 09:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE94B60B33
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C345C0DD4;
	Thu, 13 Jul 2023 09:29:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B9B9C0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECF72813ED
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECF72813ED
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=I8bje+1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4n_T39WlIQgl for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 09:29:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03812813EB
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03812813EB
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:29:26 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2b71ae5fa2fso6590331fa.0
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 02:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689240565; x=1691832565;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bsVmfGKx3JXZYIZAj2sAzKGn4PToD7TqBYHKEzg5nto=;
 b=I8bje+1DsdXED3Msu/ohJ8XAdIQufu8VtS9hLYTHg4kAo519quxxoLGdanAr2QyOfA
 eiaICWM9cx1qmz3vvVTlsoKxrKGdzjpeVChoU3Ly7VRZK8soYyRUi2ET0NPz8RmmJXKT
 U4lbbXJTEr9i/gQXGAl0v0n0kT8DaaMXBno8tOKXGDKhPvsgm7Z00eF6PdMYPRbH3QSe
 LRTnc5/YjBS5H16fTZNVBi77LXN6gvYGL8fAokrOUnObS6P1JQ8VTlM4IFm52nSnUdNi
 vl/N+U1sn0xzmAyL1qKv87eY7lLixri+SutfmoVeKVEnJZ1Jc6bIcDW9yQVxFc5V31pJ
 g1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689240565; x=1691832565;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bsVmfGKx3JXZYIZAj2sAzKGn4PToD7TqBYHKEzg5nto=;
 b=Yw2oOyQyiHRYs8KgAf6JueqKmd9erILoFdMrHklfn7jcRKxaDmKsMvbnelmPVqmMyS
 l9S0HchoUwcvVDJsYfWmjNpqFMRcWHxF016cYoNhYArekwJTT03Xyw0wkjezzU9WYAyM
 M5VXcZKXPY6PfC2aKYXFtrpZo7z3gMMj6KjrM8VKwm+vYKTugYZtsoY5OX2HgWAV01Mo
 Yg5DR4s/koA5QLrs2nB16oqoxhBYV2r8LkT/JZohHFvsRYPP1bJFj6GEnlbF8Y+bCbwS
 vBe4l5Ex1zDoUxOGN6T5cOJ40e47F8rPyBQz6LtsuWTar2/MPzARCWUCgDqpHjz6HiAB
 9HPg==
X-Gm-Message-State: ABy/qLbcfXWx0yTNYcFoNUvmoMeNcugr8sX1Vdza7B7xya5+KvKz8n/r
 rBT1QRRuB8z/t34MzSokDoxorg==
X-Google-Smtp-Source: APBJJlEbccQh+Fe73AZgnIslTq9Iowmz40ZtXehUemrv0jO+EbBGRc3c4ISaVg7GhBgi9oPnMAIbGA==
X-Received: by 2002:a05:651c:10d:b0:2b6:d44c:c25b with SMTP id
 a13-20020a05651c010d00b002b6d44cc25bmr828911ljb.45.1689240564574; 
 Thu, 13 Jul 2023 02:29:24 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 y1-20020a05651c020100b002b6cc613c23sm1404073ljn.80.2023.07.13.02.29.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Jul 2023 02:29:24 -0700 (PDT)
Message-ID: <d003b6e7-6db1-f5e3-d356-237e4bf3a34c@blackwall.org>
Date: Thu, 13 Jul 2023 12:29:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230713070925.3955850-1-idosch@nvidia.com>
 <20230713070925.3955850-2-idosch@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230713070925.3955850-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, taspelund@nvidia.com, roopa@nvidia.com,
 edumazet@google.com, dsahern@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 1/4] ip_tunnels: Add nexthop ID
 field to ip_tunnel_key
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

On 13/07/2023 10:09, Ido Schimmel wrote:
> Extend the ip_tunnel_key structure with a field indicating the ID of the
> nexthop object via which the skb should be routed.
> 
> The field is going to be populated in subsequent patches by the bridge
> driver in order to indicate to the VXLAN driver which FDB nexthop object
> to use in order to reach the target host.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   include/net/ip_tunnels.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
> index ed4b6ad3fcac..e8750b4ef7e1 100644
> --- a/include/net/ip_tunnels.h
> +++ b/include/net/ip_tunnels.h
> @@ -52,6 +52,7 @@ struct ip_tunnel_key {
>   	u8			tos;		/* TOS for IPv4, TC for IPv6 */
>   	u8			ttl;		/* TTL for IPv4, HL for IPv6 */
>   	__be32			label;		/* Flow Label for IPv6 */
> +	u32			nhid;
>   	__be16			tp_src;
>   	__be16			tp_dst;
>   	__u8			flow_flags;

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


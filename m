Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7EA234A00
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 19:16:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C94D88743;
	Fri, 31 Jul 2020 17:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUJNKY9iD5MF; Fri, 31 Jul 2020 17:16:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EC6288744;
	Fri, 31 Jul 2020 17:16:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20FE9C004D;
	Fri, 31 Jul 2020 17:16:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BD6F6C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B8C1687EA2
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DfE0H9-sUImP for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 17:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B21987E1D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:15:24 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id x6so8618663qvr.8
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 10:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f/WAbEOG/tptLifB9LgbWD1+/CHIVuvFFHIVIWW5SbY=;
 b=kpw9UYVl+IwL1va1X+QsxMLUZdovpBIuRhu0so4e6ZXtvUMYHDmISR0yC6PQmchjr4
 2Qe+el83U3tB8LkaWW+NhNDv+h9nRVCVVHH9eqG7eDcg8fErviCcMTYmKiFJ9ap42OXx
 GSmfDUyD0vyvV2POZnyJtUEa1kbwlQtYrFpRBll0K7vHj9k4e6pX0wsi0iQ3VgDp/kLp
 /9WhId3hAugDy9T5YQqOxMA5Fw0hEuPvCmGN0hO7G1wYpUUpsnCEYcdqWK69u0rqURhK
 DiuGofmhD/Mbpy8Ikm36/kdZ8GMIkzXbbbmQvLNu8oB4A+BcWeR3BtS5BzdP8w9ZmkVA
 /peA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f/WAbEOG/tptLifB9LgbWD1+/CHIVuvFFHIVIWW5SbY=;
 b=NoQyC/EjmHTWM5i+iW2xQdtkAFUDs9n3hT3kSqomV3fIunQ6QF2/nN58z7xlCIwHls
 q6zG3bTAWjKLy75mC5CyLsPh8EvhgfKpjIGSRf2EuuUatXuSaC03yR3d+/6g3N/qsDgi
 kRo4t4TZCYtxPQRol4alNa5HYny8c1kJqDgOg5ib5gmi38jZJihYYOE8lkkTybVAinlO
 pxYrJvnKdIcgRz4fRlZ9omgoAFcV1xVwrh6Lvg3Sukf7xGN8CtkjxgvCMvm0Lzvg7v67
 rtvhnxO7UTzgCVxsnTPTXgNlA/9jBNG+z8nQgjdNNc/d8dpgAU3gI82jZ8cKHIvBLWHD
 Wo9A==
X-Gm-Message-State: AOAM533ESsme44oTLOVHW1oc5ipUBRZwTHgNsgl0ZNqTwZx5jOrSovuc
 E9SkEBf/80ZOhmruIySd1gw=
X-Google-Smtp-Source: ABdhPJy3eLsIh2Na3H7aBZv2hHsVXSY7jYLRnC/yeaZDxYJoBQaUtvOMZap2R4HbBVt2V1QxHUMuIA==
X-Received: by 2002:a05:6214:1742:: with SMTP id
 dc2mr5257973qvb.90.1596215723492; 
 Fri, 31 Jul 2020 10:15:23 -0700 (PDT)
Received: from ?IPv6:2601:284:8202:10b0:c147:b41e:be5e:8b7a?
 ([2601:284:8202:10b0:c147:b41e:be5e:8b7a])
 by smtp.googlemail.com with ESMTPSA id x24sm10465749qtj.8.2020.07.31.10.15.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jul 2020 10:15:22 -0700 (PDT)
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 KP Singh <kpsingh@chromium.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 David Ahern <dsahern@kernel.org>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <5970d82b-3bb9-c78f-c53a-8a1c95a1fad7@gmail.com>
Date: Fri, 31 Jul 2020 11:15:19 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
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

On 7/30/20 10:44 PM, Yoshiki Komachi wrote:
> diff --git a/net/core/filter.c b/net/core/filter.c
> index 654c346b7d91..68800d1b8cd5 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -5084,6 +5085,46 @@ static const struct bpf_func_proto bpf_skb_fib_lookup_proto = {
>  	.arg4_type	= ARG_ANYTHING,
>  };
>  
> +#if IS_ENABLED(CONFIG_BRIDGE)
> +BPF_CALL_4(bpf_xdp_fdb_lookup, struct xdp_buff *, ctx,
> +	   struct bpf_fdb_lookup *, params, int, plen, u32, flags)
> +{
> +	struct net_device *src, *dst;
> +	struct net *net;
> +
> +	if (plen < sizeof(*params))
> +		return -EINVAL;

I need to look at the details more closely, but on first reading 2
things caught me eye:
1. you need to make sure flags is 0 since there are no supported flags
at the moment, and

> +
> +	net = dev_net(ctx->rxq->dev);
> +
> +	if (is_multicast_ether_addr(params->addr) ||
> +	    is_broadcast_ether_addr(params->addr))
> +		return BPF_FDB_LKUP_RET_NOENT;
> +
> +	src = dev_get_by_index_rcu(net, params->ifindex);
> +	if (unlikely(!src))
> +		return -ENODEV;
> +
> +	dst = br_fdb_find_port_xdp(src, params->addr, params->vlan_id);

2. this needs to be done via netdev ops to avoid referencing bridge code
which can be compiled as a module. I suspect the build robots will id
this part soon.


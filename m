Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80A7DD30
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:02:04 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A3C412734;
	Thu,  1 Aug 2019 14:01:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2A702B4E
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 13:58:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55C42D3
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 13:58:06 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id h6so3054739iom.7
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 06:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=8nB6UOzgonvSgIT4y+9poBDn/jzEnMha8n1NPzW/YvQ=;
	b=fENZINM7Mxpu4pmIjemj1Ft671AiOSHGKCfYHIezbR7BRrcad7Kt63UyhqN4bHOD/0
	SGtxFM+ZGjcOq6pqFc5CSnnrQ22j1NUyviL7ZCnIeKqAYNlFx9tq5K5eLzYwvKepVzdJ
	dlolAynjEXybnLijnok1Nh0b7P2cl9nnTUfLwL4zjezR99zkDtPbtyV0bzYCdXshj3QY
	TH6BHAvy5283v2TTfrmMKc7bwbObtMq3vWdgU1OGKIWFzI12RrMueopRo42llVlF3gN1
	VaMKjSD7etp/RcVLPV9RB35IAAhLT1FJofVLG5l1T8FQy11QI7aT/ACvSfXfTlVNNPQC
	Mlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=8nB6UOzgonvSgIT4y+9poBDn/jzEnMha8n1NPzW/YvQ=;
	b=ESAVttssuGgt48H11LOEIyg0O3PDZblgEd7S2qG1aJSGvNjIcenT8kf9XHmZw+XAvo
	DVTiMOqhdeQpBa/CSsrIEdl/NolEr+R4TlhVkkvZ1df4QfdnDp9vAoA1AC29ESAoaWjG
	AyMiHTKu815R2jt+RqDquMekJG+8tCVXyF9JWsRSVhgetcEjYZbB3qgVIN5wAlKtaQ3m
	aHpVaVCcaZVmpqU/kpbOUBx5YKBBGZ/Kf47HZhN+6UydvXAA+RkgjJyjSTvTE042E3J/
	WKHYF4lSD+1JKEQPX7Mtwu1B+jUu7ZG+8YRHb3kiNlWRkSJiw8jxX4gx4UOU/TGj+t/p
	G7SQ==
X-Gm-Message-State: APjAAAWJ97jN20Q2m8bKOIRH2KQWDSiihjZ02WNenVc8XgDPl95yeSuz
	JY8Z5P5UEBjgN4HtkiHPdXjHydT0Veg=
X-Google-Smtp-Source: APXvYqzZjcl3uwUJZR4nFPY3D8p6RvxZgBcbascWcjQ17GiagCq3hL/xjj3rRouFr2ZuUb3/MT4P4w==
X-Received: by 2002:a02:ce35:: with SMTP id v21mr29517008jar.108.1564495085399;
	Tue, 30 Jul 2019 06:58:05 -0700 (PDT)
Received: from ?IPv6:2601:282:800:fd80:48fd:47f6:b7d0:19dc?
	([2601:282:800:fd80:48fd:47f6:b7d0:19dc])
	by smtp.googlemail.com with ESMTPSA id
	n22sm106251580iob.37.2019.07.30.06.58.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 06:58:04 -0700 (PDT)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org
References: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <4511701d-88c4-a937-2fbc-b557033a24ed@gmail.com>
Date: Tue, 30 Jul 2019 07:58:03 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: don't delete permanent
 entries when fast leave is enabled
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 7/30/19 5:21 AM, Nikolay Aleksandrov wrote:
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 3d8deac2353d..f8cac3702712 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -1388,6 +1388,9 @@ br_multicast_leave_group(struct net_bridge *br,
>  			if (!br_port_group_equal(p, port, src))
>  				continue;
>  
> +			if (p->flags & MDB_PG_FLAGS_PERMANENT)
> +				break;
> +
>  			rcu_assign_pointer(*pp, p->next);
>  			hlist_del_init(&p->mglist);
>  			del_timer(&p->timer);

Why 'break' and not 'continue' like you have with
	if (!br_port_group_equal(p, port, src))

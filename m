Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A88722EB
	for <lists.bridge@lfdr.de>; Wed, 24 Jul 2019 01:21:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5DDD8DA3;
	Tue, 23 Jul 2019 23:21:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C0F79EE
	for <bridge@lists.linux-foundation.org>;
	Tue, 23 Jul 2019 23:21:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70C10102
	for <bridge@lists.linux-foundation.org>;
	Tue, 23 Jul 2019 23:21:17 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id h28so30530716lfj.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 23 Jul 2019 16:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=6VcnojKIbtzJpkTGh7+taUptRhWCxNbM28ufXgjHO8Y=;
	b=RH9S6noB1vvpjAeNSbPRoxIRiPWap+AY7DIyq8HlA7WpIVBAXfssyLflGxrBYznvmV
	aLhvMFz/4eNG+XCDP0JgkdeVQ7CikA1IN8feem7vM5zS/3B6OMVG92tY5vHiBNDw1tL2
	7T+QE4MP9irbPiWYe4LR7r5VTc71xqfQPJfBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=6VcnojKIbtzJpkTGh7+taUptRhWCxNbM28ufXgjHO8Y=;
	b=Bziv2VCzv1fM+kaElQTsTOA7re2b9nFCjVzcZbNaczATU8vtgtj/0I9ZkT62VSFkWY
	ezXgXQ0E0o+WMK3q58waRlL+4hgIgyhPZNKbDIexS62Qd2LYtVkpdzeeMMisfM6EjX9k
	frIr6FLPeegcw9HbGQpxW4u9SuCzTOcnjK/wv2hZ5ASaK1g0IpiDxeUYYT3ve8nLPPC6
	OPgiLioTYSv1X6lPI4qoANJhy0OlaXg4b0EUQTgu9TfxJxgX/T8r8D+JzyOHMFzHreWd
	YFD6uG6FEsN5GyEHzBYDZXjqNy/EsddSTNa8OBaFhN4M6AtjpFUZLnhOPjWQD4RG9FgP
	3lLA==
X-Gm-Message-State: APjAAAUDxvDEcHFtjlQsVdgh+g0H2p4hH7s+ur35OzRT+k5bS7ohd+xe
	IpJHhdgZvgytrv6l+G3JOZ2Pdg==
X-Google-Smtp-Source: APXvYqyZtmD5WVvtMvQnvqmhXb35VjkZOtmG0KdZqRRzM2cQY34rRX0AjeVW0X9KA2zKuYlEV4qhJg==
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr24733951lfg.126.1563924075380;
	Tue, 23 Jul 2019 16:21:15 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.googlemail.com with ESMTPSA id
	u13sm6727538lfu.37.2019.07.23.16.21.14
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jul 2019 16:21:14 -0700 (PDT)
To: kbuild test robot <lkp@intel.com>
References: <908e9e90-70cc-7bbe-f83f-0810c9ef3925@cumulusnetworks.com>
	<20190723225458.GA3376@lkp-kbuild04>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <5c5eaeee-dfaa-d75e-8ece-a72c7ff467ec@cumulusnetworks.com>
Date: Wed, 24 Jul 2019 02:21:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190723225458.GA3376@lkp-kbuild04>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Martin Weinelt <martin@linuxlounge.net>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, kbuild-all@01.org
Subject: Re: [Bridge] [PATCH] fix noderef.cocci warnings
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

On 7/24/19 1:54 AM, kbuild test robot wrote:
> From: kbuild test robot <lkp@intel.com>
> 
> net/bridge/br_multicast.c:999:8-14: ERROR: application of sizeof to pointer
> 
>  sizeof when applied to a pointer typed expression gives the size of
>  the pointer
> 
> Generated by: scripts/coccinelle/misc/noderef.cocci
> 
> Fixes: 17c91348ed8b ("Use-after-free in br_multicast_rcv")
> CC: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---
> 
> url:    https://github.com/0day-ci/linux/commits/Nikolay-Aleksandrov/net-bridge-mcast-fix-possible-uses-of-stale-pointers/20190702-083354
> 
>  br_multicast.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -996,7 +996,7 @@ static int br_ip6_multicast_mld2_report(
>  			return -EINVAL;
>  
>  		_nsrcs = skb_header_pointer(skb, nsrcs_offset,
> -					   sizeof(_nsrcs), &__nsrcs);
> +					   sizeof(*_nsrcs), &__nsrcs);
>  		if (!_nsrcs)
>  			return -EINVAL;
>  
> 

This must be quite old, I already sent a proper patch without this error.
This one was sent just for testing, hence the TEST in $subject.

 [PATCH TEST] net: bridge: mcast: fix possible uses of stale pointers

Thanks,
 Nik


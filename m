Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADC47DD35
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:02:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50EB12797;
	Thu,  1 Aug 2019 14:01:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 00EFB2DFC
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 14:00:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D08CDF1
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 14:00:30 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p13so65888180wru.10
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 07:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=OVJbTjwxJ2V7gEJ1EnH0FtfbT8cNqFpXv0RRwvyIbGo=;
	b=D6/voHBS9dUFEITrTHGgDCMTH2ke7EsEqVZdZ93v1yLAuANCfSibdGPFfAsIbGPp+m
	sO5PeIFsg7mBpdo65ea6RQDnw4TQ81wITBTUcjvYDA3TYMFMCji79v3FlEXWy5VqcOyc
	JPGqK/l6Nrv4WsZzkV3FeOWuK8l9u/jLlvwRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=OVJbTjwxJ2V7gEJ1EnH0FtfbT8cNqFpXv0RRwvyIbGo=;
	b=TLexLT//qK76UhnREsU0GwtRTZWCp/db/BdmghLrkfZp0fIlePvPyQqKgqFXdISZH8
	iw5s31+X9soM7S+Xi0WCByv0pLrTC/3w4jA+EOE9PXS+mEb1Enbistr2uFItwl9NjDKe
	l7r9clICFWfQ8gsNvAvMorjMbebI6ByNwX3hUCmo7o6Ri3kInobz+B425Rk+NLBg1zAR
	Q1+fgsVDEKMOtsvB5jFpeDK2T1J7dwztkb5BFiU3kAjneryKjyLMMqRLX7tDyoz/NWuP
	INr8AnXdj10kBCb8XvD1qUohe2DBoehzhhjYncr3f7dfJwHePnlwdoRET+DJrk452hKl
	8qPA==
X-Gm-Message-State: APjAAAXmNk4LPEy4MtJ8I7hbeTfMni5+TtmzHiQfNuUjhjqBzZlN+A0v
	k/Dxzbh/fl1p6XuLovmr8JrrF3W+w8g=
X-Google-Smtp-Source: APXvYqytpnI0ZY2uTT8feWzMH92iQ3CBWa0akOaYeEEvNfhhio0d1dj0S/CHj+0Fe0lYpC/qIYVafQ==
X-Received: by 2002:adf:ec8e:: with SMTP id z14mr4445595wrn.269.1564495229044; 
	Tue, 30 Jul 2019 07:00:29 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	t140sm58302813wmt.0.2019.07.30.07.00.28
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 07:00:28 -0700 (PDT)
To: David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org
References: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
	<4511701d-88c4-a937-2fbc-b557033a24ed@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <1b6cd3cf-0e01-2730-b8ad-d26e2355ce84@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 17:00:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4511701d-88c4-a937-2fbc-b557033a24ed@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
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

On 30/07/2019 16:58, David Ahern wrote:
> On 7/30/19 5:21 AM, Nikolay Aleksandrov wrote:
>> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
>> index 3d8deac2353d..f8cac3702712 100644
>> --- a/net/bridge/br_multicast.c
>> +++ b/net/bridge/br_multicast.c
>> @@ -1388,6 +1388,9 @@ br_multicast_leave_group(struct net_bridge *br,
>>  			if (!br_port_group_equal(p, port, src))
>>  				continue;
>>  
>> +			if (p->flags & MDB_PG_FLAGS_PERMANENT)
>> +				break;
>> +
>>  			rcu_assign_pointer(*pp, p->next);
>>  			hlist_del_init(&p->mglist);
>>  			del_timer(&p->timer);
> 
> Why 'break' and not 'continue' like you have with
> 	if (!br_port_group_equal(p, port, src))
> 

Because we'll hit the goto out after this hunk always, no point in continuing
if we matched a group and it's permanent, the break might as well be a goto out.


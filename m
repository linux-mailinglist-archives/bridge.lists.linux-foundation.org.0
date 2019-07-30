Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 257DF7DD43
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:03:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6590E2825;
	Thu,  1 Aug 2019 14:02:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 551FE30F8
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:23:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8134A8
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:23:33 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id g67so53265351wme.1
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 10:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=CebsPQQ+A/tAcok2X5TEltsBQZm10wgsb2ydNwe/jUE=;
	b=ciKx901FLxMho74O4qfh1g8mYd8eUybnoMlvQTYTurAwU1Rmi/lwC7+o9oHVmnBKCb
	2hEpZpZOwwCJLhJa8ql5I/6EzFULyd1ZsEdHUYQmJ+FX9D2Bi1ZZ0suUvjZwiP/vWlCk
	3FUPdxNp1z1MBU8cRNSbMm99sTR78J0R4GFa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=CebsPQQ+A/tAcok2X5TEltsBQZm10wgsb2ydNwe/jUE=;
	b=Ryuga57xZO4UocpfSUFMK7ZttmFGhzMhYFpQDI2dplC8Tbh4pjt2n60OD/bUmKxJSn
	+7fo2sdGF8jmn4DDDFtO65NOAiajeVe+XquSpSKr8nQT1FaTN5mYduRIzyGCS8GfJIu4
	zlOdboPXg2n73fG/IHEMZBY47Jy7yzvRRu5J/IOJ/jVpEDAuVOfqnwT8AKEuKHb9eh4U
	tZz0A1ripyTyuq+D81VMU4Z2p8iguOuNJfTz0R9plymw1/4OnDA1xqjYBd+MWHySYM3Z
	kZU2BOWI9EPro0CU4fn6QnZ9w8k486kxRBkMxtR21nf7WByumrWL2VnJ0aP/I8oSI6MV
	0zxw==
X-Gm-Message-State: APjAAAWVBO3YzEe5wAP4+I6zVFIOB+gRnWzIalVPg3V7SC6NffSe0Xr+
	yfL1iTzmes7ddJFgZu4YfgtS93+CxmU=
X-Google-Smtp-Source: APXvYqz/ZWjEksJjIOZzVc+blL525yUYPR265Dh5tgpKjHoOpfH/wSPcqpGqsZMQbPzRBHSxNwad4A==
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr98188078wma.123.1564507412017; 
	Tue, 30 Jul 2019 10:23:32 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	x17sm48628704wrq.64.2019.07.30.10.23.31
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 10:23:31 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: David Miller <davem@davemloft.net>
References: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
	<20190730.101811.1836331521043535108.davem@davemloft.net>
	<a3de94a3-5976-9035-69bf-2aee6454b45e@cumulusnetworks.com>
Message-ID: <651caecf-00dc-cb1a-1908-cb606f263843@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 20:23:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a3de94a3-5976-9035-69bf-2aee6454b45e@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org
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

On 30/07/2019 20:21, Nikolay Aleksandrov wrote:
> On 30/07/2019 20:18, David Miller wrote:
>> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>> Date: Tue, 30 Jul 2019 14:21:00 +0300
>>
>>> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
>>> index 3d8deac2353d..f8cac3702712 100644
>>> --- a/net/bridge/br_multicast.c
>>> +++ b/net/bridge/br_multicast.c
>>> @@ -1388,6 +1388,9 @@ br_multicast_leave_group(struct net_bridge *br,
>>>  			if (!br_port_group_equal(p, port, src))
>>>  				continue;
>>>  
>>> +			if (p->flags & MDB_PG_FLAGS_PERMANENT)
>>> +				break;
>>> +
>>
>> Like David, I also don't understand why this can be a break.  Is it because
>> permanent entries are always the last on the list?  Why will there be no
>> other entries that might need to be processed on the list?
>>
> 
> The reason is that only one port can match. See the first clause of br_port_group_equal,
> that port can participate only once. We could easily add a break statement in the end
> when a match is found and it will be correct. Even in the presence of MULTICAST_TO_UNICAST
> flag, the port must match and can be added only once.
> 

Like I wrote in the patch I plan to re-work that code in net-next to remove the
duplication and make it more understandable to avoid such confusions. This code
will be functionally equivalent if I put continue there, we'll just walk over
all of them even after a match or permanent are found. There can only be one
match though as I said, so walking the rest of the ports is a waste.



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3232D7DCC2
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:45:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 276661519;
	Thu,  1 Aug 2019 13:45:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 215E418BD
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:42:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6BFBC2C6
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 13:42:24 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id x15so53914775wmj.3
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 06:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=j+ACxE9Mwzw6xWU30d22KqY3pHLYPl1O/glNu0hxiHY=;
	b=MC7xU0pHuapGWfs4KLHfrnZcN05TRPsFKeNY4bNmRTwgUa1w+s5GMeKUT4NXEqf4oi
	YzG0l8BxpwqnFh6cKdI7jv5i0TBkyM/RMk6cd8rR1w/ujyRFlexytPmDF1yVjDvdo2an
	LwMVs9uSbWG5X1wea8aZ90BzvWg+Em85UW3Yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=j+ACxE9Mwzw6xWU30d22KqY3pHLYPl1O/glNu0hxiHY=;
	b=pP4SV05qu/7t6P7SpJcswcENq15zod6UaIXgnsPgbNc2+wklfHTzjk/Fm8J7CChSS9
	FI0MhMEidwYjlUU+tS8nHoYQVwSXe4j4oN2wR64ugMQXGXWz4uO1JrOYKFFDOhtgZmRp
	kEG9cK0kFvV0fs1KDHIff1wnZfmdOmRXvTke/lWYgdwaYeFIvI68BxJDGKdyOPoK1zy+
	xhWMdGXFF+7aN0Kh606Dzm+vBqfwlohuQ9BooqLnyOHkOD8045x+Bc1/imfWiBfUvF/e
	Loc0yY/AaT5AI9OMlLI4iwhNMnUh3KTGkmcPAewXHtVDVr+0DJXxKXiPOjv6tSh6G+AK
	1hwQ==
X-Gm-Message-State: APjAAAUwMv5msduOx0oHPsQIr1cDBGirv4QuWjkGJ/TVX7fqcRG1N/uN
	AnSa5goHUgP0IhiM6r72R3kcNw==
X-Google-Smtp-Source: APXvYqydOKWO17ri+TzMoeOccpJuKMChMjFQ6Bvu+YRI/iEq3SL6FX0mvLlJqrz6+KJNGCmDp0lcYw==
X-Received: by 2002:a1c:a5c2:: with SMTP id
	o185mr97993540wme.172.1564407742994; 
	Mon, 29 Jul 2019 06:42:22 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	q10sm63839086wrf.32.2019.07.29.06.42.22
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jul 2019 06:42:22 -0700 (PDT)
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
	<eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
	<20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
Date: Mon, 29 Jul 2019 16:42:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	davem@davemloft.net, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
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

On 29/07/2019 16:14, Allan W. Nielsen wrote:
> The 07/29/2019 15:22, Nikolay Aleksandrov wrote:
>> Yes, all of the multicast code is handled differently, it doesn't go through the fdb
>> lookup or code at all. I don't see how you'll do a lookup in the fdb table with a
>> multicast mac address, take a look at br_handle_frame_finish() and you'll notice
>> that when a multicast dmac is detected then we use the bridge mcast code for lookups
>> and forwarding.
> 
> Here is my thinking (needs much more elaboration, which will come if we do a
> patch to test it out):
> 
> 
> In br_pkt_type
> 
> Rename BR_PKT_MULTICAST to BR_PKT_MULTICAST_IP
> Add a new type called BR_PKT_MULTICAST_L2
> 
> In br_handle_frame_finish
> 
> 	if (is_multicast_ether_addr(dest)) {
> 		/* by definition the broadcast is also a multicast address */
> 		if (is_broadcast_ether_addr(dest)) {
> 			pkt_type = BR_PKT_BROADCAST;
> 			local_rcv = true;
> 		} else {
> 			pkt_type = BR_PKT_MULTICAST;
> 			if (br_multicast_rcv(br, p, skb, vid))
> 				goto drop;
> 		}
> 	}
> 
> Change the code above to detect if it is a BR_PKT_MULTICAST_IP or a
> BR_PKT_MULTICAST_L2
> 
> 
> In this section:
> 
> switch (pkt_type) {
> ....
> }
> 
> if (dst) {
> } else {
> }
> 
> Add awareness to the BR_PKT_MULTICAST_L2 type, and allow it do forwarding
> according to the static entry if it is there.
> 

All of these add overhead to everyone - standard unicast and multicast forwarding.
Also as mentioned in my second email the fdb would need changes which would further
increase that overhead and also the code complexity for everyone for a use-case which
is very rare when there are alternatives today which avoid all of that. Offload tc rules
and add a rule to allow that traffic on ingress for particular ports, then either use
the bridge multicast flood flag or tc again to restrict flood to other egress ports.

Alternatively use ip maddr add which calls dev_mc_add() which is what the patch was
trying to do in the first place to allow the Rx of these packets and then control
the flooding via one of the above methods.

Alternatively offload nft and use that to control the traffic.

I'm sure there are more ways that I'm missing. :)

If you find a way to achieve this without incurring a performance hit or significant
code complexity increase, and without breaking current use-cases (e.g. unexpected default
forwarding behaviour changes) then please send a patch and we can discuss it further with
all details present. People have provided enough alternatives which avoid all of the
problems.

>> If you're trying to achieve Rx only on the bridge of these then
>> why not just use Ido's tc suggestion or even the ip maddr add offload for each port ?
>>
>> If you add a multicast mac in the fdb (currently allowed, but has no effect) and you
>> use dev_mc_add() as suggested that'd just be a hack to pass it down and it is already
>> possible to achieve via other methods, no need to go through the bridge.
> 
> Well, I wanted the SW bridge implementation to behave the same with an without
> HW offload.
> 
> And also, I believe that is conceptually belongs to the MAC tables.
> 
> /Allan
> 


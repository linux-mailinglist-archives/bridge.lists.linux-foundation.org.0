Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F067DCC6
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:47:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 60818153D;
	Thu,  1 Aug 2019 13:47:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A1CCB1970
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 14:21:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D32CF89D
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 14:21:09 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c2so58859583wrm.8
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 07:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=jYeAreXZkpeRmGyTNDMAkstl+DgUacK6YuylrpO0VuI=;
	b=NDD9ByspwUWrirE6DQ7CY5fcduTsFPxzHG1Q0FYKIM3X/ft9Ej2ex+AF1RJaG8DbXw
	vOcxcWN/XLiamR9LtpzfKP79HlbRpM0Km6jmdCV7YNMPAccJUfjbSeZWxXObWEKbOdP0
	jl2640HrABQgy2+wfNrqOJ8UboQHUpYSAKpks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=jYeAreXZkpeRmGyTNDMAkstl+DgUacK6YuylrpO0VuI=;
	b=O+/8NkD1WNGiDGfnM5vBeC5cL8bqB9ysIUGfmlpwRzltAuAr+dFAQopGmTA7ciKdmP
	obZML5RyQiFcMJFX14V0o3QeEleQ8sL30kzlh0uQL+XgLVV/XAIRNRXdvSo7vujP3OzL
	7JliVjxB49BUc8pfxi6X9ziiQaxD/yNek/CfBFN6zkiAEDX0b5kttYZ762KdMrUBnMzf
	1ZEzOV2MW8GjjzM1nmwRyxIypTuncCg0vvEwkrnMkWax2yqWL7S7jIgSqZSKf49S743r
	pFzkwDQGcT+RS4Kz4+H6G95xwJzjEtttmyw0tQ4jpE8aamNIuuN4fvMyVixH3WRrcSk/
	xUow==
X-Gm-Message-State: APjAAAXHUSGLhVb2NKGv59obVf/Ob23peZXVz+yN2harcJAjTkonGtap
	HL+BUOYWPErydsIg/tGvD/++NA==
X-Google-Smtp-Source: APXvYqzU7BwHJbtdPKKJeCsbMG3ib6n+ls+MsuKYcgV5etREcg9rBUhaKA5FcuGImpmI1twRpG1u6Q==
X-Received: by 2002:adf:ea4c:: with SMTP id j12mr125728562wrn.75.1564410068458;
	Mon, 29 Jul 2019 07:21:08 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id g2sm53851307wmh.0.2019.07.29.07.21.07
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jul 2019 07:21:07 -0700 (PDT)
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
References: <eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
	<20190725142101.65tusauc6fzxb2yp@soft-dev3.microsemi.net>
	<b9ce433a-3ef7-fe15-642a-659c5715d992@cumulusnetworks.com>
	<e6ad982f-4706-46f9-b8f0-1337b09de350@cumulusnetworks.com>
	<20190726120214.c26oj5vks7g5ntwu@soft-dev3.microsemi.net>
	<b755f613-e6d8-a2e6-16cd-6f13ec0a6ddc@cumulusnetworks.com>
	<20190729121409.wa47uelw5f6l4vs4@lx-anielsen.microsemi.net>
	<95315f9e-0d31-2d34-ba50-11e1bbc1465c@cumulusnetworks.com>
	<20190729131420.tqukz55tz26jkg73@lx-anielsen.microsemi.net>
	<3cc69103-d194-2eca-e7dd-e2fa6a730223@cumulusnetworks.com>
	<20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <e4cd0db9-695a-82a7-7dc0-623ded66a4e5@cumulusnetworks.com>
Date: Mon, 29 Jul 2019 17:21:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729135205.oiuthcyesal4b4ct@lx-anielsen.microsemi.net>
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

On 29/07/2019 16:52, Allan W. Nielsen wrote:
> The 07/29/2019 15:50, Nikolay Aleksandrov wrote:
>> On 29/07/2019 15:22, Nikolay Aleksandrov wrote:
>>> Hi Allan,
>>> On 29/07/2019 15:14, Allan W. Nielsen wrote:
>>>> First of all, as mentioned further down in this thread, I realized that our
>>>> implementation of the multicast floodmasks does not align with the existing SW
>>>> implementation. We will change this, such that all multicast packets goes to the
>>>> SW bridge.
>>>>
>>>> This changes things a bit, not that much.
>>>>
>>>> I actually think you summarized the issue we have (after changing to multicast
>>>> flood-masks) right here:
>>>>
>>>> The 07/26/2019 12:26, Nikolay Aleksandrov wrote:
>>>>>>> Actually you mentioned non-IP traffic, so the querier stuff is not a problem. This
>>>>>>> traffic will always be flooded by the bridge (and also a copy will be locally sent up).
>>>>>>> Thus only the flooding may need to be controlled.
>>>>
>>>> This seems to be exactly what we need.
>>>>
>>>> Assuming we have a SW bridge (br0) with 4 slave interfaces (eth0-3). We use this
>>>> on a network where we want to limit the flooding of frames with dmac
>>>> 01:21:6C:00:00:01 (which is non IP traffic) to eth0 and eth1.
>>>>
>>>> One way of doing this could potentially be to support the following command:
>>>>
>>>> bridge fdb add    01:21:6C:00:00:01 port eth0
>>>> bridge fdb append 01:21:6C:00:00:01 port eth1
>>>>
>>
>> And the fdbs become linked lists?
> Yes, it will most likely become a linked list
> 
>> So we'll increase the complexity for something that is already supported by
>> ACLs (e.g. tc) and also bridge per-port multicast flood flag ?
> I do not think it can be supported with the facilities we have today in tc.
> 
> We can do half of it (copy more fraems to the CPU) with tc, but we can not limit
> the floodmask of a frame with tc (say we want it to flood to 2 out of 4 slave
> ports).
> 

Why not ? You attach an egress filter for the ports and allow that dmac on only
2 of the ports.

>> I'm sorry but that doesn't sound good to me for a case which is very rare and
>> there are existing ways to solve without incurring performance hits or increasing
>> code complexity.
> I do not consider it rarely, controling the forwarding of L2 multicast frames is
> quite common in the applications we are doing.
> 
>> If you find a way to achieve this without incurring a performance hit or significant
>> code complexity increase, and without breaking current use-cases (e.g. unexpected default
>> forwarding behaviour changes) then please send a patch and we can discuss it further with
>> all details present. People have provided enough alternatives which avoid all of the
>> problems.
> Will do, thanks for the guidance.
> 
> /Allan
> 


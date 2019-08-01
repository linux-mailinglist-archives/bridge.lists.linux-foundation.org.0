Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CF10A7E362
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 21:39:13 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B3776268E;
	Thu,  1 Aug 2019 19:39:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 368911889
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 15:25:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8BB675F4
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 15:25:24 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n9so48969167wrr.4
	for <bridge@lists.linux-foundation.org>;
	Thu, 01 Aug 2019 08:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=jN+visfm/JVvW47OK9SNg6KFhK5M3NjJ7kMqd0bwt2o=;
	b=fa0Lc6jlYXBAImlnDD+gQdo7H8iu30h/vkDH/jchBKD/To6phuNW85Nnx1MH4OZ5EF
	tc9BBWieW+q5W+OaQsY+eINTsnfq45tXIXAJh+BvVR/NNA9lIjipS4YkZXSEZBfc6RYv
	t48Ypi5u10WLWwBYN9iF7hWa+X0af2mTGuzqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=jN+visfm/JVvW47OK9SNg6KFhK5M3NjJ7kMqd0bwt2o=;
	b=leJ4zC1nhRYeaZXQa1bO8iMaTk2vk25g6ENKiZc2t/+25vzpyGvfr3ujTr6VGOUZHK
	UG/7gC0YZoHP9LMTTkRiU8zi7kHA+7qMZbiBIdJjMrF4BG6oYkDpj5IFbXkmgWfGpTu5
	CWpami/D/bPI5PnHqMKhaMoG6R37xUzfP/NOcS2QSqg8s5O7er+zR17R9Z71Q+mePC5m
	74YReKN5nhPmNdx7q8gEJ93FhmJweYNrRiWOiojkUwpD9KeZm0fs//SzIpzLoAU+exE6
	ERXz3sUJ9bJX+ofLw47/Q56PiSLzdLYlyybv0MgCrL6cCtLIF2s0NrxBg+awRMVnkwgH
	bmeA==
X-Gm-Message-State: APjAAAULNVykp3roKHoNOsaVbrUyW0U7u4ppe46wPfTSRH02rAaMpQht
	XN64g+QtmnxewqPkDGNzTu7/ofGn0RILCw==
X-Google-Smtp-Source: APXvYqy3AzQj7ZRUKUARpPdJMBXtIMqOYS2ZWg0qrSxm8qsNQXKAOJCG5lc1wvUIVZ3/1RpHxRAbPw==
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr44642500wrp.221.1564673122364;
	Thu, 01 Aug 2019 08:25:22 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	s3sm73593060wmh.27.2019.08.01.08.25.20
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 08:25:21 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>, idosch@mellanox.com,
	andrew@lunn.ch, allan.nielsen@microchip.com
References: <1564663840-27721-1-git-send-email-horatiu.vultur@microchip.com>
	<f758fdbf-4e0a-57b3-f13d-23e893ba7458@cumulusnetworks.com>
	<1db865a6-9deb-fbd2-dee6-83609fcc2d95@cumulusnetworks.com>
	<696c9bcc-f7e3-3d22-69c4-cdf4f37280a9@cumulusnetworks.com>
Message-ID: <10768371-da37-7829-a427-8c65a0929138@cumulusnetworks.com>
Date: Thu, 1 Aug 2019 18:25:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <696c9bcc-f7e3-3d22-69c4-cdf4f37280a9@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, davem@davemloft.net
Subject: Re: [Bridge] [net-next,
	rfc] net: bridge: mdb: Extend with multicast LLADDR
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

On 01/08/2019 17:15, Nikolay Aleksandrov wrote:
> On 01/08/2019 17:11, Nikolay Aleksandrov wrote:
>> On 01/08/2019 17:07, Nikolay Aleksandrov wrote:
>>> Hi Horatiu,
>>> Overall I think MDB is the right way, we'd like to contain the multicast code.
>>> A few comments below.
>>>
>>> On 01/08/2019 15:50, Horatiu Vultur wrote:
>> [snip]
>>>>
>>>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
>>>> Co-developed-by: Allan W. Nielsen <allan.nielsen@microchip.com>
>>>> Signed-off-by: Allan W. Nielsen <allan.nielsen@microchip.com>
>>>> ---
>>>>  include/linux/if_bridge.h      |  1 +
>>>>  include/uapi/linux/if_bridge.h |  1 +
>>>>  net/bridge/br_device.c         |  7 +++++--
>>>>  net/bridge/br_forward.c        |  3 ++-
>>>>  net/bridge/br_input.c          | 13 ++++++++++--
>>>>  net/bridge/br_mdb.c            | 47 +++++++++++++++++++++++++++++++++++-------
>>>>  net/bridge/br_multicast.c      |  4 +++-
>>>>  net/bridge/br_private.h        |  3 ++-
>>>>  8 files changed, 64 insertions(+), 15 deletions(-)
>>>>
>>>
>>> Overall I don't think we need this BR_PKT_MULTICAST_L2, we could do the below much
>>> easier and without the checks if you use a per-mdb flag that says it's to be treated
>>> as a MULTICAST_L2 entry. Then you remove all of the BR_PKT_MULTICAST_L2 code (see the
>>> attached patch based on this one for example). and continue processing it as it is processed today.
>>> We'll keep the fast-path with minimal number of new conditionals.
>>>
>>> Something like the patch I've attached to this reply, note that it is not complete
>>> just to show the intent, you'll have to re-work br_mdb_notify() to make it proper
>>> and there're most probably other details I've missed. If you find even better/less
>>> complex way to do it then please do.
>>>
>>> Cheers,
>>>  Nik
>>
>> Oops, I sent back your original patch. Here's the actually changed version
>> I was talking about.
>>
>> Thanks,
>>  Nik
>>
>>
>>
> 
> The querier exists change is a hack just to get the point, I'd prefer
> to re-write that portion in a better way which makes more sense, i.e.
> get that check out of there since it doesn't mean that an actual querier
> exists. :)
> 

TBH, I'm inclined to just use proto == 0 *internally* as this even though it's reserved,
we're not putting it on the wire or using it to construct packets, it's just internal
use which can change into a flag if some day that value needs to be used. Obviously
to user-space we need it to be a flag, we can't expose or configure it as a proto value
without making it permanent uapi. I haven't looked into detail how feasible this is,
just a thought that might make it simpler.




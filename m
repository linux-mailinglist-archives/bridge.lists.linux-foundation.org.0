Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B39717DD93
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:16:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9F99114A1;
	Thu,  1 Aug 2019 14:15:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F1E4FB7A
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 14:15:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E30448A7
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 14:15:52 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id a15so64823203wmj.5
	for <bridge@lists.linux-foundation.org>;
	Thu, 01 Aug 2019 07:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=hQiPzWxvnpkWNbMqkCMWGKGOuScBFYwQeSI9ij30x08=;
	b=GhCwRnvdds8KBtN4iFv2W3DVlt3DWvoYZRd/CsXZllkwiS8Nhzt1yCo6ymxP0u7xBh
	eCYZ/u7NHnDg9jnRKv3rB7lxPOhTkEeS7FVlmosef9csr8tAiic9tJ3WmSAnRFUo21Yz
	Nz5tT3MEbQbpRDbX/ILlyihRmA3QPla26sthk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=hQiPzWxvnpkWNbMqkCMWGKGOuScBFYwQeSI9ij30x08=;
	b=eHDqJ4OXzTrxp1KXhQSKWwA0xcKpimSann95cnByUkwhAfjcLi8xcGDm3g4erIq3u/
	KfKz8YVbj49XbJoN2LmxjX4ohURdDcMj8wbdmhSW6SxeGoAEN99XYZwih6IaFr+akVhu
	zJnBn0ujTdc32pJuVe6Cw9nisJfNo+F7OS2HHXVx61PS0OLlyrLP5s95kb1erLHjpLKQ
	MUK9GzoL76oUVHIFfdoA/+hUhjeiV1K7peCew8VNTcn4sFeOWFt/TTcyPOcbiUnP3Nly
	aOMb/ii83j7qyQxmxO7PkQhDccqgyqseWWPFJcCOFD73XArDDgLd2UYwe5M8btFz8EOE
	N1Tw==
X-Gm-Message-State: APjAAAWvbQCK4GQo+yAHujZ/ec76Lz/drYslUEecqLzDSsPyTAMeLJ08
	qQG+fD84K4FrHygmLcZchVuzW3x1JkcNLg==
X-Google-Smtp-Source: APXvYqxxyd2Wb9fIVKQBcKG+WjYh5rblDgprq4d8CFxvcGy/4zK1RDOxxUSnPUjNSc10FnhtRO7hZg==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr119513943wmh.55.1564668951053; 
	Thu, 01 Aug 2019 07:15:51 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	d16sm66277305wrv.55.2019.08.01.07.15.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 07:15:50 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>, idosch@mellanox.com,
	andrew@lunn.ch, allan.nielsen@microchip.com
References: <1564663840-27721-1-git-send-email-horatiu.vultur@microchip.com>
	<f758fdbf-4e0a-57b3-f13d-23e893ba7458@cumulusnetworks.com>
	<1db865a6-9deb-fbd2-dee6-83609fcc2d95@cumulusnetworks.com>
Message-ID: <696c9bcc-f7e3-3d22-69c4-cdf4f37280a9@cumulusnetworks.com>
Date: Thu, 1 Aug 2019 17:15:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1db865a6-9deb-fbd2-dee6-83609fcc2d95@cumulusnetworks.com>
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

On 01/08/2019 17:11, Nikolay Aleksandrov wrote:
> On 01/08/2019 17:07, Nikolay Aleksandrov wrote:
>> Hi Horatiu,
>> Overall I think MDB is the right way, we'd like to contain the multicast code.
>> A few comments below.
>>
>> On 01/08/2019 15:50, Horatiu Vultur wrote:
> [snip]
>>>
>>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
>>> Co-developed-by: Allan W. Nielsen <allan.nielsen@microchip.com>
>>> Signed-off-by: Allan W. Nielsen <allan.nielsen@microchip.com>
>>> ---
>>>  include/linux/if_bridge.h      |  1 +
>>>  include/uapi/linux/if_bridge.h |  1 +
>>>  net/bridge/br_device.c         |  7 +++++--
>>>  net/bridge/br_forward.c        |  3 ++-
>>>  net/bridge/br_input.c          | 13 ++++++++++--
>>>  net/bridge/br_mdb.c            | 47 +++++++++++++++++++++++++++++++++++-------
>>>  net/bridge/br_multicast.c      |  4 +++-
>>>  net/bridge/br_private.h        |  3 ++-
>>>  8 files changed, 64 insertions(+), 15 deletions(-)
>>>
>>
>> Overall I don't think we need this BR_PKT_MULTICAST_L2, we could do the below much
>> easier and without the checks if you use a per-mdb flag that says it's to be treated
>> as a MULTICAST_L2 entry. Then you remove all of the BR_PKT_MULTICAST_L2 code (see the
>> attached patch based on this one for example). and continue processing it as it is processed today.
>> We'll keep the fast-path with minimal number of new conditionals.
>>
>> Something like the patch I've attached to this reply, note that it is not complete
>> just to show the intent, you'll have to re-work br_mdb_notify() to make it proper
>> and there're most probably other details I've missed. If you find even better/less
>> complex way to do it then please do.
>>
>> Cheers,
>>  Nik
> 
> Oops, I sent back your original patch. Here's the actually changed version
> I was talking about.
> 
> Thanks,
>  Nik
> 
> 
> 

The querier exists change is a hack just to get the point, I'd prefer
to re-write that portion in a better way which makes more sense, i.e.
get that check out of there since it doesn't mean that an actual querier
exists. :)


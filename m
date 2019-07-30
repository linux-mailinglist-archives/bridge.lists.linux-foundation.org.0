Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3F17DD37
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:02:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A024925D0;
	Thu,  1 Aug 2019 14:02:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD400311A
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:21:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59430F1
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:21:10 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id c2so63431733wrm.8
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 10:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=vx1WPFQR/0ekdOh6+wil39Vg2uqg8SMm9gVCms4QGi8=;
	b=AD0pl6LeGMES8GvenbHna78EY5+8C1caKBtiTYGFJn1Wc0eFBT1R2CbopiNSmh9yp/
	hhVEDXlV5Hw9oQ0FhBruqUUPgcC6aX18ALSYWeD2steFRwiHsyC5RV57CnwaGVknfOj1
	YSJUbW6H/5ix2A039F6WcZh49aSvNYO/GO8mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=vx1WPFQR/0ekdOh6+wil39Vg2uqg8SMm9gVCms4QGi8=;
	b=SA6PjkyLP99221dmc2T2aMYLXjsAiztYQKIBD7DkRlGSz4WGFW8pygHWfYH1WVy5gf
	YqpkKYOxBPzeCx2RQJcd3AknX+kWOVKDKf133KhQN7niKJ3aK1QN8JPtkYP44R1vMuwb
	5OlnnyvSiYGFXP5BQGekK27RdHRPOBcel3VlEnKv5Zs0F6mtrKULJm2I7IHRvPkCCFO3
	En+68CM4EppPsTje73Ai68gKvsfzLfPfLNvIkgqn2Kr3itAo9LSoQ2e0SNSRnVQQFyTh
	29EI5z8/W9r3fogerejHAqEDZoKKN1H28BaOVdPjzQV0TAAOMvHsUkIDx0/BTeaz+EXc
	i5bw==
X-Gm-Message-State: APjAAAW7jjYPOU3Fx7SJXe5koi543EvOjtGGLwBgV+czdUFbBR30XV8i
	qYkZPVtljrevnHrnO11Jbm6lwrQPGSo=
X-Google-Smtp-Source: APXvYqx2n7YXIdnAF5OQXRVva27j+HkgnAT2SaRXidg8ZAG5K+CZcO8LVsjNxyZFw4IWYbvq8deKJg==
X-Received: by 2002:adf:e444:: with SMTP id t4mr27931393wrm.262.1564507268674; 
	Tue, 30 Jul 2019 10:21:08 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	w23sm69355023wmi.45.2019.07.30.10.21.07
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 10:21:08 -0700 (PDT)
To: David Miller <davem@davemloft.net>
References: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
	<20190730.101811.1836331521043535108.davem@davemloft.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a3de94a3-5976-9035-69bf-2aee6454b45e@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 20:21:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190730.101811.1836331521043535108.davem@davemloft.net>
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

On 30/07/2019 20:18, David Miller wrote:
> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date: Tue, 30 Jul 2019 14:21:00 +0300
> 
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
> 
> Like David, I also don't understand why this can be a break.  Is it because
> permanent entries are always the last on the list?  Why will there be no
> other entries that might need to be processed on the list?
> 

The reason is that only one port can match. See the first clause of br_port_group_equal,
that port can participate only once. We could easily add a break statement in the end
when a match is found and it will be correct. Even in the presence of MULTICAST_TO_UNICAST
flag, the port must match and can be added only once.


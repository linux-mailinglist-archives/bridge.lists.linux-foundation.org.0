Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C30365D7DF
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:48:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 69C9C1812;
	Tue,  2 Jul 2019 21:48:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ADE692219
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:21:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16444782
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:21:08 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f17so70679wme.2
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 14:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Q0vmPs4YL5Qmtfli/VH/0lsB9Ep4mMtKja2fne3rfaU=;
	b=MG3FrL/FgWs5TvynBgMPAd22w9AtseB35xsSWEJnQKPPk8fKjmtNqWsvvhY5BT7Yq4
	vkLN/LFSucg6WH9FgCiW1BiG3hnVsXmKd7skuOU+XFKHD9NcdcR8z8KhjQVr46ikOeI0
	YT71D12uDYKff6IXppzYwU2aMGfs3FVhm/diA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Q0vmPs4YL5Qmtfli/VH/0lsB9Ep4mMtKja2fne3rfaU=;
	b=Upajb9P8TrlypCxmzYs4FQoGO8tx1AlGuWm3cZGUk0C3JtDIQXtRvwzGxoREYGveNj
	ch5EFyAIIW9h+EutG9HSF760GLJ/SMV1HA0flI40G3XUZOcvaZRpXyfNMTueAytrK2Zg
	iXTb4L/lJlwiP5pYFvFlOplV/9LCwRhKmZ8pFZLZBaYAi3CKAprZ48sPLZHJW3PMNDfX
	jO4zEMevST8PbHahWQQFxhE1JDSO4fC7iWB8dg8x9SOsWGqHQf8a8PF1G/IfXWRu3JqA
	CwBLcSK97V/mPNkp9epDum+5dK9Ky1GtDts5EG601HgB56W67DOaiFqxZgc/Wn5gZWBg
	eF4Q==
X-Gm-Message-State: APjAAAVAyAaHD2xpR5TwjQIwIVSXioDO2cjBnjZM7Zj6gZK/8Nr+tisb
	drVAohcO/4ObQ8n/j9xHr7ZRQw==
X-Google-Smtp-Source: APXvYqyKB/bsI1NDRSJTeUQYxjbstts/oBxF2rERAXuTJdf7qmbiJKooS8yiX6MNOZPs0O18UkHRvA==
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr4897795wmc.62.1562102467600;
	Tue, 02 Jul 2019 14:21:07 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id c1sm159717wrh.1.2019.07.02.14.21.06
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Jul 2019 14:21:07 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Andrew Lunn <andrew@lunn.ch>
References: <20190702204705.GC28471@lunn.ch>
	<55f24bfb-4239-dda8-24f8-26b6b2fa9f9e@cumulusnetworks.com>
Message-ID: <4a015cbf-41bc-8ba0-94b5-ec2702e51c33@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 00:21:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <55f24bfb-4239-dda8-24f8-26b6b2fa9f9e@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] Validation of forward_delay seems wrong...
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

On 03/07/2019 00:19, Nikolay Aleksandrov wrote:
> On 02/07/2019 23:47, Andrew Lunn wrote:
>> Hi Nikolay
>>
>> The man page says that the bridge forward_delay is in units of
>> seconds, and should be between 2 and 30.
>>
>> I've tested on a couple of different kernel versions, and this appears
>> to be not working correctly:
>>
>> ip link set br0 type bridge forward_delay 2
>> RTNETLINK answers: Numerical result out of range
>>
>> ip link set br0 type bridge forward_delay 199
>> RTNETLINK answers: Numerical result out of range
>>
>> ip link set br0 type bridge forward_delay 200
>> # 
>>
>> ip link set br0 type bridge forward_delay 3000
>> #
>>
>> ip link set br0 type bridge forward_delay 3001
>> RTNETLINK answers: Numerical result out of range
>>
>> I've not checked what delay is actually being used here, but clearly
>> something is mixed up.
>>
>> grep HZ .config 
>> CONFIG_HZ_PERIODIC=y
>> # CONFIG_NO_HZ_IDLE is not set
>> # CONFIG_NO_HZ_FULL is not set
>> # CONFIG_NO_HZ is not set
>> CONFIG_HZ_FIXED=0
>> CONFIG_HZ_100=y
>> # CONFIG_HZ_200 is not set
>> # CONFIG_HZ_250 is not set
>> # CONFIG_HZ_300 is not set
>> # CONFIG_HZ_500 is not set
>> # CONFIG_HZ_1000 is not set
>> CONFIG_HZ=100
>>
>> Thanks
>> 	Andrew
>>
> 
> Hi Andrew,
> The man page is wrong, these have been in USER_HZ scaled clock_t format from the beginning.
> TBH a lot of the time/delay bridge config options are messed up like that.
> We've been discussing adding special _ms versions in iproute2 to make them
> more user-friendly and understandable. Will cook a patch for the man page.
> 
> Cheers,
>  Nik
> 
> 

Err, I meant it is seconds just scaled, if it wasn't clear.



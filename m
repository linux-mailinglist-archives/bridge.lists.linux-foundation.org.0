Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCAA5D7DE
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:48:37 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EA9D12254;
	Tue,  2 Jul 2019 21:48:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3BBF1B4A
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:19:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6FE75834
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:19:35 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id c6so76859wml.0
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 14:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=kOfNnur0ev0jUVUts3AiBuCRtLvrbFXT2bQ+oOVFe3U=;
	b=DdTLbVPhpW+NBYniofrIZBaxQpyJac9F/PYSwRIHlUO62i33KnyeAvMfKIAcecag8m
	o12z9cVmkFOvcnKl6L71ar1vq5sfiyDfKNg7StfKkQq8j2TTwdGqEe62gCTGXodcxsvl
	Iyj4Y9Ht7kSrQG87fhE0qm7Hc0J44sqiBSXK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=kOfNnur0ev0jUVUts3AiBuCRtLvrbFXT2bQ+oOVFe3U=;
	b=oWk3fV4M2CqNEtJWXVJ6NDKd9UVprJ10TNE14iFTDHDtH3QFi+L9xINnALJ2Ig7mmT
	7xU5lt8AQCOd3zdoRMmemqpg8Gf2W/d4BqVAGl1kH3I9SZYrNQwRjeeviaUP06XUMsLg
	VqzlElSjiO1kSvchfASTwQbpyuFjaovYheUhpcGIxXWO7/PQMUC0RmqvPMrfyM+Psczq
	GDxgzuLaGK7eRfK1CSAa1d6Xlw4zHH0oNZbQ5hON9pN7X5WbKFrzSOgeKDVSN+A+BpJ/
	KYAyFfDDvp9yw4FyIsSTmlj+wMqhtY0GBPhiri59paB6obNKPgd5GzAXpxXRb/JC8uZN
	eWHA==
X-Gm-Message-State: APjAAAXEm/SsblFt2JjMXhrQgxz/mXTOmUJRcz5c1thFnCD3Qh/2dBBt
	FFXWafpNH84psYDNvuyjmsoiHA==
X-Google-Smtp-Source: APXvYqyW42PkFPHU1o3WyBHVKVaaJQkE20AsGwBm4Z4Io2hzgdU2t+4r4QIn6OM50eK0nNJgzrmpzA==
X-Received: by 2002:a1c:988a:: with SMTP id a132mr4452829wme.165.1562102374032;
	Tue, 02 Jul 2019 14:19:34 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id d24sm148646wra.43.2019.07.02.14.19.32
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Jul 2019 14:19:33 -0700 (PDT)
To: Andrew Lunn <andrew@lunn.ch>
References: <20190702204705.GC28471@lunn.ch>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <55f24bfb-4239-dda8-24f8-26b6b2fa9f9e@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 00:19:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702204705.GC28471@lunn.ch>
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

On 02/07/2019 23:47, Andrew Lunn wrote:
> Hi Nikolay
> 
> The man page says that the bridge forward_delay is in units of
> seconds, and should be between 2 and 30.
> 
> I've tested on a couple of different kernel versions, and this appears
> to be not working correctly:
> 
> ip link set br0 type bridge forward_delay 2
> RTNETLINK answers: Numerical result out of range
> 
> ip link set br0 type bridge forward_delay 199
> RTNETLINK answers: Numerical result out of range
> 
> ip link set br0 type bridge forward_delay 200
> # 
> 
> ip link set br0 type bridge forward_delay 3000
> #
> 
> ip link set br0 type bridge forward_delay 3001
> RTNETLINK answers: Numerical result out of range
> 
> I've not checked what delay is actually being used here, but clearly
> something is mixed up.
> 
> grep HZ .config 
> CONFIG_HZ_PERIODIC=y
> # CONFIG_NO_HZ_IDLE is not set
> # CONFIG_NO_HZ_FULL is not set
> # CONFIG_NO_HZ is not set
> CONFIG_HZ_FIXED=0
> CONFIG_HZ_100=y
> # CONFIG_HZ_200 is not set
> # CONFIG_HZ_250 is not set
> # CONFIG_HZ_300 is not set
> # CONFIG_HZ_500 is not set
> # CONFIG_HZ_1000 is not set
> CONFIG_HZ=100
> 
> Thanks
> 	Andrew
> 

Hi Andrew,
The man page is wrong, these have been in USER_HZ scaled clock_t format from the beginning.
TBH a lot of the time/delay bridge config options are messed up like that.
We've been discussing adding special _ms versions in iproute2 to make them
more user-friendly and understandable. Will cook a patch for the man page.

Cheers,
 Nik



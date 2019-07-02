Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0499F5D7E0
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:49:13 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 39175E1E;
	Tue,  2 Jul 2019 21:48:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA1391646
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 08:46:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from linuxlounge.net (linuxlounge.net [88.198.164.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 386FA834
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 08:46:24 +0000 (UTC)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@cumulusnetworks.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=mail; t=1562057182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:content-type:content-type:
	content-transfer-encoding:content-transfer-encoding:
	in-reply-to:in-reply-to:references:references:openpgp:openpgp:autocrypt:autocrypt;
	bh=HcrU3xHf2es9K1eWmG8nbhDoxCTyXkGXB9fNsN37JPM=;
	b=cpOxtmSaP4trU3ozqBS66YZqBZWhUwjWDFuCuUs9XDb55dKzLjizVEO9O2JeTgOhFskerw
	IinNen6G4pMYKhk0XtE6GbHHBvu2IBjIMPTPZLmOUfLO8qc7svfe4VJhoL6uiyxZc4Aa3u
	EOuyYNmZ3JRSgRJrPNuAVkqg4TXOJUo=
References: <41ac3aa3-cbf7-1b7b-d847-1fb308334931@linuxlounge.net>
	<E0170D52-C181-4F0F-B5F8-F1801C2A8F5A@cumulusnetworks.com>
	<21ab085f-0f7f-88bc-b661-af74dd9eeea2@linuxlounge.net>
	<cc232ed3-9e02-ebb4-4901-9d617013abb8@cumulusnetworks.com>
	<3fcf8b05-e1ad-ac97-10bf-bd2b6354424c@linuxlounge.net>
	<908e9e90-70cc-7bbe-f83f-0810c9ef3925@cumulusnetworks.com>
	<5e43ba82-de32-e419-efc3-5dfca8291973@linuxlounge.net>
	<6dc6e89b-8b40-7dac-ec69-f4223d5dc147@cumulusnetworks.com>
Openpgp: preference=signencrypt
Autocrypt: addr=martin@linuxlounge.net; prefer-encrypt=mutual; keydata=
	mQENBEv1rfkBCADFlzzmynjVg8L5ok/ef2Jxz8D96PtEAP//3U612b4QbHXzHC6+C2qmFEL6
	5kG1U1a7PPsEaS/A6K9AUpDhT7y6tX1IxAkSkdIEmIgWC5Pu2df4+xyWXarJfqlBeJ82biot
	/qETntfo01wm0AtqfJzDh/BkUpQw0dbWBSnAF6LytoNEggIGnUGmzvCidrEEsTCO6YlHfKIH
	cpz7iwgVZi4Ajtsky8v8P8P7sX0se/ce1L+qX/qN7TnXpcdVSfZpMnArTPkrmlJT4inBLhKx
	UeDMQmHe+BQvATa21fhcqi3BPIMwIalzLqVSIvRmKY6oYdCbKLM2TZ5HmyJepusl2Gi3ABEB
	AAG0J01hcnRpbiBXZWluZWx0IDxtYXJ0aW5AbGludXhsb3VuZ2UubmV0PokBWAQTAQoAQgIb
	IwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUC
	W/RuFQUJEd/znAAKCRC9SqBSj2PxfpfDCACDx6BYz6cGMiweQ96lXi+ihx7RBaXsfPp2KxUo
	eHilrDPqknq62XJibCyNCJiYGNb+RUS5WfDUAqxdl4HuNxQMC/sYlbP4b7p9Y1Q9QiTP4f6M
	8+Uvpicin+9H/lye5hS/Gp2KUiVI/gzqW68WqMhARUYw00lVSlJHy+xHEGVuQ0vmeopjU81R
	0si4+HhMX2HtILTxoUcvm67AFKidTHYMJKwNyMHiLLvSK6wwiy+MXaiqrMVTwSIOQhLgLVcJ
	33GNJ2Emkgkhs6xcaiN8xTjxDmiU7b5lXW4JiAsd1rbKINajcA7DVlZ/evGfpN9FczyZ4W6F
	Rf21CxSwtqv2SQHBuQENBEv1rfkBCADJX6bbb5LsXjdxDeFgqo+XRUvW0bzuS3SYNo0fuktM
	5WYMCX7TzoF556QU8A7C7bDUkT4THBUzfaA8ZKIuneYW2WN1OI0zRMpmWVeZcUQpXncWWKCg
	LBNYtk9CCukPE0OpDFnbR+GhGd1KF/YyemYnzwW2f1NOtHjwT3iuYnzzZNlWoZAR2CRSD02B
	YU87Mr2CMXrgG/pdRiaD+yBUG9RxCUkIWJQ5dcvgrsg81vOTj6OCp/47Xk/457O0pUFtySKS
	jZkZN6S7YXl/t+8C9g7o3N58y/X95VVEw/G3KegUR2SwcLdok4HaxgOy5YHiC+qtGNZmDiQn
	NXN7WIN/oof7ABEBAAGJATwEGAEKACYCGwwWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUCW/Ru
	GAUJEd/znwAKCRC9SqBSj2PxfpzMCACH55MVYTVykq+CWj1WMKHex9iFg7M9DkWQCF/Zl+0v
	QmyRMEMZnFW8GdX/Qgd4QbZMUTOGevGxFPTe4p0PPKqKEDXXXxTTHQETE/Hl0jJvyu+MgTxG
	E9/KrWmsmQC7ogTFCHf0vvVY3UjWChOqRE19Buk4eYpMbuU1dYefLNcD15o4hGDhohYn3SJr
	q9eaoO6rpnNIrNodeG+1vZYG1B2jpEdU4v354ziGcibt5835IONuVdvuZMFQJ4Pn2yyC+qJe
	ekXwZ5f4JEt0lWD9YUxB2cU+xM9sbDcQ2b6+ypVFzMyfU0Q6LzYugAqajZ10gWKmeyjisgyq
	sv5UJTKaOB/t
Message-ID: <c66cd547-6cbe-40bf-e42c-d307956644fa@linuxlounge.net>
Date: Tue, 2 Jul 2019 10:46:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
In-Reply-To: <6dc6e89b-8b40-7dac-ec69-f4223d5dc147@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org
Subject: Re: [Bridge] Use-after-free in br_multicast_rcv
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
From: Martin Weinelt via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Martin Weinelt <martin@linuxlounge.net>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Hi Nik,

On 7/2/19 12:37 AM, Nikolay Aleksandrov wrote:
> On 7/2/19 1:17 AM, Martin Weinelt wrote:
>> Hi again,
>>
>> On 7/1/19 7:37 PM, Nikolay Aleksandrov wrote:
>>> I see, thanks for clarifying this. So on the KASAN could you please try the attached patch ?
>>> Also could you please run the br_multicast_rcv+xxx addresses through
>>> linux/scripts/faddr2line for your kernel/bridge:
>>> usage: faddr2line [--list] <object file> <func+offset> <func+offset>...
>>>
>>> Thanks,
>>>  Nik
>>>
>>
>> back with a new report. This is 5.2.0-rc7 + your patch.
>>
>> Best,
>>   Martin
>>
> 
> Thanks! Aaargh.. I made a stupid mistake hurrying to send the patch, apologies.
> Here's the fixed version, please give it a go. This report is because
> of my change, not because of the previous bug that should've been fixed.
> 

I applied your latest patch against 5.2.0-rc7 and it seems to have fixed the issue as,
after 6 hours of uptime, the KASAN report isn't coming up anymore.

Also there are currently no kmemleak results coming up on 5.2.0-rc7, so I'll be
looking at the v4.19.x series next.

Thank you!

Best
  Martin

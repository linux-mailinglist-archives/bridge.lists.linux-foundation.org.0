Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1CD9A2BD
	for <lists.bridge@lfdr.de>; Fri, 23 Aug 2019 00:26:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6C262E7F;
	Thu, 22 Aug 2019 22:26:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F266E71
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 22:26:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47278822
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 22:26:17 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id e27so7016834ljb.7
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 15:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=tl0f02UPpp3QSnTEonqbC2evIwlfUUJ6tMhF98nlrXY=;
	b=T+4E4T3+BvqIxVHuiB70tNqFlTbRn6cEaa91bPZ4FRi3yJDAbv87VEoDtPgsRahlZG
	GNmis1OL1anAfBZjbf/64jQuoykB2tOpum/BojewUCKcD/o9ZpBLai+c/kAiZSf0ziTN
	/e/xpWHwwMXhHiTJjFIHJM9lke90Rvq3yyySg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=tl0f02UPpp3QSnTEonqbC2evIwlfUUJ6tMhF98nlrXY=;
	b=OSYaN9mmgANqrEqZJZpveaLbuW01UIIRUHeNTJ8/Hmgx2meiNycLm4YSVLN8aYcdqg
	bwT92fVVa3xjbMqt6blzPJ4fU5TpxX29tVK9E7/Xkrl1qNbKLfTL7YNgcBXtMgIjWqg9
	4F1GRvBwhqXuuDvY4KlknRvKP6PSdd0E7Qh5Hwh/2Qhn+HuB1VYotCNPAPGX/xNNsH5z
	O/TVvyctgsbgtzX3cBROiWPduXmJSocY0+dVSYAMiytVIBbobogkLmqK9i3u9ff9wpCJ
	5bFYYVsuwWuBBOLIx8EMg0Q5U2H69lHLWE9bBJPL/S6kjeduaGexsevvw8IOTWf/uBOt
	wDcQ==
X-Gm-Message-State: APjAAAVqAuzQb0Qtoniv0rcoyDgVhwEOfGOaDJMR67PqP/vuNH2lTplk
	j+TWsG+t26l3hyGaa5ARZydi4ZqUkBYV9A==
X-Google-Smtp-Source: APXvYqxdfeo+d4JutVmAzL4NfgsyqnBkCzdtU41GjUmrhW0NwDgPKB7/cjlAnOhaanx2zL6yqI/nOw==
X-Received: by 2002:a2e:9214:: with SMTP id k20mr894743ljg.232.1566512775276; 
	Thu, 22 Aug 2019 15:26:15 -0700 (PDT)
Received: from [192.168.0.110] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.googlemail.com with ESMTPSA id
	o9sm235103ljc.51.2019.08.22.15.26.13
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 15:26:14 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
	davem@davemloft.net, UNGLinuxDriver@microchip.com,
	alexandre.belloni@bootlin.com, allan.nielsen@microchip.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	bridge@lists.linux-foundation.org
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
	<1e16da88-08c5-abd5-0a3e-b8e6c3db134a@cumulusnetworks.com>
Message-ID: <b2c52206-82d1-ef28-aeec-a5dcdbe9df6c@cumulusnetworks.com>
Date: Fri, 23 Aug 2019 01:26:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1e16da88-08c5-abd5-0a3e-b8e6c3db134a@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Bridge] [PATCH 0/3] Add NETIF_F_HW_BRIDGE feature
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

On 8/23/19 1:09 AM, Nikolay Aleksandrov wrote:
> On 22/08/2019 22:07, Horatiu Vultur wrote:
>> Current implementation of the SW bridge is setting the interfaces in
>> promisc mode when they are added to bridge if learning of the frames is
>> enabled.
>> In case of Ocelot which has HW capabilities to switch frames, it is not
>> needed to set the ports in promisc mode because the HW already capable of
>> doing that. Therefore add NETIF_F_HW_BRIDGE feature to indicate that the
>> HW has bridge capabilities. Therefore the SW bridge doesn't need to set
>> the ports in promisc mode to do the switching.
>> This optimization takes places only if all the interfaces that are part
>> of the bridge have this flag and have the same network driver.
>>
>> If the bridge interfaces is added in promisc mode then also the ports part
>> of the bridge are set in promisc mode.
>>
>> Horatiu Vultur (3):
>>   net: Add HW_BRIDGE offload feature
>>   net: mscc: Use NETIF_F_HW_BRIDGE
>>   net: mscc: Implement promisc mode.
>>
>>  drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
>>  include/linux/netdev_features.h    |  3 +++
>>  net/bridge/br_if.c                 | 29 ++++++++++++++++++++++++++++-
>>  net/core/ethtool.c                 |  1 +
>>  4 files changed, 56 insertions(+), 3 deletions(-)
>>
> 

Just to clarify:
> IMO the name is misleading.
- that's not mandatory or anything, just saying people might get confused when they see it

> Why do the devices have to be from the same driver ? This is too specific targeting some
> devices. The bridge should not care what's the port device, it should be the other way
That was mostly a rhetorical question, it's obvious why but please add an explanation
at least in the commit message and please fix the typos in the comment. Also HW
is capable of doing switching, this needs some clarification that the whole process
stays in HW IIUC. More details here would be great.

> around, so adding device-specific code to the bridge is not ok. Isn't there a solution
> where you can use NETDEV_JOIN and handle it all from your driver ?
> Would all HW-learned entries be hidden from user-space in this case ?
> 
I.e. isn't there a way to do this without introducing a new feature flag ?
 


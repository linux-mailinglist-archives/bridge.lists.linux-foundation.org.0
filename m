Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFE77DCAE
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:41:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ECD4513BE;
	Thu,  1 Aug 2019 13:39:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 619074268
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 23:36:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AE8F6CE
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 23:36:17 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id z15so44442998lfh.13
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 16:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=2VjrwJCxiQwueZ1twvT3oIyarEAfg5WYSCxQl8Fm8qc=;
	b=KgrGAl4/UHNSPtRYJubWs6nDoZ9AsJD49C9JUyUhQJrXDzk8snre5eAq6bjvQKi625
	7uNoCsl4rcyaHsRokDluvQ8k5RpJ9Riwu8y/y6EQFI+lh95wl2ERWO7cHt5iISv9U1A9
	AXvwA7ji/eSpYk63XRMlJPzrJf9XWLI0kmQnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=2VjrwJCxiQwueZ1twvT3oIyarEAfg5WYSCxQl8Fm8qc=;
	b=LKkaK8NtXuzG1MIyl9DZUVz9ld1wHCQL/tr4BrQz8OyrRHRQUONkmuj6zQ2TUSQxZD
	H44zvY0inWjZp1nTnLk0aILdkUQ7TD9jo3ycDHqPm/UuF/WCbAnJ5WOe+hd2fFjh7qVZ
	1ZrIZ/d5g6fXU6GDQ671lpZ6CGRz7zqMiZDimWbCNl3iJm1+mnaLfJNHHZbv7Eky3mxg
	O6FlWxIbrDsRMeog7cyWtn0739WUMYr7KE+DqwUv2dc2ZVTDth2bWNlbo19P5Wc7Ntlb
	aO3THRrMakUAljQHu0EyHNBsnhTbf+5CbdA+XGS/9wf7s+wEWZSbz1jlXeH8AkD9gwkn
	fIgQ==
X-Gm-Message-State: APjAAAWC0Qr760Lgp60mfpnzcrfBlIyGgaExYUfrT6i2PKtCWfgstoQg
	uo+MOR1l4UBiMfljmLls0/iuOA==
X-Google-Smtp-Source: APXvYqzdXA6HM4ddZqxn8OU/9MxCm7TKHKLA+KFhmosLWZ50p7JrcgsTvt7lL3ucNM4/JB/2vcDvjA==
X-Received: by 2002:a19:c887:: with SMTP id y129mr60111969lff.73.1564616175529;
	Wed, 31 Jul 2019 16:36:15 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.googlemail.com with ESMTPSA id
	z23sm12008560lfq.77.2019.07.31.16.36.13
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Jul 2019 16:36:14 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Stephen Hemminger <stephen@networkplumber.org>
References: <319fda43-195d-2b92-7f62-7e273c084a29@cumulusnetworks.com>
	<20190731224955.10908-1-nikolay@cumulusnetworks.com>
	<20190731155338.15ff34cb@hermes.lan>
	<c9a68f85-49f6-6d02-e130-a03d540aa0a7@cumulusnetworks.com>
Message-ID: <5cef086b-0b4c-44a2-c828-1c991000a1a0@cumulusnetworks.com>
Date: Thu, 1 Aug 2019 02:36:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c9a68f85-49f6-6d02-e130-a03d540aa0a7@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, davem@davemloft.net,
	michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v3] net: bridge: move vlan init/deinit to
 NETDEV_REGISTER/UNREGISTER
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

On 8/1/19 2:32 AM, Nikolay Aleksandrov wrote:
> On 8/1/19 1:53 AM, Stephen Hemminger wrote:
>>   
>>> -int br_vlan_init(struct net_bridge *br)
>>> +static int br_vlan_init(struct net_bridge *br)
>>>  {
>>>  	struct net_bridge_vlan_group *vg;
>>>  	int ret = -ENOMEM;
>>> @@ -1083,6 +1085,8 @@ int br_vlan_init(struct net_bridge *br)
>>>  	return ret;
>>>  
>>>  err_vlan_add:
>>> +	RCU_INIT_POINTER(br->vlgrp, NULL);
>>> +	synchronize_rcu();
>>
>> Calling sychronize_rcu is expensive. And the callback for
>> notifier is always called with rtnl_head. 
>>
>> Why not just keep the pointer initialization back in the
>> code where bridge is created, it was safe there.
>>
> 
> Because now the device registered and we've published the group, right now
> it is not an issue but if we expose an rcu helper we'll have to fix this
> because it'd become a bug.
> I'd prefer to have the error path correct and future-proof it, since it's
> an error path we're not concerned with speed, but rather correctness. Also
> these are rarely exercised so the bug might remain for a very long time.
> 
> 

About why move it - I've explained in the commit message, it might be safe
but it has presented a lot of bugs, we'll have to separate it in two parts
one that initializes the vlan group and second one which adds the fdb, then
we'll have to split the flush/delete in two different places to cleanup.
This way we have only a single exit point that cleans up and it works for
all cases. The synchronize there wouldn't be called under normal circumstances.




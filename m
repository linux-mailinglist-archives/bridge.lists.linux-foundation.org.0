Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED68213AFBF
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:46:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ECB985F83;
	Tue, 14 Jan 2020 16:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBhItL7e7f_P; Tue, 14 Jan 2020 16:45:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B32FE85F85;
	Tue, 14 Jan 2020 16:45:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8AD9FC077D;
	Tue, 14 Jan 2020 16:45:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B474C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0932220516
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vF95ruNcjG9J for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:45:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D4E8204DF
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:45:51 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id h23so15121114ljc.8
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/sWh7+7+OUKVxtsGUyUPmwfLLEU4raHR2CwW0UB18ac=;
 b=Gbex73vtG5zmTfTRwDfT/HlTOZaMGn8olVK2tLOcd/WFZy7S4oqH1K/OqXs88O46vI
 rZq7gtkDgk2sG+ALAPG36F2eQbj3rZE38UilWkitKvTG4bPsTsNvPNYNiz0rqq3WJuB1
 jwlWMQ3hI04+bS0PcOLMO75D0++0XOolFrgW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/sWh7+7+OUKVxtsGUyUPmwfLLEU4raHR2CwW0UB18ac=;
 b=DLOjQd9j/KnKoPh7svfSvLz5a+hI3EbuFEFAnCyYiMeOtjY1VCw970TjeUYkypJ4Zo
 9Z7HWiSS0SWo15xCym3aXmvDbzIfjH+2A0cM92RYblp4/JHsVuscsn61zLLLJnEdXXA0
 3KzID0lyStFjFnsvo7/Y6BvKsBXW6MMOwve9NdIA3DDvX9dhbYG6QnUBotcb64zjza4q
 Haze9Jhq/3Oey0Ru8xQr+ufUI1TJQ5MX2iXT0ZeDV52b9IbDDSDneyT+BegG3zjNl5wb
 XkdzqIvB3ehAyhZLw5rnvKvoT+nZlO5qFOZRlZiyVugDqrqNH6RUSAaK3m8OnASLSiJl
 5Pqg==
X-Gm-Message-State: APjAAAUPhdSBxceM5Y9aYzacrPfhIyNFtIDRzkWX0M2WPNMRvrwfz7jJ
 5wTNeCi6lL4t7KOJNYfsLw6bD4sOzlk=
X-Google-Smtp-Source: APXvYqwmxQmNg8BxjVeQGlMzs/GV5zbrIV4IUHt7pI3dH0CY1M9RsXjSPcRkwwfrdk/Y+qdd227foQ==
X-Received: by 2002:a05:651c:214:: with SMTP id
 y20mr14603586ljn.139.1579020349035; 
 Tue, 14 Jan 2020 08:45:49 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id g15sm7737882ljn.32.2020.01.14.08.45.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 08:45:48 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
 <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
Message-ID: <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
Date: Tue, 14 Jan 2020 18:45:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 14/01/2020 18:36, Nikolay Aleksandrov wrote:
> On 14/01/2020 17:34, David Ahern wrote:
>> On 1/14/20 6:55 AM, Jakub Kicinski wrote:
>>> On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
>>>> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
>>>> +{
>>>> +	int idx = 0, err = 0, s_idx = cb->args[0];
>>>> +	struct net *net = sock_net(skb->sk);
>>>> +	struct br_vlan_msg *bvm;
>>>> +	struct net_device *dev;
>>>> +
>>>> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {
>>>
>>> I wonder if it'd be useful to make this a strict != check? At least
>>> when strict validation is on? Perhaps we'll one day want to extend 
>>> the request?
>>>
>>
>> +1. All new code should be using the strict checks.
>>
> 
> IIRC, I did it to be able to add filter attributes later, but it should just use nlmsg_parse()
> instead and all will be taken care of.
> I'll respin v2 with that change.
> 
> Thanks,
>  Nik
> 

Actually nlmsg_parse() uses the same "<" check for the size before parsing. :)
If I change to it and with no attributes to parse would be essentially equal to the
current situation, but if I make it strict "!=" then we won't be able to add
filter attributes later as we won't be backwards compatible. I'll continue looking
into it, but IMO we should leave it as it is in order to be able to add the filtering later.

Thoughts ?





Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4980213B002
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E26DB85FB4;
	Tue, 14 Jan 2020 16:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9viTztZETXMl; Tue, 14 Jan 2020 16:51:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CF3A85FD5;
	Tue, 14 Jan 2020 16:51:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4D23C077D;
	Tue, 14 Jan 2020 16:51:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 185FFC1D83
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05D2285F9C
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MzImRAtTzDpy for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:51:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4818F85FA1
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:50:45 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id 9so10358774lfq.10
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kXgipRMkTlu0Gbfl9KY1bZYr2HsM+sHNWhsLriinPy0=;
 b=P+SSveyNmfeHKKX8h7KBwiom6Wrbq5dXDBDWvB10zz8+l8971zyKx5sbprEdssCVxS
 ZKKVUnumhd567wWjorJhDR+V0iOdSFw8Pf2X0CZ/h4rbWyPIEv6t4zRyGl7vYcPwaPAl
 lzLaEA18x+E221l6dVomI3Cn3Pl0CYyB4+XnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kXgipRMkTlu0Gbfl9KY1bZYr2HsM+sHNWhsLriinPy0=;
 b=MOPDacb4IiSXUPbz9e9gBPOnL4HjMyz9Pm/5JBwh/qSmdLqaNjcacdcu7OmgrX3K++
 GP8rQt6vg2osVvmCSeyGUS8Y+rCXtyjRgzs+CwF4Dk/XJ+1AAkPrZlrWG+E6ogs5XBHh
 2U21y5kaJhkq+VZ1o5mxM28FBhihxfFVezZ3F2esneFMqbhVruLlW/bcUslC/tcCR+ou
 sPIG0+rvx5MUN9L17e19ybPRC1y6R3PBawjRYNufRMKHd8/C3UPfwm2sUvpjl/sIIJS+
 RTRjzd22RCE/8gaQDlgsNKYN9Z4DKxDJbwoWgvuLYPsgWGzeWqd0Dcms+6cA4pc9Ppxh
 1NTg==
X-Gm-Message-State: APjAAAXoUooiMCnd74KWGch7R/0+0sbQoFZ6NsiWCgMpxNrQMCiuzeko
 LJE/a3PI+gu112hqAoUZ6zLrRbFQJVA=
X-Google-Smtp-Source: APXvYqzym6TP3Sdk+UOkkiIW5EujqmFv2FfQG4NAYd2t4UTBxpYfj1XWCqfUtVZAIUcL/e88Q0gFnw==
X-Received: by 2002:ac2:5310:: with SMTP id c16mr2379058lfh.102.1579020643038; 
 Tue, 14 Jan 2020 08:50:43 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s4sm7946229ljd.94.2020.01.14.08.50.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 08:50:42 -0800 (PST)
To: David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
 <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
 <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
 <d5291717-2ce5-97e0-6204-3ff0d27583c5@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <aa9878d2-22d7-3bcd-deae-cf9bccd4226e@cumulusnetworks.com>
Date: Tue, 14 Jan 2020 18:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <d5291717-2ce5-97e0-6204-3ff0d27583c5@gmail.com>
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

On 14/01/2020 18:49, David Ahern wrote:
> On 1/14/20 9:45 AM, Nikolay Aleksandrov wrote:
>> On 14/01/2020 18:36, Nikolay Aleksandrov wrote:
>>> On 14/01/2020 17:34, David Ahern wrote:
>>>> On 1/14/20 6:55 AM, Jakub Kicinski wrote:
>>>>> On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
>>>>>> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
>>>>>> +{
>>>>>> +	int idx = 0, err = 0, s_idx = cb->args[0];
>>>>>> +	struct net *net = sock_net(skb->sk);
>>>>>> +	struct br_vlan_msg *bvm;
>>>>>> +	struct net_device *dev;
>>>>>> +
>>>>>> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {
>>>>>
>>>>> I wonder if it'd be useful to make this a strict != check? At least
>>>>> when strict validation is on? Perhaps we'll one day want to extend 
>>>>> the request?
>>>>>
>>>>
>>>> +1. All new code should be using the strict checks.
>>>>
>>>
>>> IIRC, I did it to be able to add filter attributes later, but it should just use nlmsg_parse()
>>> instead and all will be taken care of.
>>> I'll respin v2 with that change.
>>>
>>> Thanks,
>>>  Nik
>>>
>>
>> Actually nlmsg_parse() uses the same "<" check for the size before parsing. :)
>> If I change to it and with no attributes to parse would be essentially equal to the
>> current situation, but if I make it strict "!=" then we won't be able to add
>> filter attributes later as we won't be backwards compatible. I'll continue looking
>> into it, but IMO we should leave it as it is in order to be able to add the filtering later.
>>
>> Thoughts ?
>>
>>
>>
>>
> 
> If the header is > sizeof(*bvm) I expect this part of
> __nla_validate_parse() to kick in:
> 
>         if (unlikely(rem > 0)) {
>                 pr_warn_ratelimited("netlink: %d bytes leftover after
> parsing attributes in process `%s'.\n",
>                                     rem, current->comm);
>                 NL_SET_ERR_MSG(extack, "bytes leftover after parsing
> attributes");
>                 if (validate & NL_VALIDATE_TRAILING)
>                         return -EINVAL;
>         }
> 

Ah fair enough, so nlmsg_parse() would be better even without attrs.


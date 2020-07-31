Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9157234A4C
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 19:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C2C4886E0;
	Fri, 31 Jul 2020 17:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zk6uknL7no+N; Fri, 31 Jul 2020 17:37:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BE2F886AE;
	Fri, 31 Jul 2020 17:37:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05394C004D;
	Fri, 31 Jul 2020 17:37:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 927ABC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:37:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E805886C1
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gNqd6GsVWjhm for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 17:37:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93E1B886AE
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 17:37:54 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id g19so18379898ejc.9
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 10:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DqOTbcHJa6iCOElcOD33JQpO8fLteWYi7HsjmMVd1Zw=;
 b=KG/aSQF57PreJuWc65lTW6PiL+C2vriQO062kCkUcMTx+hclSicWVKLXM+Zli9HO+s
 fF6Gssc14D1cXF7X/+fULIl4e9szLX3G82a4Pdd39MPPzgv3MkPzJ0sRtUcfbgsGlE49
 Z206UOX4fYospZk/udSPqU0mIYB9IUOnVFolE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DqOTbcHJa6iCOElcOD33JQpO8fLteWYi7HsjmMVd1Zw=;
 b=c1sq+U8s0B0o/sJrz/2F09X1YtkyNNt/1sTa3z/HFXHXtJUbZ0LyZQVdx0iR9sK/tu
 tY0/Uu/lTFrXb5ByVZNN2MNnDlYGnY6pd9y3HMiqYkLQPXKZ5BuQ8MPsYk3f4RUUMav3
 vG+Nhr8ZuLHGM+HhytufKSPS21DzVgXbrk9PKs34g5rqfc9G2IUfbJrD6QA1M9+Ey7Iz
 ScFqn0u8iygEZkWuQMzOibg/XWOYXrIYFY5ipI4VMyitOMhn1rbXduTN2nnpWbqpmBrF
 XCob/WrEC7/cH9EO+eohSHjDagDVfvUWIBOSlS41N6kBzpyafr1DpcJW5argI29I0xLi
 +/ug==
X-Gm-Message-State: AOAM53399uNkbE7vIKg1o+f6qc6lFTCYDErFJzQxaNpriJNpMOBFlkWP
 NBu25NMzS93bw6W8MdRLkpiBAA==
X-Google-Smtp-Source: ABdhPJwDnc4mE4bpaa0vBl3g9OWxnq9rImzVI0ZW2D2NT2IQGPX9RVlidih0zUYmoaHJoJO0xFNOdQ==
X-Received: by 2002:a17:906:c0d9:: with SMTP id
 bn25mr5069638ejb.176.1596217072959; 
 Fri, 31 Jul 2020 10:37:52 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id v14sm9724457ejb.63.2020.07.31.10.37.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jul 2020 10:37:52 -0700 (PDT)
To: David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org
References: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
 <07823615-29a8-9553-d56b-1beef55a07bc@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <181931fb-dc60-7db6-60ac-b8ff1402efec@cumulusnetworks.com>
Date: Fri, 31 Jul 2020 20:37:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <07823615-29a8-9553-d56b-1beef55a07bc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: clear bridge's private skb
	space on xmit
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

On 31/07/2020 20:27, David Ahern wrote:
> On 7/31/20 10:26 AM, Nikolay Aleksandrov wrote:
>> We need to clear all of the bridge private skb variables as they can be
>> stale due to the packet being recirculated through the stack and then
>> transmitted through the bridge device. Similar memset is already done on
>> bridge's input. We've seen cases where proxyarp_replied was 1 on routed
>> multicast packets transmitted through the bridge to ports with neigh
>> suppress which were getting dropped. Same thing can in theory happen with
>> the port isolation bit as well.
>>
>> Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
>> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>> ---
>>  net/bridge/br_device.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
>> index 8c7b78f8bc23..9a2fb4aa1a10 100644
>> --- a/net/bridge/br_device.c
>> +++ b/net/bridge/br_device.c
>> @@ -36,6 +36,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
>>  	const unsigned char *dest;
>>  	u16 vid = 0;
>>  
>> +	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>> +
>>  	rcu_read_lock();
>>  	nf_ops = rcu_dereference(nf_br_ops);
>>  	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
>>
> 
> What's the performance hit of doing this on every packet?
> 
> Can you just set a flag that tells the code to reset on recirculation?
> Seems like br_input_skb_cb has space for that.
> 

Virtually non-existent, we had a patch that turned that field into a 16 byte
field so that is really 2 8 byte stores. It is already cache hot, we could
initialize each individual field separately as br_input does.

I don't want to waste flags on such thing, this makes it future-proof 
and I'll remove the individual field zeroing later which will alleviate
the cost further.



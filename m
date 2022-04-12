Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091BB4FE976
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 22:29:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E59140123;
	Tue, 12 Apr 2022 20:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6fiO6DZoPkPE; Tue, 12 Apr 2022 20:29:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 311C340B47;
	Tue, 12 Apr 2022 20:29:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D17FBC0088;
	Tue, 12 Apr 2022 20:29:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2064C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 20:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0D8683268
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 20:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1pPbb_ZqQy4M for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 20:29:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5C5D8321B
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 20:29:52 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id r13so39636342ejd.5
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=I4z0Q+kVty7sI3xvt4Jn5yaTWEV4dzQy0QtiMftM0TI=;
 b=muFNfA7VGu7lj90zfUkJJI6aCC/++MupaW9xL5VaRc0P85f/O7nY35HMLQRYpZLPKc
 +gFaEVIomhuaGTOCVU5SIbplMOIVZ3Qyqcfm/zyNq57Y+V2S1l40DZn1KEmEmXJinhcR
 nOzBiIzcpjGAlOXKw+tbqK3s8VjccGbcE4cr2frbSMlPhP9HHgMaH6e8V7RkaA6CQWaz
 f6xlHETtWKkZz8pN8mCC2ZYzH0xx6bEXnZTQ1lBzb614/zePwVuepITHcEvatDG2Xcwz
 iIHbvaDwodRgtsTKIQEUtE8SpsdRvngcIbkKfU1CipXRar3b5xaWGKiSHgap3Y6xqw7t
 07jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=I4z0Q+kVty7sI3xvt4Jn5yaTWEV4dzQy0QtiMftM0TI=;
 b=RAjKD7Xk4ayb/e5H9bChyirXqtuSxL94ehnJ8qlCflgTZ97J+5LfyznRlwr8P9k0Le
 19kcmMJjSEmPiDUjLp04uouYQpJesF46XAX7rvmD+a399t5KTJQG/9FTfqY7Y0n9oFVz
 6uZ+h9Pb6Lyxjb91EdYRuM804YlnrBo9ct3CP5/6syPhKAPxiOMKCVRandU+YkFDE7nM
 R/0LKbU6wLcjaYgH3ogb3Qradgg4flFEjd4K7ctAyjgOfsLjzMdI3u3w/g6AbP9P9AID
 RFlyyLciaL8RzOZUcEdvio0fLVQfW5ylxUpkOqLixfvmsi/9CR0XJBlTeS9IDiWq61xN
 ly0A==
X-Gm-Message-State: AOAM530rE3Gglt0M8RK/XlwvF7ErqjVQTka1KUf9YBF7JTYBXcGLeIZz
 6nLwPzWL5DZZSDc6htoDrNVh9g==
X-Google-Smtp-Source: ABdhPJzl4+FUrxcLtZ+9xO04KNrGjQoPqbQ1Ho2BWcT6p64Cpj9j0w58p3TJpqiwiuiOWLZwvXKvUg==
X-Received: by 2002:a17:907:728c:b0:6e8:a052:4f03 with SMTP id
 dt12-20020a170907728c00b006e8a0524f03mr7099399ejc.344.1649795390855; 
 Tue, 12 Apr 2022 13:29:50 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r19-20020a17090638d300b006d6e4fc047bsm13692182ejd.11.2022.04.12.13.29.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 13:29:50 -0700 (PDT)
Message-ID: <d88e8591-14fd-de90-ced7-b372c8fe81e5@blackwall.org>
Date: Tue, 12 Apr 2022 23:29:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-2-troglobit@gmail.com>
 <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
In-Reply-To: <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 01/13] net: bridge: add control of
 bum flooding to bridge itself
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

On 12/04/2022 21:27, Nikolay Aleksandrov wrote:
> On 11/04/2022 16:38, Joachim Wiberg wrote:
>> The bridge itself is also a port, but unfortunately it does not (yet)
>> have a 'struct net_bridge_port'.  However, in many cases we want to
>> treat it as a proper port so concessions have been made, e.g., NULL
>> port or host_joined attributes.
>>
>> This patch is an attempt to more of the same by adding support for
>> controlling flooding of unknown broadcast/unicast/multicast to the
>> bridge.  Something we often also want to control in an offloaded
>> switching fabric.
>>
>> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
>> ---
>>  net/bridge/br_device.c  |  4 ++++
>>  net/bridge/br_input.c   | 11 ++++++++---
>>  net/bridge/br_private.h |  3 +++
>>  3 files changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
>> index 8d6bab244c4a..0aa7d21ac82c 100644
>> --- a/net/bridge/br_device.c
>> +++ b/net/bridge/br_device.c
>> @@ -526,6 +526,10 @@ void br_dev_setup(struct net_device *dev)
>>  	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
>>  	dev->max_mtu = ETH_MAX_MTU;
>>  
>> +	br_opt_toggle(br, BROPT_UNICAST_FLOOD, 1);
> 
> This one must be false by default. It changes current default behaviour.
> Unknown unicast is not currently passed up to the bridge if the port is

s/port/bridge/ in promisc mode

> not in promisc mode, this will change it. You'll have to make it consistent
> with promisc (e.g. one way would be for promisc always to enable unicast flood
> and it won't be possible to be disabled while promisc).
> 
>> +	br_opt_toggle(br, BROPT_MCAST_FLOOD, 1);
>> +	br_opt_toggle(br, BROPT_BCAST_FLOOD, 1);
> 
> s/1/true/ for consistency
> 
>> +
>>  	br_netfilter_rtable_init(br);
>>  	br_stp_timer_init(br);
>>  	br_multicast_init(br);
>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>> index 196417859c4a..d439b876bdf5 100644
>> --- a/net/bridge/br_input.c
>> +++ b/net/bridge/br_input.c
>> @@ -118,7 +118,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>  		/* by definition the broadcast is also a multicast address */
>>  		if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
>>  			pkt_type = BR_PKT_BROADCAST;
>> -			local_rcv = true;
>> +			if (br_opt_get(br, BROPT_BCAST_FLOOD))
>> +				local_rcv = true;
>>  		} else {
>>  			pkt_type = BR_PKT_MULTICAST;
>>  			if (br_multicast_rcv(&brmctx, &pmctx, vlan, skb, vid))
>> @@ -161,12 +162,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>>  			}
>>  			mcast_hit = true;
>>  		} else {
>> -			local_rcv = true;
>> -			br->dev->stats.multicast++;
>> +			if (br_opt_get(br, BROPT_MCAST_FLOOD)) {
>> +				local_rcv = true;
>> +				br->dev->stats.multicast++;
>> +			}
>>  		}
>>  		break;
>>  	case BR_PKT_UNICAST:
>>  		dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
>> +		if (!dst && br_opt_get(br, BROPT_UNICAST_FLOOD))
>> +			local_rcv = true;
>>  		break;
> 
> This adds new tests for all fast paths for host traffic,
> especially the port - port communication which is the most critical one.
> Please at least move the unicast test to the "else" block of "if (dst)" later.
> 
> The other tests can be moved to host only code too, but would require bigger changes.
> Please try to keep the impact on the fast-path at minimum.
> 
>>  	default:
>>  		break;
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 18ccc3d5d296..683bd0ee4c64 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -449,6 +449,9 @@ enum net_bridge_opts {
>>  	BROPT_VLAN_BRIDGE_BINDING,
>>  	BROPT_MCAST_VLAN_SNOOPING_ENABLED,
>>  	BROPT_MST_ENABLED,
>> +	BROPT_UNICAST_FLOOD,
>> +	BROPT_MCAST_FLOOD,
>> +	BROPT_BCAST_FLOOD,
>>  };
>>  
>>  struct net_bridge {
> 


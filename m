Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB04FF42D
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 11:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F12E82656;
	Wed, 13 Apr 2022 09:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TlpghUWBp2x; Wed, 13 Apr 2022 09:51:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 743A8826DA;
	Wed, 13 Apr 2022 09:51:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B583C0088;
	Wed, 13 Apr 2022 09:51:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C21D9C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A955D408CC
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vMArc8BsmwJ5 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 09:51:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F8BE408C3
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:51:45 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id o16so1515660ljp.3
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=BuoKK4ZQpOyixi88t54FMVtVUCr5+bIsufKlx4kYhpw=;
 b=QndnMZC+0awTwppISkLvQV3tLtPDwKIPNp1//QeXRe1ypOhSWYZi3KTZPJ37eUeg6E
 6x5X9WkfHdCPw/bd/CIjjLo9+HlPK+E8m9la8g+y7C09Q7Kj7FePXOwQPLzWjBcKnOte
 9ZAqZP4P83uuZy2ThDNRtZq82RAf0aK+fTzifYy/unZk1mM3SLh/vZI7VRJxDwTTD1nn
 Iu84BQzf1s1SymRiW1rJuhkXZ+FxMxew9AVCyUiqz3Vyxjy2RQeCYIcMTS9cdEFKu2gD
 2tJmw1f/H+ioQFv81n+292jQAXDwlU0cJGG98MfD6c7/gY5lJpOvnD9R3i855Cjpfyz5
 MXNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=BuoKK4ZQpOyixi88t54FMVtVUCr5+bIsufKlx4kYhpw=;
 b=ZI6GVBFQRy4uCs4BsMMNOlo/RfIjz7yrREsZ9m5Ox9i+av4q6lcd8jzs5+Zqa/mzi/
 aYX4m4CGzq05MKuZVntVMoOVV+yX6nHbpWkS9UzsHmo/YFHgqzF04GI7uHS4vQcg2VWe
 /nVr4stKWts8JmFtpbUrhzTlEvlcGwn+Dc0fzjBdPjZ8LhQC88VOxMGetDmjZwoq8aNB
 0XGpX1ECss20siujyc8SO0b5Dsj80H9T4yIvcvJdW8zOp5lb3DqPC90LTHDiNNS54CLv
 jaYkpFaFZNzphnEMGzlVTf1gXn7TkKDed43+ZWFhdace2UnMnwzpnj8FyNHRLgrzxlpc
 TixQ==
X-Gm-Message-State: AOAM5320CwGZD70xTFuorWGnF4JZ2oBdyz+Z/i430w2zQ1y8qcmukKct
 3JvhQDwhJU1A4eCfxoBCAeQ=
X-Google-Smtp-Source: ABdhPJxXYe9eW4tJgfG7afZJkmKVxfg7aNOPanbyJAbZusazZz1lE+uShtQ9Lo6K7iseYBxV7e3ygw==
X-Received: by 2002:a2e:bf12:0:b0:249:3a3b:e91a with SMTP id
 c18-20020a2ebf12000000b002493a3be91amr26316149ljr.343.1649843503171; 
 Wed, 13 Apr 2022 02:51:43 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 a3-20020a195f43000000b0044a997dea6bsm4064965lfj.288.2022.04.13.02.51.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 02:51:42 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-2-troglobit@gmail.com>
 <99b0790a-9746-ea08-b57e-52c53436666d@blackwall.org>
Date: Wed, 13 Apr 2022 11:51:42 +0200
Message-ID: <87k0bt9uq9.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, Apr 12, 2022 at 21:27, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 11/04/2022 16:38, Joachim Wiberg wrote:
>> @@ -526,6 +526,10 @@ void br_dev_setup(struct net_device *dev)
>>  	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
>>  	dev->max_mtu = ETH_MAX_MTU;
>> +	br_opt_toggle(br, BROPT_UNICAST_FLOOD, 1);
> This one must be false by default. It changes current default behaviour.
> Unknown unicast is not currently passed up to the bridge if the port is
> not in promisc mode, this will change it. You'll have to make it consistent
> with promisc (e.g. one way would be for promisc always to enable unicast flood
> and it won't be possible to be disabled while promisc).

Ouch, my bad!  Will look into how to let this have as little impact as
possible.  I like your semantics there, promisc should always win.

>> +	br_opt_toggle(br, BROPT_MCAST_FLOOD, 1);
>> +	br_opt_toggle(br, BROPT_BCAST_FLOOD, 1);
>
> s/1/true/ for consistency

Of course, thanks!

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
> This adds new tests for all fast paths for host traffic, especially
> the port - port communication which is the most critical one.  Please
> at least move the unicast test to the "else" block of "if (dst)"
> later.

OK, will fix!

> The other tests can be moved to host only code too, but would require
> bigger changes.  Please try to keep the impact on the fast-path at
> minimum.

Interesting, you mean by speculatively setting local_rcv = true and
postpone the decsion to br_pass_frame_up(), right?  Yeah that would
indeed be a bit more work.

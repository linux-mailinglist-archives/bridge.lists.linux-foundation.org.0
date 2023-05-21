Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A6070ACCC
	for <lists.bridge@lfdr.de>; Sun, 21 May 2023 09:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B99F81FAD;
	Sun, 21 May 2023 07:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B99F81FAD
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=qhFODi7r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCYQ7WWF2ue5; Sun, 21 May 2023 07:34:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 81C1B81FBC;
	Sun, 21 May 2023 07:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81C1B81FBC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1778DC007C;
	Sun, 21 May 2023 07:34:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16C6BC002A
 for <bridge@lists.linux-foundation.org>; Sun, 21 May 2023 07:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE51360BD1
 for <bridge@lists.linux-foundation.org>; Sun, 21 May 2023 07:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE51360BD1
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=qhFODi7r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRT4qjIbpAOF for <bridge@lists.linux-foundation.org>;
 Sun, 21 May 2023 07:34:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E4B60BAB
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8E4B60BAB
 for <bridge@lists.linux-foundation.org>; Sun, 21 May 2023 07:34:04 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-510e419d701so6966173a12.1
 for <bridge@lists.linux-foundation.org>; Sun, 21 May 2023 00:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684654443; x=1687246443;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IpkZ4yVV0iu3dRL52S+sHaPiWnMLUExrhT6mC141b0E=;
 b=qhFODi7rXTXgSVqVvOChzgPFv6jHIXgNH63oMM3AbdOwg/fxUXeKwmHyEvDpkKkgCI
 2CycNj1vCjLPEDtuvZNB5VBas9cjhhVf62VUOQkQOtN6yxOMqBb9bbSpTBcr/u+DIuYe
 vfC2tLa5TuxPBVMs4ej+Nn9ZRvQlgJFxSW3vPtWDA75XRA9RlRkqSvyox+Ed7RAorR1G
 Vdde8+cW+Z7HcRBP2QO+r9M4qUaszsEUIwvqyYL6lmj4ze5hTL5p653XpdgtCQOSG3y1
 46/fek83obPzr1K/1Y1qx8PNR2FDAmvN6Uu3mzfuCHX4sPs/l15M+YFc0az24peGCh0g
 +0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684654443; x=1687246443;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IpkZ4yVV0iu3dRL52S+sHaPiWnMLUExrhT6mC141b0E=;
 b=FGj3FVdxp5uWMivlju2Zm+ZxxW/E5YseB8Y4bIx4ts3xXGMqV65iv8LKmY07YyetM7
 quwpkENL39HGsBHgjVGke5SqNRBl3PEzoJA0y1xaRDPhrsaT2xFuZrCFaFSH8cVv2U0h
 quDPS74Pt1U3DqWXvZ0sCkRzDKEav8PMR1OKoTLq4IQaBFVwLeiszK5Vx9slyFJYRa79
 hXHgAgGxgbXdBa+nySyzhXd6MnZsDCBrOWsLhyi+Kiy9ZVk7kTG6986mCXJ3IfTCBEYw
 9DzOw6Us6A5fIUQ1R2hJJknTNYPsE3DD/L9/F4BifEcUcMF7GEsXRtqd/UtKi+ebQVEP
 CNTg==
X-Gm-Message-State: AC+VfDyIcsNgkvPbDkevl/9V/ypulO1ACGtiCKq6GCsAlU5MEb67QoQU
 k5Adain87xRnhwe4qoxGvTlPFw==
X-Google-Smtp-Source: ACHHUZ7GKzDJ4Mr2o3iOegPXbWuBan8n+kLaOfRyN3BbVwjR7nPdnBysjhmyp60JT24k18Lvnt9e2g==
X-Received: by 2002:a17:907:9411:b0:94e:d951:d4e7 with SMTP id
 dk17-20020a170907941100b0094ed951d4e7mr6223522ejc.59.1684654442539; 
 Sun, 21 May 2023 00:34:02 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 g1-20020a170906394100b0095707b7dd04sm1589109eje.42.2023.05.21.00.34.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 May 2023 00:34:01 -0700 (PDT)
Message-ID: <e5658cfb-059d-6b6b-1189-9b56be4170c9@blackwall.org>
Date: Sun, 21 May 2023 10:34:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZGd+9CUBM+eWG5FR@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 bridge@lists.linux-foundation.org, claudiu.manoil@nxp.com,
 UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com, edumazet@google.com,
 jhs@mojatatu.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] skbuff: bridge: Add layer 2 miss
	indication
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

On 19/05/2023 16:51, Ido Schimmel wrote:
> On Thu, May 18, 2023 at 07:08:47PM +0300, Nikolay Aleksandrov wrote:
>> On 18/05/2023 14:33, Ido Schimmel wrote:
>>> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
>>> index fc17b9fd93e6..d8ab5890cbe6 100644
>>> --- a/net/bridge/br_input.c
>>> +++ b/net/bridge/br_input.c
>>> @@ -334,6 +334,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
>>>  		return RX_HANDLER_CONSUMED;
>>>  
>>>  	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>>> +	skb->l2_miss = 0;
>>>  
>>>  	p = br_port_get_rcu(skb->dev);
>>>  	if (p->flags & BR_VLAN_TUNNEL)
>>
>> Overall looks good, only this part is a bit worrisome and needs some additional
>> investigation because now we'll unconditionally dirty a cache line for every
>> packet that is forwarded. Could you please check the effect with perf?
> 
> To eliminate it I tried the approach we discussed yesterday:
> 
> First, add the miss indication to the bridge's control block which is
> zeroed for every skb entering the bridge:
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 2119729ded2b..bd5c18286a40 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -581,6 +581,7 @@ struct br_input_skb_cb {
>  #endif
>         u8 proxyarp_replied:1;
>         u8 src_port_isolated:1;
> +       u8 miss:1;      /* FDB or MDB lookup miss */
>  #ifdef CONFIG_BRIDGE_VLAN_FILTERING
>         u8 vlan_filtered:1;
>  #endif
> 
> And set this bit upon misses instead of skb->l2_miss:
> 
> @@ -203,6 +205,8 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
>         struct net_bridge_port *prev = NULL;
>         struct net_bridge_port *p;
>  
> +       BR_INPUT_SKB_CB(skb)->miss = 1;
> +
>         list_for_each_entry_rcu(p, &br->port_list, list) {
>                 /* Do not flood unicast traffic to ports that turn it off, nor
>                  * other traffic if flood off, except for traffic we originate
> @@ -295,6 +299,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
>                         allow_mode_include = false;
>         } else {
>                 p = NULL;
> +               BR_INPUT_SKB_CB(skb)->miss = 1;
>         }
>  
>         while (p || rp) {
> 
> Then copy it to skb->l2_miss at the very end where the cache line
> containing this field is already written to:
> 
> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
> index 84d6dd5e5b1a..89f65564e338 100644
> --- a/net/bridge/br_forward.c
> +++ b/net/bridge/br_forward.c
> @@ -50,6 +50,8 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
>  
>         br_switchdev_frame_set_offload_fwd_mark(skb);
>  
> +       skb->l2_miss = BR_INPUT_SKB_CB(skb)->miss;
> +
>         dev_queue_xmit(skb);
>  
>         return 0;
> 
> Also for locally received packets:
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index fc17b9fd93e6..274e55455b15 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -46,6 +46,8 @@ static int br_pass_frame_up(struct sk_buff *skb)
>          */
>         br_switchdev_frame_unmark(skb);
>  
> +       skb->l2_miss = BR_INPUT_SKB_CB(skb)->miss;
> +
>         /* Bridge is just like any other port.  Make sure the
>          * packet is allowed except in promisc mode when someone
>          * may be running packet capture.
> 
> Ran these changes through the selftest and it seems to work.
> 
> WDYT?

Looks good to me, this is what I had in mind wrt cache line dirtying.
The swdev mark already does it, so putting them together is nice. From
bridge POV this is good.

Thanks,
 Nik



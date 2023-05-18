Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 452297085A5
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 18:08:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 161DC8140F;
	Thu, 18 May 2023 16:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 161DC8140F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=kzLWYsW5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LO3vKHutj0bX; Thu, 18 May 2023 16:08:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9C9BB813F2;
	Thu, 18 May 2023 16:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C9BB813F2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A8C5C007C;
	Thu, 18 May 2023 16:08:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDF6AC002A
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 16:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB62E4054B
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 16:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB62E4054B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=kzLWYsW5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JhL5eqxN0yU for <bridge@lists.linux-foundation.org>;
 Thu, 18 May 2023 16:08:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6AD040106
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6AD040106
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 16:08:52 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-94a342f7c4cso414090166b.0
 for <bridge@lists.linux-foundation.org>; Thu, 18 May 2023 09:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684426131; x=1687018131;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iyuoVXRwAkG96IRjsmBXEWPPWLN9VCCign9YtDLx2cU=;
 b=kzLWYsW5n4uheX6EWn13HctN1sZsIT92orviF9/G5tPKzzsBBJlST4z8e52bJTC48D
 wNd4Qs12HRV/ULmxl+RAaayJilGjmHYnw8h2ijZn/tgAEA1DP74dMTDe5tGnHA/o34BF
 SoQDvdckzQxFjgGgv50++7rmnWea9MrZfITdHZyyyHmW/6CGhqJCYJpRsC6mH19znuo5
 3CVGj1dMhIsaUp5RGhbetdD9KrCAyptFYo7OgI5U+K8MSbc0/tGnSQ2x8aZ8O86H+Oak
 5qpCB8JbjUfkAKY4J4NossABK8ME6WuUYbDc5eA+DWk6AVa5sLW7pG9ucqx9MMuuKwb5
 EnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684426131; x=1687018131;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iyuoVXRwAkG96IRjsmBXEWPPWLN9VCCign9YtDLx2cU=;
 b=iaMIMgKjRbPGP0C/KFXmDpBeY+FSgf3uhM1+NwFtViuGHpKjpvCZC3stvMTeqWXmIN
 fJXv+XQQKGMms8+cyGErsP8XRHZarZdZp8kz+pa+ka0xWREGtaeKHlLg1SSNLPMI1LNV
 ZaBejlwVC1r9ssk//JmgK3h4olr5wAiRncKNIDU5cc7ZIMANEHQyojbv69z3Oij35/dl
 uvAOtCeTtmVcNtdPpflcxj2ZjeaLjw3W6z8Ei2exraL7G6vH+Jge6cU7gAPf8EtlV/Bq
 4Cn/y58I2JgP4Vk6C8qWqWRc/wv6vZEXgf1IIJXom+x2M61k6X6CbOAAS5rXO4kCbIhF
 86xA==
X-Gm-Message-State: AC+VfDwDIxlWehSpzPI/AlZEJo3e1QePnujf2ZQabUEYAFJpAm0uIHtN
 /N+BUVNQxl6eJ88hBs2WkyVkSQ==
X-Google-Smtp-Source: ACHHUZ5d7GREsGn+BiVykYFE9gOPpFrSYkoCOuHyK3u0f9UtxcQmzqZk1SrBy22elWLHH1l8VamFTw==
X-Received: by 2002:a17:906:4792:b0:96a:138:c1a0 with SMTP id
 cw18-20020a170906479200b0096a0138c1a0mr30986419ejc.9.1684426130604; 
 Thu, 18 May 2023 09:08:50 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 gl19-20020a170906e0d300b009663cf5dc43sm1133077ejb.181.2023.05.18.09.08.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 May 2023 09:08:49 -0700 (PDT)
Message-ID: <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
Date: Thu, 18 May 2023 19:08:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230518113328.1952135-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 vladimir.oltean@nxp.com, xiyou.wangcong@gmail.com, claudiu.manoil@nxp.com,
 UNGLinuxDriver@microchip.com, edumazet@google.com, jhs@mojatatu.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com,
 davem@davemloft.net
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

On 18/05/2023 14:33, Ido Schimmel wrote:
> Allow the bridge driver to mark packets that did not match a layer 2
> entry during forwarding by adding a 'l2_miss' bit to the skb.
> 
> Clear the bit whenever a packet enters the bridge (received from a
> bridge port or transmitted via the bridge) and set it if the packet did
> not match an FDB/MDB entry.
> 
> Subsequent patches will allow the flower classifier to match on this
> bit. The motivating use case in non-DF (Designated Forwarder) filtering
> where we would like to prevent decapsulated packets from being flooded
> to a multi-homed host.
> 
> Do not allocate the bit if the kernel was not compiled with bridge
> support and place it after the two bit fields in accordance with commit
> 4c60d04c2888 ("net: skbuff: push nf_trace down the bitfield"). The bit
> does not increase the size of the structure as it is placed at an
> existing hole. Layout with allmodconfig:
> 
> struct sk_buff {
> [...]
> 			__u8       csum_not_inet:1;      /*   132: 3  1 */
> 			__u8       l2_miss:1;            /*   132: 4  1 */
> 
> 			/* XXX 3 bits hole, try to pack */
> 			/* XXX 1 byte hole, try to pack */
> 
> 			__u16      tc_index;             /*   134     2 */
> 			u16        alloc_cpu;            /*   136     2 */
> [...]
> } __attribute__((__aligned__(8)));
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  include/linux/skbuff.h  | 4 ++++
>  net/bridge/br_device.c  | 1 +
>  net/bridge/br_forward.c | 3 +++
>  net/bridge/br_input.c   | 1 +
>  4 files changed, 9 insertions(+)
> 
[snip]
>  	while (p || rp) {
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index fc17b9fd93e6..d8ab5890cbe6 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -334,6 +334,7 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
>  		return RX_HANDLER_CONSUMED;
>  
>  	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
> +	skb->l2_miss = 0;
>  
>  	p = br_port_get_rcu(skb->dev);
>  	if (p->flags & BR_VLAN_TUNNEL)

Overall looks good, only this part is a bit worrisome and needs some additional
investigation because now we'll unconditionally dirty a cache line for every
packet that is forwarded. Could you please check the effect with perf?

Thanks,
 Nik


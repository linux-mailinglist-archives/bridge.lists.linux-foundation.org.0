Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89983714A1A
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 15:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A664D607C9;
	Mon, 29 May 2023 13:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A664D607C9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=03mfx0ay
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFS-ubAmUlfe; Mon, 29 May 2023 13:17:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2BAE3611BD;
	Mon, 29 May 2023 13:17:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BAE3611BD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6797C0089;
	Mon, 29 May 2023 13:17:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C690C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1947E82C1E
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:17:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1947E82C1E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=03mfx0ay
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVuQhlx81SDW for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 13:17:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60BB381F67
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60BB381F67
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:17:40 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-96fbc74fbf1so611021166b.1
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 06:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685366258; x=1687958258;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KVHCP9GjMtC8qGNoGPmmcW2n7fokm+mXHG6bkqQl4dY=;
 b=03mfx0ayiG0g5gZAkaaZrOEZcURS53wiLiY5XKrCqoqeWUopFUtoCdP3lSOwwJjq9Y
 F0xuSja3LEukr90mGXgI48sG6D5PypA5AnBDO4iX5qMJRMjW4NxHLk+rKwqzvTYjLbFc
 bY68vk4vmVD89r1EExry645zx5+Sq36ZvbZRixZ62MPHDjxdhHpGuTDngrwV+PNFXkU/
 lQcQed/At5NP1pkIkTPbw7PgMUMdqQdpqm9dUrvsqKnxI6zFV6H2CpCWt4pYdg8eVCbv
 6IiJ7BiojjEnuLXxctttXWi5m+onKPW9J4r8KQCvBxWB4L83ukO0uyC1CxN+VoQl21HN
 2Ytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685366258; x=1687958258;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KVHCP9GjMtC8qGNoGPmmcW2n7fokm+mXHG6bkqQl4dY=;
 b=jN++0csBNEeVGJ5PNzwRigEGeIB0h5ngVY2un3+BwPmEAnevMGBDVzT9EXHGVEVW8v
 4sGiLfq5nOfJv5+KUlwu1pyIdvnAH9vnJLtGD7B9XO8jv9ONApb1D2Jc761IL/QBry7o
 WfRZmzLiKPAn5phnGzbbbI5HET1AhMm+k779BT8rNzkHZvoLY8u2H8z6ThkOLRCF/V7p
 Ttmd7MPbo1uVmyoRgltNjF1EIVIPe9GPM5bTjN09LaKfhR4AMuDLj+suMPL0fd4/dw9v
 UkmTeItKf6kSv7rygjAB+xlYawf153gY01cC0HwChwYdAmd28jZgDJrJKwTWGolUdy93
 zlHA==
X-Gm-Message-State: AC+VfDz1CPa9J6WymnKB+VdsoIN0n99Q58jZcl6qHquGMIn6SejscFwn
 YCFSxGv1AzAe5bnJ+S+h1xN5JQ==
X-Google-Smtp-Source: ACHHUZ5ehB7xMRH1caM3gKqELrLRKVaUdfl7akJJUHSnVGiZIYbODab67lQFivuY/qj4QWXAWKpprg==
X-Received: by 2002:a17:907:168d:b0:974:76:dcdd with SMTP id
 hc13-20020a170907168d00b009740076dcddmr4366969ejc.55.1685366257783; 
 Mon, 29 May 2023 06:17:37 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 v19-20020a1709060b5300b0096621340285sm5914547ejg.198.2023.05.29.06.17.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 06:17:37 -0700 (PDT)
Message-ID: <58d3e95f-ee23-06c7-b690-64fe42b9c56b@blackwall.org>
Date: Mon, 29 May 2023 16:17:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 1/8] skbuff: bridge: Add layer 2
 miss indication
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

On 29/05/2023 14:48, Ido Schimmel wrote:
> For EVPN non-DF (Designated Forwarder) filtering we need to be able to
> prevent decapsulated traffic from being flooded to a multi-homed host.
> Filtering of multicast and broadcast traffic can be achieved using the
> following flower filter:
> 
>  # tc filter add dev bond0 egress pref 1 proto all flower indev vxlan0 dst_mac 01:00:00:00:00:00/01:00:00:00:00:00 action drop
> 
> Unlike broadcast and multicast traffic, it is not currently possible to
> filter unknown unicast traffic. The classification into unknown unicast
> is performed by the bridge driver, but is not visible to other layers
> such as tc.
> 
> Solve this by adding a new 'l2_miss' bit to the tc skb extension. Clear
> the bit whenever a packet enters the bridge (received from a bridge port
> or transmitted via the bridge) and set it if the packet did not match an
> FDB or MDB entry. If there is no skb extension and the bit needs to be
> cleared, then do not allocate one as no extension is equivalent to the
> bit being cleared. The bit is not set for broadcast packets as they
> never perform a lookup and therefore never incur a miss.
> 
> A bit that is set for every flooded packet would also work for the
> current use case, but it does not allow us to differentiate between
> registered and unregistered multicast traffic, which might be useful in
> the future.
> 
> To keep the performance impact to a minimum, the marking of packets is
> guarded by the 'tc_skb_ext_tc' static key. When 'false', the skb is not
> touched and an skb extension is not allocated. Instead, only a
> 5 bytes nop is executed, as demonstrated below for the call site in
> br_handle_frame().
> 
> Before the patch:
> 
> ```
>         memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>   c37b09:       49 c7 44 24 28 00 00    movq   $0x0,0x28(%r12)
>   c37b10:       00 00
> 
>         p = br_port_get_rcu(skb->dev);
>   c37b12:       49 8b 44 24 10          mov    0x10(%r12),%rax
>         memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>   c37b17:       49 c7 44 24 30 00 00    movq   $0x0,0x30(%r12)
>   c37b1e:       00 00
>   c37b20:       49 c7 44 24 38 00 00    movq   $0x0,0x38(%r12)
>   c37b27:       00 00
> ```
> 
> After the patch (when static key is disabled):
> 
> ```
>         memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
>   c37c29:       49 c7 44 24 28 00 00    movq   $0x0,0x28(%r12)
>   c37c30:       00 00
>   c37c32:       49 8d 44 24 28          lea    0x28(%r12),%rax
>   c37c37:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
>   c37c3e:       00
>   c37c3f:       48 c7 40 10 00 00 00    movq   $0x0,0x10(%rax)
>   c37c46:       00
> 
> #ifdef CONFIG_HAVE_JUMP_LABEL_HACK
> 
> static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
> {
>         asm_volatile_goto("1:"
>   c37c47:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
>         br_tc_skb_miss_set(skb, false);
> 
>         p = br_port_get_rcu(skb->dev);
>   c37c4c:       49 8b 44 24 10          mov    0x10(%r12),%rax
> ```
> 
> Subsequent patches will extend the flower classifier to be able to match
> on the new 'l2_miss' bit and enable / disable the static key when
> filters that match on it are added / deleted.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Use tc skb extension instead of adding a bit to the skb.
>     * Do not mark broadcast packets as they never perform a lookup and
>       therefore never incur a miss.
> 
>  include/linux/skbuff.h  |  1 +
>  net/bridge/br_device.c  |  1 +
>  net/bridge/br_forward.c |  3 +++
>  net/bridge/br_input.c   |  1 +
>  net/bridge/br_private.h | 27 +++++++++++++++++++++++++++
>  5 files changed, 33 insertions(+)
> 

Nice approach.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



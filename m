Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1A4714A20
	for <lists.bridge@lfdr.de>; Mon, 29 May 2023 15:19:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2944C41C57;
	Mon, 29 May 2023 13:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2944C41C57
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=C8HQzWxL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBDiIYDHC_CQ; Mon, 29 May 2023 13:19:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 96F2540644;
	Mon, 29 May 2023 13:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96F2540644
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C776C0089;
	Mon, 29 May 2023 13:19:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 55BD2C002A
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 306FB8128D
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 306FB8128D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=C8HQzWxL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mBU51Z7WJSec for <bridge@lists.linux-foundation.org>;
 Mon, 29 May 2023 13:18:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CC72821F5
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CC72821F5
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 13:18:58 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-5147a478c38so4713527a12.0
 for <bridge@lists.linux-foundation.org>; Mon, 29 May 2023 06:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685366337; x=1687958337;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/vKSVewvvgNmBaS2m89L7HPH8tzhUP9OKuLAcv7eBrA=;
 b=C8HQzWxLngDUWXWbOKeK6W+9+VQlAZu8nbLFYw9lmw75B5y/D+Kvvw0MuIfnEk6JjA
 oBFn4pw/SmXtgL5VNY6i3BxzvYtVbJCLycd2QR1VoXp2jA6iYnQLVumnPY4GT2iIIfYL
 ZMSxLWYf0CQl08haYhgjxGguMPcpqE75T2GwIZHNQvC8H02mHYNn2OPSc3GmY98ha2oB
 InKxNqdaSG2IvB+Und5d1cqintkU9/4Ib5IP25vgEIiUEOwuwAjA95KCf7PcvHd7NuVI
 UcKbNwG5VGEQc1o2DFiGzxR6/UIjexYMM7XsI67iWwXT/DTaDj+yv5jeqon5lVup6Ydc
 y+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685366337; x=1687958337;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/vKSVewvvgNmBaS2m89L7HPH8tzhUP9OKuLAcv7eBrA=;
 b=f9nQRjuwcSq2W+9i7haAe7tXbhaDwidm51qdwWOeiF5/8Hs5w1D6PXbykTmE61f8jr
 P54D0PsbnmKxZebefFFwJbRjC0olYgIRZxZiEUh9+cetNq+0g+De3fnsJnkuNOE74AWo
 cg5OfLy3A7pLrCIz0giD9UPGL3ULa1FcUh+0XXw3iZyFZhipWzPT7/oYUw6Emc9fckqZ
 9vdlr1MaliE+yQx/itQKZnIM6otnHwBHoSO1sUI0oqBimEsKDngrGayJbqkPYBqiZYqE
 iPflAYTiIfoN8e2AniTEx+qB9Hpc4T7vwI0UL/8k8gj+GEcRltw4e8jwoBIgHRSS5o6i
 LIuw==
X-Gm-Message-State: AC+VfDy9TIZn8bQbZYVKK++Plcsp+VdjGblXCThtaMBZ6pTupR1ynYnl
 hMBhIO+7kWibznUmbLZTQHK9CQ==
X-Google-Smtp-Source: ACHHUZ7jf/qGi2YiFapIE0brjV4aYUJ7L/6oGeZWh4eSAlrBX5XMGklZk5nFgnRPzVhwN1Iwq+DOMQ==
X-Received: by 2002:aa7:c458:0:b0:514:9904:c8fe with SMTP id
 n24-20020aa7c458000000b005149904c8femr3356861edr.39.1685366337102; 
 Mon, 29 May 2023 06:18:57 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 v15-20020aa7cd4f000000b005149dc73072sm1318955edw.56.2023.05.29.06.18.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 06:18:56 -0700 (PDT)
Message-ID: <753ea732-2016-36b7-bcc3-4536fa5cd6a4@blackwall.org>
Date: Mon, 29 May 2023 16:18:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230529114835.372140-1-idosch@nvidia.com>
 <20230529114835.372140-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230529114835.372140-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, leon@kernel.org, vladimir.oltean@nxp.com, roopa@nvidia.com,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, edumazet@google.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 3/8] net/sched: flower: Allow
 matching on layer 2 miss
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
> Add the 'TCA_FLOWER_L2_MISS' netlink attribute that allows user space to
> match on packets that encountered a layer 2 miss. The miss indication is
> set as metadata in the tc skb extension by the bridge driver upon FDB or
> MDB lookup miss and dissected by the flow dissector to the
> 'FLOW_DISSECTOR_KEY_META' key.
> 
> The use of this skb extension is guarded by the 'tc_skb_ext_tc' static
> key. As such, enable / disable this key when filters that match on layer
> 2 miss are added / deleted.
> 
> Tested:
> 
>  # cat tc_skb_ext_tc.py
>  #!/usr/bin/env -S drgn -s vmlinux
> 
>  refcount = prog["tc_skb_ext_tc"].key.enabled.counter.value_()
>  print(f"tc_skb_ext_tc reference count is {refcount}")
> 
>  # ./tc_skb_ext_tc.py
>  tc_skb_ext_tc reference count is 0
> 
>  # tc filter add dev swp1 egress proto all handle 101 pref 1 flower src_mac 00:11:22:33:44:55 action drop
>  # tc filter add dev swp1 egress proto all handle 102 pref 2 flower src_mac 00:11:22:33:44:55 l2_miss true action drop
>  # tc filter add dev swp1 egress proto all handle 103 pref 3 flower src_mac 00:11:22:33:44:55 l2_miss false action drop
> 
>  # ./tc_skb_ext_tc.py
>  tc_skb_ext_tc reference count is 2
> 
>  # tc filter replace dev swp1 egress proto all handle 102 pref 2 flower src_mac 00:01:02:03:04:05 l2_miss false action drop
> 
>  # ./tc_skb_ext_tc.py
>  tc_skb_ext_tc reference count is 2
> 
>  # tc filter del dev swp1 egress proto all handle 103 pref 3 flower
>  # tc filter del dev swp1 egress proto all handle 102 pref 2 flower
>  # tc filter del dev swp1 egress proto all handle 101 pref 1 flower
> 
>  # ./tc_skb_ext_tc.py
>  tc_skb_ext_tc reference count is 0
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Split flow_dissector changes to a previous patch.
>     * Use tc skb extension instead of 'skb->l2_miss'.
> 
>  include/uapi/linux/pkt_cls.h |  2 ++
>  net/sched/cls_flower.c       | 30 ++++++++++++++++++++++++++++--
>  2 files changed, 30 insertions(+), 2 deletions(-)

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>



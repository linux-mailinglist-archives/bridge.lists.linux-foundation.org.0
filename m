Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE0470A225
	for <lists.bridge@lfdr.de>; Fri, 19 May 2023 23:52:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 134C483BB0;
	Fri, 19 May 2023 21:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 134C483BB0
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=V+PBalyh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXk1iygb53Sm; Fri, 19 May 2023 21:52:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A69D183BC1;
	Fri, 19 May 2023 21:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A69D183BC1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49E43C008C;
	Fri, 19 May 2023 21:52:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01D99C002A
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 21:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C17D8426A6
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 21:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C17D8426A6
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=V+PBalyh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bWIcWWouPvWG for <bridge@lists.linux-foundation.org>;
 Fri, 19 May 2023 21:52:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03878426A4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03878426A4
 for <bridge@lists.linux-foundation.org>; Fri, 19 May 2023 21:52:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EB1FC6574A;
 Fri, 19 May 2023 21:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92F9EC433EF;
 Fri, 19 May 2023 21:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684533140;
 bh=DvmYUH8tqNMAZb1R1bVtrDgnSZXt8yxQB+NplK600O0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=V+PBalyhMH6kzH7YzbdKg5bmrrp2uWrT4cWs/gTl+PeG2FdUwVUd3MVbzlXkmyfPP
 TvpT81mfXBRGCwBeZgzJiFRJHghCAabKbdqT6LIUl2W8gws4KPChyDKPiUjnjjGFHM
 r0ISzBsTNS3sZXYU5N6fIVtvNRcuMIYjDCZSVfV+Y07cKxPIg2hjnTQHTUwsHluBPb
 rmrYfrR6doWjBdzdqmXuhbv3ZCCjJFU/ZbTPLiSctHuQGnfpgixfo0woS1TbOP2Xlo
 oF9x1I9Ie92vleZLxtejrBXVkaGbExgilPKUKY6lJdcUPtsXB4cVazzYBRRksG5WhK
 8T5om3gjwH8eA==
Date: Fri, 19 May 2023 14:52:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230519145218.659b0104@kernel.org>
In-Reply-To: <ZGd+9CUBM+eWG5FR@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, claudiu.manoil@nxp.com,
 UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com, edumazet@google.com,
 jhs@mojatatu.com, roopa@nvidia.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net
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

On Fri, 19 May 2023 16:51:48 +0300 Ido Schimmel wrote:
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

Can we possibly put the new field at the end of the CB and then have TC
look at it in the CB? We already do a bit of such CB juggling in strp
(first member of struct sk_skb_cb).

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB9D70E676
	for <lists.bridge@lfdr.de>; Tue, 23 May 2023 22:30:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05DA0613E6;
	Tue, 23 May 2023 20:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05DA0613E6
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=f927S0xc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhW5AVAaCpe0; Tue, 23 May 2023 20:29:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 531886149D;
	Tue, 23 May 2023 20:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 531886149D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E50D3C007C;
	Tue, 23 May 2023 20:29:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A05E6C002A
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 20:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 869D341DF3
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 20:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 869D341DF3
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=f927S0xc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HwLNwVUhXoul for <bridge@lists.linux-foundation.org>;
 Tue, 23 May 2023 20:29:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16ABC41DEE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16ABC41DEE
 for <bridge@lists.linux-foundation.org>; Tue, 23 May 2023 20:29:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9051A634A1;
 Tue, 23 May 2023 20:29:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBFAC433EF;
 Tue, 23 May 2023 20:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684873793;
 bh=IHjbqY3L6Kyfcn6EpLoF0/oL2Mhj/pa0C03BNaUDdRA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f927S0xcFxI0gxvFiUOfBlRQurEehM21aLB0J2XqXylNcF4K2tWGunR3CsmaKWnKZ
 HsjK0JEWYUUCJx3qGRXgBdfxOa9p6j3+3UnOCp3uQxeIeGslL8zGOkV7yGLECXoFCU
 EnEtYG0tkE/5yel26sT1dLtezMniy+BGxpSScMU1FZwSvVcrpSTnVG5R18UOqDcElG
 LOKrPwldMCMb/QONgY2/JqVXJCFCh8M8SuVOqpj2ZH0tCXfxg8aLLLucnfckhxROH9
 bUj+nt1hvd0nkxWTeLOJjrELsoyUU9WggNpwGHAlXgyRCM22bU7CyMcCrmfGtsJNZi
 OROB0fJRGbHYQ==
Date: Tue, 23 May 2023 13:29:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230523132951.623288cb@kernel.org>
In-Reply-To: <ZGx0/hwPmFFN2ivS@shredder>
References: <20230518113328.1952135-1-idosch@nvidia.com>
 <20230518113328.1952135-2-idosch@nvidia.com>
 <1ed139d5-6cb9-90c7-323c-22cf916e96a0@blackwall.org>
 <ZGd+9CUBM+eWG5FR@shredder> <20230519145218.659b0104@kernel.org>
 <ZGx0/hwPmFFN2ivS@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: taras.chornyi@plvision.eu, petrm@nvidia.com, alexandre.belloni@bootlin.com,
 jiri@resnulli.us, taspelund@nvidia.com, leon@kernel.org,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 claudiu.manoil@nxp.com, UNGLinuxDriver@microchip.com, vladimir.oltean@nxp.com,
 edumazet@google.com, jhs@mojatatu.com, roopa@nvidia.com,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, saeedm@nvidia.com,
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

On Tue, 23 May 2023 11:10:38 +0300 Ido Schimmel wrote:
> > Can we possibly put the new field at the end of the CB and then have TC
> > look at it in the CB? We already do a bit of such CB juggling in strp
> > (first member of struct sk_skb_cb).  
> 
> Using the CB between different layers is very fragile and I would like
> to avoid it. Note that the skb can pass various layers until hitting the
> classifier, each of which can decide to memset() the CB.
> 
> Anyway, I think I have a better alternative. I added the 'l2_miss' bit
> to the tc skb extension and adjusted the bridge to mark packets via this
> extension. The entire thing is protected by the existing 'tc_skb_ext_tc'
> static key, so overhead is kept to a minimum when feature is disabled.
> Extended flower to enable / disable this key when filters that match on
> 'l2_miss' are added / removed.
> 
> bridge change to mark the packet:
> https://github.com/idosch/linux/commit/3fab206492fcad9177f2340680f02ced1b9a0dec.patch
> 
> flow_dissector change to dissect the info from the extension:
> https://github.com/idosch/linux/commit/1533c078b02586547817a4e63989a0db62aa5315.patch
> 
> flower change to enable / disable the key:
> https://github.com/idosch/linux/commit/cf84b277511ec80fe565c41271abc6b2e2f629af.patch
> 
> Advantages compared to the previous approach are that we do not need a
> new bit in the skb and that overhead is kept to a minimum when feature
> is disabled. Disadvantage is that overhead is higher when feature is
> enabled.
> 
> WDYT?

Sounds good, yup. Thanks!

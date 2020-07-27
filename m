Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5156622F7C1
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 20:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BDB98648C;
	Mon, 27 Jul 2020 18:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TJu0B-mDtE8e; Mon, 27 Jul 2020 18:31:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E210C86463;
	Mon, 27 Jul 2020 18:31:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2D9FC004D;
	Mon, 27 Jul 2020 18:31:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0551C004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 18:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9DDA521514
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 18:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4t41crzkyZ1 for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 18:31:15 +0000 (UTC)
X-Greylist: delayed 00:08:08 by SQLgrey-1.7.6
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com
 [64.147.123.27])
 by silver.osuosl.org (Postfix) with ESMTPS id C41DF2039B
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 18:31:15 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id D24DDE02;
 Mon, 27 Jul 2020 14:23:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 27 Jul 2020 14:23:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Afhna7
 9fjG2N/ESpGlT1yod24pbovs9kG7jTtRp8uec=; b=pxd6lnhAQY6lq36Rw0t2Wr
 FNTj7Aqv7utLvfCSPVSKK7zYkP/Oi6k9NUUf7rFRtAgNJ4ISpkANzMes5KPdO5xP
 uQhBAs0exKeEZWKHlguK1wyxAhd7/2StnncNBaDA+r1X7J3jOA/5IUqtqukcS8Zy
 6b1F7WsC7K7Gxls+h+LpTkFCZf/cBDkEzEii5uRHhbH0he4RqOm0VhtaaNhJ0ONh
 sA1OegTDCQaheFhFJspfeBf1dkuokHpdFLa9JDtSfErlJ23gF/vUAREvveiVNSbI
 s2U0p/YcHBpouuo2EToObgfipcm60uYWCoTDshKh/Ld62ZeuhBlR0923rp/WSgug
 ==
X-ME-Sender: <xms:hhsfXw256bt5Qvmk7qwJktXsYXMYpGtJEPiP9Uh0o4S3z4J60JG_Ug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedriedtgdduvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepjeelrddukedurddvrddujeelnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:hhsfX7GUtyQL-qzWlnNrDA6BRLNqA_sVqs6SkDPZ3OFYz2rLpuLPKA>
 <xmx:hhsfX46tTRqe9_4re0uj3hKI21pc6E5kOG5GBQ_4I2GbhCEFmzhFVQ>
 <xmx:hhsfX53ly2RhKyVXpSc-AP7Py8h3bUEfu3XyInk15A9EOdXPwhk-DQ>
 <xmx:iBsfX7VuEFOpnGbNFKVSKt3rokiDITnfnJBSqLDGQ8efu7Vwr-9kkM4RTJM>
Received: from localhost (bzq-79-181-2-179.red.bezeqint.net [79.181.2.179])
 by mail.messagingengine.com (Postfix) with ESMTPA id BA5ED328005D;
 Mon, 27 Jul 2020 14:23:01 -0400 (EDT)
Date: Mon, 27 Jul 2020 21:22:59 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200727182259.GA1931870@shredder>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-20-hch@lst.de>
 <20200727121505.GA1804864@shredder> <20200727130029.GA26393@lst.de>
 <20200727133331.GA1851348@shredder> <20200727161555.GA7817@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200727161555.GA7817@lst.de>
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 19/26] net/ipv6: switch ipv6_flowlabel_opt to
	sockptr_t
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

On Mon, Jul 27, 2020 at 06:15:55PM +0200, Christoph Hellwig wrote:
> I have to admit I didn't spot the difference between the good and the
> bad output even after trying hard..
> 
> But can you try the patch below?
> 
> ---
> From cce2d2e1b43ecee5f4af7cf116808b74b330080f Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Mon, 27 Jul 2020 17:42:27 +0200
> Subject: net: remove sockptr_advance
> 
> sockptr_advance never properly worked.  Replace it with _offset variants
> of copy_from_sockptr and copy_to_sockptr.
> 
> Fixes: ba423fdaa589 ("net: add a new sockptr_t type")
> Reported-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Reported-by: Ido Schimmel <idosch@idosch.org>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Tested-by: Ido Schimmel <idosch@mellanox.com>

Thanks!

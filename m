Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5A76A300
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 23:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03F8781F37;
	Mon, 31 Jul 2023 21:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03F8781F37
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0Ynn7Y/7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62xU0hAnOamf; Mon, 31 Jul 2023 21:37:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4412A81F09;
	Mon, 31 Jul 2023 21:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4412A81F09
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1175C008D;
	Mon, 31 Jul 2023 21:37:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F9A6C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 21:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E258981F09
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 21:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E258981F09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZACAl5hp4Bd for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 21:37:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 428C080C12
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 21:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 428C080C12
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LddVCcT5Tl/w5tkU77QzXl+CGDu6387cGpG48tppgHc=; b=0Ynn7Y/7W6+gDCwSOAZ/hzNhAf
 ncsnWc6Ebm0glt4s2jy+6ENEVw8CCnDcddcPxAeqCO1Vm6rOWP40UtXpk7WqdG3Sbb1q/3CucAmPZ
 qDhNbMsdf3BrUSfNJ1r9+31fDwhdC1gU4CacjWVr4B82FZjG4LdFg30afj+w9oiGhUs73HGFs/v/L
 xvY5hvk58sAfA5z4McMTW8BtxkIZN9OihahGe+3Vyzuv0tK0LxQraesPWqUx6J4ahrTelf12g654L
 J2r7IbQOEmrqGnynl/sNARXbjYdGVcA+NX/WO2gi/nP8HJYhRloIot6akbGmFUUqoN7p6p9WZ0onF
 W4rm/+EQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1qQaZO-00HOoz-18; Mon, 31 Jul 2023 21:36:50 +0000
Date: Mon, 31 Jul 2023 14:36:50 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Joel Granados <joel.granados@gmail.com>
Message-ID: <ZMgpck0rjqHR74sl@bombadil.infradead.org>
References: <20230731071728.3493794-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731071728.3493794-1-j.granados@samsung.com>
Cc: Joel Granados <j.granados@samsung.com>, Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: Re: [Bridge] [PATCH v2 00/14] sysctl: Add a size argument to
 register functions in sysctl
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

> Joel Granados (14):
>   sysctl: Prefer ctl_table_header in proc_sysctl
>   sysctl: Use ctl_table_header in list_for_each_table_entry
>   sysctl: Add ctl_table_size to ctl_table_header
>   sysctl: Add size argument to init_header
>   sysctl: Add a size arg to __register_sysctl_table
>   sysctl: Add size to register_sysctl
>   sysctl: Add size arg to __register_sysctl_init

This is looking great thanks, I've taken the first 7 patches above
to sysctl-next to get more exposure / testing and since we're already
on rc4.

Since the below patches involve more networking I'll wait to get
more feedback from networking folks before merging them.

>   sysctl: Add size to register_net_sysctl function
>   ax.25: Update to register_net_sysctl_sz
>   netfilter: Update to register_net_sysctl_sz
>   networking: Update to register_net_sysctl_sz
>   vrf: Update to register_net_sysctl_sz
>   sysctl: SIZE_MAX->ARRAY_SIZE in register_net_sysctl
>   sysctl: Use ctl_table_size as stopping criteria for list macro

  Luis

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECE57777C2
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EB1840B7D;
	Thu, 10 Aug 2023 12:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EB1840B7D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=qNrewbNA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXLor7PfKBaC; Thu, 10 Aug 2023 12:03:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0429D405B7;
	Thu, 10 Aug 2023 12:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0429D405B7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2958CC0DD8;
	Thu, 10 Aug 2023 12:03:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C824C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 19:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A89E40C1F
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 19:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A89E40C1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvjshI1olOjn for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 19:07:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE35A41479
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 19:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE35A41479
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 16D7561278;
 Mon, 31 Jul 2023 19:07:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B762C433CA;
 Mon, 31 Jul 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690830438;
 bh=nmClbRXgHNUMiULKcf/Jk+DyC9Yg7VyUEy4VtDl2IjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qNrewbNAX17gBaT9Awc7kLxyeODJt9zjauiKu558BxEajhl+UBhYRZwqRx6cWeHYn
 /zuVvbQaNBiuopq/kD+gx3SiMgrrB4MgcqFzkwka4tmMi/XAbA2FIpu1zJo3jHGMFS
 jhyimOaJ5FACsZvRjzfBSFnEPlg+YWjqbMAHWa9UE/JGz7oIMYGNYBV6v2pi6RxtNy
 TeakImoXcXW120Qu2jjSuApH00LkcbYkihQNLUz9k0og5rn3y7lNctSODiL9scopmi
 iB0tVmAKbMsbEb2SJqgvXUVTq2OVJTiNE9RZH6YtQ8C4wGrxz5CbDS2228aNpuQVLk
 0MIPw+3+S2ZKg==
Date: Mon, 31 Jul 2023 21:07:06 +0200
From: Simon Horman <horms@kernel.org>
To: Joel Granados <joel.granados@gmail.com>
Message-ID: <ZMgGWm4sT+VqDZ3u@kernel.org>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <20230731071728.3493794-4-j.granados@samsung.com>
 <ZMf9vZpGE98oM9W2@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZMf9vZpGE98oM9W2@kernel.org>
X-Mailman-Approved-At: Thu, 10 Aug 2023 12:03:37 +0000
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
 "David S. Miller" <davem@davemloft.net>, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, Sven Schnelle <svens@linux.ibm.com>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
Subject: Re: [Bridge] [PATCH v2 03/14] sysctl: Add ctl_table_size to
	ctl_table_header
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

On Mon, Jul 31, 2023 at 08:30:34PM +0200, Simon Horman wrote:
> On Mon, Jul 31, 2023 at 09:17:17AM +0200, Joel Granados wrote:
> > The new ctl_table_size element will hold the size of the ctl_table
> > arrays contained in the ctl_table_header. This value should eventually
> > be passed by the callers to the sysctl register infrastructure. And
> > while this commit introduces the variable, it does not set nor use it
> > because that requires case by case considerations for each caller.
> > 
> > It provides two important things: (1) A place to put the
> > result of the ctl_table array calculation when it gets introduced for
> > each caller. And (2) the size that will be used as the additional
> > stopping criteria in the list_for_each_table_entry macro (to be added
> > when all the callers are migrated)
> > 
> > Signed-off-by: Joel Granados <j.granados@samsung.com>
> > ---
> >  include/linux/sysctl.h | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
> > index 59d451f455bf..33252ad58ebe 100644
> > --- a/include/linux/sysctl.h
> > +++ b/include/linux/sysctl.h
> > @@ -159,12 +159,22 @@ struct ctl_node {
> >  	struct ctl_table_header *header;
> >  };
> >  
> > -/* struct ctl_table_header is used to maintain dynamic lists of
> > -   struct ctl_table trees. */
> > +/**
> > + * struct ctl_table_header - maintains dynamic lists of struct ctl_table trees
> > + * @ctl_table: pointer to the first element in ctl_table array
> > + * @ctl_table_size: number of elements pointed by @ctl_table
> > + * @used: The entry will never be touched when equal to 0.
> > + * @count: Upped every time something is added to @inodes and downed every time
> > + *         something is removed from inodes
> > + * @nreg: When nreg drops to 0 the ctl_table_header will be unregistered.
> > + * @rcu: Delays the freeing of the inode. Introduced with "unfuck proc_sysctl ->d_compare()"
> > + *
> > + */
> 
> Hi Joel,
> 
> Please consider also adding kernel doc entries for the other fields of
> struct ctl_table_header. According to ./scripts/kernel-doc -none
> they are:
> 
>   unregistering
>   ctl_table_arg
>   root
>   set
>   parent
>   node
>   inodes

Sorry, I now realise that I made the same comment on v1.
And I didn't see your response to that until after I wrote the above.

> 
> 
> >  struct ctl_table_header {
> >  	union {
> >  		struct {
> >  			struct ctl_table *ctl_table;
> > +			int ctl_table_size;
> >  			int used;
> >  			int count;
> >  			int nreg;
> > -- 
> > 2.30.2
> > 

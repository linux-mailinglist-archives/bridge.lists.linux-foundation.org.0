Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A2C7777C1
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D01660C2B;
	Thu, 10 Aug 2023 12:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D01660C2B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=O1VpJucJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XbyZ-JjJ4vxD; Thu, 10 Aug 2023 12:03:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 92C9860AEB;
	Thu, 10 Aug 2023 12:03:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92C9860AEB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EBC91C008D;
	Thu, 10 Aug 2023 12:03:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 020EAC0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 18:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C596E4148A
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 18:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C596E4148A
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=O1VpJucJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ObBl-geaC06S for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 18:30:36 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C91B41030
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 18:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C91B41030
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CF34D6126D;
 Mon, 31 Jul 2023 18:30:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 082BDC433C7;
 Mon, 31 Jul 2023 18:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690828234;
 bh=azdNP8cF85m7UDvgXMTAEEGyM/wWyMIGFgmuwIc8ul0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O1VpJucJ8qJ4G6AE1OKV3xdN/xK/FDklzv/nwqYZajcZtRy+LSUQU50X+sHs9AxvB
 xsU2buC2SUK4CZR3jjYJZtrydR9Bbqd9WCPwdG5zMYEjJLfGD0nXQIDtdar/ei7qKh
 Q4AFqyXfVyBH57dywLI4uw0Frcitouu9e42wpiwCGypovk04FOzCfl60zxzFG2eyak
 ANZHJkor5YlN+5saTB/xwrXYhgw16Q93h89m9IIkWKyhNAHwsbqX1ZrfONEa6iuY6k
 btG9dsvLFpB0/w7f/xaTE6xEYGtgYWH7rF7vGs2JSC6YVtwrN6iixwxcTNdpmmdRV2
 wiQHQ/+OXxCxw==
Date: Mon, 31 Jul 2023 20:30:21 +0200
From: Simon Horman <horms@kernel.org>
To: Joel Granados <joel.granados@gmail.com>
Message-ID: <ZMf9vZpGE98oM9W2@kernel.org>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <20230731071728.3493794-4-j.granados@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731071728.3493794-4-j.granados@samsung.com>
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

On Mon, Jul 31, 2023 at 09:17:17AM +0200, Joel Granados wrote:
> The new ctl_table_size element will hold the size of the ctl_table
> arrays contained in the ctl_table_header. This value should eventually
> be passed by the callers to the sysctl register infrastructure. And
> while this commit introduces the variable, it does not set nor use it
> because that requires case by case considerations for each caller.
> 
> It provides two important things: (1) A place to put the
> result of the ctl_table array calculation when it gets introduced for
> each caller. And (2) the size that will be used as the additional
> stopping criteria in the list_for_each_table_entry macro (to be added
> when all the callers are migrated)
> 
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  include/linux/sysctl.h | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
> index 59d451f455bf..33252ad58ebe 100644
> --- a/include/linux/sysctl.h
> +++ b/include/linux/sysctl.h
> @@ -159,12 +159,22 @@ struct ctl_node {
>  	struct ctl_table_header *header;
>  };
>  
> -/* struct ctl_table_header is used to maintain dynamic lists of
> -   struct ctl_table trees. */
> +/**
> + * struct ctl_table_header - maintains dynamic lists of struct ctl_table trees
> + * @ctl_table: pointer to the first element in ctl_table array
> + * @ctl_table_size: number of elements pointed by @ctl_table
> + * @used: The entry will never be touched when equal to 0.
> + * @count: Upped every time something is added to @inodes and downed every time
> + *         something is removed from inodes
> + * @nreg: When nreg drops to 0 the ctl_table_header will be unregistered.
> + * @rcu: Delays the freeing of the inode. Introduced with "unfuck proc_sysctl ->d_compare()"
> + *
> + */

Hi Joel,

Please consider also adding kernel doc entries for the other fields of
struct ctl_table_header. According to ./scripts/kernel-doc -none
they are:

  unregistering
  ctl_table_arg
  root
  set
  parent
  node
  inodes


>  struct ctl_table_header {
>  	union {
>  		struct {
>  			struct ctl_table *ctl_table;
> +			int ctl_table_size;
>  			int used;
>  			int count;
>  			int nreg;
> -- 
> 2.30.2
> 

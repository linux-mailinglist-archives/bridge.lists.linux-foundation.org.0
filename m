Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C69677D5F4
	for <lists.bridge@lfdr.de>; Wed, 16 Aug 2023 00:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182A7611BE;
	Tue, 15 Aug 2023 22:28:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182A7611BE
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m+Hvj3w2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxTI_6bpaopr; Tue, 15 Aug 2023 22:28:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 16F18605BE;
	Tue, 15 Aug 2023 22:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16F18605BE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A4EA8C008D;
	Tue, 15 Aug 2023 22:28:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC88BC0032
 for <bridge@lists.linux-foundation.org>; Tue, 15 Aug 2023 22:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A890C82009
 for <bridge@lists.linux-foundation.org>; Tue, 15 Aug 2023 22:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A890C82009
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m+Hvj3w2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GI6DFP0uqFWz for <bridge@lists.linux-foundation.org>;
 Tue, 15 Aug 2023 22:28:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A7E68200A
 for <bridge@lists.linux-foundation.org>; Tue, 15 Aug 2023 22:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A7E68200A
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aFm90R+tDTFvDBLdwRCYQE4Y41kg8AEvvcWG6AcDlHc=; b=m+Hvj3w2nGUh/z5FvuS2WaFvCP
 E9VTMTriBBsaYE1DW7gg45cfxPOHyZo+qnJy5YDlRNwx/8IEd6QSy1kFsWmCaI6Ayn2U1e18uzlwr
 1+Iy9qd60pMllaFg/MtWE7G1QlLCx82ZCCAIzB8O5VbfxRwp9DMOrRwt9Ca10lMltY10Km8PtNXu/
 L6WobTanJRf/8tEi6GPMdzrRmGdH4Dw9KByfrbTqLo06X3hWeNkANUIM+i1BPRo1BIMLMC8dpsrXD
 Hz59LovBcm5X+3VH7+EtsxrFP7ARkSjVCRHEyC2IZkI52jv17UdFdX7UcYwBUjCHLaKBVrUaPumbs
 W9PGgB4A==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1qW2VM-002iR6-1x; Tue, 15 Aug 2023 22:27:12 +0000
Date: Tue, 15 Aug 2023 15:27:12 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Joel Granados <joel.granados@gmail.com>
Message-ID: <ZNv7wOmUPpCUFnHA@bombadil.infradead.org>
References: <20230809105006.1198165-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230809105006.1198165-1-j.granados@samsung.com>
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-sctp@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Jan Karcher <jaka@linux.ibm.com>, Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Iurii Zaikin <yzaikin@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Wen Gu <guwen@linux.alibaba.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 keescook@chromium.org, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Karsten Graul <kgraul@linux.ibm.com>,
 netfilter-devel@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 00/14] sysctl: Add a size argument to
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

On Wed, Aug 09, 2023 at 12:49:52PM +0200, Joel Granados wrote:
> What?
> These commits set things up so we can start removing the sentinel elements.
> They modify sysctl and net_sysctl internals so that registering a ctl_table
> that contains a sentinel gives the same result as passing a table_size
> calculated from the ctl_table array without a sentinel. We accomplish this by
> introducing a table_size argument in the same place where procname is checked
> for NULL. The idea is for it to keep stopping when it hits ->procname == NULL,
> while the sentinel is still present. And when the sentinel is removed, it will
> stop on the table_size (thx to jani.nikula@linux.intel.com for the discussion
> that led to this). This allows us to remove sentinels from one (or several)
> files at a time.
> 
> These commits are part of a bigger set containing the removal of ctl_table sentinel
> (https://github.com/Joelgranados/linux/tree/tag/sysctl_remove_empty_elem_V3).
> The idea is to make the review process easier by chunking the 65+ commits into
> manageable pieces.

Thanks, I've dropped the old set and merged this updated one onto sysctl-next.

  Luis

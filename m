Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9015722CD53
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 749D3895A6;
	Fri, 24 Jul 2020 18:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5+3BBM8Raeu; Fri, 24 Jul 2020 18:22:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0837789495;
	Fri, 24 Jul 2020 18:22:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E78C3C004F;
	Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F3418C004C
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD54E203D0
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XD7s3WWonDrQ for <bridge@lists.linux-foundation.org>;
 Wed, 22 Jul 2020 07:56:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F113203BF
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:56:28 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id E5D696736F; Wed, 22 Jul 2020 09:56:20 +0200 (CEST)
Date: Wed, 22 Jul 2020 09:56:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Eric Biggers <ebiggers@kernel.org>
Message-ID: <20200722075620.GA26554@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-4-hch@lst.de> <20200720163748.GA1292162@gmail.com>
 <20200720174322.GA21785@lst.de> <20200720175543.GF1292162@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200720175543.GF1292162@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 03/24] net: add a new sockptr_t type
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

On Mon, Jul 20, 2020 at 10:55:43AM -0700, Eric Biggers wrote:
> On Mon, Jul 20, 2020 at 07:43:22PM +0200, Christoph Hellwig wrote:
> > On Mon, Jul 20, 2020 at 09:37:48AM -0700, Eric Biggers wrote:
> > > How does this not introduce a massive security hole when
> > > CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE?
> > > 
> > > AFAICS, userspace can pass in a pointer >= TASK_SIZE,
> > > and this code makes it be treated as a kernel pointer.
> > 
> > Yeah, we'll need to validate that before initializing the pointer.
> > 
> > But thinking this a little further:  doesn't this mean any
> > set_fs(KERNEL_DS) that has other user pointers than the one it is
> > intended for has the same issue?  Pretty much all of these are gone
> > in mainline now, but in older stable kernels there might be some
> > interesting cases, especially in the compat ioctl handlers.
> 
> Yes.  I thought that eliminating that class of bug is one of the main
> motivations for your "remove set_fs" work.  See commit 128394eff343
> ("sg_write()/bsg_write() is not fit to be called under KERNEL_DS") for a case
> where this type of bug was fixed.
> 
> Are you aware of any specific cases that weren't already fixed?  If there are
> any, they need to be urgently fixed.

current mainline has almost no set_fs left, and setsockopt seems
pretty much safe.  But if we go back a long term stable release or two
I bet I'd find one or two.

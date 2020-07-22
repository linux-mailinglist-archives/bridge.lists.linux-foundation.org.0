Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBA722CD54
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C95C28949D;
	Fri, 24 Jul 2020 18:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AorhpbQDkVQ1; Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5274688FC7;
	Fri, 24 Jul 2020 18:22:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 382B9C004C;
	Fri, 24 Jul 2020 18:22:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C6926C004C
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B59F2885E3
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-qpQCLfL7iq for <bridge@lists.linux-foundation.org>;
 Wed, 22 Jul 2020 07:57:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 630C7885D7
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 07:57:00 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id B7D966736F; Wed, 22 Jul 2020 09:56:57 +0200 (CEST)
Date: Wed, 22 Jul 2020 09:56:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Message-ID: <20200722075657.GB26554@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720204756.iengwcguikj2yrxt@ast-mbp.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200720204756.iengwcguikj2yrxt@ast-mbp.dhcp.thefacebook.com>
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
Subject: Re: [Bridge] get rid of the address_space override in setsockopt
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

On Mon, Jul 20, 2020 at 01:47:56PM -0700, Alexei Starovoitov wrote:
> > a kernel pointer.  This is something that works for most common sockopts
> > (and is something that the ePBF support relies on), but unfortunately
> > in various corner cases we either don't use the passed in length, or in
> > one case actually copy data back from setsockopt, so we unfortunately
> > can't just always do the copy in the highlevel code, which would have
> > been much nicer.
> 
> could you rebase on bpf-next tree and we can route it this way then?
> we'll also test the whole thing before applying.

The bpf-next tree is missing all my previous setsockopt cleanups, so
there series won't apply.

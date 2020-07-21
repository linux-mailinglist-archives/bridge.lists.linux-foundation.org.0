Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E7322CD50
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 077EC891D2;
	Fri, 24 Jul 2020 18:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id we0lauf80XHd; Fri, 24 Jul 2020 18:22:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32D8B89351;
	Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DF41C004E;
	Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8BBCC016F
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD32785F10
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6jGaofp1Q_xe for <bridge@lists.linux-foundation.org>;
 Tue, 21 Jul 2020 05:29:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88B1B85C4C
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:29:14 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jxkpB-00H0WY-9x; Tue, 21 Jul 2020 05:28:21 +0000
Date: Tue, 21 Jul 2020 06:28:21 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200721052821.GS2786714@ZenIV.linux.org.uk>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-3-hch@lst.de>
 <20200721024016.2talwdt5hjqvirr6@ltop.local>
 <20200721052326.GA10071@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200721052326.GA10071@lst.de>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
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
 "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [Bridge] [PATCH 02/24] bpfilter: fix up a sparse annotation
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

On Tue, Jul 21, 2020 at 07:23:26AM +0200, Christoph Hellwig wrote:
> On Tue, Jul 21, 2020 at 04:40:16AM +0200, Luc Van Oostenryck wrote:
> > >  	req.pid = current->pid;
> > >  	req.cmd = optname;
> > > -	req.addr = (long __force __user)optval;
> > > +	req.addr = (__force long)optval;
> > 
> > For casts to integers, even '__force' is not needed (since integers
> > can't be dereferenced, the concept of address-space is meaningless
> > for them, so it's never useful to warn when it's dropped and
> > '__force' is thus not needed).
> 
> That's what I thought. but if I remove it here I actually do get a
> warning:
> 
> CHECK   net/bpfilter/bpfilter_kern.c
> net/bpfilter/bpfilter_kern.c:52:21: warning: cast removes address space '__user' of expression

Cast to unsigned long.  Or to uintptr_t if you want to be fancy.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D6522CD0A
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72BFE87319;
	Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZl4T9ZjBbMI; Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E432A87309;
	Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB9B5C004E;
	Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 34440C016F
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 21F4D20468
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmZrXRPnZIvU for <bridge@lists.linux-foundation.org>;
 Tue, 21 Jul 2020 05:23:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C3ED20385
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 05:23:31 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id B86216736F; Tue, 21 Jul 2020 07:23:26 +0200 (CEST)
Date: Tue, 21 Jul 2020 07:23:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Message-ID: <20200721052326.GA10071@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-3-hch@lst.de>
 <20200721024016.2talwdt5hjqvirr6@ltop.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200721024016.2talwdt5hjqvirr6@ltop.local>
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

On Tue, Jul 21, 2020 at 04:40:16AM +0200, Luc Van Oostenryck wrote:
> >  	req.pid = current->pid;
> >  	req.cmd = optname;
> > -	req.addr = (long __force __user)optval;
> > +	req.addr = (__force long)optval;
> 
> For casts to integers, even '__force' is not needed (since integers
> can't be dereferenced, the concept of address-space is meaningless
> for them, so it's never useful to warn when it's dropped and
> '__force' is thus not needed).

That's what I thought. but if I remove it here I actually do get a
warning:

CHECK   net/bpfilter/bpfilter_kern.c
net/bpfilter/bpfilter_kern.c:52:21: warning: cast removes address space '__user' of expression

Using this recent sparse build:

hch@brick:~/work/linux$ sparse --version
v0.6.2-49-g707c5017

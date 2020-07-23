Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5322CD63
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 690FC258EB;
	Fri, 24 Jul 2020 18:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQ7jON2cpjiW; Fri, 24 Jul 2020 18:23:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3B5D5258CF;
	Fri, 24 Jul 2020 18:22:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 102A8C004C;
	Fri, 24 Jul 2020 18:22:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E106C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 16:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6969D868BF
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 16:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14D_T-woit8B for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 16:44:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FEF2864D6
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 16:44:36 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8C74368AFE; Thu, 23 Jul 2020 18:44:32 +0200 (CEST)
Date: Thu, 23 Jul 2020 18:44:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <20200723164432.GA20917@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-5-hch@lst.de>
 <CANn89iJ3LKth-iWwh0+P3D3RqtDNv4AyXkkzhXr0oSEvE_JoRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANn89iJ3LKth-iWwh0+P3D3RqtDNv4AyXkkzhXr0oSEvE_JoRQ@mail.gmail.com>
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
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 linux-wpan@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 04/26] net: add a new sockptr_t type
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

On Thu, Jul 23, 2020 at 09:40:27AM -0700, Eric Dumazet wrote:
> I am not sure why you chose sockptr_t   for something that really seems generic.
> 
> Or is it really meant to be exclusive to setsockopt() and/or getsockopt() ?
> 
> If the first user of this had been futex code, we would have used
> futexptr_t, I guess.

It was originally intended to be generic and called uptr_t, based
on me misunderstanding that Linus wanted a file operation for it,
which he absolutely didn't and hate with passion.  So the plan is to
only use it for setsockopt for now, although there are some arguments
for also using it in sendmsg/recvmsg.  There is no need to use it for
getsockopt.

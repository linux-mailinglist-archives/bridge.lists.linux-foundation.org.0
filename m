Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 166AE22DC6A
	for <lists.bridge@lfdr.de>; Sun, 26 Jul 2020 09:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88754822C2;
	Sun, 26 Jul 2020 07:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rl7GEEvkSvY0; Sun, 26 Jul 2020 07:03:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A0DC85F8F;
	Sun, 26 Jul 2020 07:03:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79D67C016F;
	Sun, 26 Jul 2020 07:03:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0412AC004C
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DFDD587831
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LTPm67WhgixO for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jul 2020 07:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2FB087832
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:03:17 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2AB2768B05; Sun, 26 Jul 2020 09:03:12 +0200 (CEST)
Date: Sun, 26 Jul 2020 09:03:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: David Miller <davem@davemloft.net>
Message-ID: <20200726070311.GA16687@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200724.154342.1433271593505001306.davem@davemloft.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, hch@lst.de,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org, kuznet@ms2.inr.ac.ru,
 linux-can@vger.kernel.org, kuba@kernel.org, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 edumazet@google.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Subject: Re: [Bridge] get rid of the address_space override in setsockopt v2
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

On Fri, Jul 24, 2020 at 03:43:42PM -0700, David Miller wrote:
> > Changes since v1:
> >  - check that users don't pass in kernel addresses
> >  - more bpfilter cleanups
> >  - cosmetic mptcp tweak
> 
> Series applied to net-next, I'm build testing and will push this out when
> that is done.

The buildbot found one warning with the isdn debug code after a few
days, here is what I think is the best fix:

---
From 6601732f7a54db5f04efba08f7e9224e5b757112 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Sun, 26 Jul 2020 09:00:09 +0200
Subject: mISDN: remove a debug printk in data_sock_setsockopt

The %p won't work with the new sockptr_t type.  But in the times of
ftrace, bpftrace and co these kinds of debug printks are pretty anyway,
so just remove the whole debug printk.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/isdn/mISDN/socket.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/isdn/mISDN/socket.c b/drivers/isdn/mISDN/socket.c
index 1b2b91479107bc..2c58a6fe6d129e 100644
--- a/drivers/isdn/mISDN/socket.c
+++ b/drivers/isdn/mISDN/socket.c
@@ -406,10 +406,6 @@ static int data_sock_setsockopt(struct socket *sock, int level, int optname,
 	struct sock *sk = sock->sk;
 	int err = 0, opt = 0;
 
-	if (*debug & DEBUG_SOCKET)
-		printk(KERN_DEBUG "%s(%p, %d, %x, %p, %d)\n", __func__, sock,
-		       level, optname, optval, len);
-
 	lock_sock(sk);
 
 	switch (optname) {
-- 
2.27.0


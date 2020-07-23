Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959C322CD60
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E99989509;
	Fri, 24 Jul 2020 18:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MU0Aa-jcpHqd; Fri, 24 Jul 2020 18:22:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 712188936A;
	Fri, 24 Jul 2020 18:22:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F7D2C0053;
	Fri, 24 Jul 2020 18:22:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC5B4C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C481424C10
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yrM5k+lzZFm7 for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 19447265E8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=F+BrwTbjEUImolj5beS1BIuUXc5PZLOrZP3HablW5rQ=; b=NzYZw+FjLfFD0JRnn0zvrsEGla
 OpCplG7VAlrQMRrrAptI8HlY36sdp/bQUwvI85NfsYGTWTrzqd0OtBgyHoxTz2+6W4uOK8qfoaK9G
 AabbZVEw0A3ckIbqpAejosSfpzclsHm09SqSs1MfIJjEQmvsARHc9VrCnCp93k6HJsEBs752xvDTq
 MEkESJuAraQOrq+EuuSuMQcP8Zlgr0/Cs8uO9VzXB8m9ITyZkg+I7JTS0fyfLD0tWYXg7MBduKZDx
 wLxCjFvBpb2yPtqLFfWnpDKDISyiVskkGGIO0oTHM7QMde4I1Zb4SAKuo6nf88HRBbYNA3r33TDOq
 x96KWjLg==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUPm-0003jf-TZ; Thu, 23 Jul 2020 06:09:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:08:43 +0200
Message-Id: <20200723060908.50081-2-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200723060908.50081-1-hch@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
Cc: linux-s390@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-decnet-user@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, dccp@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, lvs-devel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-sctp@vger.kernel.org,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-hams@vger.kernel.org, bpf@vger.kernel.org,
 linux-wpan@vger.kernel.org, linux-afs@lists.infradead.org, mptcp@lists.01.org
Subject: [Bridge] [PATCH 01/26] bpfilter: fix up a sparse annotation
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

The __user doesn't make sense when casting to an integer type, just
switch to a uintptr_t cast which also removes the need for the __force.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/bpfilter/bpfilter_kern.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bpfilter/bpfilter_kern.c b/net/bpfilter/bpfilter_kern.c
index 2c31e82cb953af..3bac5820062af1 100644
--- a/net/bpfilter/bpfilter_kern.c
+++ b/net/bpfilter/bpfilter_kern.c
@@ -44,7 +44,7 @@ static int __bpfilter_process_sockopt(struct sock *sk, int optname,
 	req.is_set = is_set;
 	req.pid = current->pid;
 	req.cmd = optname;
-	req.addr = (long __force __user)optval;
+	req.addr = (uintptr_t)optval;
 	req.len = optlen;
 	if (!bpfilter_ops.info.tgid)
 		goto out;
-- 
2.27.0


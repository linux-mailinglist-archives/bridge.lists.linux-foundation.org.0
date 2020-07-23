Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDA822CD41
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C9F824C5E;
	Fri, 24 Jul 2020 18:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hrCUmJn9EkI; Fri, 24 Jul 2020 18:23:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 828FB24F13;
	Fri, 24 Jul 2020 18:22:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FD4DC004C;
	Fri, 24 Jul 2020 18:22:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 99DEBC004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83669875DF
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jksF-bCzUOEu for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE0BE8750F
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jnNftkdWuHutn0l5/V2Gz6Qvt1s8tXbdDMQLxkwuHBo=; b=AHWMVgl+gZI3ppeRUJG22CnuN2
 mXsqGUtHr7hHIshIeM0BR3FDFu7P8hUJdDKWEDjaeFBPFzHAKS1/J2NqqrgVWAiWy0PDBIJV6MaAk
 gPot77jPYt8McodlLqHe4rYj1xwXIh3dwL7d5dP2a47D69tnzjzBjxRqbyL4qtqPcLy6LsSPLTz8/
 YOabKmimQamGM4cxDNfekHWNUuwVnDebo84hbzn4arDbH1CmgtyNxmN2OFQxyAhRHpoT37cldfrc6
 Ax/DteamlOzerpb/bK5cMQkwL7vWGfqduGUdI9Ez5lzvt3eBZC1+o7Ayqr6UYOa2Jd5AGGDGAZ45S
 4D3R2EfQ==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUPo-0003jj-5f; Thu, 23 Jul 2020 06:09:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:08:44 +0200
Message-Id: <20200723060908.50081-3-hch@lst.de>
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
Subject: [Bridge] [PATCH 02/26] net/bpfilter: split
	__bpfilter_process_sockopt
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

Split __bpfilter_process_sockopt into a low-level send request routine and
the actual setsockopt hook to split the init time ping from the actual
setsockopt processing.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/bpfilter/bpfilter_kern.c | 51 +++++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 24 deletions(-)

diff --git a/net/bpfilter/bpfilter_kern.c b/net/bpfilter/bpfilter_kern.c
index 3bac5820062af1..78d561f2c54da7 100644
--- a/net/bpfilter/bpfilter_kern.c
+++ b/net/bpfilter/bpfilter_kern.c
@@ -31,48 +31,51 @@ static void __stop_umh(void)
 		shutdown_umh();
 }
 
-static int __bpfilter_process_sockopt(struct sock *sk, int optname,
-				      char __user *optval,
-				      unsigned int optlen, bool is_set)
+static int bpfilter_send_req(struct mbox_request *req)
 {
-	struct mbox_request req;
 	struct mbox_reply reply;
 	loff_t pos;
 	ssize_t n;
-	int ret = -EFAULT;
 
-	req.is_set = is_set;
-	req.pid = current->pid;
-	req.cmd = optname;
-	req.addr = (uintptr_t)optval;
-	req.len = optlen;
 	if (!bpfilter_ops.info.tgid)
-		goto out;
+		return -EFAULT;
 	pos = 0;
-	n = kernel_write(bpfilter_ops.info.pipe_to_umh, &req, sizeof(req),
+	n = kernel_write(bpfilter_ops.info.pipe_to_umh, req, sizeof(*req),
 			   &pos);
-	if (n != sizeof(req)) {
+	if (n != sizeof(*req)) {
 		pr_err("write fail %zd\n", n);
-		__stop_umh();
-		ret = -EFAULT;
-		goto out;
+		goto stop;
 	}
 	pos = 0;
 	n = kernel_read(bpfilter_ops.info.pipe_from_umh, &reply, sizeof(reply),
 			&pos);
 	if (n != sizeof(reply)) {
 		pr_err("read fail %zd\n", n);
-		__stop_umh();
-		ret = -EFAULT;
-		goto out;
+		goto stop;
 	}
-	ret = reply.status;
-out:
-	return ret;
+	return reply.status;
+stop:
+	__stop_umh();
+	return -EFAULT;
+}
+
+static int bpfilter_process_sockopt(struct sock *sk, int optname,
+				    char __user *optval, unsigned int optlen,
+				    bool is_set)
+{
+	struct mbox_request req = {
+		.is_set		= is_set,
+		.pid		= current->pid,
+		.cmd		= optname,
+		.addr		= (uintptr_t)optval,
+		.len		= optlen,
+	};
+	return bpfilter_send_req(&req);
 }
 
 static int start_umh(void)
 {
+	struct mbox_request req = { .pid = current->pid };
 	int err;
 
 	/* fork usermode process */
@@ -82,7 +85,7 @@ static int start_umh(void)
 	pr_info("Loaded bpfilter_umh pid %d\n", pid_nr(bpfilter_ops.info.tgid));
 
 	/* health check that usermode process started correctly */
-	if (__bpfilter_process_sockopt(NULL, 0, NULL, 0, 0) != 0) {
+	if (bpfilter_send_req(&req) != 0) {
 		shutdown_umh();
 		return -EFAULT;
 	}
@@ -103,7 +106,7 @@ static int __init load_umh(void)
 	mutex_lock(&bpfilter_ops.lock);
 	err = start_umh();
 	if (!err && IS_ENABLED(CONFIG_INET)) {
-		bpfilter_ops.sockopt = &__bpfilter_process_sockopt;
+		bpfilter_ops.sockopt = &bpfilter_process_sockopt;
 		bpfilter_ops.start = &start_umh;
 	}
 	mutex_unlock(&bpfilter_ops.lock);
-- 
2.27.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE522CD6D
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 781AE896D2;
	Fri, 24 Jul 2020 18:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLulgJTgmaou; Fri, 24 Jul 2020 18:22:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81EF58955E;
	Fri, 24 Jul 2020 18:22:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F7E9C004F;
	Fri, 24 Jul 2020 18:22:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 882F6C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74B0A8986F
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XN7NWRHI84Pz for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF7638986C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=QlF9uAsII4M+JCuvUaS+q9mzPBlfDSxuvtjJe160dNk=; b=uZpwgVyKUu+sHnxI+GopWTiL6d
 DflWs0zNQjkIouFC0PpLfgVqeceaXeebrBT5Hvgv+9HSYM4TyCMCIZGNx0+eYeBh9Tk5DjZoJE2ro
 UJGhbM7n/58Y745F6R/Sl5/zL7mwtLqnrhlHyFj6SCbQnnMskl3ihsH7pO2q9RweF/QQgtU+/UtiD
 nZj8xRqnjHonqyiSEDEzjBQjJvsw20nWfWc6j5DF0O44Txm+ejF4IsqcMx+w2BErUSkUFBMz1LlXR
 2i8tmMsDMWhw3zS9ExTIp/pb+BbFtV9/+PhOtPC2fO6cdMLW1zjwttIWVfyd6a0qDsrPXfM7heqhE
 v40/SZRw==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUQC-0003nc-G6; Thu, 23 Jul 2020 06:09:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:09:01 +0200
Message-Id: <20200723060908.50081-20-hch@lst.de>
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
Subject: [Bridge] [PATCH 19/26] net/ipv6: switch ipv6_flowlabel_opt to
	sockptr_t
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

Pass a sockptr_t to prepare for set_fs-less handling of the kernel
pointer from bpf-cgroup.

Note that the get case is pretty weird in that it actually copies data
back to userspace from setsockopt.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/net/ipv6.h       |  2 +-
 net/ipv6/ip6_flowlabel.c | 16 +++++++++-------
 net/ipv6/ipv6_sockglue.c |  2 +-
 3 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/include/net/ipv6.h b/include/net/ipv6.h
index 262fc88dbd7e2f..4c9d89b5d73268 100644
--- a/include/net/ipv6.h
+++ b/include/net/ipv6.h
@@ -406,7 +406,7 @@ struct ipv6_txoptions *fl6_merge_options(struct ipv6_txoptions *opt_space,
 					 struct ip6_flowlabel *fl,
 					 struct ipv6_txoptions *fopt);
 void fl6_free_socklist(struct sock *sk);
-int ipv6_flowlabel_opt(struct sock *sk, char __user *optval, int optlen);
+int ipv6_flowlabel_opt(struct sock *sk, sockptr_t optval, int optlen);
 int ipv6_flowlabel_opt_get(struct sock *sk, struct in6_flowlabel_req *freq,
 			   int flags);
 int ip6_flowlabel_init(void);
diff --git a/net/ipv6/ip6_flowlabel.c b/net/ipv6/ip6_flowlabel.c
index 27ee6de9beffc4..6b3c315f3d461a 100644
--- a/net/ipv6/ip6_flowlabel.c
+++ b/net/ipv6/ip6_flowlabel.c
@@ -371,7 +371,7 @@ static int fl6_renew(struct ip6_flowlabel *fl, unsigned long linger, unsigned lo
 
 static struct ip6_flowlabel *
 fl_create(struct net *net, struct sock *sk, struct in6_flowlabel_req *freq,
-	  char __user *optval, int optlen, int *err_p)
+	  sockptr_t optval, int optlen, int *err_p)
 {
 	struct ip6_flowlabel *fl = NULL;
 	int olen;
@@ -401,7 +401,8 @@ fl_create(struct net *net, struct sock *sk, struct in6_flowlabel_req *freq,
 		memset(fl->opt, 0, sizeof(*fl->opt));
 		fl->opt->tot_len = sizeof(*fl->opt) + olen;
 		err = -EFAULT;
-		if (copy_from_user(fl->opt+1, optval+CMSG_ALIGN(sizeof(*freq)), olen))
+		sockptr_advance(optval, CMSG_ALIGN(sizeof(*freq)));
+		if (copy_from_sockptr(fl->opt + 1, optval, olen))
 			goto done;
 
 		msg.msg_controllen = olen;
@@ -604,7 +605,7 @@ static int ipv6_flowlabel_renew(struct sock *sk, struct in6_flowlabel_req *freq)
 }
 
 static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
-		void __user *optval, int optlen)
+		sockptr_t optval, int optlen)
 {
 	struct ipv6_fl_socklist *sfl, *sfl1 = NULL;
 	struct ip6_flowlabel *fl, *fl1 = NULL;
@@ -702,8 +703,9 @@ static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
 		goto recheck;
 
 	if (!freq->flr_label) {
-		if (copy_to_user(&((struct in6_flowlabel_req __user *) optval)->flr_label,
-				 &fl->label, sizeof(fl->label))) {
+		sockptr_advance(optval,
+				offsetof(struct in6_flowlabel_req, flr_label));
+		if (copy_to_sockptr(optval, &fl->label, sizeof(fl->label))) {
 			/* Intentionally ignore fault. */
 		}
 	}
@@ -716,13 +718,13 @@ static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
 	return err;
 }
 
-int ipv6_flowlabel_opt(struct sock *sk, char __user *optval, int optlen)
+int ipv6_flowlabel_opt(struct sock *sk, sockptr_t optval, int optlen)
 {
 	struct in6_flowlabel_req freq;
 
 	if (optlen < sizeof(freq))
 		return -EINVAL;
-	if (copy_from_user(&freq, optval, sizeof(freq)))
+	if (copy_from_sockptr(&freq, optval, sizeof(freq)))
 		return -EFAULT;
 
 	switch (freq.flr_action) {
diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
index 119dfaf5f4bb26..3897fb55372d38 100644
--- a/net/ipv6/ipv6_sockglue.c
+++ b/net/ipv6/ipv6_sockglue.c
@@ -929,7 +929,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 		retv = 0;
 		break;
 	case IPV6_FLOWLABEL_MGR:
-		retv = ipv6_flowlabel_opt(sk, optval, optlen);
+		retv = ipv6_flowlabel_opt(sk, USER_SOCKPTR(optval), optlen);
 		break;
 	case IPV6_IPSEC_POLICY:
 	case IPV6_XFRM_POLICY:
-- 
2.27.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1E022CD4F
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A93724F06;
	Fri, 24 Jul 2020 18:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlPBKqGrzjRq; Fri, 24 Jul 2020 18:23:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B51A825048;
	Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93CABC004C;
	Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DA46C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63796265BC
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bj9bl9E64Hp7 for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 410B424C10
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mHiWtESnfpmKOGnGR9J/VvKy447qDpvbyAZDADMp9hY=; b=Gi7Go2u+fkcKAHjWWVRHPnv63N
 Y5wm/NGJ3YEIP3H54J9Y/ypxMj150A7NMUhmNveZRtZJ2pYVYRsZcmgKhuKhxVxC7Redsbb+O/81i
 fGIlQ9tNAWdl1Hkfeec2Meb64han1DNgmxuwAULfzNG3E1PnD5gz87po+HuwjTdg6MQ4V5S64kIX1
 XjSOF9i0AgfaeyNKUKwaUo7i9Of3zyl20novryBp7FE/7CQWJUWOhkuRXXwHIX/ieM/X8HDOQJicd
 xfvPqnpZUvvRe7IhEIkxmwLayvXHLpSIjLSDPErKJIV6SzuPGnPxa5f+mzZafn/nkGGcW4k3MkZvM
 w6+b9nNQ==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUQD-0003np-OJ; Thu, 23 Jul 2020 06:09:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:09:02 +0200
Message-Id: <20200723060908.50081-21-hch@lst.de>
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
Subject: [Bridge] [PATCH 20/26] net/ipv6: factor out a ipv6_set_opt_hdr
	helper
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

Factour out a helper to set the IPv6 option headers from
do_ipv6_setsockopt.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/ipv6/ipv6_sockglue.c | 150 +++++++++++++++++++--------------------
 1 file changed, 75 insertions(+), 75 deletions(-)

diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
index 3897fb55372d38..90442c8366dff2 100644
--- a/net/ipv6/ipv6_sockglue.c
+++ b/net/ipv6/ipv6_sockglue.c
@@ -315,6 +315,80 @@ static int compat_ipv6_mcast_join_leave(struct sock *sk, int optname,
 	return ipv6_sock_mc_drop(sk, gr32.gr_interface, &psin6->sin6_addr);
 }
 
+static int ipv6_set_opt_hdr(struct sock *sk, int optname, void __user *optval,
+		int optlen)
+{
+	struct ipv6_pinfo *np = inet6_sk(sk);
+	struct ipv6_opt_hdr *new = NULL;
+	struct net *net = sock_net(sk);
+	struct ipv6_txoptions *opt;
+	int err;
+
+	/* hop-by-hop / destination options are privileged option */
+	if (optname != IPV6_RTHDR && !ns_capable(net->user_ns, CAP_NET_RAW))
+		return -EPERM;
+
+	/* remove any sticky options header with a zero option
+	 * length, per RFC3542.
+	 */
+	if (optlen > 0) {
+		if (!optval)
+			return -EINVAL;
+		if (optlen < sizeof(struct ipv6_opt_hdr) ||
+		    optlen & 0x7 ||
+		    optlen > 8 * 255)
+			return -EINVAL;
+
+		new = memdup_user(optval, optlen);
+		if (IS_ERR(new))
+			return PTR_ERR(new);
+		if (unlikely(ipv6_optlen(new) > optlen)) {
+			kfree(new);
+			return -EINVAL;
+		}
+	}
+
+	opt = rcu_dereference_protected(np->opt, lockdep_sock_is_held(sk));
+	opt = ipv6_renew_options(sk, opt, optname, new);
+	kfree(new);
+	if (IS_ERR(opt))
+		return PTR_ERR(opt);
+
+	/* routing header option needs extra check */
+	err = -EINVAL;
+	if (optname == IPV6_RTHDR && opt && opt->srcrt) {
+		struct ipv6_rt_hdr *rthdr = opt->srcrt;
+		switch (rthdr->type) {
+#if IS_ENABLED(CONFIG_IPV6_MIP6)
+		case IPV6_SRCRT_TYPE_2:
+			if (rthdr->hdrlen != 2 || rthdr->segments_left != 1)
+				goto sticky_done;
+			break;
+#endif
+		case IPV6_SRCRT_TYPE_4:
+		{
+			struct ipv6_sr_hdr *srh =
+				(struct ipv6_sr_hdr *)opt->srcrt;
+
+			if (!seg6_validate_srh(srh, optlen, false))
+				goto sticky_done;
+			break;
+		}
+		default:
+			goto sticky_done;
+		}
+	}
+
+	err = 0;
+	opt = ipv6_update_options(sk, opt);
+sticky_done:
+	if (opt) {
+		atomic_sub(opt->tot_len, &sk->sk_omem_alloc);
+		txopt_put(opt);
+	}
+	return err;
+}
+
 static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 		    char __user *optval, unsigned int optlen)
 {
@@ -580,82 +654,8 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 	case IPV6_RTHDRDSTOPTS:
 	case IPV6_RTHDR:
 	case IPV6_DSTOPTS:
-	{
-		struct ipv6_txoptions *opt;
-		struct ipv6_opt_hdr *new = NULL;
-
-		/* hop-by-hop / destination options are privileged option */
-		retv = -EPERM;
-		if (optname != IPV6_RTHDR && !ns_capable(net->user_ns, CAP_NET_RAW))
-			break;
-
-		/* remove any sticky options header with a zero option
-		 * length, per RFC3542.
-		 */
-		if (optlen == 0)
-			optval = NULL;
-		else if (!optval)
-			goto e_inval;
-		else if (optlen < sizeof(struct ipv6_opt_hdr) ||
-			 optlen & 0x7 || optlen > 8 * 255)
-			goto e_inval;
-		else {
-			new = memdup_user(optval, optlen);
-			if (IS_ERR(new)) {
-				retv = PTR_ERR(new);
-				break;
-			}
-			if (unlikely(ipv6_optlen(new) > optlen)) {
-				kfree(new);
-				goto e_inval;
-			}
-		}
-
-		opt = rcu_dereference_protected(np->opt,
-						lockdep_sock_is_held(sk));
-		opt = ipv6_renew_options(sk, opt, optname, new);
-		kfree(new);
-		if (IS_ERR(opt)) {
-			retv = PTR_ERR(opt);
-			break;
-		}
-
-		/* routing header option needs extra check */
-		retv = -EINVAL;
-		if (optname == IPV6_RTHDR && opt && opt->srcrt) {
-			struct ipv6_rt_hdr *rthdr = opt->srcrt;
-			switch (rthdr->type) {
-#if IS_ENABLED(CONFIG_IPV6_MIP6)
-			case IPV6_SRCRT_TYPE_2:
-				if (rthdr->hdrlen != 2 ||
-				    rthdr->segments_left != 1)
-					goto sticky_done;
-
-				break;
-#endif
-			case IPV6_SRCRT_TYPE_4:
-			{
-				struct ipv6_sr_hdr *srh = (struct ipv6_sr_hdr *)
-							  opt->srcrt;
-
-				if (!seg6_validate_srh(srh, optlen, false))
-					goto sticky_done;
-				break;
-			}
-			default:
-				goto sticky_done;
-			}
-		}
-
-		retv = 0;
-		opt = ipv6_update_options(sk, opt);
-sticky_done:
-		if (opt) {
-			atomic_sub(opt->tot_len, &sk->sk_omem_alloc);
-			txopt_put(opt);
-		}
+		retv = ipv6_set_opt_hdr(sk, optname, optval, optlen);
 		break;
-	}
 
 	case IPV6_PKTINFO:
 	{
-- 
2.27.0


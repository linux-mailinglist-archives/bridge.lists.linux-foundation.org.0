Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C8522CD70
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47B4789394;
	Fri, 24 Jul 2020 18:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7E8TH6k13cI; Fri, 24 Jul 2020 18:22:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15ED689492;
	Fri, 24 Jul 2020 18:22:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9E63C013C;
	Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46CEEC004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FFDC875F8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxm4zlWD9hSe for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D4A3875EA
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GQn0sG9CSctd3r9tXWfKFi/perePeGXKxZIJGtFsY+Q=; b=QX5kiNG9Mwf67jSYnc8F3JQRuj
 eD5Jx3XocBRQdOwUIvmulA1hMowdYmmsUZnlu3lCF7Y6mibi44Y4iDm4Zi7BOrQA6e86Pj+JHpy8/
 I6Mes3/vFGcEWZxIX8zdXJ+R38hmzbfD3PVIDhM9ohhK4YQo+mcf+zDCdHvKXG5lyVxlKNw+al3kb
 siGjFJH0RvHtOFMdBa2rF5n8Tw+Smc04NJFYwA2Pb3LYk1X9InpguI9jkCIWFJuFZSHECQ6AaAkU2
 lg/BxDDv30z3HCW4Grph5mBkzmMBR0eM0vYsJEzLIwWHzG8ep5/ecDlliCWVgjFAqGMqHjwYFaUjr
 LRdbOWgQ==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUQF-0003oA-3l; Thu, 23 Jul 2020 06:09:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:09:03 +0200
Message-Id: <20200723060908.50081-22-hch@lst.de>
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
Subject: [Bridge] [PATCH 21/26] net/ipv6: switch do_ipv6_setsockopt to
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/ipv6/ipv6_sockglue.c | 66 ++++++++++++++++++++--------------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
index 90442c8366dff2..dcd000a5a9b124 100644
--- a/net/ipv6/ipv6_sockglue.c
+++ b/net/ipv6/ipv6_sockglue.c
@@ -136,15 +136,15 @@ static bool setsockopt_needs_rtnl(int optname)
 	return false;
 }
 
-static int copy_group_source_from_user(struct group_source_req *greqs,
-		void __user *optval, int optlen)
+static int copy_group_source_from_sockptr(struct group_source_req *greqs,
+		sockptr_t optval, int optlen)
 {
 	if (in_compat_syscall()) {
 		struct compat_group_source_req gr32;
 
 		if (optlen < sizeof(gr32))
 			return -EINVAL;
-		if (copy_from_user(&gr32, optval, sizeof(gr32)))
+		if (copy_from_sockptr(&gr32, optval, sizeof(gr32)))
 			return -EFAULT;
 		greqs->gsr_interface = gr32.gsr_interface;
 		greqs->gsr_group = gr32.gsr_group;
@@ -152,7 +152,7 @@ static int copy_group_source_from_user(struct group_source_req *greqs,
 	} else {
 		if (optlen < sizeof(*greqs))
 			return -EINVAL;
-		if (copy_from_user(greqs, optval, sizeof(*greqs)))
+		if (copy_from_sockptr(greqs, optval, sizeof(*greqs)))
 			return -EFAULT;
 	}
 
@@ -160,13 +160,13 @@ static int copy_group_source_from_user(struct group_source_req *greqs,
 }
 
 static int do_ipv6_mcast_group_source(struct sock *sk, int optname,
-		void __user *optval, int optlen)
+		sockptr_t optval, int optlen)
 {
 	struct group_source_req greqs;
 	int omode, add;
 	int ret;
 
-	ret = copy_group_source_from_user(&greqs, optval, optlen);
+	ret = copy_group_source_from_sockptr(&greqs, optval, optlen);
 	if (ret)
 		return ret;
 
@@ -200,7 +200,7 @@ static int do_ipv6_mcast_group_source(struct sock *sk, int optname,
 	return ip6_mc_source(add, omode, sk, &greqs);
 }
 
-static int ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
+static int ipv6_set_mcast_msfilter(struct sock *sk, sockptr_t optval,
 		int optlen)
 {
 	struct group_filter *gsf;
@@ -211,7 +211,7 @@ static int ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
 	if (optlen > sysctl_optmem_max)
 		return -ENOBUFS;
 
-	gsf = memdup_user(optval, optlen);
+	gsf = memdup_sockptr(optval, optlen);
 	if (IS_ERR(gsf))
 		return PTR_ERR(gsf);
 
@@ -231,7 +231,7 @@ static int ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
 	return ret;
 }
 
-static int compat_ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
+static int compat_ipv6_set_mcast_msfilter(struct sock *sk, sockptr_t optval,
 		int optlen)
 {
 	const int size0 = offsetof(struct compat_group_filter, gf_slist);
@@ -251,7 +251,7 @@ static int compat_ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
 
 	gf32 = p + 4; /* we want ->gf_group and ->gf_slist aligned */
 	ret = -EFAULT;
-	if (copy_from_user(gf32, optval, optlen))
+	if (copy_from_sockptr(gf32, optval, optlen))
 		goto out_free_p;
 
 	/* numsrc >= (4G-140)/128 overflow in 32 bits */
@@ -276,14 +276,14 @@ static int compat_ipv6_set_mcast_msfilter(struct sock *sk, void __user *optval,
 }
 
 static int ipv6_mcast_join_leave(struct sock *sk, int optname,
-		void __user *optval, int optlen)
+		sockptr_t optval, int optlen)
 {
 	struct sockaddr_in6 *psin6;
 	struct group_req greq;
 
 	if (optlen < sizeof(greq))
 		return -EINVAL;
-	if (copy_from_user(&greq, optval, sizeof(greq)))
+	if (copy_from_sockptr(&greq, optval, sizeof(greq)))
 		return -EFAULT;
 
 	if (greq.gr_group.ss_family != AF_INET6)
@@ -296,14 +296,14 @@ static int ipv6_mcast_join_leave(struct sock *sk, int optname,
 }
 
 static int compat_ipv6_mcast_join_leave(struct sock *sk, int optname,
-		void __user *optval, int optlen)
+		sockptr_t optval, int optlen)
 {
 	struct compat_group_req gr32;
 	struct sockaddr_in6 *psin6;
 
 	if (optlen < sizeof(gr32))
 		return -EINVAL;
-	if (copy_from_user(&gr32, optval, sizeof(gr32)))
+	if (copy_from_sockptr(&gr32, optval, sizeof(gr32)))
 		return -EFAULT;
 
 	if (gr32.gr_group.ss_family != AF_INET6)
@@ -315,7 +315,7 @@ static int compat_ipv6_mcast_join_leave(struct sock *sk, int optname,
 	return ipv6_sock_mc_drop(sk, gr32.gr_interface, &psin6->sin6_addr);
 }
 
-static int ipv6_set_opt_hdr(struct sock *sk, int optname, void __user *optval,
+static int ipv6_set_opt_hdr(struct sock *sk, int optname, sockptr_t optval,
 		int optlen)
 {
 	struct ipv6_pinfo *np = inet6_sk(sk);
@@ -332,14 +332,14 @@ static int ipv6_set_opt_hdr(struct sock *sk, int optname, void __user *optval,
 	 * length, per RFC3542.
 	 */
 	if (optlen > 0) {
-		if (!optval)
+		if (sockptr_is_null(optval))
 			return -EINVAL;
 		if (optlen < sizeof(struct ipv6_opt_hdr) ||
 		    optlen & 0x7 ||
 		    optlen > 8 * 255)
 			return -EINVAL;
 
-		new = memdup_user(optval, optlen);
+		new = memdup_sockptr(optval, optlen);
 		if (IS_ERR(new))
 			return PTR_ERR(new);
 		if (unlikely(ipv6_optlen(new) > optlen)) {
@@ -390,7 +390,7 @@ static int ipv6_set_opt_hdr(struct sock *sk, int optname, void __user *optval,
 }
 
 static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
-		    char __user *optval, unsigned int optlen)
+		   sockptr_t optval, unsigned int optlen)
 {
 	struct ipv6_pinfo *np = inet6_sk(sk);
 	struct net *net = sock_net(sk);
@@ -398,11 +398,11 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 	int retv = -ENOPROTOOPT;
 	bool needs_rtnl = setsockopt_needs_rtnl(optname);
 
-	if (!optval)
+	if (sockptr_is_null(optval))
 		val = 0;
 	else {
 		if (optlen >= sizeof(int)) {
-			if (get_user(val, (int __user *) optval))
+			if (copy_from_sockptr(&val, optval, sizeof(val)))
 				return -EFAULT;
 		} else
 			val = 0;
@@ -411,8 +411,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 	valbool = (val != 0);
 
 	if (ip6_mroute_opt(optname))
-		return ip6_mroute_setsockopt(sk, optname, USER_SOCKPTR(optval),
-					     optlen);
+		return ip6_mroute_setsockopt(sk, optname, optval, optlen);
 
 	if (needs_rtnl)
 		rtnl_lock();
@@ -663,12 +662,13 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 
 		if (optlen == 0)
 			goto e_inval;
-		else if (optlen < sizeof(struct in6_pktinfo) || !optval)
+		else if (optlen < sizeof(struct in6_pktinfo) ||
+			 sockptr_is_null(optval))
 			goto e_inval;
 
-		if (copy_from_user(&pkt, optval, sizeof(struct in6_pktinfo))) {
-				retv = -EFAULT;
-				break;
+		if (copy_from_sockptr(&pkt, optval, sizeof(pkt))) {
+			retv = -EFAULT;
+			break;
 		}
 		if (!sk_dev_equal_l3scope(sk, pkt.ipi6_ifindex))
 			goto e_inval;
@@ -709,7 +709,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 		refcount_set(&opt->refcnt, 1);
 		opt->tot_len = sizeof(*opt) + optlen;
 		retv = -EFAULT;
-		if (copy_from_user(opt+1, optval, optlen))
+		if (copy_from_sockptr(opt + 1, optval, optlen))
 			goto done;
 
 		msg.msg_controllen = optlen;
@@ -831,7 +831,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 			break;
 
 		retv = -EFAULT;
-		if (copy_from_user(&mreq, optval, sizeof(struct ipv6_mreq)))
+		if (copy_from_sockptr(&mreq, optval, sizeof(struct ipv6_mreq)))
 			break;
 
 		if (optname == IPV6_ADD_MEMBERSHIP)
@@ -849,7 +849,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 			goto e_inval;
 
 		retv = -EFAULT;
-		if (copy_from_user(&mreq, optval, sizeof(struct ipv6_mreq)))
+		if (copy_from_sockptr(&mreq, optval, sizeof(struct ipv6_mreq)))
 			break;
 
 		if (optname == IPV6_JOIN_ANYCAST)
@@ -929,15 +929,14 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 		retv = 0;
 		break;
 	case IPV6_FLOWLABEL_MGR:
-		retv = ipv6_flowlabel_opt(sk, USER_SOCKPTR(optval), optlen);
+		retv = ipv6_flowlabel_opt(sk, optval, optlen);
 		break;
 	case IPV6_IPSEC_POLICY:
 	case IPV6_XFRM_POLICY:
 		retv = -EPERM;
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			break;
-		retv = xfrm_user_policy(sk, optname, USER_SOCKPTR(optval),
-					optlen);
+		retv = xfrm_user_policy(sk, optname, optval, optlen);
 		break;
 
 	case IPV6_ADDR_PREFERENCES:
@@ -992,7 +991,8 @@ int ipv6_setsockopt(struct sock *sk, int level, int optname,
 	if (level != SOL_IPV6)
 		return -ENOPROTOOPT;
 
-	err = do_ipv6_setsockopt(sk, level, optname, optval, optlen);
+	err = do_ipv6_setsockopt(sk, level, optname, USER_SOCKPTR(optval),
+				 optlen);
 #ifdef CONFIG_NETFILTER
 	/* we need to exclude all possible ENOPROTOOPTs except default case */
 	if (err == -ENOPROTOOPT && optname != IPV6_IPSEC_POLICY &&
-- 
2.27.0


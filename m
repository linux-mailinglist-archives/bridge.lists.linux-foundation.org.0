Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BA722CD12
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D51C87388;
	Fri, 24 Jul 2020 18:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7r0r97sL7rwJ; Fri, 24 Jul 2020 18:22:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F64E87383;
	Fri, 24 Jul 2020 18:22:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E3EFC0053;
	Fri, 24 Jul 2020 18:22:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CF1BAC004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA4BD265BC
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMQwlDc68-SE for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id F386524C10
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VrJsDbKvFjfbSXAuB6qr8lwEWZVDG/rFKzbYqdXTQsw=; b=BP2oJ8tmQCVBRqYWPgYFfXA/Y8
 +UEX3HDqU2bE68GKhF4gxLgUh3K90E6HXjo3xxAu8f+fTE1u6uOwoflRlGluSprC0/tDh5CECAmXR
 ws4kYNpIyKMNwer1y8FRw1cD5icaCR8dVtbqxbspNg1AiGDVRQVlBv+UUby3a2Y1aglZB+CXzSwEN
 iNRgmgjn4qlBww0328UUAjaiq4EUtqFlaPlQspwfU+5HMPLcPYZNClmMAu25fdwhdHRVemjN0VGSo
 5YIKCegLfUy/7d148BCjp248Ceg9Vjn8wg07F2omLkNve4wrisyahYpjR+3kjpLRDforAv1Kuolp0
 9zjpLCpg==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUPx-0003l6-Tv; Thu, 23 Jul 2020 06:09:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:08:51 +0200
Message-Id: <20200723060908.50081-10-hch@lst.de>
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
Subject: [Bridge] [PATCH 09/26] net/xfrm: switch xfrm_user_policy to
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
 include/net/xfrm.h       | 8 +++++---
 net/ipv4/ip_sockglue.c   | 3 ++-
 net/ipv6/ipv6_sockglue.c | 3 ++-
 net/xfrm/xfrm_state.c    | 6 +++---
 4 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index f9e1fda82ddfc0..5e81868b574a73 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -15,6 +15,7 @@
 #include <linux/audit.h>
 #include <linux/slab.h>
 #include <linux/refcount.h>
+#include <linux/sockptr.h>
 
 #include <net/sock.h>
 #include <net/dst.h>
@@ -1609,10 +1610,11 @@ int xfrm6_find_1stfragopt(struct xfrm_state *x, struct sk_buff *skb,
 void xfrm6_local_rxpmtu(struct sk_buff *skb, u32 mtu);
 int xfrm4_udp_encap_rcv(struct sock *sk, struct sk_buff *skb);
 int xfrm6_udp_encap_rcv(struct sock *sk, struct sk_buff *skb);
-int xfrm_user_policy(struct sock *sk, int optname,
-		     u8 __user *optval, int optlen);
+int xfrm_user_policy(struct sock *sk, int optname, sockptr_t optval,
+		     int optlen);
 #else
-static inline int xfrm_user_policy(struct sock *sk, int optname, u8 __user *optval, int optlen)
+static inline int xfrm_user_policy(struct sock *sk, int optname,
+				   sockptr_t optval, int optlen)
 {
  	return -ENOPROTOOPT;
 }
diff --git a/net/ipv4/ip_sockglue.c b/net/ipv4/ip_sockglue.c
index a5ea02d7a183eb..da933f99b5d517 100644
--- a/net/ipv4/ip_sockglue.c
+++ b/net/ipv4/ip_sockglue.c
@@ -1322,7 +1322,8 @@ static int do_ip_setsockopt(struct sock *sk, int level,
 		err = -EPERM;
 		if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
 			break;
-		err = xfrm_user_policy(sk, optname, optval, optlen);
+		err = xfrm_user_policy(sk, optname, USER_SOCKPTR(optval),
+				       optlen);
 		break;
 
 	case IP_TRANSPARENT:
diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
index add8f791229945..56a74707c61741 100644
--- a/net/ipv6/ipv6_sockglue.c
+++ b/net/ipv6/ipv6_sockglue.c
@@ -935,7 +935,8 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 		retv = -EPERM;
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			break;
-		retv = xfrm_user_policy(sk, optname, optval, optlen);
+		retv = xfrm_user_policy(sk, optname, USER_SOCKPTR(optval),
+					optlen);
 		break;
 
 	case IPV6_ADDR_PREFERENCES:
diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
index 8be2d926acc21d..69520ad3d83bfb 100644
--- a/net/xfrm/xfrm_state.c
+++ b/net/xfrm/xfrm_state.c
@@ -2264,7 +2264,7 @@ static bool km_is_alive(const struct km_event *c)
 	return is_alive;
 }
 
-int xfrm_user_policy(struct sock *sk, int optname, u8 __user *optval, int optlen)
+int xfrm_user_policy(struct sock *sk, int optname, sockptr_t optval, int optlen)
 {
 	int err;
 	u8 *data;
@@ -2274,7 +2274,7 @@ int xfrm_user_policy(struct sock *sk, int optname, u8 __user *optval, int optlen
 	if (in_compat_syscall())
 		return -EOPNOTSUPP;
 
-	if (!optval && !optlen) {
+	if (sockptr_is_null(optval) && !optlen) {
 		xfrm_sk_policy_insert(sk, XFRM_POLICY_IN, NULL);
 		xfrm_sk_policy_insert(sk, XFRM_POLICY_OUT, NULL);
 		__sk_dst_reset(sk);
@@ -2284,7 +2284,7 @@ int xfrm_user_policy(struct sock *sk, int optname, u8 __user *optval, int optlen
 	if (optlen <= 0 || optlen > PAGE_SIZE)
 		return -EMSGSIZE;
 
-	data = memdup_user(optval, optlen);
+	data = memdup_sockptr(optval, optlen);
 	if (IS_ERR(data))
 		return PTR_ERR(data);
 
-- 
2.27.0


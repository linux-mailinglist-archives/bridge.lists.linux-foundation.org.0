Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D35E22CD49
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06AC888B6E;
	Fri, 24 Jul 2020 18:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmaCS90mix6F; Fri, 24 Jul 2020 18:23:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D83F88B8F;
	Fri, 24 Jul 2020 18:22:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1FC15C004E;
	Fri, 24 Jul 2020 18:22:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8A77CC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DCF387B3D
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhOUWi74PeQR for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 12:48:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A7BBB87D05
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VrJsDbKvFjfbSXAuB6qr8lwEWZVDG/rFKzbYqdXTQsw=; b=YLVw7zkAKjTv3IGYFSz+Y5hnjy
 Mvg5nzJe+f6RLbr17FreulcNlPa/3tva7Hcq4TnkiegyTM7VB07RS3DW/f7M4kny34j81uZj0lqE9
 1WZMmlhCDNNPD2CeOV0XtKV0xTg00HWidTw7ryT5sxt2ZTMTiflfU1O8hCH320Rv1IbXtilvlOqva
 FND0AMDpxmiYWtSsupQow/oRZIWPBKol1iCO4x/tsZbmXGvRBcMWh+wnQBolSEWlrhOb9lSnLAAgU
 T9tPf5mRSDzGq0T8A/H8wC3NGjD4LqqqNH9SAHJ6FNqb3Kv2r3OsODXHdi4ep6fnIUSDRPs2oMz4f
 Gong/w1g==;
Received: from [2001:4bb8:105:4a81:2a8f:15b1:2c3:7be7] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxVD7-0004Xu-UL; Mon, 20 Jul 2020 12:48:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Mon, 20 Jul 2020 14:47:21 +0200
Message-Id: <20200720124737.118617-9-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200720124737.118617-1-hch@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
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
Subject: [Bridge] [PATCH 08/24] net/xfrm: switch xfrm_user_policy to
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


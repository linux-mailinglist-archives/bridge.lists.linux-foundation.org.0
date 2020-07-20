Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7AD22CD43
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 149B989562;
	Fri, 24 Jul 2020 18:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNJ0S-zsri4a; Fri, 24 Jul 2020 18:22:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E27678940E;
	Fri, 24 Jul 2020 18:22:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD62EC004C;
	Fri, 24 Jul 2020 18:22:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 490AFC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 45FAA8574F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luK9rWGV6YOj for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 12:48:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A6CF4855FE
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=JqWr7BncnAaw1KsTe15pYPZ3Aib5oHtxDPbe0sMml/w=; b=uWZ6jCpzKP3knqB1HbYIqdAFmE
 JG/8kt3ysyB2oyx6jw5vOzeoluSO+BWwt8WMZAh30P3716tRc/lq2aNq+FR4nWuq5scmQO2/ZsF9y
 CVYkp2Iu/+kj9A4Kb4LI3X/qjbklr889G2byiZTkmSQIOWbj30FBvtgbYw5bY+zCbho9KixHprDAM
 q6OmvoWuRk884tf85LS/cT3lh+ONS4oBVU/5escrUuBJGq32mUZirYyqwG0yKxXqwnLQC1bES8v8p
 Fr5SZi1XZZOaC5Y2wZ1QlzVqibyGLKDzTbblN474UGSM/VJ3FCsD8yLKMPVyxA0znelhoXpI5VlIZ
 Fnf4QKzw==;
Received: from [2001:4bb8:105:4a81:2a8f:15b1:2c3:7be7] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxVDh-0004dA-FX; Mon, 20 Jul 2020 12:48:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Mon, 20 Jul 2020 14:47:34 +0200
Message-Id: <20200720124737.118617-22-hch@lst.de>
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
Subject: [Bridge] [PATCH 21/24] net/udp: switch udp_lib_setsockopt to
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
 include/net/udp.h | 2 +-
 net/ipv4/udp.c    | 7 ++++---
 net/ipv6/udp.c    | 3 ++-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/include/net/udp.h b/include/net/udp.h
index 17a9e86a807638..295d52a7359827 100644
--- a/include/net/udp.h
+++ b/include/net/udp.h
@@ -306,7 +306,7 @@ struct sk_buff *skb_udp_tunnel_segment(struct sk_buff *skb,
 int udp_lib_getsockopt(struct sock *sk, int level, int optname,
 		       char __user *optval, int __user *optlen);
 int udp_lib_setsockopt(struct sock *sk, int level, int optname,
-		       char __user *optval, unsigned int optlen,
+		       sockptr_t optval, unsigned int optlen,
 		       int (*push_pending_frames)(struct sock *));
 struct sock *udp4_lib_lookup(struct net *net, __be32 saddr, __be16 sport,
 			     __be32 daddr, __be16 dport, int dif);
diff --git a/net/ipv4/udp.c b/net/ipv4/udp.c
index d4be4471c424e3..641303aa17d3dd 100644
--- a/net/ipv4/udp.c
+++ b/net/ipv4/udp.c
@@ -2532,7 +2532,7 @@ void udp_destroy_sock(struct sock *sk)
  *	Socket option code for UDP
  */
 int udp_lib_setsockopt(struct sock *sk, int level, int optname,
-		       char __user *optval, unsigned int optlen,
+		       sockptr_t optval, unsigned int optlen,
 		       int (*push_pending_frames)(struct sock *))
 {
 	struct udp_sock *up = udp_sk(sk);
@@ -2543,7 +2543,7 @@ int udp_lib_setsockopt(struct sock *sk, int level, int optname,
 	if (optlen < sizeof(int))
 		return -EINVAL;
 
-	if (get_user(val, (int __user *)optval))
+	if (copy_from_sockptr(&val, optval, sizeof(val)))
 		return -EFAULT;
 
 	valbool = val ? 1 : 0;
@@ -2651,7 +2651,8 @@ int udp_setsockopt(struct sock *sk, int level, int optname,
 		   char __user *optval, unsigned int optlen)
 {
 	if (level == SOL_UDP  ||  level == SOL_UDPLITE)
-		return udp_lib_setsockopt(sk, level, optname, optval, optlen,
+		return udp_lib_setsockopt(sk, level, optname,
+					  USER_SOCKPTR(optval), optlen,
 					  udp_push_pending_frames);
 	return ip_setsockopt(sk, level, optname, optval, optlen);
 }
diff --git a/net/ipv6/udp.c b/net/ipv6/udp.c
index 5aff0856a05b44..05353b31fa07bc 100644
--- a/net/ipv6/udp.c
+++ b/net/ipv6/udp.c
@@ -1565,7 +1565,8 @@ int udpv6_setsockopt(struct sock *sk, int level, int optname,
 		     char __user *optval, unsigned int optlen)
 {
 	if (level == SOL_UDP  ||  level == SOL_UDPLITE)
-		return udp_lib_setsockopt(sk, level, optname, optval, optlen,
+		return udp_lib_setsockopt(sk, level, optname,
+					  USER_SOCKPTR(optval), optlen,
 					  udp_v6_push_pending_frames);
 	return ipv6_setsockopt(sk, level, optname, optval, optlen);
 }
-- 
2.27.0


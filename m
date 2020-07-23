Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D749822CD37
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 49EA025506;
	Fri, 24 Jul 2020 18:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uggm5zTunAd8; Fri, 24 Jul 2020 18:22:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 1201A24F92;
	Fri, 24 Jul 2020 18:22:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF1A4C013C;
	Fri, 24 Jul 2020 18:22:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 326EEC004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C2A2265F1
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMScZcgAezdM for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id BCEB224C10
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=oT1TzeBCiE7PYsKY3KaZ4zyLReXEZMRen8bFjdM9v/g=; b=V0YG7V4rx5A1qxxjwpwI1a6uuM
 HduyTdraT6ektr3EgWlWMGz0vGlHlbYPwfQQDUrhGndXtCF7Ushl0XM427AsckNecE4SZY8H6Gj6t
 1J6QRv06PoKrwom/lYsLRBb+Zxhi9iAvOJ6uF7iqbAWuHkbaBJHUaC+w9atEfs3y7AiQuNIo8FcW8
 Vxh2iQacihv7RJDO2nzPMS3hCbItupEWN4AWE/eDraKBNott6suYIUDVqeV8CB8hxS1xFsCHEc2nX
 S0MGXj1LmMc/GCEyFvGL0MRc0Hp7dLKkAwEkA4lbfPNdLiXxLHfp06GwUz+10rsGW1yVMIDkvb7SW
 EsRGr+aA==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUPs-0003kH-8u; Thu, 23 Jul 2020 06:09:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:08:47 +0200
Message-Id: <20200723060908.50081-6-hch@lst.de>
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
Subject: [Bridge] [PATCH 05/26] net: switch copy_bpf_fprog_from_user to
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
 include/linux/filter.h | 3 ++-
 net/core/filter.c      | 6 +++---
 net/core/sock.c        | 6 ++++--
 net/packet/af_packet.c | 4 ++--
 4 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/include/linux/filter.h b/include/linux/filter.h
index 1c6b6d982bf498..d07a6e973a7d6f 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -20,6 +20,7 @@
 #include <linux/kallsyms.h>
 #include <linux/if_vlan.h>
 #include <linux/vmalloc.h>
+#include <linux/sockptr.h>
 #include <crypto/sha.h>
 
 #include <net/sch_generic.h>
@@ -1276,7 +1277,7 @@ struct bpf_sockopt_kern {
 	s32		retval;
 };
 
-int copy_bpf_fprog_from_user(struct sock_fprog *dst, void __user *src, int len);
+int copy_bpf_fprog_from_user(struct sock_fprog *dst, sockptr_t src, int len);
 
 struct bpf_sk_lookup_kern {
 	u16		family;
diff --git a/net/core/filter.c b/net/core/filter.c
index 3fa16b8c0d616a..29e3455122f772 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -77,14 +77,14 @@
 #include <net/transp_v6.h>
 #include <linux/btf_ids.h>
 
-int copy_bpf_fprog_from_user(struct sock_fprog *dst, void __user *src, int len)
+int copy_bpf_fprog_from_user(struct sock_fprog *dst, sockptr_t src, int len)
 {
 	if (in_compat_syscall()) {
 		struct compat_sock_fprog f32;
 
 		if (len != sizeof(f32))
 			return -EINVAL;
-		if (copy_from_user(&f32, src, sizeof(f32)))
+		if (copy_from_sockptr(&f32, src, sizeof(f32)))
 			return -EFAULT;
 		memset(dst, 0, sizeof(*dst));
 		dst->len = f32.len;
@@ -92,7 +92,7 @@ int copy_bpf_fprog_from_user(struct sock_fprog *dst, void __user *src, int len)
 	} else {
 		if (len != sizeof(*dst))
 			return -EINVAL;
-		if (copy_from_user(dst, src, sizeof(*dst)))
+		if (copy_from_sockptr(dst, src, sizeof(*dst)))
 			return -EFAULT;
 	}
 
diff --git a/net/core/sock.c b/net/core/sock.c
index 6da54eac2b3456..71fc7e4ddd0648 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -1063,7 +1063,8 @@ int sock_setsockopt(struct socket *sock, int level, int optname,
 	case SO_ATTACH_FILTER: {
 		struct sock_fprog fprog;
 
-		ret = copy_bpf_fprog_from_user(&fprog, optval, optlen);
+		ret = copy_bpf_fprog_from_user(&fprog, USER_SOCKPTR(optval),
+					       optlen);
 		if (!ret)
 			ret = sk_attach_filter(&fprog, sk);
 		break;
@@ -1084,7 +1085,8 @@ int sock_setsockopt(struct socket *sock, int level, int optname,
 	case SO_ATTACH_REUSEPORT_CBPF: {
 		struct sock_fprog fprog;
 
-		ret = copy_bpf_fprog_from_user(&fprog, optval, optlen);
+		ret = copy_bpf_fprog_from_user(&fprog, USER_SOCKPTR(optval),
+					       optlen);
 		if (!ret)
 			ret = sk_reuseport_attach_filter(&fprog, sk);
 		break;
diff --git a/net/packet/af_packet.c b/net/packet/af_packet.c
index c240fb5de3f014..d8d4f78f78e451 100644
--- a/net/packet/af_packet.c
+++ b/net/packet/af_packet.c
@@ -1536,7 +1536,7 @@ static void __fanout_set_data_bpf(struct packet_fanout *f, struct bpf_prog *new)
 	}
 }
 
-static int fanout_set_data_cbpf(struct packet_sock *po, char __user *data,
+static int fanout_set_data_cbpf(struct packet_sock *po, sockptr_t data,
 				unsigned int len)
 {
 	struct bpf_prog *new;
@@ -1584,7 +1584,7 @@ static int fanout_set_data(struct packet_sock *po, char __user *data,
 {
 	switch (po->fanout->type) {
 	case PACKET_FANOUT_CBPF:
-		return fanout_set_data_cbpf(po, data, len);
+		return fanout_set_data_cbpf(po, USER_SOCKPTR(data), len);
 	case PACKET_FANOUT_EBPF:
 		return fanout_set_data_ebpf(po, data, len);
 	default:
-- 
2.27.0


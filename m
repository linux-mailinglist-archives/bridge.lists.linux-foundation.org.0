Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 725B322CD08
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCDAE87DA4;
	Fri, 24 Jul 2020 18:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fw+P3OPwEzEq; Fri, 24 Jul 2020 18:22:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8D7D88893;
	Fri, 24 Jul 2020 18:21:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 958FFC004F;
	Fri, 24 Jul 2020 18:21:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 636F8C07FF
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E18E855D2
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zGOYKN27OAsK for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E9FB855BD
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=WmIks9a/wTCxBPMm3mUIfDve+aMKbFTuVLjUhhuXkXc=; b=nof+laVGHZXP6VygkDkDi1sX2z
 Mk8QWBGUizyyZ08eiROiRxQMquusa4e6/lJj2qbGiP4AoZGX9IibG3S/FG/NaMX99/JgP0ITNi8sa
 DkuxO72q+UdcdP1AApoBqnu83WPf3wLeVDxzDPJ/LCqW4IShRc4kh6BFVhiiIOC0OKDXnYCmAWNLt
 29AF8h6c87CJ0kelQay90KhSZli451wfXXgBVKhGEzQxj3ufGXCo0dlzS4ofOZPMVJVNiI22i0VtT
 JNJyXNlzEB6kS5PBA5zsLOteduzRmslRru/pM6xkSqZaXbe65M5pwQaq91g7RffKtF+nyl4X994dh
 dsrkuolQ==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJmm-00051x-2i; Fri, 17 Jul 2020 06:23:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:13 +0200
Message-Id: <20200717062331.691152-5-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:35 +0000
Cc: linux-arch@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, Alexei Starovoitov <ast@kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, linux-bluetooth@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 mptcp@lists.01.org, Chas Williams <3chas3@gmail.com>, netdev@vger.kernel.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, bpf@vger.kernel.org,
 linux-can@vger.kernel.org, linux-wpan@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH 04/22] net: simplify cBPF setsockopt compat handling
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

Add a helper that copies either a native or compat bpf_fprog from
userspace after verifying the length, and remove the compat setsockopt
handlers that now aren't required.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/filter.h |  4 ++--
 include/net/compat.h   |  1 -
 net/compat.c           | 45 +-----------------------------------------
 net/core/filter.c      | 23 +++++++++++++++++++++
 net/core/sock.c        | 30 ++++++++++------------------
 net/packet/af_packet.c | 33 ++++---------------------------
 6 files changed, 40 insertions(+), 96 deletions(-)

diff --git a/include/linux/filter.h b/include/linux/filter.h
index 0b0144752d780a..4d049c8e1fbeaa 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -502,13 +502,11 @@ static inline bool insn_is_zext(const struct bpf_insn *insn)
 		offsetof(TYPE, MEMBER);						\
 	})
 
-#ifdef CONFIG_COMPAT
 /* A struct sock_filter is architecture independent. */
 struct compat_sock_fprog {
 	u16		len;
 	compat_uptr_t	filter;	/* struct sock_filter * */
 };
-#endif
 
 struct sock_fprog_kern {
 	u16			len;
@@ -1278,4 +1276,6 @@ struct bpf_sockopt_kern {
 	s32		retval;
 };
 
+int copy_bpf_fprog_from_user(struct sock_fprog *dst, void __user *src, int len);
+
 #endif /* __LINUX_FILTER_H__ */
diff --git a/include/net/compat.h b/include/net/compat.h
index f241666117d88c..745db0d605b62b 100644
--- a/include/net/compat.h
+++ b/include/net/compat.h
@@ -61,7 +61,6 @@ int __get_compat_msghdr(struct msghdr *kmsg, struct compat_msghdr __user *umsg,
 			compat_size_t *len);
 int get_compat_msghdr(struct msghdr *, struct compat_msghdr __user *,
 		      struct sockaddr __user **, struct iovec **);
-struct sock_fprog __user *get_compat_bpf_fprog(char __user *optval);
 int put_cmsg_compat(struct msghdr*, int, int, int, void *);
 
 int cmsghdr_from_user_compat_to_kern(struct msghdr *, struct sock *,
diff --git a/net/compat.c b/net/compat.c
index 5e3041a2c37d4d..3e6c2c5ff2609c 100644
--- a/net/compat.c
+++ b/net/compat.c
@@ -335,49 +335,6 @@ void scm_detach_fds_compat(struct msghdr *kmsg, struct scm_cookie *scm)
 	__scm_destroy(scm);
 }
 
-/* allocate a 64-bit sock_fprog on the user stack for duration of syscall. */
-struct sock_fprog __user *get_compat_bpf_fprog(char __user *optval)
-{
-	struct compat_sock_fprog __user *fprog32 = (struct compat_sock_fprog __user *)optval;
-	struct sock_fprog __user *kfprog = compat_alloc_user_space(sizeof(struct sock_fprog));
-	struct compat_sock_fprog f32;
-	struct sock_fprog f;
-
-	if (copy_from_user(&f32, fprog32, sizeof(*fprog32)))
-		return NULL;
-	memset(&f, 0, sizeof(f));
-	f.len = f32.len;
-	f.filter = compat_ptr(f32.filter);
-	if (copy_to_user(kfprog, &f, sizeof(struct sock_fprog)))
-		return NULL;
-
-	return kfprog;
-}
-EXPORT_SYMBOL_GPL(get_compat_bpf_fprog);
-
-static int do_set_attach_filter(struct socket *sock, int level, int optname,
-				char __user *optval, unsigned int optlen)
-{
-	struct sock_fprog __user *kfprog;
-
-	kfprog = get_compat_bpf_fprog(optval);
-	if (!kfprog)
-		return -EFAULT;
-
-	return sock_setsockopt(sock, level, optname, (char __user *)kfprog,
-			      sizeof(struct sock_fprog));
-}
-
-static int compat_sock_setsockopt(struct socket *sock, int level, int optname,
-				char __user *optval, unsigned int optlen)
-{
-	if (optname == SO_ATTACH_FILTER ||
-	    optname == SO_ATTACH_REUSEPORT_CBPF)
-		return do_set_attach_filter(sock, level, optname,
-					    optval, optlen);
-	return sock_setsockopt(sock, level, optname, optval, optlen);
-}
-
 static int __compat_sys_setsockopt(int fd, int level, int optname,
 				   char __user *optval, unsigned int optlen)
 {
@@ -396,7 +353,7 @@ static int __compat_sys_setsockopt(int fd, int level, int optname,
 		}
 
 		if (level == SOL_SOCKET)
-			err = compat_sock_setsockopt(sock, level,
+			err = sock_setsockopt(sock, level,
 					optname, optval, optlen);
 		else if (sock->ops->compat_setsockopt)
 			err = sock->ops->compat_setsockopt(sock, level,
diff --git a/net/core/filter.c b/net/core/filter.c
index bdd2382e655d85..2bf6624796d86f 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -77,6 +77,29 @@
 #include <net/transp_v6.h>
 #include <linux/btf_ids.h>
 
+int copy_bpf_fprog_from_user(struct sock_fprog *dst, void __user *src, int len)
+{
+	if (in_compat_syscall()) {
+		struct compat_sock_fprog f32;
+
+		if (len != sizeof(f32))
+			return -EINVAL;
+		if (copy_from_user(&f32, src, sizeof(f32)))
+			return -EFAULT;
+		memset(dst, 0, sizeof(*dst));
+		dst->len = f32.len;
+		dst->filter = compat_ptr(f32.filter);
+	} else {
+		if (len != sizeof(*dst))
+			return -EINVAL;
+		if (copy_from_user(dst, src, sizeof(*dst)))
+			return -EFAULT;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(copy_bpf_fprog_from_user);
+
 /**
  *	sk_filter_trim_cap - run a packet through a socket filter
  *	@sk: sock associated with &sk_buff
diff --git a/net/core/sock.c b/net/core/sock.c
index 11d6f77dd56207..e085df79482520 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -1059,19 +1059,14 @@ int sock_setsockopt(struct socket *sock, int level, int optname,
 		ret = sock_set_timeout(&sk->sk_sndtimeo, optval, optlen, optname == SO_SNDTIMEO_OLD);
 		break;
 
-	case SO_ATTACH_FILTER:
-		ret = -EINVAL;
-		if (optlen == sizeof(struct sock_fprog)) {
-			struct sock_fprog fprog;
-
-			ret = -EFAULT;
-			if (copy_from_user(&fprog, optval, sizeof(fprog)))
-				break;
+	case SO_ATTACH_FILTER: {
+		struct sock_fprog fprog;
 
+		ret = copy_bpf_fprog_from_user(&fprog, optval, optlen);
+		if (!ret)
 			ret = sk_attach_filter(&fprog, sk);
-		}
 		break;
-
+	}
 	case SO_ATTACH_BPF:
 		ret = -EINVAL;
 		if (optlen == sizeof(u32)) {
@@ -1085,19 +1080,14 @@ int sock_setsockopt(struct socket *sock, int level, int optname,
 		}
 		break;
 
-	case SO_ATTACH_REUSEPORT_CBPF:
-		ret = -EINVAL;
-		if (optlen == sizeof(struct sock_fprog)) {
-			struct sock_fprog fprog;
-
-			ret = -EFAULT;
-			if (copy_from_user(&fprog, optval, sizeof(fprog)))
-				break;
+	case SO_ATTACH_REUSEPORT_CBPF: {
+		struct sock_fprog fprog;
 
+		ret = copy_bpf_fprog_from_user(&fprog, optval, optlen);
+		if (!ret)
 			ret = sk_reuseport_attach_filter(&fprog, sk);
-		}
 		break;
-
+	}
 	case SO_ATTACH_REUSEPORT_EBPF:
 		ret = -EINVAL;
 		if (optlen == sizeof(u32)) {
diff --git a/net/packet/af_packet.c b/net/packet/af_packet.c
index 781fee93b7d5e3..35aee9e980536d 100644
--- a/net/packet/af_packet.c
+++ b/net/packet/af_packet.c
@@ -1545,10 +1545,10 @@ static int fanout_set_data_cbpf(struct packet_sock *po, char __user *data,
 
 	if (sock_flag(&po->sk, SOCK_FILTER_LOCKED))
 		return -EPERM;
-	if (len != sizeof(fprog))
-		return -EINVAL;
-	if (copy_from_user(&fprog, data, len))
-		return -EFAULT;
+
+	ret = copy_bpf_fprog_from_user(&fprog, data, len);
+	if (ret)
+		return ret;
 
 	ret = bpf_prog_create_from_user(&new, &fprog, NULL, false);
 	if (ret)
@@ -4040,28 +4040,6 @@ static int packet_getsockopt(struct socket *sock, int level, int optname,
 	return 0;
 }
 
-
-#ifdef CONFIG_COMPAT
-static int compat_packet_setsockopt(struct socket *sock, int level, int optname,
-				    char __user *optval, unsigned int optlen)
-{
-	struct packet_sock *po = pkt_sk(sock->sk);
-
-	if (level != SOL_PACKET)
-		return -ENOPROTOOPT;
-
-	if (optname == PACKET_FANOUT_DATA &&
-	    po->fanout && po->fanout->type == PACKET_FANOUT_CBPF) {
-		optval = (char __user *)get_compat_bpf_fprog(optval);
-		if (!optval)
-			return -EFAULT;
-		optlen = sizeof(struct sock_fprog);
-	}
-
-	return packet_setsockopt(sock, level, optname, optval, optlen);
-}
-#endif
-
 static int packet_notifier(struct notifier_block *this,
 			   unsigned long msg, void *ptr)
 {
@@ -4549,9 +4527,6 @@ static const struct proto_ops packet_ops = {
 	.shutdown =	sock_no_shutdown,
 	.setsockopt =	packet_setsockopt,
 	.getsockopt =	packet_getsockopt,
-#ifdef CONFIG_COMPAT
-	.compat_setsockopt = compat_packet_setsockopt,
-#endif
 	.sendmsg =	packet_sendmsg,
 	.recvmsg =	packet_recvmsg,
 	.mmap =		packet_mmap,
-- 
2.27.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229C522CD01
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5DF4884A2;
	Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1pDnW-VGgj3d; Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FD7F890BF;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6B977C004C;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5991EC0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 479B620410
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJ0EpBRusXNi for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 44CC22040C
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=15CB9V7QI/EJP4CEaWkoXbSz4JSBsbnp24tauy2SAlc=; b=aFcX2soSjBmLa8/cRhua5QBWnT
 7gyYF7oDmYQFLRFdjsrPLADpoApsS91mlCTiDWBDRNpYne4Q4FB9+D+vEGKWN1fkd52ifFfy6y70i
 QlTP4pYrRVhtkusVcZaJS2BzoSvxYPXODbLDwD+yVF0u35uVyoBPGPUz/+ZRPXy/YWPyi7AOeziTG
 7YpC4zg3wHYdi9UDxHVd4uXYngadXhSP8kWziNbYQAOp3wIfafvDQhe5UpxM4Cihj6hY6novUL7+a
 ZABKfMAt5UbDLVDUnDhPHh6vXC0yzJO/s4rgEjJ8e65eXAKEw5RyxAO+pdFtfHGSc/YmBJY0vT/q0
 6nRGA/Eg==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJmv-00052k-DO; Fri, 17 Jul 2020 06:24:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:16 +0200
Message-Id: <20200717062331.691152-8-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
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
Subject: [Bridge] [PATCH 07/22] netfilter/arp_tables: clean up compat {get,
	set}sockopt handling
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

Merge the native and compat {get,set}sockopt handlers using
in_compat_syscall().

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/ipv4/netfilter/arp_tables.c | 85 ++++++++-------------------------
 1 file changed, 21 insertions(+), 64 deletions(-)

diff --git a/net/ipv4/netfilter/arp_tables.c b/net/ipv4/netfilter/arp_tables.c
index b167f4a5b68453..15807fb4a65f3e 100644
--- a/net/ipv4/netfilter/arp_tables.c
+++ b/net/ipv4/netfilter/arp_tables.c
@@ -787,8 +787,7 @@ static int compat_table_info(const struct xt_table_info *info,
 }
 #endif
 
-static int get_info(struct net *net, void __user *user,
-		    const int *len, int compat)
+static int get_info(struct net *net, void __user *user, const int *len)
 {
 	char name[XT_TABLE_MAXNAMELEN];
 	struct xt_table *t;
@@ -802,7 +801,7 @@ static int get_info(struct net *net, void __user *user,
 
 	name[XT_TABLE_MAXNAMELEN-1] = '\0';
 #ifdef CONFIG_COMPAT
-	if (compat)
+	if (in_compat_syscall())
 		xt_compat_lock(NFPROTO_ARP);
 #endif
 	t = xt_request_find_table_lock(net, NFPROTO_ARP, name);
@@ -812,7 +811,7 @@ static int get_info(struct net *net, void __user *user,
 #ifdef CONFIG_COMPAT
 		struct xt_table_info tmp;
 
-		if (compat) {
+		if (in_compat_syscall()) {
 			ret = compat_table_info(private, &tmp);
 			xt_compat_flush_offsets(NFPROTO_ARP);
 			private = &tmp;
@@ -837,7 +836,7 @@ static int get_info(struct net *net, void __user *user,
 	} else
 		ret = PTR_ERR(t);
 #ifdef CONFIG_COMPAT
-	if (compat)
+	if (in_compat_syscall())
 		xt_compat_unlock(NFPROTO_ARP);
 #endif
 	return ret;
@@ -998,7 +997,7 @@ static int do_replace(struct net *net, const void __user *user,
 }
 
 static int do_add_counters(struct net *net, const void __user *user,
-			   unsigned int len, int compat)
+			   unsigned int len)
 {
 	unsigned int i;
 	struct xt_counters_info tmp;
@@ -1009,7 +1008,8 @@ static int do_add_counters(struct net *net, const void __user *user,
 	struct arpt_entry *iter;
 	unsigned int addend;
 
-	paddc = xt_copy_counters_from_user(user, len, &tmp, compat);
+	paddc = xt_copy_counters_from_user(user, len, &tmp,
+					   in_compat_syscall());
 	if (IS_ERR(paddc))
 		return PTR_ERR(paddc);
 
@@ -1294,30 +1294,6 @@ static int compat_do_replace(struct net *net, void __user *user,
 	return ret;
 }
 
-static int compat_do_arpt_set_ctl(struct sock *sk, int cmd, void __user *user,
-				  unsigned int len)
-{
-	int ret;
-
-	if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
-		return -EPERM;
-
-	switch (cmd) {
-	case ARPT_SO_SET_REPLACE:
-		ret = compat_do_replace(sock_net(sk), user, len);
-		break;
-
-	case ARPT_SO_SET_ADD_COUNTERS:
-		ret = do_add_counters(sock_net(sk), user, len, 1);
-		break;
-
-	default:
-		ret = -EINVAL;
-	}
-
-	return ret;
-}
-
 static int compat_copy_entry_to_user(struct arpt_entry *e, void __user **dstptr,
 				     compat_uint_t *size,
 				     struct xt_counters *counters,
@@ -1425,29 +1401,6 @@ static int compat_get_entries(struct net *net,
 	xt_compat_unlock(NFPROTO_ARP);
 	return ret;
 }
-
-static int do_arpt_get_ctl(struct sock *, int, void __user *, int *);
-
-static int compat_do_arpt_get_ctl(struct sock *sk, int cmd, void __user *user,
-				  int *len)
-{
-	int ret;
-
-	if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
-		return -EPERM;
-
-	switch (cmd) {
-	case ARPT_SO_GET_INFO:
-		ret = get_info(sock_net(sk), user, len, 1);
-		break;
-	case ARPT_SO_GET_ENTRIES:
-		ret = compat_get_entries(sock_net(sk), user, len);
-		break;
-	default:
-		ret = do_arpt_get_ctl(sk, cmd, user, len);
-	}
-	return ret;
-}
 #endif
 
 static int do_arpt_set_ctl(struct sock *sk, int cmd, void __user *user, unsigned int len)
@@ -1459,11 +1412,16 @@ static int do_arpt_set_ctl(struct sock *sk, int cmd, void __user *user, unsigned
 
 	switch (cmd) {
 	case ARPT_SO_SET_REPLACE:
-		ret = do_replace(sock_net(sk), user, len);
+#ifdef CONFIG_COMPAT
+		if (in_compat_syscall())
+			ret = compat_do_replace(sock_net(sk), user, len);
+		else
+#endif
+			ret = do_replace(sock_net(sk), user, len);
 		break;
 
 	case ARPT_SO_SET_ADD_COUNTERS:
-		ret = do_add_counters(sock_net(sk), user, len, 0);
+		ret = do_add_counters(sock_net(sk), user, len);
 		break;
 
 	default:
@@ -1482,11 +1440,16 @@ static int do_arpt_get_ctl(struct sock *sk, int cmd, void __user *user, int *len
 
 	switch (cmd) {
 	case ARPT_SO_GET_INFO:
-		ret = get_info(sock_net(sk), user, len, 0);
+		ret = get_info(sock_net(sk), user, len);
 		break;
 
 	case ARPT_SO_GET_ENTRIES:
-		ret = get_entries(sock_net(sk), user, len);
+#ifdef CONFIG_COMPAT
+		if (in_compat_syscall())
+			ret = compat_get_entries(sock_net(sk), user, len);
+		else
+#endif
+			ret = get_entries(sock_net(sk), user, len);
 		break;
 
 	case ARPT_SO_GET_REVISION_TARGET: {
@@ -1610,15 +1573,9 @@ static struct nf_sockopt_ops arpt_sockopts = {
 	.set_optmin	= ARPT_BASE_CTL,
 	.set_optmax	= ARPT_SO_SET_MAX+1,
 	.set		= do_arpt_set_ctl,
-#ifdef CONFIG_COMPAT
-	.compat_set	= compat_do_arpt_set_ctl,
-#endif
 	.get_optmin	= ARPT_BASE_CTL,
 	.get_optmax	= ARPT_SO_GET_MAX+1,
 	.get		= do_arpt_get_ctl,
-#ifdef CONFIG_COMPAT
-	.compat_get	= compat_do_arpt_get_ctl,
-#endif
 	.owner		= THIS_MODULE,
 };
 
-- 
2.27.0


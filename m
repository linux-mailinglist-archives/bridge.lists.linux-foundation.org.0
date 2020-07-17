Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53322CD2B
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FA7388A80;
	Fri, 24 Jul 2020 18:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mTfWLPmJ8aNI; Fri, 24 Jul 2020 18:22:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BA9C88ADE;
	Fri, 24 Jul 2020 18:21:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26DA5C004C;
	Fri, 24 Jul 2020 18:21:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F632C0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0EC228615E
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07L2y4VZKYCN for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 619C886168
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=milvAVOJM4QLrRIHrecFW2GQRin+zd5F1vYyEysY7aY=; b=cLAkMx61vS6bwmd5Zd6uLyOfjO
 FgVzMLW/0vRlJLKn+atJQKqBiPdF+U5ARr5iGTBorAQzgeqPKzY3EOx2DDiJuc7ouc222OqWynkYB
 nlUfxQqT+4SONem/13J3C/tjq+V1QbpfmaLCfbOge+hsPTsTNjjZ2uiesF3elNxm9AeTZUBLIT4Oy
 HHHI4r01Su6AMPqsIEs9/fhoWHJnuCf7dAw6AhPjjRuT+wkFL12TSZF8rp40ZzOkKwQCwPbC3q8zv
 FoAxxR8D1oGS0Cmdx+S2JiPfNyC4SIkkWqK3Zotj8YceIpSQN/r2Vt2xbXJhixo8cW2/PSLlivkw9
 LJyzhv2g==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJn4-000545-1S; Fri, 17 Jul 2020 06:24:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:21 +0200
Message-Id: <20200717062331.691152-13-hch@lst.de>
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
Subject: [Bridge] [PATCH 12/22] netfilter: remove the compat argument to
	xt_copy_counters_from_user
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

Lift the in_compat_syscall() from the callers instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/netfilter/x_tables.h | 2 +-
 net/ipv4/netfilter/arp_tables.c    | 3 +--
 net/ipv4/netfilter/ip_tables.c     | 3 +--
 net/ipv6/netfilter/ip6_tables.c    | 3 +--
 net/netfilter/x_tables.c           | 9 ++++-----
 5 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/include/linux/netfilter/x_tables.h b/include/linux/netfilter/x_tables.h
index 5da88451853b28..b8b943ee7b8b66 100644
--- a/include/linux/netfilter/x_tables.h
+++ b/include/linux/netfilter/x_tables.h
@@ -302,7 +302,7 @@ int xt_data_to_user(void __user *dst, const void *src,
 		    int usersize, int size, int aligned_size);
 
 void *xt_copy_counters_from_user(const void __user *user, unsigned int len,
-				 struct xt_counters_info *info, bool compat);
+				 struct xt_counters_info *info);
 struct xt_counters *xt_counters_alloc(unsigned int counters);
 
 struct xt_table *xt_register_table(struct net *net,
diff --git a/net/ipv4/netfilter/arp_tables.c b/net/ipv4/netfilter/arp_tables.c
index 15807fb4a65f3e..2c8a4dad39d748 100644
--- a/net/ipv4/netfilter/arp_tables.c
+++ b/net/ipv4/netfilter/arp_tables.c
@@ -1008,8 +1008,7 @@ static int do_add_counters(struct net *net, const void __user *user,
 	struct arpt_entry *iter;
 	unsigned int addend;
 
-	paddc = xt_copy_counters_from_user(user, len, &tmp,
-					   in_compat_syscall());
+	paddc = xt_copy_counters_from_user(user, len, &tmp);
 	if (IS_ERR(paddc))
 		return PTR_ERR(paddc);
 
diff --git a/net/ipv4/netfilter/ip_tables.c b/net/ipv4/netfilter/ip_tables.c
index fbfad38f397949..161901dd1cae7f 100644
--- a/net/ipv4/netfilter/ip_tables.c
+++ b/net/ipv4/netfilter/ip_tables.c
@@ -1163,8 +1163,7 @@ do_add_counters(struct net *net, const void __user *user,
 	struct ipt_entry *iter;
 	unsigned int addend;
 
-	paddc = xt_copy_counters_from_user(user, len, &tmp,
-					   in_compat_syscall());
+	paddc = xt_copy_counters_from_user(user, len, &tmp);
 	if (IS_ERR(paddc))
 		return PTR_ERR(paddc);
 
diff --git a/net/ipv6/netfilter/ip6_tables.c b/net/ipv6/netfilter/ip6_tables.c
index 96c48e91e6c7f7..fd1f8f93123188 100644
--- a/net/ipv6/netfilter/ip6_tables.c
+++ b/net/ipv6/netfilter/ip6_tables.c
@@ -1179,8 +1179,7 @@ do_add_counters(struct net *net, const void __user *user, unsigned int len)
 	struct ip6t_entry *iter;
 	unsigned int addend;
 
-	paddc = xt_copy_counters_from_user(user, len, &tmp,
-					   in_compat_syscall());
+	paddc = xt_copy_counters_from_user(user, len, &tmp);
 	if (IS_ERR(paddc))
 		return PTR_ERR(paddc);
 	t = xt_find_table_lock(net, AF_INET6, tmp.name);
diff --git a/net/netfilter/x_tables.c b/net/netfilter/x_tables.c
index 99a468be4a59fb..32bab45af7e415 100644
--- a/net/netfilter/x_tables.c
+++ b/net/netfilter/x_tables.c
@@ -1033,15 +1033,14 @@ EXPORT_SYMBOL_GPL(xt_check_target);
  * @user: src pointer to userspace memory
  * @len: alleged size of userspace memory
  * @info: where to store the xt_counters_info metadata
- * @compat: true if we setsockopt call is done by 32bit task on 64bit kernel
  *
  * Copies counter meta data from @user and stores it in @info.
  *
  * vmallocs memory to hold the counters, then copies the counter data
  * from @user to the new memory and returns a pointer to it.
  *
- * If @compat is true, @info gets converted automatically to the 64bit
- * representation.
+ * If called from a compat syscall, @info gets converted automatically to the
+ * 64bit representation.
  *
  * The metadata associated with the counters is stored in @info.
  *
@@ -1049,13 +1048,13 @@ EXPORT_SYMBOL_GPL(xt_check_target);
  * If IS_ERR is false, caller has to vfree the pointer.
  */
 void *xt_copy_counters_from_user(const void __user *user, unsigned int len,
-				 struct xt_counters_info *info, bool compat)
+				 struct xt_counters_info *info)
 {
 	void *mem;
 	u64 size;
 
 #ifdef CONFIG_COMPAT
-	if (compat) {
+	if (in_compat_syscall()) {
 		/* structures only differ in size due to alignment */
 		struct compat_xt_counters_info compat_tmp;
 
-- 
2.27.0


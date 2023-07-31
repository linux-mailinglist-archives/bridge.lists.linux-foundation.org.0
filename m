Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FF17697D5
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEF8080F26;
	Mon, 31 Jul 2023 13:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEF8080F26
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=hJgIvldL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5a7Q2m_astId; Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2952080EE1;
	Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2952080EE1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94F40C008D;
	Mon, 31 Jul 2023 13:38:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1614EC0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E607081DF4
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E607081DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1R5ig4Cx2Chk for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:43 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92ACF81DEF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92ACF81DEF
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3178fa77b27so2615149f8f.2
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787862; x=1691392662;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Jc/kMJ2DPFYVg7IBTR4njcXwjXlJ4l2BnySUNEp3oa4=;
 b=hJgIvldLZA0OhGFpk11i3Fjk/VJsj9CVT2ooNjiYKvtcHZqAqiDONo5VGSYD87a86L
 MPIA6zwApEoQ52sxaPBoXFj7HyegND2jDBUHzLOdUIiZyhfVsQT/r2dN70mLtWHegO74
 a+qt+vSg07/Xjo57Djls3PrxV4aFXk3C/myDIbvcjeoscDHMDnkUmtu9ZEqF2T5VWnkQ
 /bIwD+PmPzdzzLkvtyeedsU8FopQf9Ily6U/+VGKcIMZO97c66UjPVTRrK/Wh1HHu8tG
 4xz1rppsaeXkF/0rts/CIkaA30DkRr2Sk+rAs5M2wTVET++k1/m7A/URXDWimehHstFx
 7YNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787862; x=1691392662;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Jc/kMJ2DPFYVg7IBTR4njcXwjXlJ4l2BnySUNEp3oa4=;
 b=I+ClhlRFP3HE1PBFT0vPGZP/RGoFq38SNF24I93V7Zhrfi65rGSEzbP2UYYSWK7SdS
 1sDBNs9bFtx51yDc2hMQgoCDn2hMmalyAJpZoLCADtTssfTEf1bFeFvjQvX0SW/wys1r
 wOQbpAe4gKl4zNNiSxHyTJRn/LZDDgAOW8gq4TUSPja/auxaAPRbwaKqc4yfCu4ZVqvD
 d7nMargLH1XnBVCJr2092aBCHRSuREWFAVR3Gx3tz/FyugA/xpdaPfvmN0YDIF39eSQP
 9iG6fJRmgUyPsBjlWlXYSeYmKFkmz8a32jZrC5whW6FzEJRY8ggeAfBzcb1BuVzMCG3I
 XT+g==
X-Gm-Message-State: ABy/qLYzS0q8nZUQqKN1/419STdG5XI8g4smOhuDvgLRfydaUnuk5MKg
 v7sVg7xFbzkLzVaqII0+38M=
X-Google-Smtp-Source: APBJJlEkndri5iKKElKNpvM4/AhUkEJ9RgqlNXNMfQZzTr3EtpOlGhhkXp0kRAqy1eJva50jl0udAA==
X-Received: by 2002:a5d:6390:0:b0:317:686f:4e8b with SMTP id
 p16-20020a5d6390000000b00317686f4e8bmr7490646wru.40.1690787861650; 
 Mon, 31 Jul 2023 00:17:41 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 e40-20020a5d5968000000b0031431fb40fasm12040335wri.89.2023.07.31.00.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:41 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:20 +0200
Message-Id: <20230731071728.3493794-7-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230731071728.3493794-1-j.granados@samsung.com>
References: <20230731071728.3493794-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 31 Jul 2023 13:38:30 +0000
Cc: Joel Granados <j.granados@samsung.com>, Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 06/14] sysctl: Add size to register_sysctl
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

This commit adds table_size to register_sysctl in preparation for the
removal of the sentinel elements in the ctl_table arrays (last empty
markers). And though we do *not* remove any sentinels in this commit, we
set things up by either passing the table_size explicitly or using
ARRAY_SIZE on the ctl_table arrays.

We replace the register_syctl function with a macro that will add the
ARRAY_SIZE to the new register_sysctl_sz function. In this way the
callers that are already using an array of ctl_table structs do not
change. For the callers that pass a ctl_table array pointer, we pass the
table_size to register_sysctl_sz instead of the macro.

Signed-off-by: Joel Granados <j.granados@samsung.com>
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/armv8_deprecated.c |  2 +-
 arch/s390/appldata/appldata_base.c   |  2 +-
 fs/proc/proc_sysctl.c                | 30 +++++++++++++++-------------
 include/linux/sysctl.h               | 10 ++++++++--
 kernel/ucount.c                      |  2 +-
 net/sysctl_net.c                     |  2 +-
 6 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index 1febd412b4d2..e459cfd33711 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -569,7 +569,7 @@ static void __init register_insn_emulation(struct insn_emulation *insn)
 		sysctl->extra2 = &insn->max;
 		sysctl->proc_handler = emulation_proc_handler;
 
-		register_sysctl("abi", sysctl);
+		register_sysctl_sz("abi", sysctl, 1);
 	}
 }
 
diff --git a/arch/s390/appldata/appldata_base.c b/arch/s390/appldata/appldata_base.c
index bbefe5e86bdf..3b0994625652 100644
--- a/arch/s390/appldata/appldata_base.c
+++ b/arch/s390/appldata/appldata_base.c
@@ -365,7 +365,7 @@ int appldata_register_ops(struct appldata_ops *ops)
 	ops->ctl_table[0].proc_handler = appldata_generic_handler;
 	ops->ctl_table[0].data = ops;
 
-	ops->sysctl_header = register_sysctl(appldata_proc_name, ops->ctl_table);
+	ops->sysctl_header = register_sysctl_sz(appldata_proc_name, ops->ctl_table, 1);
 	if (!ops->sysctl_header)
 		goto out;
 	return 0;
diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index b8dd78e344ff..80d3e2f61947 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -43,7 +43,7 @@ static struct ctl_table sysctl_mount_point[] = {
  */
 struct ctl_table_header *register_sysctl_mount_point(const char *path)
 {
-	return register_sysctl(path, sysctl_mount_point);
+	return register_sysctl_sz(path, sysctl_mount_point, 0);
 }
 EXPORT_SYMBOL(register_sysctl_mount_point);
 
@@ -1399,7 +1399,7 @@ struct ctl_table_header *__register_sysctl_table(
 }
 
 /**
- * register_sysctl - register a sysctl table
+ * register_sysctl_sz - register a sysctl table
  * @path: The path to the directory the sysctl table is in. If the path
  * 	doesn't exist we will create it for you.
  * @table: the table structure. The calller must ensure the life of the @table
@@ -1409,25 +1409,20 @@ struct ctl_table_header *__register_sysctl_table(
  * 	to call unregister_sysctl_table() and can instead use something like
  * 	register_sysctl_init() which does not care for the result of the syctl
  * 	registration.
+ * @table_size: The number of elements in table.
  *
  * Register a sysctl table. @table should be a filled in ctl_table
  * array. A completely 0 filled entry terminates the table.
  *
  * See __register_sysctl_table for more details.
  */
-struct ctl_table_header *register_sysctl(const char *path, struct ctl_table *table)
+struct ctl_table_header *register_sysctl_sz(const char *path, struct ctl_table *table,
+					    size_t table_size)
 {
-	int count = 0;
-	struct ctl_table *entry;
-	struct ctl_table_header t_hdr;
-
-	t_hdr.ctl_table = table;
-	list_for_each_table_entry(entry, (&t_hdr))
-		count++;
 	return __register_sysctl_table(&sysctl_table_root.default_set,
-					path, table, count);
+					path, table, table_size);
 }
-EXPORT_SYMBOL(register_sysctl);
+EXPORT_SYMBOL(register_sysctl_sz);
 
 /**
  * __register_sysctl_init() - register sysctl table to path
@@ -1452,10 +1447,17 @@ EXPORT_SYMBOL(register_sysctl);
 void __init __register_sysctl_init(const char *path, struct ctl_table *table,
 				 const char *table_name)
 {
-	struct ctl_table_header *hdr = register_sysctl(path, table);
+	int count = 0;
+	struct ctl_table *entry;
+	struct ctl_table_header t_hdr, *hdr;
+
+	t_hdr.ctl_table = table;
+	list_for_each_table_entry(entry, (&t_hdr))
+		count++;
+	hdr = register_sysctl_sz(path, table, count);
 
 	if (unlikely(!hdr)) {
-		pr_err("failed when register_sysctl %s to %s\n", table_name, path);
+		pr_err("failed when register_sysctl_sz %s to %s\n", table_name, path);
 		return;
 	}
 	kmemleak_not_leak(hdr);
diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
index 0495c858989f..b1168ae281c9 100644
--- a/include/linux/sysctl.h
+++ b/include/linux/sysctl.h
@@ -215,6 +215,9 @@ struct ctl_path {
 	const char *procname;
 };
 
+#define register_sysctl(path, table)	\
+	register_sysctl_sz(path, table, ARRAY_SIZE(table))
+
 #ifdef CONFIG_SYSCTL
 
 void proc_sys_poll_notify(struct ctl_table_poll *poll);
@@ -227,7 +230,8 @@ extern void retire_sysctl_set(struct ctl_table_set *set);
 struct ctl_table_header *__register_sysctl_table(
 	struct ctl_table_set *set,
 	const char *path, struct ctl_table *table, size_t table_size);
-struct ctl_table_header *register_sysctl(const char *path, struct ctl_table *table);
+struct ctl_table_header *register_sysctl_sz(const char *path, struct ctl_table *table,
+					    size_t table_size);
 void unregister_sysctl_table(struct ctl_table_header * table);
 
 extern int sysctl_init_bases(void);
@@ -262,7 +266,9 @@ static inline struct ctl_table_header *register_sysctl_mount_point(const char *p
 	return NULL;
 }
 
-static inline struct ctl_table_header *register_sysctl(const char *path, struct ctl_table *table)
+static inline struct ctl_table_header *register_sysctl_sz(const char *path,
+							  struct ctl_table *table,
+							  size_t table_size)
 {
 	return NULL;
 }
diff --git a/kernel/ucount.c b/kernel/ucount.c
index 2b80264bb79f..4aa6166cb856 100644
--- a/kernel/ucount.c
+++ b/kernel/ucount.c
@@ -365,7 +365,7 @@ static __init int user_namespace_sysctl_init(void)
 	 * default set so that registrations in the child sets work
 	 * properly.
 	 */
-	user_header = register_sysctl("user", empty);
+	user_header = register_sysctl_sz("user", empty, 0);
 	kmemleak_ignore(user_header);
 	BUG_ON(!user_header);
 	BUG_ON(!setup_userns_sysctls(&init_user_ns));
diff --git a/net/sysctl_net.c b/net/sysctl_net.c
index 8ee4b74bc009..d9cbbb51b143 100644
--- a/net/sysctl_net.c
+++ b/net/sysctl_net.c
@@ -101,7 +101,7 @@ __init int net_sysctl_init(void)
 	 * registering "/proc/sys/net" as an empty directory not in a
 	 * network namespace.
 	 */
-	net_header = register_sysctl("net", empty);
+	net_header = register_sysctl_sz("net", empty, 0);
 	if (!net_header)
 		goto out;
 	ret = register_pernet_subsys(&sysctl_pernet_ops);
-- 
2.30.2


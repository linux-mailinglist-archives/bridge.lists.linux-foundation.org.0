Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F8E7757DE
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 875E383083;
	Wed,  9 Aug 2023 10:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 875E383083
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=ZrEKDiJH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKN7p12q8nWQ; Wed,  9 Aug 2023 10:50:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E2F7F8300C;
	Wed,  9 Aug 2023 10:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2F7F8300C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A06CC0DD4;
	Wed,  9 Aug 2023 10:50:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26966C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E93AA82FD7
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E93AA82FD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8AMaVTSvExz for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3FEE82F19
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3FEE82F19
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-3fe4a89e8c4so40606085e9.3
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578221; x=1692183021;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Jc/kMJ2DPFYVg7IBTR4njcXwjXlJ4l2BnySUNEp3oa4=;
 b=ZrEKDiJHGQ5/dr7OKRfXsJCsgSJpcnxTM5si5Nic39v6KHOyXLbemrwE267SkiiECs
 Euupg+AbXcQfEcDDKDwXcqU3nX88C1jMyTwgsY+EU/3nqUcCE80Uug04nB5mlBI9JOOA
 m09LhW7d5q3R98tQbhdTUv67IkAr75rHut+GKyweoebD6ad+gzOjS1ZSrEjokIYBkwUm
 fj82P2Ppv7NC9/cLDUlf7rEgnCOvs/LUU1COnhpL1FlSeQjN2sOItsNptHrEztMwyG74
 xXhYJESg761GIrtisGj/YPS+mB/qtXMHp96ZnheFDHrHryoKmTOMk252TDpNPbopLOdQ
 Ehxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578221; x=1692183021;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Jc/kMJ2DPFYVg7IBTR4njcXwjXlJ4l2BnySUNEp3oa4=;
 b=DqP2jVPG7ESkr5I5KTM5dopg5e3Pdb4hSSRk9VZxW2Iw8idZMr+OgQ3OmKeWJMmfld
 pX/BKX/oPDSrnxJA7ZviriSYou1XSURZdnorDetz/s6d06eyjDQD1I+ToCKRPQDf/IBg
 t+IAXj5E0xvLYqQIqNw2q5xC+UN3qkzkcSW3g8PPG3ouvaigCPMK+KK3wfjov0jHHTlM
 3Z6+1Dm3G+wUSgMI7tFcSZRxq23rGPjRsDd5s+fZAiHXueLn6wpitMmCp6t1fECC+Fhr
 gYHu27qSsQ988cDRGehqEXYbXB9gmdbCPdjID2PVs4cl1quKPx5vN2I29JP9jhg8ZKJD
 aKbA==
X-Gm-Message-State: AOJu0YwNDoIQcK4s2ypO4aiOFZrWbfVHRh4C+K0ISo4CsqkzH0pyesFs
 LdN7XuAnYFA8kV5qi3Tc/T4=
X-Google-Smtp-Source: AGHT+IFRpJ69EzHYimaTsWMcO+t8ZetcphxcGiKKb0MaYUWCV65H7GsD+Mc9YEFF2yTU28aVQWgv+w==
X-Received: by 2002:a5d:6781:0:b0:313:f1c8:a968 with SMTP id
 v1-20020a5d6781000000b00313f1c8a968mr1370094wru.2.1691578221020; 
 Wed, 09 Aug 2023 03:50:21 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 d2-20020a5d4f82000000b0031784ac0babsm16531954wru.28.2023.08.09.03.50.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:20 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:58 +0200
Message-Id: <20230809105006.1198165-7-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230809105006.1198165-1-j.granados@samsung.com>
References: <20230809105006.1198165-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-sctp@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Jan Karcher <jaka@linux.ibm.com>, Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Iurii Zaikin <yzaikin@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Wen Gu <guwen@linux.alibaba.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 keescook@chromium.org, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Karsten Graul <kgraul@linux.ibm.com>,
 netfilter-devel@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v3 06/14] sysctl: Add size to register_sysctl
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


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A187757DC
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B20B82FA2;
	Wed,  9 Aug 2023 10:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B20B82FA2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=G5UjtZWP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o6VNN1XRsuYR; Wed,  9 Aug 2023 10:50:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9675C82FCE;
	Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9675C82FCE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BC95C0DD4;
	Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92B32C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B2D382EB6
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B2D382EB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id md2wB0H-QgVZ for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:20 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B4F482F19
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B4F482F19
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-3fe4b45a336so40025305e9.1
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578218; x=1692183018;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n8WLnI9NId3N3IQiFQMWfeeUSr/hiuHAn49PsdG5OBk=;
 b=G5UjtZWPGy6S5eNATufUnMApcMcaVXqFhOM20JKkSaaVgymfVhdqs91ExDyXsJZQZ2
 6WIhkZl5qiZ+XMOFG7HsNKewrnfixKZVTmcE/C6vRpWAGC73dBJl8R32BSB5xeFszUh7
 s0kWjTjVDfuPF3THEJLbJhiXjUlr715m1Ej7CL3B0T93D+wQO2SoFKOG7rQx/vF6WGBS
 H4FjT/JLGJbHy5Nr63+PXJWeo3+rKV9AonsSKHh9PLhA1HmoVPpqBQSwAMiqzPkJqZNL
 1GaYsLbl9RRGGmHU9YkywMyLSMw9z0q3XI31FJKM2uJlL6LAREOGqPhUAbIs7D/L7LIe
 XV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578218; x=1692183018;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=n8WLnI9NId3N3IQiFQMWfeeUSr/hiuHAn49PsdG5OBk=;
 b=gsnSZI5zRTElX4pGeJ1bAgRG/lpXBXxtvnl9uvKMKpsp6XwgA7lqoCmMxfWOn6RMV1
 J75fqGf8atgVK3RajwLCyX/hAFBeuOc3wOZ+LmhQCeBjf7OpRDWellYbbTQcgiz6ZsyW
 EpPhnJH42bheVp5mVJNA4Dpe+ybf+vhL+m+9onap92wtAxaVL+maWmnKC1HgO1zl/ijQ
 7+MgbBSqZ8tm6OxAbDHtcH5aTRUNnTs/aeu6n1InwqoyFwQRn9RBfczlGnkjTfExCkeL
 XDngpFDtn9hgRlp4d8OySVnBt2B+ZMJ3TDH975hzpyzb2cLj1Qp2a/XHgexXefPNrL2s
 yd2w==
X-Gm-Message-State: AOJu0YyCVmiDsYHhvXbZoc/J+LcDKEhIdRdGSSq1F2eoSKGaLGYL/D6n
 5kYMjUwz0WkFSAbdEyYyFqY=
X-Google-Smtp-Source: AGHT+IH/57yPWk/NifMUsdcRzlFAS1Fjg53aJ6vQ4JPEzLZ2XFL7yl3WCwkfMZUhxANmN8BCoOClzQ==
X-Received: by 2002:a7b:cbd6:0:b0:3fc:7eb:1119 with SMTP id
 n22-20020a7bcbd6000000b003fc07eb1119mr1914043wmi.15.1691578218519; 
 Wed, 09 Aug 2023 03:50:18 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 c9-20020a056000104900b00317d2be2e59sm15087933wrx.73.2023.08.09.03.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:18 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:57 +0200
Message-Id: <20230809105006.1198165-6-j.granados@samsung.com>
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
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v3 05/14] sysctl: Add a size arg to
	__register_sysctl_table
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

We make these changes in order to prepare __register_sysctl_table and
its callers for when we remove the sentinel element (empty element at
the end of ctl_table arrays). We don't actually remove any sentinels in
this commit, but we *do* make sure to use ARRAY_SIZE so the table_size
is available when the removal occurs.

We add a table_size argument to __register_sysctl_table and adjust
callers, all of which pass ctl_table pointers and need an explicit call
to ARRAY_SIZE. We implement a size calculation in register_net_sysctl in
order to forward the size of the array pointer received from the network
register calls.

The new table_size argument does not yet have any effect in the
init_header call which is still dependent on the sentinel's presence.
table_size *does* however drive the `kzalloc` allocation in
__register_sysctl_table with no adverse effects as the allocated memory
is either one element greater than the calculated ctl_table array (for
the calls in ipc_sysctl.c, mq_sysctl.c and ucount.c) or the exact size
of the calculated ctl_table array (for the call from sysctl_net.c and
register_sysctl). This approach will allows us to "just" remove the
sentinel without further changes to __register_sysctl_table as
table_size will represent the exact size for all the callers at that
point.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/proc/proc_sysctl.c  | 23 ++++++++++++-----------
 include/linux/sysctl.h |  2 +-
 ipc/ipc_sysctl.c       |  4 +++-
 ipc/mq_sysctl.c        |  4 +++-
 kernel/ucount.c        |  3 ++-
 net/sysctl_net.c       |  8 +++++++-
 6 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index fa1438f1a355..b8dd78e344ff 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -1312,6 +1312,7 @@ static struct ctl_dir *sysctl_mkdir_p(struct ctl_dir *dir, const char *path)
  * 	 should not be free'd after registration. So it should not be
  * 	 used on stack. It can either be a global or dynamically allocated
  * 	 by the caller and free'd later after sysctl unregistration.
+ * @table_size : The number of elements in table
  *
  * Register a sysctl table hierarchy. @table should be a filled in ctl_table
  * array. A completely 0 filled entry terminates the table.
@@ -1354,27 +1355,20 @@ static struct ctl_dir *sysctl_mkdir_p(struct ctl_dir *dir, const char *path)
  */
 struct ctl_table_header *__register_sysctl_table(
 	struct ctl_table_set *set,
-	const char *path, struct ctl_table *table)
+	const char *path, struct ctl_table *table, size_t table_size)
 {
 	struct ctl_table_root *root = set->dir.header.root;
 	struct ctl_table_header *header;
-	struct ctl_table_header h_tmp;
 	struct ctl_dir *dir;
-	struct ctl_table *entry;
 	struct ctl_node *node;
-	int nr_entries = 0;
-
-	h_tmp.ctl_table = table;
-	list_for_each_table_entry(entry, (&h_tmp))
-		nr_entries++;
 
 	header = kzalloc(sizeof(struct ctl_table_header) +
-			 sizeof(struct ctl_node)*nr_entries, GFP_KERNEL_ACCOUNT);
+			 sizeof(struct ctl_node)*table_size, GFP_KERNEL_ACCOUNT);
 	if (!header)
 		return NULL;
 
 	node = (struct ctl_node *)(header + 1);
-	init_header(header, root, set, node, table, nr_entries);
+	init_header(header, root, set, node, table, table_size);
 	if (sysctl_check_table(path, header))
 		goto fail;
 
@@ -1423,8 +1417,15 @@ struct ctl_table_header *__register_sysctl_table(
  */
 struct ctl_table_header *register_sysctl(const char *path, struct ctl_table *table)
 {
+	int count = 0;
+	struct ctl_table *entry;
+	struct ctl_table_header t_hdr;
+
+	t_hdr.ctl_table = table;
+	list_for_each_table_entry(entry, (&t_hdr))
+		count++;
 	return __register_sysctl_table(&sysctl_table_root.default_set,
-					path, table);
+					path, table, count);
 }
 EXPORT_SYMBOL(register_sysctl);
 
diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
index 33252ad58ebe..0495c858989f 100644
--- a/include/linux/sysctl.h
+++ b/include/linux/sysctl.h
@@ -226,7 +226,7 @@ extern void retire_sysctl_set(struct ctl_table_set *set);
 
 struct ctl_table_header *__register_sysctl_table(
 	struct ctl_table_set *set,
-	const char *path, struct ctl_table *table);
+	const char *path, struct ctl_table *table, size_t table_size);
 struct ctl_table_header *register_sysctl(const char *path, struct ctl_table *table);
 void unregister_sysctl_table(struct ctl_table_header * table);
 
diff --git a/ipc/ipc_sysctl.c b/ipc/ipc_sysctl.c
index ef313ecfb53a..8c62e443f78b 100644
--- a/ipc/ipc_sysctl.c
+++ b/ipc/ipc_sysctl.c
@@ -259,7 +259,9 @@ bool setup_ipc_sysctls(struct ipc_namespace *ns)
 				tbl[i].data = NULL;
 		}
 
-		ns->ipc_sysctls = __register_sysctl_table(&ns->ipc_set, "kernel", tbl);
+		ns->ipc_sysctls = __register_sysctl_table(&ns->ipc_set,
+							  "kernel", tbl,
+							  ARRAY_SIZE(ipc_sysctls));
 	}
 	if (!ns->ipc_sysctls) {
 		kfree(tbl);
diff --git a/ipc/mq_sysctl.c b/ipc/mq_sysctl.c
index fbf6a8b93a26..ebb5ed81c151 100644
--- a/ipc/mq_sysctl.c
+++ b/ipc/mq_sysctl.c
@@ -109,7 +109,9 @@ bool setup_mq_sysctls(struct ipc_namespace *ns)
 				tbl[i].data = NULL;
 		}
 
-		ns->mq_sysctls = __register_sysctl_table(&ns->mq_set, "fs/mqueue", tbl);
+		ns->mq_sysctls = __register_sysctl_table(&ns->mq_set,
+							 "fs/mqueue", tbl,
+							 ARRAY_SIZE(mq_sysctls));
 	}
 	if (!ns->mq_sysctls) {
 		kfree(tbl);
diff --git a/kernel/ucount.c b/kernel/ucount.c
index ee8e57fd6f90..2b80264bb79f 100644
--- a/kernel/ucount.c
+++ b/kernel/ucount.c
@@ -104,7 +104,8 @@ bool setup_userns_sysctls(struct user_namespace *ns)
 		for (i = 0; i < UCOUNT_COUNTS; i++) {
 			tbl[i].data = &ns->ucount_max[i];
 		}
-		ns->sysctls = __register_sysctl_table(&ns->set, "user", tbl);
+		ns->sysctls = __register_sysctl_table(&ns->set, "user", tbl,
+						      ARRAY_SIZE(user_table));
 	}
 	if (!ns->sysctls) {
 		kfree(tbl);
diff --git a/net/sysctl_net.c b/net/sysctl_net.c
index 4b45ed631eb8..8ee4b74bc009 100644
--- a/net/sysctl_net.c
+++ b/net/sysctl_net.c
@@ -163,10 +163,16 @@ static void ensure_safe_net_sysctl(struct net *net, const char *path,
 struct ctl_table_header *register_net_sysctl(struct net *net,
 	const char *path, struct ctl_table *table)
 {
+	int count = 0;
+	struct ctl_table *entry;
+
 	if (!net_eq(net, &init_net))
 		ensure_safe_net_sysctl(net, path, table);
 
-	return __register_sysctl_table(&net->sysctls, path, table);
+	for (entry = table; entry->procname; entry++)
+		count++;
+
+	return __register_sysctl_table(&net->sysctls, path, table, count);
 }
 EXPORT_SYMBOL_GPL(register_net_sysctl);
 
-- 
2.30.2


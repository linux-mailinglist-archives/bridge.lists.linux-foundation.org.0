Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAF57697D1
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CA3040BE9;
	Mon, 31 Jul 2023 13:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CA3040BE9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=MMJ3zmlm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwkH7zJvfD5D; Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AD81E40BCD;
	Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD81E40BCD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 481D9C0DDB;
	Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7899C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7600981DF5
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7600981DF5
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=MMJ3zmlm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NxT-n_H9lXBs for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:48 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E37A481DEF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E37A481DEF
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2b9b50be31aso60442251fa.3
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787866; x=1691392666;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y0Ehqjwr7n7aalL24v3eoFH6zkXkMLmEA1uyOzpkdUI=;
 b=MMJ3zmlm+ZJSjUcgcBWQWrwaggsjh94Z2AR980Bf99gKqQJUyC2ds+8t0ZeFBA6SE5
 24bUAx+92gKv6CUrTwCkMK8kfM+dwMVGnHaj/AIXPoADG9x3rQAur+o+St1Eok7ymlce
 AF4RpYKX37AcRilTHnU72J6udZJqoz3jQg/7wCljI1W/KcTklcvbrGsKWCJv+nVB8G5x
 hEp+AlCxMyzzLla50oNzqDrTH/0qUVyZK/xeXS7jSsjAu2wovGv41EdSJWQh2uoqZ6Vt
 jmE7aEISXo5G9dsumdaGNwwcCF3PIOj/Z3gamIsUiNsCIUgk2qMpgg40uc6qs9aYb63F
 3W6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787866; x=1691392666;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y0Ehqjwr7n7aalL24v3eoFH6zkXkMLmEA1uyOzpkdUI=;
 b=kGBFVZH4D7r3prjqVlIlc8JD0Yum5TraKn3fj/L9WANYb7DPeFXCXuUvgrtW4Ghzfj
 2spxN/JjjFWJnspL6qc6tAyRHRJ+n7AN1+sQtdg9aEF77dmb3h4xqankt7pu41IG9M0f
 wo9/GNiFfV3IxbdKgw2dtH2bFlvaWKF8uwIiKE/Q17it5viobA4JcmStglKbw3lzPIc3
 JPQfZnBnNIg1Kk1iE0mgtH+SNQoVfzu1BU0rIlbQWD6Z8Ir9Sa/Mqm0CitTRceyAIzjQ
 TVkewx299Fy8qT9C/q31n0SsTDb78dDywJe+0OMCupuPhbr1qDln41Sgm0xdw3BS7gy7
 pjbA==
X-Gm-Message-State: ABy/qLb01Xagm1D0ksj3ktaLt1Y1Z7Gn4kUvO4FyeXfaQk+yJDK4EP3Y
 vhSf/R34qKOi8G2HZqwh6DA=
X-Google-Smtp-Source: APBJJlFF1k1XPdJyinXXL06Hcxxg+HVkyLmTOsHve4wKOdZvgvUFkTAe++yLIQ35HRVigMBvfSHChA==
X-Received: by 2002:a2e:3e17:0:b0:2b6:e2cd:20f5 with SMTP id
 l23-20020a2e3e17000000b002b6e2cd20f5mr6347509lja.9.1690787865727; 
 Mon, 31 Jul 2023 00:17:45 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 3-20020a05600c22c300b003fe13c3ece7sm6432930wmg.10.2023.07.31.00.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:45 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:22 +0200
Message-Id: <20230731071728.3493794-9-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v2 08/14] sysctl: Add size to register_net_sysctl
	function
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

This commit adds size to the register_net_sysctl indirection function to
facilitate the removal of the sentinel elements (last empty markers)
from the ctl_table arrays. Though we don't actually remove any sentinels
in this commit, register_net_sysctl* now has the capability of
forwarding table_size for when that happens.

We create a new function register_net_sysctl_sz with an extra size
argument. A macro replaces the existing register_net_sysctl. The size in
the macro is SIZE_MAX instead of ARRAY_SIZE to avoid compilation errors
while we systematically migrate to register_net_sysctl_sz. Will change
to ARRAY_SIZE in subsequent commits.

Care is taken to add table_size to the stopping criteria in such a way
that when we remove the empty sentinel element, it will continue
stopping in the last element of the ctl_table array.

Signed-off-by: Joel Granados <j.granados@samsung.com>
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 include/net/net_namespace.h | 10 ++++++----
 net/sysctl_net.c            | 22 +++++++++++++---------
 2 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/include/net/net_namespace.h b/include/net/net_namespace.h
index 78beaa765c73..e4e5fe75a281 100644
--- a/include/net/net_namespace.h
+++ b/include/net/net_namespace.h
@@ -469,15 +469,17 @@ void unregister_pernet_device(struct pernet_operations *);
 
 struct ctl_table;
 
+#define register_net_sysctl(net, path, table)	\
+	register_net_sysctl_sz(net, path, table, SIZE_MAX)
 #ifdef CONFIG_SYSCTL
 int net_sysctl_init(void);
-struct ctl_table_header *register_net_sysctl(struct net *net, const char *path,
-					     struct ctl_table *table);
+struct ctl_table_header *register_net_sysctl_sz(struct net *net, const char *path,
+					     struct ctl_table *table, size_t table_size);
 void unregister_net_sysctl_table(struct ctl_table_header *header);
 #else
 static inline int net_sysctl_init(void) { return 0; }
-static inline struct ctl_table_header *register_net_sysctl(struct net *net,
-	const char *path, struct ctl_table *table)
+static inline struct ctl_table_header *register_net_sysctl_sz(struct net *net,
+	const char *path, struct ctl_table *table, size_t table_size)
 {
 	return NULL;
 }
diff --git a/net/sysctl_net.c b/net/sysctl_net.c
index d9cbbb51b143..051ed5f6fc93 100644
--- a/net/sysctl_net.c
+++ b/net/sysctl_net.c
@@ -122,12 +122,13 @@ __init int net_sysctl_init(void)
  *    allocated.
  */
 static void ensure_safe_net_sysctl(struct net *net, const char *path,
-				   struct ctl_table *table)
+				   struct ctl_table *table, size_t table_size)
 {
 	struct ctl_table *ent;
 
 	pr_debug("Registering net sysctl (net %p): %s\n", net, path);
-	for (ent = table; ent->procname; ent++) {
+	ent = table;
+	for (size_t i = 0; i < table_size && ent->procname; ent++, i++) {
 		unsigned long addr;
 		const char *where;
 
@@ -160,21 +161,24 @@ static void ensure_safe_net_sysctl(struct net *net, const char *path,
 	}
 }
 
-struct ctl_table_header *register_net_sysctl(struct net *net,
-	const char *path, struct ctl_table *table)
+struct ctl_table_header *register_net_sysctl_sz(struct net *net,
+						const char *path,
+						struct ctl_table *table,
+						size_t table_size)
 {
-	int count = 0;
+	int count;
 	struct ctl_table *entry;
 
 	if (!net_eq(net, &init_net))
-		ensure_safe_net_sysctl(net, path, table);
+		ensure_safe_net_sysctl(net, path, table, table_size);
 
-	for (entry = table; entry->procname; entry++)
-		count++;
+	entry = table;
+	for (count = 0 ; count < table_size && entry->procname; entry++, count++)
+		;
 
 	return __register_sysctl_table(&net->sysctls, path, table, count);
 }
-EXPORT_SYMBOL_GPL(register_net_sysctl);
+EXPORT_SYMBOL_GPL(register_net_sysctl_sz);
 
 void unregister_net_sysctl_table(struct ctl_table_header *header)
 {
-- 
2.30.2


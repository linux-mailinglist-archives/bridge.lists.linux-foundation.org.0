Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 608F27697CF
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2914141741;
	Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2914141741
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=oqsIryt2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gA4WRLAClReA; Mon, 31 Jul 2023 13:38:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B590E40986;
	Mon, 31 Jul 2023 13:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B590E40986
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B18C2C0DDB;
	Mon, 31 Jul 2023 13:38:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 005FAC0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF3E560B32
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF3E560B32
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=oqsIryt2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjM8uk1g1Fll for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:36 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 391E0608A5
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 391E0608A5
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-3fbc54cab6fso38846665e9.0
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787854; x=1691392654;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rF1J0XzJl2jEuCsHx7nkNs1OdRX43SORnh/9oIIv32k=;
 b=oqsIryt2GxpgDCAITNIaXCxHDdR3cVtpe2f7ZX5yNWH+iIKTDyP9HWjuJrFs2+sMti
 nz/dszslpzNl5CmOVyIxo9flstqLOG9Lkm0NZCdBEnmTU+I1vw89cMQ0SF9WwdKUoM4I
 XcWmm1bGPvIhG5CX3epdf8PQz1b9WroQTsn7rnMMDg3nS9g5zr+JNBzD7ERJU2+AinRX
 MHXofl3ANcJEAvB+CVk869XpKrsp2b0FvWFR9bdzEstXBE+7GTB2bqaK0C1x6sILTPh1
 c3jM3t7rPPIdEypAnu4qsrcw5JUJFj3cl1pq/Q4VBS9yMtigqyYg0I4nF13M1FXKdD6i
 UhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787854; x=1691392654;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rF1J0XzJl2jEuCsHx7nkNs1OdRX43SORnh/9oIIv32k=;
 b=csOX3Nxf97vPsFp4NH5vocY7rlRnj/3kMc+ZF6Xm4USlW76TLBuCsHxgFAeriscMxI
 dhebkViPnIHDTWa9ZCCIgQM8kiWen9UfX5UCLuU4u775Wa03FjRG1r/SU6HQGLop8Ut1
 wBnpnmUc+sBJ0y/MNVqKxTe+u6EEfGX/Il2hg0NE7gHDXzZqiMYoWWMbjAjde+FMAWg9
 CKqeE4sxmo9VhnCy7PM23/QbvHTs92WynU5XOtyO9fao24yeLw4c1e43eOQsKLHytLFM
 3+eUT+mRANWm/CStY68I+48xIPLewbSSKhVZNMjBHNzwkCV7XP3edsfcK7oIMXDeZg8a
 IDdQ==
X-Gm-Message-State: ABy/qLa3ToJceaXjslpvhgNVxfuydDSomh+bINnjaFEpZxxrNiwo/qem
 iULum0HDsNYN/M6YcJQpqoU=
X-Google-Smtp-Source: APBJJlH/snPYxm7GXwa1Rggof5k5STEqlwm0FtiAchadIGMCtE1ufLHfEJ1/mE1z3ZZ7UCj5VHH5Tw==
X-Received: by 2002:a5d:60cb:0:b0:316:f3f3:a1db with SMTP id
 x11-20020a5d60cb000000b00316f3f3a1dbmr5784721wrt.32.1690787853763; 
 Mon, 31 Jul 2023 00:17:33 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 m14-20020adffa0e000000b003177e9b2e64sm11978068wrr.90.2023.07.31.00.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:33 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:16 +0200
Message-Id: <20230731071728.3493794-3-j.granados@samsung.com>
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
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 02/14] sysctl: Use ctl_table_header in
	list_for_each_table_entry
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

We replace the ctl_table with the ctl_table_header pointer in
list_for_each_table_entry which is the macro responsible for traversing
the ctl_table arrays. This is a preparation commit that will make it
easier to add the ctl_table array size (that will be added to
ctl_table_header in subsequent commits) to the already existing loop
logic based on empty ctl_table elements (so called sentinels).

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/proc/proc_sysctl.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 94d71446da39..884460b0385b 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -19,8 +19,8 @@
 #include <linux/kmemleak.h>
 #include "internal.h"
 
-#define list_for_each_table_entry(entry, table) \
-	for ((entry) = (table); (entry)->procname; (entry)++)
+#define list_for_each_table_entry(entry, header) \
+	for ((entry) = (header->ctl_table); (entry)->procname; (entry)++)
 
 static const struct dentry_operations proc_sys_dentry_operations;
 static const struct file_operations proc_sys_file_operations;
@@ -204,7 +204,7 @@ static void init_header(struct ctl_table_header *head,
 	if (node) {
 		struct ctl_table *entry;
 
-		list_for_each_table_entry(entry, table) {
+		list_for_each_table_entry(entry, head) {
 			node->header = head;
 			node++;
 		}
@@ -215,7 +215,7 @@ static void erase_header(struct ctl_table_header *head)
 {
 	struct ctl_table *entry;
 
-	list_for_each_table_entry(entry, head->ctl_table)
+	list_for_each_table_entry(entry, head)
 		erase_entry(head, entry);
 }
 
@@ -242,7 +242,7 @@ static int insert_header(struct ctl_dir *dir, struct ctl_table_header *header)
 	err = insert_links(header);
 	if (err)
 		goto fail_links;
-	list_for_each_table_entry(entry, header->ctl_table) {
+	list_for_each_table_entry(entry, header) {
 		err = insert_entry(header, entry);
 		if (err)
 			goto fail;
@@ -1129,7 +1129,7 @@ static int sysctl_check_table(const char *path, struct ctl_table_header *header)
 {
 	struct ctl_table *entry;
 	int err = 0;
-	list_for_each_table_entry(entry, header->ctl_table) {
+	list_for_each_table_entry(entry, header) {
 		if ((entry->proc_handler == proc_dostring) ||
 		    (entry->proc_handler == proc_dobool) ||
 		    (entry->proc_handler == proc_dointvec) ||
@@ -1169,7 +1169,7 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_
 
 	name_bytes = 0;
 	nr_entries = 0;
-	list_for_each_table_entry(entry, head->ctl_table) {
+	list_for_each_table_entry(entry, head) {
 		nr_entries++;
 		name_bytes += strlen(entry->procname) + 1;
 	}
@@ -1188,7 +1188,7 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_
 	link_name = (char *)&link_table[nr_entries + 1];
 	link = link_table;
 
-	list_for_each_table_entry(entry, head->ctl_table) {
+	list_for_each_table_entry(entry, head) {
 		int len = strlen(entry->procname) + 1;
 		memcpy(link_name, entry->procname, len);
 		link->procname = link_name;
@@ -1211,7 +1211,7 @@ static bool get_links(struct ctl_dir *dir,
 	struct ctl_table *entry, *link;
 
 	/* Are there links available for every entry in table? */
-	list_for_each_table_entry(entry, header->ctl_table) {
+	list_for_each_table_entry(entry, header) {
 		const char *procname = entry->procname;
 		link = find_entry(&tmp_head, dir, procname, strlen(procname));
 		if (!link)
@@ -1224,7 +1224,7 @@ static bool get_links(struct ctl_dir *dir,
 	}
 
 	/* The checks passed.  Increase the registration count on the links */
-	list_for_each_table_entry(entry, header->ctl_table) {
+	list_for_each_table_entry(entry, header) {
 		const char *procname = entry->procname;
 		link = find_entry(&tmp_head, dir, procname, strlen(procname));
 		tmp_head->nreg++;
@@ -1356,12 +1356,14 @@ struct ctl_table_header *__register_sysctl_table(
 {
 	struct ctl_table_root *root = set->dir.header.root;
 	struct ctl_table_header *header;
+	struct ctl_table_header h_tmp;
 	struct ctl_dir *dir;
 	struct ctl_table *entry;
 	struct ctl_node *node;
 	int nr_entries = 0;
 
-	list_for_each_table_entry(entry, table)
+	h_tmp.ctl_table = table;
+	list_for_each_table_entry(entry, (&h_tmp))
 		nr_entries++;
 
 	header = kzalloc(sizeof(struct ctl_table_header) +
@@ -1471,7 +1473,7 @@ static void put_links(struct ctl_table_header *header)
 	if (IS_ERR(core_parent))
 		return;
 
-	list_for_each_table_entry(entry, header->ctl_table) {
+	list_for_each_table_entry(entry, header) {
 		struct ctl_table_header *link_head;
 		struct ctl_table *link;
 		const char *name = entry->procname;
-- 
2.30.2


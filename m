Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAC47757D8
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F5F54057B;
	Wed,  9 Aug 2023 10:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F5F54057B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=atb4R9D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QrkpEgogmohu; Wed,  9 Aug 2023 10:50:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7AC8940AF5;
	Wed,  9 Aug 2023 10:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AC8940AF5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93D01C0DDB;
	Wed,  9 Aug 2023 10:50:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D492C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28E934059C
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28E934059C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DTI8yOe0VVAM for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:12 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A8EE4057B
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A8EE4057B
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-313e742a787so447423f8f.1
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578210; x=1692183010;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9/+5UTOZSoINBQX5Idlq9s7Q/YjlqMmFruSJ92+I5og=;
 b=atb4R9D3UP8rF8J4DGImLYCkkIjCylHcvHBJaEULX5niQjnDlzqKMSD5b4XFz4ZLJm
 sSVslKOliNw8ZHFha9Q562wOwmSVoMuXD4Jzi45CYhNUVyBhkrybtxsTzBbaNvkF6YdB
 3Ip1yQFeNZNWV136v1J6u6djXhWlqXLYc4pygA1zQYzZSG7N5rFZfAdvnT5RaC4IdpX8
 Hhp/XGgonRRh1UB5bBOZOcE3bm9Hw+tW0izfNszwTTx12H0BeD1gHzEhTaTGaK1+Je54
 ZTIaLIKV/p9CynDWkY98/7O5UGX5w209N20Q+KQeJkXFPaMRlFgR87Pko35IDChhUfFg
 iO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578210; x=1692183010;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9/+5UTOZSoINBQX5Idlq9s7Q/YjlqMmFruSJ92+I5og=;
 b=DijPBt0kfEcz1HnpQKIapEk9aUYu6R0wMoH/4JThf4yAmQmOkYnuN/I+lcYHzWKjqk
 EtZnTYWEl75F5AZD19dX2U+1WazMU7ILX3cWiYLXqudNRXwQKFM2siPyNFg1Zv9n2sGa
 Kn4tZK+Wwro8zcPXzSXonYFjyuqQKWWSjd1n+Vu3IJoBSAkN/B/6VgYNgnFL8BL0IjjU
 fq+0TqsqMu9V3Hv87BXQ+Ziai1EBbcQr2xyIqqKzsoHeKrUQh+NU4adcfSMZp4zneR8a
 3z640idR7+dW7hGBJgLQyD40WxKbFzVpZVcL9hqf91ZW2crZlTF1X3Dhin7ue0rjRg2s
 1TQA==
X-Gm-Message-State: AOJu0YwJ0OfgPJ32XRcKqM4X8hYPgHS0hspLMbKs6wZTgi14ou3vZXGz
 V9g9KodpOwLqlJrTu8hSjOo=
X-Google-Smtp-Source: AGHT+IGowfG/mBjhiqfCBTciVDcQ8iwHyx2pnNIZeHVsGOuEGJL9kVWeWmrC1QXgbcXDnJGMcAOgwQ==
X-Received: by 2002:adf:f1cc:0:b0:314:475:bc6b with SMTP id
 z12-20020adff1cc000000b003140475bc6bmr2059281wro.18.1691578210251; 
 Wed, 09 Aug 2023 03:50:10 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 z14-20020adfe54e000000b00317e9f8f194sm9272438wrm.34.2023.08.09.03.50.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:09 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:53 +0200
Message-Id: <20230809105006.1198165-2-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v3 01/14] sysctl: Prefer ctl_table_header in
	proc_sysctl
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

This is a preparation commit that replaces ctl_table with
ctl_table_header as the pointer that is passed around in proc_sysctl.c.
This will become necessary in subsequent commits when the size of the
ctl_table array can no longer be calculated by searching for an empty
sentinel (last empty ctl_table element) but will be carried along inside
the ctl_table_header struct.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/proc/proc_sysctl.c | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 5ea42653126e..94d71446da39 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -1125,11 +1125,11 @@ static int sysctl_check_table_array(const char *path, struct ctl_table *table)
 	return err;
 }
 
-static int sysctl_check_table(const char *path, struct ctl_table *table)
+static int sysctl_check_table(const char *path, struct ctl_table_header *header)
 {
 	struct ctl_table *entry;
 	int err = 0;
-	list_for_each_table_entry(entry, table) {
+	list_for_each_table_entry(entry, header->ctl_table) {
 		if ((entry->proc_handler == proc_dostring) ||
 		    (entry->proc_handler == proc_dobool) ||
 		    (entry->proc_handler == proc_dointvec) ||
@@ -1159,8 +1159,7 @@ static int sysctl_check_table(const char *path, struct ctl_table *table)
 	return err;
 }
 
-static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table *table,
-	struct ctl_table_root *link_root)
+static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_header *head)
 {
 	struct ctl_table *link_table, *entry, *link;
 	struct ctl_table_header *links;
@@ -1170,7 +1169,7 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table
 
 	name_bytes = 0;
 	nr_entries = 0;
-	list_for_each_table_entry(entry, table) {
+	list_for_each_table_entry(entry, head->ctl_table) {
 		nr_entries++;
 		name_bytes += strlen(entry->procname) + 1;
 	}
@@ -1189,12 +1188,12 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table
 	link_name = (char *)&link_table[nr_entries + 1];
 	link = link_table;
 
-	list_for_each_table_entry(entry, table) {
+	list_for_each_table_entry(entry, head->ctl_table) {
 		int len = strlen(entry->procname) + 1;
 		memcpy(link_name, entry->procname, len);
 		link->procname = link_name;
 		link->mode = S_IFLNK|S_IRWXUGO;
-		link->data = link_root;
+		link->data = head->root;
 		link_name += len;
 		link++;
 	}
@@ -1205,15 +1204,16 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table
 }
 
 static bool get_links(struct ctl_dir *dir,
-	struct ctl_table *table, struct ctl_table_root *link_root)
+		      struct ctl_table_header *header,
+		      struct ctl_table_root *link_root)
 {
-	struct ctl_table_header *head;
+	struct ctl_table_header *tmp_head;
 	struct ctl_table *entry, *link;
 
 	/* Are there links available for every entry in table? */
-	list_for_each_table_entry(entry, table) {
+	list_for_each_table_entry(entry, header->ctl_table) {
 		const char *procname = entry->procname;
-		link = find_entry(&head, dir, procname, strlen(procname));
+		link = find_entry(&tmp_head, dir, procname, strlen(procname));
 		if (!link)
 			return false;
 		if (S_ISDIR(link->mode) && S_ISDIR(entry->mode))
@@ -1224,10 +1224,10 @@ static bool get_links(struct ctl_dir *dir,
 	}
 
 	/* The checks passed.  Increase the registration count on the links */
-	list_for_each_table_entry(entry, table) {
+	list_for_each_table_entry(entry, header->ctl_table) {
 		const char *procname = entry->procname;
-		link = find_entry(&head, dir, procname, strlen(procname));
-		head->nreg++;
+		link = find_entry(&tmp_head, dir, procname, strlen(procname));
+		tmp_head->nreg++;
 	}
 	return true;
 }
@@ -1246,13 +1246,13 @@ static int insert_links(struct ctl_table_header *head)
 	if (IS_ERR(core_parent))
 		return 0;
 
-	if (get_links(core_parent, head->ctl_table, head->root))
+	if (get_links(core_parent, head, head->root))
 		return 0;
 
 	core_parent->header.nreg++;
 	spin_unlock(&sysctl_lock);
 
-	links = new_links(core_parent, head->ctl_table, head->root);
+	links = new_links(core_parent, head);
 
 	spin_lock(&sysctl_lock);
 	err = -ENOMEM;
@@ -1260,7 +1260,7 @@ static int insert_links(struct ctl_table_header *head)
 		goto out;
 
 	err = 0;
-	if (get_links(core_parent, head->ctl_table, head->root)) {
+	if (get_links(core_parent, head, head->root)) {
 		kfree(links);
 		goto out;
 	}
@@ -1371,7 +1371,7 @@ struct ctl_table_header *__register_sysctl_table(
 
 	node = (struct ctl_node *)(header + 1);
 	init_header(header, root, set, node, table);
-	if (sysctl_check_table(path, table))
+	if (sysctl_check_table(path, header))
 		goto fail;
 
 	spin_lock(&sysctl_lock);
-- 
2.30.2


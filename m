Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 741A27697D0
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93993610FE;
	Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93993610FE
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=GIJG9yEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-u_yvA-5UXu; Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 85C07610E8;
	Mon, 31 Jul 2023 13:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85C07610E8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CF65BC0DD3;
	Mon, 31 Jul 2023 13:38:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 167A9C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F33AE60B32
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F33AE60B32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRrd13KJFHln for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:39 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA0FC608A5
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA0FC608A5
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-3fb4146e8fcso28327775e9.0
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787858; x=1691392658;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/OpnfSbwwoibW9M83Wu6OD32YzFt1sk3ke/j1mk6tNI=;
 b=GIJG9yEArom+8MZN4OTa76Anl/Tx5phujQ///06BHq/HllfyGKtY5aYv4Votpuaf5Y
 160T9sAfvdE8SF4noBBkQgx/9NpAN5GxOOk/fFOa2PaWR/dmrCdzxaIhemN+P3t8lmZA
 9WDpkn1KuqRSTEWikhlNRs9i3IOyfV6U0hgzbNqOYLtcrba155gRuo8a6maOiP4WdbeY
 Jie57pFfoPa9i6bo5+50ZVQyb8fnGEz4Zts8S/2s0MrGRUrGLAzwYN1HkiIxFrbTdaDh
 1HKwRuxUNuWcBZVpyARac7O72UFDDUhM8HTjB8asFaPK6HIB9XcOalV8hxPVCb1IluOg
 bOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787858; x=1691392658;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/OpnfSbwwoibW9M83Wu6OD32YzFt1sk3ke/j1mk6tNI=;
 b=Sn/FmUp1uCPCrovmJV5CEV4/PPm3QD74TL7ABPloqjhs5K16FINqtXgwvZcZwHDqkj
 uLqk7QEmaetQJrF1dJMSuW9gdJut9yOKkUOoklnyNq4lEGHPh48xmFJzC6EaS8ivdn9c
 VaEz4RQkIbKW9DCN2RvWzamSHmBXmlh9b8HjAA0qx0L4p6Ra8xiTvkYxT8X4sP4cqpx3
 a2sx8R6tnp4R7AFr3xkP8Q1Lf5NhgzVJAjRJF4cn4NolpFUsfp61OH3gDGyfnIA2zfS6
 JaFf6vsUEXYwuiIsnkZcTFGfEnpZgH+p/BKLDluLAcLOPr+Rh5TdTgMi60SJT86LR0qJ
 LVqA==
X-Gm-Message-State: ABy/qLb5xSr2LSSCmJKJ+dY3kVvEEY/dnJkOMrPB6QhxQb0Csn4Ke6wy
 X9KNsVTbIYA9/FhaeNQ7GLo=
X-Google-Smtp-Source: APBJJlEsuWaXgM85723d4gu/HLXH0eqHwOdiMX957anFT3hC8fOsR/W4vSMzGFe1WH35i1zVah1nhQ==
X-Received: by 2002:a1c:7404:0:b0:3fe:163e:d6a5 with SMTP id
 p4-20020a1c7404000000b003fe163ed6a5mr4223220wmc.4.1690787857708; 
 Mon, 31 Jul 2023 00:17:37 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 n6-20020a7bcbc6000000b003fe1e3937aesm3158234wmi.20.2023.07.31.00.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:37 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:18 +0200
Message-Id: <20230731071728.3493794-5-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v2 04/14] sysctl: Add size argument to init_header
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

In this commit, we add a table_size argument to the init_header function
in order to initialize the ctl_table_size variable in ctl_table_header.
Even though the size is not yet used, it is now initialized within the
sysctl subsys. We need this commit for when we start adding the
table_size arguments to the sysctl functions (e.g. register_sysctl,
__register_sysctl_table and __register_sysctl_init).

Note that in __register_sysctl_table we temporarily use a calculated
size until we add the size argument to that function in subsequent
commits.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/proc/proc_sysctl.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 884460b0385b..fa1438f1a355 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -188,9 +188,10 @@ static void erase_entry(struct ctl_table_header *head, struct ctl_table *entry)
 
 static void init_header(struct ctl_table_header *head,
 	struct ctl_table_root *root, struct ctl_table_set *set,
-	struct ctl_node *node, struct ctl_table *table)
+	struct ctl_node *node, struct ctl_table *table, size_t table_size)
 {
 	head->ctl_table = table;
+	head->ctl_table_size = table_size;
 	head->ctl_table_arg = table;
 	head->used = 0;
 	head->count = 1;
@@ -973,7 +974,7 @@ static struct ctl_dir *new_dir(struct ctl_table_set *set,
 	memcpy(new_name, name, namelen);
 	table[0].procname = new_name;
 	table[0].mode = S_IFDIR|S_IRUGO|S_IXUGO;
-	init_header(&new->header, set->dir.header.root, set, node, table);
+	init_header(&new->header, set->dir.header.root, set, node, table, 1);
 
 	return new;
 }
@@ -1197,7 +1198,8 @@ static struct ctl_table_header *new_links(struct ctl_dir *dir, struct ctl_table_
 		link_name += len;
 		link++;
 	}
-	init_header(links, dir->header.root, dir->header.set, node, link_table);
+	init_header(links, dir->header.root, dir->header.set, node, link_table,
+		    head->ctl_table_size);
 	links->nreg = nr_entries;
 
 	return links;
@@ -1372,7 +1374,7 @@ struct ctl_table_header *__register_sysctl_table(
 		return NULL;
 
 	node = (struct ctl_node *)(header + 1);
-	init_header(header, root, set, node, table);
+	init_header(header, root, set, node, table, nr_entries);
 	if (sysctl_check_table(path, header))
 		goto fail;
 
@@ -1537,7 +1539,7 @@ void setup_sysctl_set(struct ctl_table_set *set,
 {
 	memset(set, 0, sizeof(*set));
 	set->is_seen = is_seen;
-	init_header(&set->dir.header, root, set, NULL, root_table);
+	init_header(&set->dir.header, root, set, NULL, root_table, 1);
 }
 
 void retire_sysctl_set(struct ctl_table_set *set)
-- 
2.30.2


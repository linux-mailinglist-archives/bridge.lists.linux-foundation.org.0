Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC967757DD
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 234834188C;
	Wed,  9 Aug 2023 10:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 234834188C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=Ft/M2URZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8BrMSXnJKVN; Wed,  9 Aug 2023 10:50:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3508F41880;
	Wed,  9 Aug 2023 10:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3508F41880
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5736C0DD4;
	Wed,  9 Aug 2023 10:50:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F3DFC0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0519B41799
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0519B41799
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3XKWokYH7Stl for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:25 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6F454187E
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6F454187E
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-3fe24dd8898so56568225e9.2
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578223; x=1692183023;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GPr2gCh0WwKGZ3vD5F3mcw/cD05Ywt0Q6uWcdKx3iw8=;
 b=Ft/M2URZH4F9TYPvggTbYZI70JB09nVLQPW/chdRXAcUsPbgMM66BJGWbrvIr6sO0X
 /S1TV4QPNbJFtFWfbKqENSXb1SethxNaapV5Pr8Ze1daK4ea3ZcsvWqsx6Vnz7IBJnzE
 FdNnYJXXgiy2FH6o6wTg9TMCwioyKds6hC/uwclYhE2GOfuqjgoWkCOi5J6sN9bV+/gy
 G6tD94G1bDRfAU+yXLWVNCuxp01jDE/qrztCqh1bCblexqARHilBR3HAnOhA4fi95YzO
 +pADPslmnto3C6CoQWlLSrLP2ArR3ZG5Xi4wyj1x7sMmkwf8IvwppLpZc2/6sbJImYmW
 kj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578223; x=1692183023;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GPr2gCh0WwKGZ3vD5F3mcw/cD05Ywt0Q6uWcdKx3iw8=;
 b=lv65meUfN3IKaC73ohHYP2mX4JOaTOTF7fk6NJB1w6xDgrguIYp0wjYrVH5Jntv0HI
 nwd0oP3///mmuQ+qPpGD8M8GFv7jOBPR9TE0yB+gu6zxhg0CZ1mCJFJGC835ezgZYRWE
 U1i+Cx2vo/m0ZK2UqteZzBfogNCL6tUUdWVsOJgH1aR3O0INNjryWT7m03+ZM+i1iUcG
 vXA1KkY852Uff7ZtOzyn5Z5fja6LtRF+xy5wWHlcPlCi40n1cTWP9tU4nssTjBLCLu/S
 IYUVLC0RXI1AdDO9W4AWl1kmNi+XvUIo0rtZd6aDpYXlpLcFcy6dR0tia95tWOOlafrR
 E54g==
X-Gm-Message-State: AOJu0Ywz1Ak4+WYCpcD4T6HGbZwA2CkA4K/CvcMa0LwNfpBTtqy7Vvxr
 kmedm9UGEZcw3x0eHvMD/Rk=
X-Google-Smtp-Source: AGHT+IGWlWgxrNbbqYGPjVJRPuWIZ994DjFhxzAqRJ/ijUI6PwPSluffuSv4V0YqKfN0n/nqrHSpMg==
X-Received: by 2002:a05:600c:3641:b0:3fe:26bf:6605 with SMTP id
 y1-20020a05600c364100b003fe26bf6605mr1630731wmq.26.1691578222558; 
 Wed, 09 Aug 2023 03:50:22 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 m8-20020a7bca48000000b003fa96fe2bd9sm1645531wml.22.2023.08.09.03.50.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:22 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:59 +0200
Message-Id: <20230809105006.1198165-8-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v3 07/14] sysctl: Add size arg to
	__register_sysctl_init
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

This commit adds table_size to __register_sysctl_init in preparation for
the removal of the sentinel elements in the ctl_table arrays (last empty
markers). And though we do *not* remove any sentinels in this commit, we
set things up by calculating the ctl_table array size with ARRAY_SIZE.

We add a table_size argument to __register_sysctl_init and modify the
register_sysctl_init macro to calculate the array size with ARRAY_SIZE.
The original callers do not need to be updated as they will go through
the new macro.

Signed-off-by: Joel Granados <j.granados@samsung.com>
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 fs/proc/proc_sysctl.c  | 12 +++---------
 include/linux/sysctl.h |  5 +++--
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 80d3e2f61947..817bc51c58d8 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -1433,6 +1433,7 @@ EXPORT_SYMBOL(register_sysctl_sz);
  * 	lifetime use of the sysctl.
  * @table_name: The name of sysctl table, only used for log printing when
  *              registration fails
+ * @table_size: The number of elements in table
  *
  * The sysctl interface is used by userspace to query or modify at runtime
  * a predefined value set on a variable. These variables however have default
@@ -1445,16 +1446,9 @@ EXPORT_SYMBOL(register_sysctl_sz);
  * Context: if your base directory does not exist it will be created for you.
  */
 void __init __register_sysctl_init(const char *path, struct ctl_table *table,
-				 const char *table_name)
+				 const char *table_name, size_t table_size)
 {
-	int count = 0;
-	struct ctl_table *entry;
-	struct ctl_table_header t_hdr, *hdr;
-
-	t_hdr.ctl_table = table;
-	list_for_each_table_entry(entry, (&t_hdr))
-		count++;
-	hdr = register_sysctl_sz(path, table, count);
+	struct ctl_table_header *hdr = register_sysctl_sz(path, table, table_size);
 
 	if (unlikely(!hdr)) {
 		pr_err("failed when register_sysctl_sz %s to %s\n", table_name, path);
diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
index b1168ae281c9..09d7429d67c0 100644
--- a/include/linux/sysctl.h
+++ b/include/linux/sysctl.h
@@ -236,8 +236,9 @@ void unregister_sysctl_table(struct ctl_table_header * table);
 
 extern int sysctl_init_bases(void);
 extern void __register_sysctl_init(const char *path, struct ctl_table *table,
-				 const char *table_name);
-#define register_sysctl_init(path, table) __register_sysctl_init(path, table, #table)
+				 const char *table_name, size_t table_size);
+#define register_sysctl_init(path, table)	\
+	__register_sysctl_init(path, table, #table, ARRAY_SIZE(table))
 extern struct ctl_table_header *register_sysctl_mount_point(const char *path);
 
 void do_sysctl_args(void);
-- 
2.30.2


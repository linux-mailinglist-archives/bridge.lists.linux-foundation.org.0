Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 570197757DB
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2C7C61232;
	Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2C7C61232
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=Z7kTDW8w
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbV5uxnT1oiF; Wed,  9 Aug 2023 10:50:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6EFED61229;
	Wed,  9 Aug 2023 10:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFED61229
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 358A2C0DD4;
	Wed,  9 Aug 2023 10:50:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74EB6C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CE976122C
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CE976122C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XKS_vC_RpxXz for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:19 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC46F61223
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC46F61223
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-31792ac0fefso4996004f8f.2
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578217; x=1692183017;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/OpnfSbwwoibW9M83Wu6OD32YzFt1sk3ke/j1mk6tNI=;
 b=Z7kTDW8wJZAdC+IpB/U2ORnyAE804kkSlEltAQZZwdGvZ9BVKvM7DLVo6R36EFLjTi
 nVLApIwDcfSJ5845A1NxZfmAMmjU0jKcRoeGHlKQvT2Dq7E6+bxsVJsj99xYya4lr0df
 4+kXVuJGu6okiPWjmHVXWpGboUAfMqDGp/86yDC8aTMnSCovUj2M1l/wcSiyycutyOdO
 AdQOggbEtmdraLtGd1tmzUWoW0iv4JiWTzSmSIO+U2WS3/dQKsG+plAJLYLm70ZmGfA7
 FznktE8uf6mrU4dQlY6dlkcZIzLRxLI8NCWE+soUQnt0zhqiNNJMYxDUDePLT219HcvD
 HBBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578217; x=1692183017;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/OpnfSbwwoibW9M83Wu6OD32YzFt1sk3ke/j1mk6tNI=;
 b=aDaW/QtuEKWNq0UABvQ4jV7kn7R/5UuncuXEuRGmRhMdEBu6bbW9WHaZzNaA6xZRp4
 /Uuqb2KAJ5gMtkM98g/VD2sW6vUZT5DKhiWTsSXEA8XfQlzhhgrgTzbt3+bWvYmuCl82
 LDUsd2lO8gos8sA5ib3qDpea20T0aRcpeFPfQZ8PWycBBiItAo+CYWAvt6OwBmkGlN34
 a/y/wBST9y6o/wMk/CBzX7dZbRP2EkItnl1Yh+jUkd2DvJU2qvazpN6JezK935MqGF5Z
 4Y70es5k+2Q+QtqKyDSyXRPsdlX55rwhxaURPMpPNy6yT1AE3Li+5k2SyNP70qQPqHcF
 N/PQ==
X-Gm-Message-State: AOJu0YyqCgJTWOF8x8BmzfKCvnrgSvDeR08D/CvOyxOGf1Pvu2HcqBac
 KDFnOtwicvnziDuHCrqdMkA=
X-Google-Smtp-Source: AGHT+IHu0u9BAcqCqiHbNAexTt+eolThSnX5DD0IXFGcW0oEJ1XKAznLFi+KExxLH6xRzKxcnBfLtQ==
X-Received: by 2002:a5d:4a4b:0:b0:314:1270:8fc with SMTP id
 v11-20020a5d4a4b000000b00314127008fcmr1729029wrs.0.1691578216905; 
 Wed, 09 Aug 2023 03:50:16 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 m5-20020a5d6a05000000b003140f47224csm16400446wru.15.2023.08.09.03.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:16 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:56 +0200
Message-Id: <20230809105006.1198165-5-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v3 04/14] sysctl: Add size argument to init_header
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


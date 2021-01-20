Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C02FD3C6
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:21:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E63486AD7;
	Wed, 20 Jan 2021 15:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MG0u61GGCMhJ; Wed, 20 Jan 2021 15:21:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02ED486ADD;
	Wed, 20 Jan 2021 15:21:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DEDAFC0FA8;
	Wed, 20 Jan 2021 15:21:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6FD4CC013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D31F85F75
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fZae3OIEu81C for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:21:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 079728543A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:21:36 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id 3so6333250ljc.4
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r6eGbI5T1ZbJb6/fIDxJvPsg6g6XzCNDGMhxMVE7KiU=;
 b=X6RzaWHtb8yw8tbOiXobIbN96Xov1DyWcra3y7BxsqYJIKK9CLufCSZpy2J8aMdKbs
 5Y6bktsicSNuNRz6Cnf75Z0KkpykgkzwA4PGU2NfD4+pAzb9bRzwXHhTAndAlWyaYOYP
 e6qsYvV65es4JA4IrH1k3j5VLlPeokS5YbluFKwBKO9eyUHru/pV+haJPDblDIxPdiw2
 I8AmJnHIjId0RmylS6Vn2mKiFFmlMiOc1217nq9p3wYchSyiVi8R0/paCjVKybhdzKl8
 +uhCH7ihO2USs2Y55WZ3jn8LC2spYriGFELWL06G8TsMp7MimZ4RM9yFO0Lty8/mLOOB
 Z5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r6eGbI5T1ZbJb6/fIDxJvPsg6g6XzCNDGMhxMVE7KiU=;
 b=S1o+Mi2U+YYJFqO27eH2Qx8AFg+ZIA3Y9zFvGXlw7e2swDB0wjBRcCDheAHpPaYH9A
 eR5tOwl0Wgs93iCPuRf/E59pRaq5Lkr5/PmlUAFxYBcHlF0U5gawBZvdEI6khlIk/g56
 3LqVIyDriJFCrUgwNdWw/Y87XcMM/mlIDMEpZ8hcMkdctgayhBwu0H0TMo7k5899KnDI
 kiSkFBMadqr2Aozbmeb4mtTI3dYkQ0VvN8U8ogT9k3xQlB5Tl3ot13fgh+TCe5XW+evI
 TgG6647E1dPrJKcwuem8h/4ikOlPEVRjxujN6aLmnNJZvmDepxvETOb1zoYFEyOz5D8s
 4V+g==
X-Gm-Message-State: AOAM533FI/qHThmYSJA2p3Duyq3H4mioQrg0vGHXu0S98iq3Kk9q60/t
 BGbemHOfTpCJhT7+T1vF/gWhvTWMe247ZIP5P2A=
X-Google-Smtp-Source: ABdhPJxQKUIhoz6+ceN1wf0HbJmBg5i4EiYGcTRkPHhvTpCAz8Xg+XUzm9Z1oDvqFDrreGmWF91u4g==
X-Received: by 2002:a17:906:7689:: with SMTP id
 o9mr6519678ejm.324.1611154388091; 
 Wed, 20 Jan 2021 06:53:08 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:07 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:54 +0200
Message-Id: <20210120145203.1109140-6-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 05/14] net: bridge: multicast: add EHT
	structures and definitions
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Add EHT structures for tracking hosts and sources per group. We keep one
set for each host which has all of the host's S,G entries, and one set for
each multicast source which has all hosts that have joined that S,G. For
each host, source entry we record the filter_mode and we keep an expiry
timer. There is also one global expiry timer per source set, it is
updated with each set entry update, it will be later used to lower the
set's timer instead of lowering each entry's timer separately.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c         |  1 +
 net/bridge/br_private.h           |  2 ++
 net/bridge/br_private_mcast_eht.h | 50 +++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 net/bridge/br_private_mcast_eht.h

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f8b685ae56d4..3aaa6adbff82 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -33,6 +33,7 @@
 #endif
 
 #include "br_private.h"
+#include "br_private_mcast_eht.h"
 
 static const struct rhashtable_params br_mdb_rht_params = {
 	.head_offset = offsetof(struct net_bridge_mdb_entry, rhnode),
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index d62c6e1af64a..0bf4c544a5da 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -252,6 +252,8 @@ struct net_bridge_port_group {
 	struct timer_list		timer;
 	struct timer_list		rexmit_timer;
 	struct hlist_node		mglist;
+	struct rb_root			eht_set_tree;
+	struct rb_root			eht_host_tree;
 
 	struct rhash_head		rhnode;
 	struct net_bridge_mcast_gc	mcast_gc;
diff --git a/net/bridge/br_private_mcast_eht.h b/net/bridge/br_private_mcast_eht.h
new file mode 100644
index 000000000000..0c9c4267969d
--- /dev/null
+++ b/net/bridge/br_private_mcast_eht.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later
+ * Copyright (c) 2020, Nikolay Aleksandrov <nikolay@nvidia.com>
+ */
+#ifndef _BR_PRIVATE_MCAST_EHT_H_
+#define _BR_PRIVATE_MCAST_EHT_H_
+
+union net_bridge_eht_addr {
+	__be32				ip4;
+#if IS_ENABLED(CONFIG_IPV6)
+	struct in6_addr			ip6;
+#endif
+};
+
+/* single host's list of set entries and filter_mode */
+struct net_bridge_group_eht_host {
+	struct rb_node			rb_node;
+
+	union net_bridge_eht_addr	h_addr;
+	struct hlist_head		set_entries;
+	unsigned int			num_entries;
+	unsigned char			filter_mode;
+	struct net_bridge_port_group	*pg;
+};
+
+/* (host, src entry) added to a per-src set and host's list */
+struct net_bridge_group_eht_set_entry {
+	struct rb_node			rb_node;
+	struct hlist_node		host_list;
+
+	union net_bridge_eht_addr	h_addr;
+	struct timer_list		timer;
+	struct net_bridge		*br;
+	struct net_bridge_group_eht_set	*eht_set;
+	struct net_bridge_group_eht_host *h_parent;
+	struct net_bridge_mcast_gc	mcast_gc;
+};
+
+/* per-src set */
+struct net_bridge_group_eht_set {
+	struct rb_node			rb_node;
+
+	union net_bridge_eht_addr	src_addr;
+	struct rb_root			entry_tree;
+	struct timer_list		timer;
+	struct net_bridge_port_group	*pg;
+	struct net_bridge		*br;
+	struct net_bridge_mcast_gc	mcast_gc;
+};
+
+#endif /* _BR_PRIVATE_MCAST_EHT_H_ */
-- 
2.29.2


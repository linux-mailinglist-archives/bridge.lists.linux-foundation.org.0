Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC42FD34B
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 15:58:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9704B87120;
	Wed, 20 Jan 2021 14:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhACScxfHgFj; Wed, 20 Jan 2021 14:58:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD74D87128;
	Wed, 20 Jan 2021 14:58:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B0A6BC1DA7;
	Wed, 20 Jan 2021 14:58:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F841C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D34204F9
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9AHBgzQrxt7 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 14:58:41 +0000 (UTC)
X-Greylist: delayed 00:05:34 by SQLgrey-1.7.6
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by silver.osuosl.org (Postfix) with ESMTPS id B48B6203E1
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:40 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id p13so26475445ljg.2
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 06:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RUfnxg7JDBFIwuUWLAhYbWYF3RttZk+VcieI3V+L2Fs=;
 b=gQ3nLuW4o4Eol9q5Pt15/DWuygHTU0A8Sdpm0AWwEy8iyn8a573G0TADPMcTJSCIzg
 EVxuFKmS9z3D+djEw2u++NT9/IA3+R/TcpL/jwWifrOjrihNZdWxR5fMANOPZ0ytmet/
 Qne0DHiIJuBWCqeQVP8VAdUvVMh+V/2Ca8dWxmDWjTIbiGq3Yy7SK2KxkciFuezAj723
 I177XCVmiM6dqnBP5lz+QexxHHHjFrquHeQ8wqwh3V2im49zYExsdWeLb9KiEyY35ef/
 OOAyHDLAL+e9gzJqQAiX8fi8WMnay4zIv2HoH3ykoR5WxnG/XDjKaaX9qSaR39iLvnET
 nPMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUfnxg7JDBFIwuUWLAhYbWYF3RttZk+VcieI3V+L2Fs=;
 b=NhWdvH/Pz5VMPK3DFRpjihy0iGeBt3Wzv3pqkiN3M0CJKNPiCBfP47tdv6vDaWtHaN
 pVhrrd+4M0uFhmflektSEwHOF3wLIlBtat84P7yZnLa32GiuSGOGCJQ7gN7xEBkXpgMJ
 ZX+UHwmAqD/2+7acMgeZ7VN8tEXGUE7mP62661rRdeuk1uj9bGJ4WK3GrjiwH7Pk2POL
 p5X70PcAMhMbkQurxniTQ3XuKTZ+MCkDJVKtOXIv1UMzS5rz9+bC1ptiOv6llPh5W5sw
 QNJL8DDDfzN6d2NxaYDbhaabVMKGZK8zJFigxac0lHmyrk/MIqAyXMUaOz0nfa5SpSLM
 TqvQ==
X-Gm-Message-State: AOAM532eZ3J0iJMXEFiLyU2emZtEyyPN2opJKNoBzuCXHYrdPWZuL7N4
 Uavg8joT3c2HolYr6k2msQsWS63sD3ZF267VCX0=
X-Google-Smtp-Source: ABdhPJzrFNidycGyTV9SBshPnSCIi+GJPPottSUkGSiy905eX1YTowz09tt0n0YOuTM1kcAlDXniwQ==
X-Received: by 2002:a17:906:c954:: with SMTP id
 fw20mr4228893ejb.342.1611154389683; 
 Wed, 20 Jan 2021 06:53:09 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:08 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:55 +0200
Message-Id: <20210120145203.1109140-7-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 06/14] net: bridge: multicast: add EHT
	host handling functions
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

Add functions to create, destroy and lookup an EHT host. These are
per-host entries contained in the eht_host_tree in net_bridge_port_group
which are used to store a list of all sources (S,G) entries joined for that
group by each host, the host's current filter mode and total number of
joined entries.
No functional changes yet, these would be used in later patches.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/Makefile           |   2 +-
 net/bridge/br_multicast.c     |   1 +
 net/bridge/br_multicast_eht.c | 115 ++++++++++++++++++++++++++++++++++
 3 files changed, 117 insertions(+), 1 deletion(-)
 create mode 100644 net/bridge/br_multicast_eht.c

diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index 4702702a74d3..7fb9a021873b 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -18,7 +18,7 @@ br_netfilter-y := br_netfilter_hooks.o
 br_netfilter-$(subst m,y,$(CONFIG_IPV6)) += br_netfilter_ipv6.o
 obj-$(CONFIG_BRIDGE_NETFILTER) += br_netfilter.o
 
-bridge-$(CONFIG_BRIDGE_IGMP_SNOOPING) += br_multicast.o br_mdb.o
+bridge-$(CONFIG_BRIDGE_IGMP_SNOOPING) += br_multicast.o br_mdb.o br_multicast_eht.o
 
 bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_options.o
 
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3aaa6adbff82..dc6e879dc840 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1173,6 +1173,7 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	p->flags = flags;
 	p->filter_mode = filter_mode;
 	p->rt_protocol = rt_protocol;
+	p->eht_host_tree = RB_ROOT;
 	p->mcast_gc.destroy = br_multicast_destroy_port_group;
 	INIT_HLIST_HEAD(&p->src_list);
 
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
new file mode 100644
index 000000000000..5cebca45e72c
--- /dev/null
+++ b/net/bridge/br_multicast_eht.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (c) 2020, Nikolay Aleksandrov <nikolay@nvidia.com>
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/if_ether.h>
+#include <linux/igmp.h>
+#include <linux/in.h>
+#include <linux/jhash.h>
+#include <linux/kernel.h>
+#include <linux/log2.h>
+#include <linux/netdevice.h>
+#include <linux/netfilter_bridge.h>
+#include <linux/random.h>
+#include <linux/rculist.h>
+#include <linux/skbuff.h>
+#include <linux/slab.h>
+#include <linux/timer.h>
+#include <linux/inetdevice.h>
+#include <linux/mroute.h>
+#include <net/ip.h>
+#include <net/switchdev.h>
+#if IS_ENABLED(CONFIG_IPV6)
+#include <linux/icmpv6.h>
+#include <net/ipv6.h>
+#include <net/mld.h>
+#include <net/ip6_checksum.h>
+#include <net/addrconf.h>
+#endif
+
+#include "br_private.h"
+#include "br_private_mcast_eht.h"
+
+static struct net_bridge_group_eht_host *
+br_multicast_eht_host_lookup(struct net_bridge_port_group *pg,
+			     union net_bridge_eht_addr *h_addr)
+{
+	struct rb_node *node = pg->eht_host_tree.rb_node;
+
+	while (node) {
+		struct net_bridge_group_eht_host *this;
+		int result;
+
+		this = rb_entry(node, struct net_bridge_group_eht_host,
+				rb_node);
+		result = memcmp(h_addr, &this->h_addr, sizeof(*h_addr));
+		if (result < 0)
+			node = node->rb_left;
+		else if (result > 0)
+			node = node->rb_right;
+		else
+			return this;
+	}
+
+	return NULL;
+}
+
+static int br_multicast_eht_host_filter_mode(struct net_bridge_port_group *pg,
+					     union net_bridge_eht_addr *h_addr)
+{
+	struct net_bridge_group_eht_host *eht_host;
+
+	eht_host = br_multicast_eht_host_lookup(pg, h_addr);
+	if (!eht_host)
+		return MCAST_INCLUDE;
+
+	return eht_host->filter_mode;
+}
+
+static void __eht_destroy_host(struct net_bridge_group_eht_host *eht_host)
+{
+	WARN_ON(!hlist_empty(&eht_host->set_entries));
+
+	rb_erase(&eht_host->rb_node, &eht_host->pg->eht_host_tree);
+	RB_CLEAR_NODE(&eht_host->rb_node);
+	kfree(eht_host);
+}
+
+static struct net_bridge_group_eht_host *
+__eht_lookup_create_host(struct net_bridge_port_group *pg,
+			 union net_bridge_eht_addr *h_addr,
+			 unsigned char filter_mode)
+{
+	struct rb_node **link = &pg->eht_host_tree.rb_node, *parent = NULL;
+	struct net_bridge_group_eht_host *eht_host;
+
+	while (*link) {
+		struct net_bridge_group_eht_host *this;
+		int result;
+
+		this = rb_entry(*link, struct net_bridge_group_eht_host,
+				rb_node);
+		result = memcmp(h_addr, &this->h_addr, sizeof(*h_addr));
+		parent = *link;
+		if (result < 0)
+			link = &((*link)->rb_left);
+		else if (result > 0)
+			link = &((*link)->rb_right);
+		else
+			return this;
+	}
+
+	eht_host = kzalloc(sizeof(*eht_host), GFP_ATOMIC);
+	if (!eht_host)
+		return NULL;
+
+	memcpy(&eht_host->h_addr, h_addr, sizeof(*h_addr));
+	INIT_HLIST_HEAD(&eht_host->set_entries);
+	eht_host->pg = pg;
+	eht_host->filter_mode = filter_mode;
+
+	rb_link_node(&eht_host->rb_node, parent, link);
+	rb_insert_color(&eht_host->rb_node, &pg->eht_host_tree);
+
+	return eht_host;
+}
-- 
2.29.2


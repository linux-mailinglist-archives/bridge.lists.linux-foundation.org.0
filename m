Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1163038D2
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 10:21:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1F70854CC;
	Tue, 26 Jan 2021 09:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8Rxxs8qDTO7; Tue, 26 Jan 2021 09:21:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 072978545B;
	Tue, 26 Jan 2021 09:21:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C69B7C013A;
	Tue, 26 Jan 2021 09:21:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABEA5C013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 913FA86750
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBI-qsMwvk-l for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 09:21:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD1758672B
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:43 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id w1so21916299ejf.11
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 01:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sGsRWy51vjzAAtKfm5HLV3fNy1Jk4kk0SKHg2lCkGU0=;
 b=kEQWCDjvtuvjd6M8uTc5wfk2OWNPfWOQWCw4t4QXxwV+1HKuEyOOygdrIiUJj7ZaG8
 DtpHDKIfc6Ed0Ja/hgmsAnbYN3+xUgJLkak7o3RaiE01cWEt2mFG9Cihnl8uAVCA11sg
 chj+cFOr/6HWmh/CN9XEKytrz78Qxf0cZoUHsui4KebU/WRjVga4arv0t24VGE/Zg+Ld
 8CyzxMp1O3Jsg/c5vgMPjgygNLDAjocF1AiNsyxzsIHVI0PtWVhB4vyUe8W1iGhC0iiG
 XxzwfSqSWB+NiILCUrcEI+wzprgfG8x2Ezxj9M5Wa4tMd93bTJLzDVOsdacsUpik3Wrh
 gV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sGsRWy51vjzAAtKfm5HLV3fNy1Jk4kk0SKHg2lCkGU0=;
 b=Q5JHxyb6KZIb3xRdSe360zIEQSntehCHMQvSrBtnL3uNNW1ywlosgaoLgnzUKz30gO
 x4tEo2zFCYn93Wu/oce5wA1tLNiOHtlNEepGfr999TH0iAUue4dTZdDURFQIGLKPD1Hv
 w2rkiHuXsZeEw4BDVKa66Vsz1tstwn2hF8wdFYi+Iqc073OdaYY63df5wxs5eDEK7Osz
 +gsowsFq7zOctyOCYoTzB8+ffMI2b58XVILjmDH/3ZBKrN9EdEyxUP5+CNQk25YG8sQq
 2q91U99TbmBpTe4TNO/MjgLrkppV2VTJA/XcvMAKIOkAwwfYKUIUgih04DdwGcVKr4Ch
 60jQ==
X-Gm-Message-State: AOAM533CShvF87/smSDFuH3FxOzyG6HYBdYAsvDASOG2QUKBZq/odmA9
 oxhNhhO7N+s9BvapznsDMCdgOA==
X-Google-Smtp-Source: ABdhPJxYIseleUFfmKMPaq69mCvipzFuQAEQrH/dAkzanMN6LbsQvb3S2MNMGNOGN7m4lIdVaOM2MA==
X-Received: by 2002:a17:906:9616:: with SMTP id
 s22mr2939199ejx.270.1611652902032; 
 Tue, 26 Jan 2021 01:21:42 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u9sm1195274edv.32.2021.01.26.01.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 01:21:41 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 26 Jan 2021 11:21:31 +0200
Message-Id: <20210126092132.407355-2-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210126092132.407355-1-razor@blackwall.org>
References: <20210126092132.407355-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/2] net: bridge: multicast: add per-port
	EHT hosts limit
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

Add a default limit of 512 for number of tracked EHT hosts per-port.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c         |  1 +
 net/bridge/br_multicast_eht.c     |  7 +++++++
 net/bridge/br_private.h           |  2 ++
 net/bridge/br_private_mcast_eht.h | 26 ++++++++++++++++++++++++++
 4 files changed, 36 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index df5db6a58e95..8c0029f415ea 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1608,6 +1608,7 @@ static void br_mc_disabled_update(struct net_device *dev, bool value)
 int br_multicast_add_port(struct net_bridge_port *port)
 {
 	port->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
+	port->multicast_eht_hosts_limit = BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
 
 	timer_setup(&port->multicast_router_timer,
 		    br_multicast_router_expired, 0);
diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index ff9b3ba37cab..445768c8495f 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -127,6 +127,8 @@ static void __eht_destroy_host(struct net_bridge_group_eht_host *eht_host)
 {
 	WARN_ON(!hlist_empty(&eht_host->set_entries));
 
+	br_multicast_eht_hosts_dec(eht_host->pg);
+
 	rb_erase(&eht_host->rb_node, &eht_host->pg->eht_host_tree);
 	RB_CLEAR_NODE(&eht_host->rb_node);
 	kfree(eht_host);
@@ -257,6 +259,9 @@ __eht_lookup_create_host(struct net_bridge_port_group *pg,
 			return this;
 	}
 
+	if (br_multicast_eht_hosts_over_limit(pg))
+		return NULL;
+
 	eht_host = kzalloc(sizeof(*eht_host), GFP_ATOMIC);
 	if (!eht_host)
 		return NULL;
@@ -269,6 +274,8 @@ __eht_lookup_create_host(struct net_bridge_port_group *pg,
 	rb_link_node(&eht_host->rb_node, parent, link);
 	rb_insert_color(&eht_host->rb_node, &pg->eht_host_tree);
 
+	br_multicast_eht_hosts_inc(pg);
+
 	return eht_host;
 }
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 0e26ba623006..d242ba668e47 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -310,6 +310,8 @@ struct net_bridge_port {
 #if IS_ENABLED(CONFIG_IPV6)
 	struct bridge_mcast_own_query	ip6_own_query;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
+	u32				multicast_eht_hosts_limit;
+	u32				multicast_eht_hosts_cnt;
 	unsigned char			multicast_router;
 	struct bridge_mcast_stats	__percpu *mcast_stats;
 	struct timer_list		multicast_router_timer;
diff --git a/net/bridge/br_private_mcast_eht.h b/net/bridge/br_private_mcast_eht.h
index 9daffa3ad8d5..b2c8d988721f 100644
--- a/net/bridge/br_private_mcast_eht.h
+++ b/net/bridge/br_private_mcast_eht.h
@@ -4,6 +4,8 @@
 #ifndef _BR_PRIVATE_MCAST_EHT_H_
 #define _BR_PRIVATE_MCAST_EHT_H_
 
+#define BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT 512
+
 union net_bridge_eht_addr {
 	__be32				ip4;
 #if IS_ENABLED(CONFIG_IPV6)
@@ -47,6 +49,7 @@ struct net_bridge_group_eht_set {
 	struct net_bridge_mcast_gc	mcast_gc;
 };
 
+#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 void br_multicast_eht_clean_sets(struct net_bridge_port_group *pg);
 bool br_multicast_eht_handle(struct net_bridge_port_group *pg,
 			     void *h_addr,
@@ -62,4 +65,27 @@ br_multicast_eht_should_del_pg(const struct net_bridge_port_group *pg)
 		  RB_EMPTY_ROOT(&pg->eht_host_tree));
 }
 
+static inline bool
+br_multicast_eht_hosts_over_limit(const struct net_bridge_port_group *pg)
+{
+	const struct net_bridge_port *p = pg->key.port;
+
+	return !!(p->multicast_eht_hosts_cnt >= p->multicast_eht_hosts_limit);
+}
+
+static inline void br_multicast_eht_hosts_inc(struct net_bridge_port_group *pg)
+{
+	struct net_bridge_port *p = pg->key.port;
+
+	p->multicast_eht_hosts_cnt++;
+}
+
+static inline void br_multicast_eht_hosts_dec(struct net_bridge_port_group *pg)
+{
+	struct net_bridge_port *p = pg->key.port;
+
+	p->multicast_eht_hosts_cnt--;
+}
+#endif /* CONFIG_BRIDGE_IGMP_SNOOPING */
+
 #endif /* _BR_PRIVATE_MCAST_EHT_H_ */
-- 
2.29.2


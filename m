Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093CE3EB736
	for <lists.bridge@lfdr.de>; Fri, 13 Aug 2021 17:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C564340274;
	Fri, 13 Aug 2021 15:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EF0DGZzmLuqA; Fri, 13 Aug 2021 15:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D9CCC400E0;
	Fri, 13 Aug 2021 15:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6781EC0020;
	Fri, 13 Aug 2021 15:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36324C000E
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F648607B1
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfKACOkrhZFR for <bridge@lists.linux-foundation.org>;
 Fri, 13 Aug 2021 15:00:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F6A260642
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:14 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id n12so15845509edx.8
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uQfunZVnk/RE6hSfXipXCZVnbtxnoI5ozTjpp5YTWOU=;
 b=FoQ7BIDZOm2dxPrlvnm0LDyVvml47BDIU8Q5yDlOIslHS3S6jn6VvP+rcDOOVpRrYV
 uDtjAw+InbYkhWbh7QNYYIezhiZ9PECs/bqOZxBPc/w6gRndFbE8+1vpO1wTDa+UBmFx
 gHFiyeI3olYqnPYCNDNEFHNoAGL9FkeZAyy8CWhjbd85hnNzIy91hyM39y7jaNMMcW4j
 QORNjX+7ddNIMBSEpkI8OnRCqjfaHYOzLVzRqypkI8TCyWUBsCJAbcT6Kypktj1kR5wQ
 dK8keegsl2OvHybtYDep5OxG9gUGKff41PpgfPfWtzVtjhbWg112+NTe3uNv6kAsL2PV
 1/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uQfunZVnk/RE6hSfXipXCZVnbtxnoI5ozTjpp5YTWOU=;
 b=WrFcPQ3R3zY/mDYN2OeYG6QFEHw5OB+sQIrUYU45HJYG1gOlqpKUqB2ibc4f7A0OrQ
 QcxKtPHzmLXoapwtcRo+CktkPF5RUzg2QNVU8cwfZZZrY1aaT4tuMV5fVr7HU+IiDJ2t
 AvxmxXIE8md++5ixnO9hNjVyNQyQ2UEhp2ms8ZeiRtvKssmEqNG3xIHAhM/01ZrhwcGx
 DPbaZyULXkFVfzhgvNlCd5FrllR1nWHrLs4PLw7R+Z96fpnfh8/L9AigG1obiaOu1nNl
 ELbspjqQNiw1gv4knxA8XHCr0ChZKn5G+RAZT8HT+a3joM++kve9cGJ0eROi1v7u8+L4
 9wTw==
X-Gm-Message-State: AOAM530EOUXX/6YDTu9/aGsINsIh+0g9AEUwYi6yJd9KKc9nn7fIam8C
 gGql4rYD8T3tOfcf179giw71DA==
X-Google-Smtp-Source: ABdhPJyW5c02MUMmdvsjqxnoWQ6XcyoZyInB33s4qAQvAb1hgCt3xVdjlWPxFTBFJTiKcc1E7IhPaQ==
X-Received: by 2002:a05:6402:430d:: with SMTP id
 m13mr3651258edc.372.1628866812325; 
 Fri, 13 Aug 2021 08:00:12 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d26sm1015711edp.90.2021.08.13.08.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:00:11 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 13 Aug 2021 18:00:00 +0300
Message-Id: <20210813150002.673579-5-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813150002.673579-1-razor@blackwall.org>
References: <20210813150002.673579-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 4/6] net: bridge: mcast: dump ipv4 querier
	state
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

Add support for dumping global IPv4 querier state, we dump the state
only if our own querier is enabled or there has been another external
querier which has won the election. For the bridge global state we use
a new attribute IFLA_BR_MCAST_QUERIER_STATE and embed the state inside.
The structure is:
 [IFLA_BR_MCAST_QUERIER_STATE]
  `[BRIDGE_QUERIER_IP_ADDRESS] - ip address of the querier
  `[BRIDGE_QUERIER_IP_PORT]    - bridge port ifindex where the querier was
                                 seen (set only if external querier)
  `[BRIDGE_QUERIER_IP_OTHER_TIMER]   -  other querier timeout

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 10 +++++
 include/uapi/linux/if_link.h   |  1 +
 net/bridge/br_multicast.c      | 73 ++++++++++++++++++++++++++++++++++
 net/bridge/br_netlink.c        |  5 ++-
 net/bridge/br_private.h        |  4 ++
 5 files changed, 92 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 620d86e825b8..e0fff67fcd88 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -770,4 +770,14 @@ struct br_boolopt_multi {
 	__u32 optval;
 	__u32 optmask;
 };
+
+enum {
+	BRIDGE_QUERIER_UNSPEC,
+	BRIDGE_QUERIER_IP_ADDRESS,
+	BRIDGE_QUERIER_IP_PORT,
+	BRIDGE_QUERIER_IP_OTHER_TIMER,
+	BRIDGE_QUERIER_PAD,
+	__BRIDGE_QUERIER_MAX
+};
+#define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
 #endif /* _UAPI_LINUX_IF_BRIDGE_H */
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 5310003523ce..8aad65b69054 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -479,6 +479,7 @@ enum {
 	IFLA_BR_MCAST_MLD_VERSION,
 	IFLA_BR_VLAN_STATS_PER_PORT,
 	IFLA_BR_MULTI_BOOLOPT,
+	IFLA_BR_MCAST_QUERIER_STATE,
 	__IFLA_BR_MAX,
 };
 
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3705b7ace62d..4513bc13b6d3 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2905,6 +2905,79 @@ static bool br_multicast_select_querier(struct net_bridge_mcast *brmctx,
 	return true;
 }
 
+static struct net_bridge_port *
+__br_multicast_get_querier_port(struct net_bridge *br,
+				const struct bridge_mcast_querier *querier)
+{
+	int port_ifidx = READ_ONCE(querier->port_ifidx);
+	struct net_bridge_port *p;
+	struct net_device *dev;
+
+	if (port_ifidx == 0)
+		return NULL;
+
+	dev = dev_get_by_index_rcu(dev_net(br->dev), port_ifidx);
+	if (!dev)
+		return NULL;
+	p = br_port_get_rtnl_rcu(dev);
+	if (!p || p->br != br)
+		return NULL;
+
+	return p;
+}
+
+size_t br_multicast_querier_state_size(void)
+{
+	return nla_total_size(sizeof(0)) +      /* nest attribute */
+	       nla_total_size(sizeof(__be32)) + /* BRIDGE_QUERIER_IP_ADDRESS */
+	       nla_total_size(sizeof(int)) +    /* BRIDGE_QUERIER_IP_PORT */
+	       nla_total_size_64bit(sizeof(u64)); /* BRIDGE_QUERIER_IP_OTHER_TIMER */
+}
+
+/* protected by rtnl or rcu */
+int br_multicast_dump_querier_state(struct sk_buff *skb,
+				    const struct net_bridge_mcast *brmctx,
+				    int nest_attr)
+{
+	struct bridge_mcast_querier querier = {};
+	struct net_bridge_port *p;
+	struct nlattr *nest;
+
+	if (!brmctx->multicast_querier &&
+	    !timer_pending(&brmctx->ip4_other_query.timer))
+		return 0;
+
+	nest = nla_nest_start(skb, nest_attr);
+	if (!nest)
+		return -EMSGSIZE;
+
+	rcu_read_lock();
+	br_multicast_read_querier(&brmctx->ip4_querier, &querier);
+	if (nla_put_in_addr(skb, BRIDGE_QUERIER_IP_ADDRESS,
+			    querier.addr.src.ip4)) {
+		rcu_read_unlock();
+		goto out_err;
+	}
+
+	p = __br_multicast_get_querier_port(brmctx->br, &querier);
+	if (timer_pending(&brmctx->ip4_other_query.timer) &&
+	    (nla_put_u64_64bit(skb, BRIDGE_QUERIER_IP_OTHER_TIMER,
+			       br_timer_value(&brmctx->ip4_other_query.timer),
+			       BRIDGE_QUERIER_PAD) ||
+	     (p && nla_put_u32(skb, BRIDGE_QUERIER_IP_PORT, p->dev->ifindex)))) {
+		rcu_read_unlock();
+		goto out_err;
+	}
+	rcu_read_unlock();
+	nla_nest_end(skb, nest);
+
+	return 0;
+
+out_err:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static void
 br_multicast_update_query_timer(struct net_bridge_mcast *brmctx,
 				struct bridge_mcast_other_query *query,
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 8ae026fa2ad7..2f184ad8ae29 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1501,6 +1501,7 @@ static size_t br_get_size(const struct net_device *brdev)
 	       nla_total_size_64bit(sizeof(u64)) + /* IFLA_BR_MCAST_STARTUP_QUERY_INTVL */
 	       nla_total_size(sizeof(u8)) +	/* IFLA_BR_MCAST_IGMP_VERSION */
 	       nla_total_size(sizeof(u8)) +	/* IFLA_BR_MCAST_MLD_VERSION */
+	       br_multicast_querier_state_size() + /* IFLA_BR_MCAST_QUERIER_STATE */
 #endif
 #if IS_ENABLED(CONFIG_BRIDGE_NETFILTER)
 	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_NF_CALL_IPTABLES */
@@ -1587,7 +1588,9 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
 	    nla_put_u32(skb, IFLA_BR_MCAST_STARTUP_QUERY_CNT,
 			br->multicast_ctx.multicast_startup_query_count) ||
 	    nla_put_u8(skb, IFLA_BR_MCAST_IGMP_VERSION,
-		       br->multicast_ctx.multicast_igmp_version))
+		       br->multicast_ctx.multicast_igmp_version) ||
+	    br_multicast_dump_querier_state(skb, &br->multicast_ctx,
+					    IFLA_BR_MCAST_QUERIER_STATE))
 		return -EMSGSIZE;
 #if IS_ENABLED(CONFIG_IPV6)
 	if (nla_put_u8(skb, IFLA_BR_MCAST_MLD_VERSION,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6ca9519f18a3..e03fc4c5f283 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -948,6 +948,10 @@ int br_mdb_replay(struct net_device *br_dev, struct net_device *dev,
 		  struct netlink_ext_ack *extack);
 int br_rports_fill_info(struct sk_buff *skb,
 			const struct net_bridge_mcast *brmctx);
+int br_multicast_dump_querier_state(struct sk_buff *skb,
+				    const struct net_bridge_mcast *brmctx,
+				    int nest_attr);
+size_t br_multicast_querier_state_size(void);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
-- 
2.31.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 379121B2A4D
	for <lists.bridge@lfdr.de>; Tue, 21 Apr 2020 16:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFA5487C98;
	Tue, 21 Apr 2020 14:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8mRd3wcu-TH; Tue, 21 Apr 2020 14:43:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6217787CA9;
	Tue, 21 Apr 2020 14:43:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48A02C0175;
	Tue, 21 Apr 2020 14:43:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83170C0175
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FDDC86B70
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDu0FNF4i81m for <bridge@lists.linux-foundation.org>;
 Tue, 21 Apr 2020 14:43:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7241886B6C
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587480188; x=1619016188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=0As9yCEoo8wuIjCPpQSANbvOMZTIRzcx0rCbgIibC1w=;
 b=GLThiMbUHUmfPss4Ig7gUrh7vDTOwC3ionH4an4Xm3iqyFA2OxRjWpis
 Lp2Ztd1w5D0Pr9RyUk0g9H699pzpKAmtm3OKcqXqQYjdKsSxcwT2azR2o
 +RQVVOpdEenQlnQ06grsvDyW2Ft8Eu/Ok14WyNJtIBDMNlnQ4wV/1hDTb
 aH+sroBN+brddo/fkXvrxEXtXxoeW9vljfKYg3jN5/ZydeRUTFTrntr+f
 So7iYBVtR1Qe4/T40xo89JHb+SsRbAPDGXFJhn241FBOLcY3AywyZ3MIU
 PZ6pMxqc+lh//pFp8imYo9LRmLcIlliE51cfmRa6ZvSJvq0EDGpc6QnlG A==;
IronPort-SDR: qb8SBQ/9S965B9W39hCufnEnZWAlHep+VoXbthAFahLYtEFZa0ktVowW6n7SWepyswve41xa1m
 KGZb3gD6pAjIOJW3Kfg4wcC3fFX/T7SpqsXB+9dxbA0vOAbrzchD9/uF912La0LhsIydR98GAf
 9uTHqCHvBQRZJ6Xr1R4W/0JxQUuy6tPqZ9r3I2wnQJopx6aWMHbBH33gMvDecNAbRLvgOBhDmH
 zuoPA/kfx3Ga74d41Bkdjx2jrL04/GXmvVKlCdu7Mqn2poPbfl1BuWwrsALSIH0BA5QEn1g1nW
 /KY=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="71040901"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 07:43:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 07:43:07 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 21 Apr 2020 07:43:04 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Tue, 21 Apr 2020 16:37:51 +0200
Message-ID: <20200421143752.2248-11-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421143752.2248-1-horatiu.vultur@microchip.com>
References: <20200421143752.2248-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 10/11] bridge: mrp: Integrate MRP into
	the bridge
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

To integrate MRP into the bridge, the bridge needs to do the following:
- detect if the MRP frame was received on MRP ring port in that case it would be
  processed otherwise just forward it as usual.
- enable parsing of MRP
- before whenever the bridge was set up, it would set all the ports in
  forwarding state. Add an extra check to not set ports in forwarding state if
  the port is an MRP ring port. The reason of this change is that if the MRP
  instance initially sets the port in blocked state by setting the bridge up it
  would overwrite this setting.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_device.c  |  3 +++
 net/bridge/br_if.c      |  2 ++
 net/bridge/br_input.c   |  3 +++
 net/bridge/br_netlink.c |  5 +++++
 net/bridge/br_private.h | 31 +++++++++++++++++++++++++++++++
 5 files changed, 44 insertions(+)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 0e3dbc5f3c34..8ec1362588af 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -463,6 +463,9 @@ void br_dev_setup(struct net_device *dev)
 	spin_lock_init(&br->lock);
 	INIT_LIST_HEAD(&br->port_list);
 	INIT_HLIST_HEAD(&br->fdb_list);
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	INIT_LIST_HEAD(&br->mrp_list);
+#endif
 	spin_lock_init(&br->hash_lock);
 
 	br->bridge_id.prio[0] = 0x80;
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 4fe30b182ee7..ca685c0cdf95 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -333,6 +333,8 @@ static void del_nbp(struct net_bridge_port *p)
 	br_stp_disable_port(p);
 	spin_unlock_bh(&br->lock);
 
+	br_mrp_port_del(br, p);
+
 	br_ifinfo_notify(RTM_DELLINK, NULL, p);
 
 	list_del_rcu(&p->list);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index fcc260840028..d5c34f36f0f4 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -342,6 +342,9 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 		}
 	}
 
+	if (unlikely(br_mrp_process(p, skb)))
+		return RX_HANDLER_PASS;
+
 forward:
 	switch (p->state) {
 	case BR_STATE_FORWARDING:
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 4084f1ef8641..1a5e681a626a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -672,6 +672,11 @@ static int br_afspec(struct net_bridge *br,
 			if (err)
 				return err;
 			break;
+		case IFLA_BRIDGE_MRP:
+			err = br_mrp_parse(br, p, attr, cmd, extack);
+			if (err)
+				return err;
+			break;
 		}
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 835a70f8d3ea..5835828320b6 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1308,6 +1308,37 @@ unsigned long br_timer_value(const struct timer_list *timer);
 extern int (*br_fdb_test_addr_hook)(struct net_device *dev, unsigned char *addr);
 #endif
 
+/* br_mrp.c */
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
+		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
+int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
+bool br_mrp_enabled(struct net_bridge *br);
+void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p);
+#else
+static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
+			       struct nlattr *attr, int cmd,
+			       struct netlink_ext_ack *extack)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
+{
+	return 0;
+}
+
+static inline bool br_mrp_enabled(struct net_bridge *br)
+{
+	return 0;
+}
+
+static inline void br_mrp_port_del(struct net_bridge *br,
+				   struct net_bridge_port *p)
+{
+}
+#endif
+
 /* br_netlink.c */
 extern struct rtnl_link_ops br_link_ops;
 int br_netlink_init(void);
-- 
2.17.1


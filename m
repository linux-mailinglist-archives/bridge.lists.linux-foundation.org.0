Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCC231D24C
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DBB386DC0;
	Tue, 16 Feb 2021 21:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knuivavQoE-t; Tue, 16 Feb 2021 21:44:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4FEB86DBD;
	Tue, 16 Feb 2021 21:44:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B4BAC013A;
	Tue, 16 Feb 2021 21:44:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F255C013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E2BC8722F
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rp6ZJo+wWUrL for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:44:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 777C58722D
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511895; x=1645047895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=21JiiqEIgm5zFzzo3WjE3M2nVZRsuDLR5EdGNJxiEgU=;
 b=ecXVDJL263nrarzJD9JFlW+XBk575bH7N1lNtps/ymrHseY/XRqcrFZ5
 QtMhZJCgmTz3rKpBeXmaKNfbyPc4gXKlkLWIhZ9y8Kk72TFufG4LfaA9E
 eBx57zaV1gIJNiYFpgUYpFkqPmEhYrARbuB/R3Zcb6bpA8AWjKyYMvEGR
 QbqKCscchmuAmCn952mPyFpqrpX8uQkYOvEaF0/u1VFXorsaQI1r/rcD+
 tvFvCM5cM3ag+5JPqKtLaBlDmurKUStRy5PPAVbUMoLG04iyCrk2EFBB6
 y3lqapRY8v2azOeFq6j+ynF8YtWppEtBQLEPwHwyLMBWdrK44HfbVc2Yf w==;
IronPort-SDR: rFZo+EnCajOdqG6loZiGFSJeaRUUzS43m0EDS3lNMYtaSsmQ2po4JosbYewL1hbZCyAXCWOIRP
 8t6zCD7DrEGmaWwE2hTkzT40/xUnKJMi0DZLqWp6v/oWU9VsXw25gipyBdVg38nayRExmNQnok
 YPSVul1pqHmvluonHiqK4dsiMXSv9puaBxbCujSXxLMdDKYk5vHzvO4ZHlL5Oa3ub9/xLYObNA
 xB/d6B1zStgmScPzO3/PtSbBDgceW44q18U7C9UqPaRiX9QwRATP8T33+5V4mprL7FP9NIn+si
 SUY=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="109914805"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:43:28 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:43:25 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:42:05 +0100
Message-ID: <20210216214205.32385-9-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210216214205.32385-1-horatiu.vultur@microchip.com>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, rasmus.villemoes@prevas.dk,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 claudiu.manoil@nxp.com, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH net-next v4 8/8] net: dsa: felix: Add support for
	MRP
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Implement functions 'port_mrp_add', 'port_mrp_del',
'port_mrp_add_ring_role' and 'port_mrp_del_ring_role' to call the mrp
functions from ocelot.

Also all MRP frames that arrive to CPU on queue number OCELOT_MRP_CPUQ
will be forward by the SW.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/net/dsa/ocelot/felix.c | 38 ++++++++++++++++++++++++++++++++++
 net/dsa/tag_ocelot.c           |  8 +++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 800f27d65c6c..fa1c3f14bb88 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -1561,6 +1561,40 @@ static int felix_sb_occ_tc_port_bind_get(struct dsa_switch *ds, int port,
 					      pool_type, p_cur, p_max);
 }
 
+static int felix_mrp_add(struct dsa_switch *ds, int port,
+			 const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot *ocelot = ds->priv;
+
+	return ocelot_mrp_add(ocelot, port, mrp);
+}
+
+static int felix_mrp_del(struct dsa_switch *ds, int port,
+			 const struct switchdev_obj_mrp *mrp)
+{
+	struct ocelot *ocelot = ds->priv;
+
+	return ocelot_mrp_add(ocelot, port, mrp);
+}
+
+static int
+felix_mrp_add_ring_role(struct dsa_switch *ds, int port,
+			const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot *ocelot = ds->priv;
+
+	return ocelot_mrp_add_ring_role(ocelot, port, mrp);
+}
+
+static int
+felix_mrp_del_ring_role(struct dsa_switch *ds, int port,
+			const struct switchdev_obj_ring_role_mrp *mrp)
+{
+	struct ocelot *ocelot = ds->priv;
+
+	return ocelot_mrp_del_ring_role(ocelot, port, mrp);
+}
+
 const struct dsa_switch_ops felix_switch_ops = {
 	.get_tag_protocol		= felix_get_tag_protocol,
 	.change_tag_protocol		= felix_change_tag_protocol,
@@ -1615,6 +1649,10 @@ const struct dsa_switch_ops felix_switch_ops = {
 	.devlink_sb_occ_max_clear	= felix_sb_occ_max_clear,
 	.devlink_sb_occ_port_pool_get	= felix_sb_occ_port_pool_get,
 	.devlink_sb_occ_tc_port_bind_get= felix_sb_occ_tc_port_bind_get,
+	.port_mrp_add			= felix_mrp_add,
+	.port_mrp_del			= felix_mrp_del,
+	.port_mrp_add_ring_role		= felix_mrp_add_ring_role,
+	.port_mrp_del_ring_role		= felix_mrp_del_ring_role,
 };
 
 struct net_device *felix_port_to_netdev(struct ocelot *ocelot, int port)
diff --git a/net/dsa/tag_ocelot.c b/net/dsa/tag_ocelot.c
index f9df9cac81c5..743809b5806b 100644
--- a/net/dsa/tag_ocelot.c
+++ b/net/dsa/tag_ocelot.c
@@ -83,6 +83,7 @@ static struct sk_buff *ocelot_rcv(struct sk_buff *skb,
 	struct dsa_port *dp;
 	u8 *extraction;
 	u16 vlan_tpid;
+	u64 cpuq;
 
 	/* Revert skb->data by the amount consumed by the DSA master,
 	 * so it points to the beginning of the frame.
@@ -112,6 +113,7 @@ static struct sk_buff *ocelot_rcv(struct sk_buff *skb,
 	ocelot_xfh_get_qos_class(extraction, &qos_class);
 	ocelot_xfh_get_tag_type(extraction, &tag_type);
 	ocelot_xfh_get_vlan_tci(extraction, &vlan_tci);
+	ocelot_xfh_get_cpuq(extraction, &cpuq);
 
 	skb->dev = dsa_master_find_slave(netdev, 0, src_port);
 	if (!skb->dev)
@@ -126,6 +128,12 @@ static struct sk_buff *ocelot_rcv(struct sk_buff *skb,
 	skb->offload_fwd_mark = 1;
 	skb->priority = qos_class;
 
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	if (eth_hdr(skb)->h_proto == cpu_to_be16(ETH_P_MRP) &&
+	    cpuq & BIT(OCELOT_MRP_CPUQ))
+		skb->offload_fwd_mark = 0;
+#endif
+
 	/* Ocelot switches copy frames unmodified to the CPU. However, it is
 	 * possible for the user to request a VLAN modification through
 	 * VCAP_IS1_ACT_VID_REPLACE_ENA. In this case, what will happen is that
-- 
2.27.0


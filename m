Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9674331282F
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 00:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D23785585;
	Sun,  7 Feb 2021 23:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFkIXQJVpzFy; Sun,  7 Feb 2021 23:23:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 960EC85888;
	Sun,  7 Feb 2021 23:23:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 799FBC013A;
	Sun,  7 Feb 2021 23:23:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32208C0891
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DCDE86FF3
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bR3aDW9FhL5t for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 23:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DDA986FEF
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:17 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id w2so21748727ejk.13
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 15:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QRsNxzGQFppccEbDrAzAQZxrCw1vkgxA8/iJ+Ragx3U=;
 b=m59WEeCxgWWZb/rdO/f3mx2lkNSklmdBwbew55DbrdqSRbxuDmJcsfUNZYcZwmPPDN
 NGQfiobNiMrnvAdnoI1IagELs1nE7CZrNt4dM1Mfo29L4iiFXY4X7m/jQoBGu2W/DIdt
 aQqZcXPZl6s1CsL6vhQL3mCbW82C5ubqwM31JjCh6vx8xW2AprcbP21AQ9phdTKmHl1P
 e+ii2ZThvFtCxM/v4vurD1+geRpLWEHyGnsRiHw94M343YQntw5ZTWTXF1AyieIJPTds
 wAvV8xaPFSQ/EXx30kk2CmW/J6K+huKiymnW8PUJDs8gFk+fiHAxSKtH96XE/FrBd5FJ
 Yl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QRsNxzGQFppccEbDrAzAQZxrCw1vkgxA8/iJ+Ragx3U=;
 b=e0Y9b+ol/sxa5XxINzsEn0rEYOcKbvOE2H1OXLTmBWyeQBy/Y4Q21z/Sd34xk2PsXL
 QN5AkmBoBRdGCX02wBvuUaUpiXS8irlGdzeFwtdc9x4xkDrsOkqU3+Chm2xRk130XKKu
 x/oy72xOyxfutW2ckdi5xc0ziHhWKwTtjPXGgnBo4MivAFDIm+FyDtap5X++Xkpvj2Sd
 jqENKkZWJx/4z7gRocFDFdkz2UdFnhFqjugerwU1t/BASBoKtdrWEXBSNZcDKb0sp4rv
 OtbRZ4SlDXCjD2E1NpRfh9lyoQfwKjj7k55PMC7s/0O1dZctVKkVTZrhV/zB4Y/gPCKJ
 84Ew==
X-Gm-Message-State: AOAM530SStcnqO8tfeA5PGB0XHnHWkcNjWCGnQDRazOk3nnqxi2LLnBR
 bu+xyhdk0MO3UaXxfByKe5U=
X-Google-Smtp-Source: ABdhPJza32f6Qg/JIahyMSXGreUPQT5UkdkPMvCfBX4chge6VcsDk25poKrJdAtDPg9dvvtp5AdNTA==
X-Received: by 2002:a17:906:31c1:: with SMTP id
 f1mr14137180ejf.263.1612740196137; 
 Sun, 07 Feb 2021 15:23:16 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u21sm7540016ejj.120.2021.02.07.15.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 15:23:15 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Mon,  8 Feb 2021 01:21:40 +0200
Message-Id: <20210207232141.2142678-9-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210207232141.2142678-1-olteanv@gmail.com>
References: <20210207232141.2142678-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next 8/9] net: mscc: ocelot: offload bridge
	port flags to device
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

We should not be unconditionally enabling address learning, since doing
that is actively detrimential when a port is standalone and not offloading
a bridge. Namely, if a port in the switch is standalone and others are
offloading the bridge, then we could enter a situation where we learn an
address towards the standalone port, but the bridged ports could not
forward the packet there, because the CPU is the only path between the
standalone and the bridged ports. The solution of course is to not
enable address learning unless the bridge asks for it.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/net/dsa/ocelot/felix.c         |  9 ++++
 drivers/net/ethernet/mscc/ocelot.c     | 57 +++++++++++++++++++++++++-
 drivers/net/ethernet/mscc/ocelot_net.c |  4 ++
 include/soc/mscc/ocelot.h              |  4 ++
 4 files changed, 73 insertions(+), 1 deletion(-)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 1bd5aea12b25..4d1fef28b6cf 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -553,6 +553,14 @@ static void felix_bridge_stp_state_set(struct dsa_switch *ds, int port,
 	return ocelot_bridge_stp_state_set(ocelot, port, state);
 }
 
+static int felix_bridge_flags(struct dsa_switch *ds, int port,
+			      struct switchdev_brport_flags val)
+{
+	struct ocelot *ocelot = ds->priv;
+
+	return ocelot_port_bridge_flags(ocelot, port, val);
+}
+
 static int felix_bridge_join(struct dsa_switch *ds, int port,
 			     struct net_device *br)
 {
@@ -1358,6 +1366,7 @@ const struct dsa_switch_ops felix_switch_ops = {
 	.port_fdb_del			= felix_fdb_del,
 	.port_mdb_add			= felix_mdb_add,
 	.port_mdb_del			= felix_mdb_del,
+	.port_bridge_flags		= felix_bridge_flags,
 	.port_bridge_join		= felix_bridge_join,
 	.port_bridge_leave		= felix_bridge_leave,
 	.port_lag_join			= felix_lag_join,
diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index 8c1052346b58..c8bfc2f9534a 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -984,6 +984,7 @@ EXPORT_SYMBOL(ocelot_apply_bridge_fwd_mask);
 
 void ocelot_bridge_stp_state_set(struct ocelot *ocelot, int port, u8 state)
 {
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
 	u32 port_cfg;
 
 	if (!(BIT(port) & ocelot->bridge_mask))
@@ -996,7 +997,8 @@ void ocelot_bridge_stp_state_set(struct ocelot *ocelot, int port, u8 state)
 		ocelot->bridge_fwd_mask |= BIT(port);
 		fallthrough;
 	case BR_STATE_LEARNING:
-		port_cfg |= ANA_PORT_PORT_CFG_LEARN_ENA;
+		if (ocelot_port->brport_flags & BR_LEARNING)
+			port_cfg |= ANA_PORT_PORT_CFG_LEARN_ENA;
 		break;
 
 	default:
@@ -1253,6 +1255,7 @@ EXPORT_SYMBOL(ocelot_port_bridge_join);
 int ocelot_port_bridge_leave(struct ocelot *ocelot, int port,
 			     struct net_device *bridge)
 {
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
 	struct ocelot_vlan pvid = {0}, native_vlan = {0};
 	int ret;
 
@@ -1268,6 +1271,10 @@ int ocelot_port_bridge_leave(struct ocelot *ocelot, int port,
 	ocelot_port_set_pvid(ocelot, port, pvid);
 	ocelot_port_set_native_vlan(ocelot, port, native_vlan);
 
+	ocelot_port->brport_flags = 0;
+	ocelot_rmw_gix(ocelot, 0, ANA_PORT_PORT_CFG_LEARN_ENA,
+		       ANA_PORT_PORT_CFG, port);
+
 	return 0;
 }
 EXPORT_SYMBOL(ocelot_port_bridge_leave);
@@ -1480,6 +1487,54 @@ int ocelot_get_max_mtu(struct ocelot *ocelot, int port)
 }
 EXPORT_SYMBOL(ocelot_get_max_mtu);
 
+int ocelot_port_bridge_flags(struct ocelot *ocelot, int port,
+			     struct switchdev_brport_flags val)
+{
+	struct ocelot_port *ocelot_port = ocelot->ports[port];
+
+	if (val.mask & ~(BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_LEARNING))
+		return -EOPNOTSUPP;
+
+	if (val.mask & BR_LEARNING) {
+		u32 port_cfg = 0;
+
+		if (val.flags & BR_LEARNING)
+			port_cfg = ANA_PORT_PORT_CFG_LEARN_ENA;
+
+		ocelot_rmw_gix(ocelot, port_cfg, ANA_PORT_PORT_CFG_LEARN_ENA,
+			       ANA_PORT_PORT_CFG, port);
+	}
+	if (val.mask & BR_FLOOD) {
+		u32 pgid = 0;
+
+		if (val.flags & BR_FLOOD)
+			pgid = BIT(port);
+
+		ocelot_rmw_rix(ocelot, pgid, BIT(port), ANA_PGID_PGID, PGID_UC);
+	}
+	if (val.mask & BR_MCAST_FLOOD) {
+		u32 pgid = 0;
+
+		if (val.flags & BR_MCAST_FLOOD)
+			pgid = BIT(port);
+
+		ocelot_rmw_rix(ocelot, pgid, BIT(port), ANA_PGID_PGID, PGID_MC);
+	}
+	if (val.mask & BR_BCAST_FLOOD) {
+		u32 pgid = 0;
+
+		if (val.flags & BR_BCAST_FLOOD)
+			pgid = BIT(port);
+
+		ocelot_rmw_rix(ocelot, pgid, BIT(port), ANA_PGID_PGID, PGID_BC);
+	}
+
+	ocelot_port->brport_flags = val.flags;
+
+	return 0;
+}
+EXPORT_SYMBOL(ocelot_port_bridge_flags);
+
 void ocelot_init_port(struct ocelot *ocelot, int port)
 {
 	struct ocelot_port *ocelot_port = ocelot->ports[port];
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 8f12fa45b1b5..e5a07a1d7647 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -1025,6 +1025,10 @@ static int ocelot_port_attr_set(struct net_device *dev,
 	case SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED:
 		ocelot_port_attr_mc_set(ocelot, port, !attr->u.mc_disabled);
 		break;
+	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
+		err = ocelot_port_bridge_flags(ocelot, port,
+					       attr->u.brport_flags);
+		break;
 	default:
 		err = -EOPNOTSUPP;
 		break;
diff --git a/include/soc/mscc/ocelot.h b/include/soc/mscc/ocelot.h
index 7ee85527cb5f..d8b4b1d3be15 100644
--- a/include/soc/mscc/ocelot.h
+++ b/include/soc/mscc/ocelot.h
@@ -597,6 +597,8 @@ struct ocelot_port {
 
 	struct regmap			*target;
 
+	unsigned long			brport_flags;
+
 	bool				vlan_aware;
 	/* VLAN that untagged frames are classified to, on ingress */
 	struct ocelot_vlan		pvid_vlan;
@@ -764,6 +766,8 @@ void ocelot_adjust_link(struct ocelot *ocelot, int port,
 int ocelot_port_vlan_filtering(struct ocelot *ocelot, int port, bool enabled);
 void ocelot_bridge_stp_state_set(struct ocelot *ocelot, int port, u8 state);
 void ocelot_apply_bridge_fwd_mask(struct ocelot *ocelot);
+int ocelot_port_bridge_flags(struct ocelot *ocelot, int port,
+			     struct switchdev_brport_flags val);
 int ocelot_port_bridge_join(struct ocelot *ocelot, int port,
 			    struct net_device *bridge);
 int ocelot_port_bridge_leave(struct ocelot *ocelot, int port,
-- 
2.25.1


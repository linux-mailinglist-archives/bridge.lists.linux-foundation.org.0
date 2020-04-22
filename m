Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EDD1B4A48
	for <lists.bridge@lfdr.de>; Wed, 22 Apr 2020 18:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5123B86490;
	Wed, 22 Apr 2020 16:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDRkQ8WGgckL; Wed, 22 Apr 2020 16:22:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C40AF864E6;
	Wed, 22 Apr 2020 16:22:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ACF46C0175;
	Wed, 22 Apr 2020 16:22:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFADDC0175
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC4DB8645E
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZaSOFKniDXMm for <bridge@lists.linux-foundation.org>;
 Wed, 22 Apr 2020 16:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A46DB86475
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587572530; x=1619108530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=STOT9DJRFqfrL5VM7BinW9GzXe5DkR8Knwl0gfA4+BY=;
 b=ivEuO2sbsgmLTz9wD4Oz/oAiUqOThT+iMC2hg7FGCcRpJrLl4qXdGRe3
 s5fu7htpYfLgUHURoiFTawVe0TDJyaDB1K9U+pnGzAvGPiE9NSSVu9QCq
 OLSrMVhFbu/1pny3QA1hPpWNntQpvxBp/ZCd/zwKUPk6iaczCG8QuVFiP
 54acSGbJBboaa3HCThwPJpTN7+0vryjOGugFPIvCUHjXSp2vmfijeHkKs
 I5p/xXiMO1NOG5M7Wt0Xo30FO4LnJ1W0GKT0NTqWhklij/4BDMrlQs0Ya
 N9+urb1OIp+cqNEF7/CUqmAkoxqXDl1nI324ZudBcuudKukkfNh22LaW0 A==;
IronPort-SDR: Y8yvlYrRcEODHLbUfIKM/55yQLrUVWA2jcWA6UKFfdN+lvU2USL1i2b3DjQxBTZpkqSXdxBA4r
 tDwb3251HQj4T7IImgudBmkZaFCB6UuNDgH3cf+56Dgj9hENzdmUbWmB95D9UZhkiOJxcfGGLr
 5eeqHVWkvbyC5RPPKr1w2aKMVe5/QKM3v9DNwJy6PpVxGBspLLt384UMPxBrIMpIOTqAzpJ0XP
 yt/ViKRRsPQWGwgqkZCv9NsWXbJmoK0jqOPA2fpZ0v6v3rqW/lJ6TWqXDKMziUUh5NepRXYxHS
 hb0=
X-IronPort-AV: E=Sophos;i="5.73,304,1583218800"; d="scan'208";a="10060211"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Apr 2020 09:22:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 09:21:34 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 22 Apr 2020 09:22:06 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Wed, 22 Apr 2020 18:18:31 +0200
Message-ID: <20200422161833.1123-10-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200422161833.1123-1-horatiu.vultur@microchip.com>
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 09/11] bridge: mrp: Implement netlink
	interface to configure MRP
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

Implement netlink interface to configure MRP. The implementation
will do sanity checks over the attributes and then eventually call the MRP
interface.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 91 +++++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index b982db14bbf4..7b4b8b0dcea0 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -6,6 +6,97 @@
 #include "br_private.h"
 #include "br_private_mrp.h"
 
+static const struct nla_policy br_mrp_policy[IFLA_BRIDGE_MRP_MAX + 1] = {
+	[IFLA_BRIDGE_MRP_UNSPEC]	= { .type = NLA_REJECT },
+	[IFLA_BRIDGE_MRP_INSTANCE]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct br_mrp_instance)},
+	[IFLA_BRIDGE_MRP_PORT_STATE]	= { .type = NLA_U32 },
+	[IFLA_BRIDGE_MRP_PORT_ROLE]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct br_mrp_port_role)},
+	[IFLA_BRIDGE_MRP_RING_STATE]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct br_mrp_ring_state)},
+	[IFLA_BRIDGE_MRP_RING_ROLE]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct br_mrp_ring_role)},
+	[IFLA_BRIDGE_MRP_START_TEST]	= { .type = NLA_EXACT_LEN,
+					    .len = sizeof(struct br_mrp_start_test)},
+};
+
+int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
+		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[IFLA_BRIDGE_MRP_MAX + 1];
+	int err;
+
+	if (br->stp_enabled != BR_NO_STP) {
+		NL_SET_ERR_MSG_MOD(extack, "MRP can't be enabled if STP is already enabled\n");
+		return -EINVAL;
+	}
+
+	err = nla_parse_nested(tb, IFLA_BRIDGE_MRP_MAX, attr,
+			       br_mrp_policy, extack);
+	if (err)
+		return err;
+
+	if (tb[IFLA_BRIDGE_MRP_INSTANCE]) {
+		struct br_mrp_instance *instance =
+			nla_data(tb[IFLA_BRIDGE_MRP_INSTANCE]);
+
+		if (cmd == RTM_SETLINK)
+			err = br_mrp_add(br, instance);
+		else
+			err = br_mrp_del(br, instance);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_PORT_STATE]) {
+		enum br_mrp_port_state_type state =
+			nla_get_u32(tb[IFLA_BRIDGE_MRP_PORT_STATE]);
+
+		err = br_mrp_set_port_state(p, state);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_PORT_ROLE]) {
+		struct br_mrp_port_role *role =
+			nla_data(tb[IFLA_BRIDGE_MRP_PORT_ROLE]);
+
+		err = br_mrp_set_port_role(p, role);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_RING_STATE]) {
+		struct br_mrp_ring_state *state =
+			nla_data(tb[IFLA_BRIDGE_MRP_RING_STATE]);
+
+		err = br_mrp_set_ring_state(br, state);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_RING_ROLE]) {
+		struct br_mrp_ring_role *role =
+			nla_data(tb[IFLA_BRIDGE_MRP_RING_ROLE]);
+
+		err = br_mrp_set_ring_role(br, role);
+		if (err)
+			return err;
+	}
+
+	if (tb[IFLA_BRIDGE_MRP_START_TEST]) {
+		struct br_mrp_start_test *test =
+			nla_data(tb[IFLA_BRIDGE_MRP_START_TEST]);
+
+		err = br_mrp_start_test(br, test);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 int br_mrp_port_open(struct net_device *dev, u8 loc)
 {
 	struct net_bridge_port *p;
-- 
2.17.1


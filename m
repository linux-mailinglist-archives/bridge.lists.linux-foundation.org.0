Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8141B0F70
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 17:11:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE98386DEA;
	Mon, 20 Apr 2020 15:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOCeqERyz3Mh; Mon, 20 Apr 2020 15:11:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FBFC86E1A;
	Mon, 20 Apr 2020 15:11:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 13884C0177;
	Mon, 20 Apr 2020 15:11:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A96BCC0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 98EA987D94
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWHGe-igT4P7 for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 15:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16F1987CB2
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 15:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587395507; x=1618931507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=tkYp8mXQrOUGLAhorBLa4Xkt3DBf8TC1ccFt4FP8Myo=;
 b=2gnbpn21aevri2+1N4TaqUWBpbKc1J88RNTpDJM53LZQVWJ4HJHaTWHa
 3qhC0kcVImCU2epkix4M76sjisXhsqUirBa/hwi7vJwm+Jrmk0Ggq8mCv
 Dv04/ExYd5S59Qdt6tJKoQezWhZZBQEY1eZxUW4FehXD0c9Sibjm8/DOZ
 b2cUKRiXibIkfHhnWoyk6vAO2bMyLGN9MN4dD5v27mI7/l9qUKsp4LlA0
 Ve35PpHdhKI906YEVrwcQzVXWJdcLDd233J9RRlcc03nJn8g/pNY/kcaQ
 I8anZTdGXKziuQ/cPCPIaxBPO7PBt9sJqz4pLnhHVDPRDUQPZgtvgko4+ A==;
IronPort-SDR: LarK3s0nLkWt/N33MkLqmds25wknG4Yk76gVesC5UFCm+AQZF57WjIdekGhBebzCnoWpTSPtUI
 qK5VHfXk6eO1gA+0ObE6nwRI08CfAK0lJskkPbR0Pn/O3WgM+6rJ7ZNvWM8UEHt7o148EEhc0J
 kk73xjL3cuVJ92EiZi2xYr+QIXReNlm12U9hrFad548Yw/fSRX5umxU/os9cTp1mj72tHXzLyl
 HP7F2yLmGPsSPJH4xK6SIyPz5oS0lYrIS0pOJPwyRRSFrqFoAbYNQIwFYbCOg3l1V+LTC4iRDz
 JNI=
X-IronPort-AV: E=Sophos;i="5.72,406,1580799600"; d="scan'208";a="70911705"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:11:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:11:45 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Apr 2020 08:11:15 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 20 Apr 2020 17:09:36 +0200
Message-ID: <20200420150947.30974-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420150947.30974-1-horatiu.vultur@microchip.com>
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 02/13] net: bridge: Add port attribute
	IFLA_BRPORT_MRP_RING_OPEN
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

This patch adds a new port attribute, IFLA_BRPORT_MRP_RING_OPEN, which allows
to notify the userspace when the port lost the continuite of MRP frames.

This attribute is set by kernel whenever the SW or HW detects that the ring is
being open or closed.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/if_link.h       | 1 +
 net/bridge/br_netlink.c            | 6 ++++++
 net/bridge/br_private.h            | 4 ++++
 tools/include/uapi/linux/if_link.h | 1 +
 4 files changed, 12 insertions(+)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 61e0801c82df..4a295deb933b 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -343,6 +343,7 @@ enum {
 	IFLA_BRPORT_NEIGH_SUPPRESS,
 	IFLA_BRPORT_ISOLATED,
 	IFLA_BRPORT_BACKUP_PORT,
+	IFLA_BRPORT_MRP_RING_OPEN,
 	__IFLA_BRPORT_MAX
 };
 #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 43dab4066f91..2f3a9e50c168 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -151,6 +151,9 @@ static inline size_t br_port_info_size(void)
 		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MULTICAST_ROUTER */
 #endif
 		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_GROUP_FWD_MASK */
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MRP_RING_OPEN */
+#endif
 		+ 0;
 }
 
@@ -213,6 +216,9 @@ static int br_port_fill_attrs(struct sk_buff *skb,
 	    nla_put_u16(skb, IFLA_BRPORT_GROUP_FWD_MASK, p->group_fwd_mask) ||
 	    nla_put_u8(skb, IFLA_BRPORT_NEIGH_SUPPRESS,
 		       !!(p->flags & BR_NEIGH_SUPPRESS)) ||
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	    nla_put_u8(skb, IFLA_BRPORT_MRP_RING_OPEN, p->loc) ||
+#endif
 	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
 		return -EMSGSIZE;
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1f97703a52ff..735ec6ff86cc 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -289,6 +289,10 @@ struct net_bridge_port {
 	u16				backup_redirected_cnt;
 
 	struct bridge_stp_xstats	stp_xstats;
+
+#if IS_ENABLED(CONFIG_BRIDGE_MRP)
+	u8				loc;
+#endif
 };
 
 #define kobj_to_brport(obj)	container_of(obj, struct net_bridge_port, kobj)
diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
index 024af2d1d0af..70dae9ba16f4 100644
--- a/tools/include/uapi/linux/if_link.h
+++ b/tools/include/uapi/linux/if_link.h
@@ -343,6 +343,7 @@ enum {
 	IFLA_BRPORT_NEIGH_SUPPRESS,
 	IFLA_BRPORT_ISOLATED,
 	IFLA_BRPORT_BACKUP_PORT,
+	IFLA_BRPORT_MRP_RING_OPEN,
 	__IFLA_BRPORT_MAX
 };
 #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
-- 
2.17.1


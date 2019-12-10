Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F41B9119571
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 22:21:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94C5087D13;
	Tue, 10 Dec 2019 21:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgcgOfBsKIa3; Tue, 10 Dec 2019 21:21:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0338487CB8;
	Tue, 10 Dec 2019 21:21:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A5DB5C1797;
	Tue, 10 Dec 2019 21:21:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CAD2FC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFF9322786
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lV-Iba2k1oKv for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 21:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A56D22773
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:21:00 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id b18so4804997qvo.8
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 13:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AtJD3PdB/FMNuFQ+XD+4vKTZusrVALZiKrSm4mB8WGQ=;
 b=qUvKb9sWV3oNEU77nkCt78CD3Br0Xrn/vOCD7Rovg6S7KICfMPf6CJ6ZqTH6+IrGoj
 Is0Yx8djY8XjxPX/+3H6z3yuFVclSCUbqyCNAql8egtg70z7RhQu1dShhH5wEFmnoY5e
 mUHl1EkiNf4lu1P0zhvCk3UoIN0AdyIvNBegJiYnI1NcjcMmMlRdj8bH6c67vf7pclIb
 Wu0QuSR7OMdK65pMDEm6yrU6+QEe/qVJ3YUi+xivclmsQM02UJHP6a51Q8owIo0wlRr6
 +AdP3AjiBZUIO5uU3D0tedbbW4waanQqFp5cJv418F8zudxD+/CCg42NH/ilEDYb0Nrg
 u6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AtJD3PdB/FMNuFQ+XD+4vKTZusrVALZiKrSm4mB8WGQ=;
 b=oOL+b6iYKQWD4GKtoOdax9ffcPcxLxW0TbP6RNuObmaARRWqYGfOQRwGDIdI37XHFy
 4bj1ebfwe5Zt3cwqINbw5fK0npt4RAo5E+wcZjt4GdogZ1rGG2nVkAzIyCZZqgtihTAf
 v8yOZo4P4LcCGCRoDqpUOArOCcnmxVTor++lxJfXXSL4WzrS36aF+1LiHV7iHSqa8r8I
 Js6HZjePe0ZowLQeFUNX4BkUknzq3E1bDKGPVznDRTCUb1nvIvGihwzSp2jpfDQXBtZQ
 JLXTxwU90tlyJY625tVIlK7l7p5wpizw1osGFEngMOzFFYHciUUp4KzFOegJYJneldNF
 IGaA==
X-Gm-Message-State: APjAAAUFpY8KJc/5BqABVKl/74cXiQP13QHmSYmM6RpfS6WZX/jz7nrh
 KDbZ4qjNHxFbSGb94Th+9j0=
X-Google-Smtp-Source: APXvYqyt8+4V+bhDq4IhcraE593a4Df/l8OvUPVxAclpFPOb4GBb3wNITBDp3e1+M4rPMe4Z2br1Ig==
X-Received: by 2002:a05:6214:4f2:: with SMTP id
 cl18mr31126357qvb.89.1576012859295; 
 Tue, 10 Dec 2019 13:20:59 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id s26sm1351160qkj.24.2019.12.10.13.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 13:20:58 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Tue, 10 Dec 2019 16:20:49 -0500
Message-Id: <20191210212050.1470909-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
transition_fwd xstats counters to the bridge ports copied over via
netlink, providing useful information for STP.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 include/uapi/linux/if_bridge.h | 10 ++++++++++
 net/bridge/br_netlink.c        | 10 ++++++++++
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_stp.c            | 15 +++++++++++++++
 net/bridge/br_stp_bpdu.c       |  4 ++++
 5 files changed, 41 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 1b3c2b643a02..e7f2bb782006 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -156,6 +156,15 @@ struct bridge_vlan_xstats {
 	__u32 pad2;
 };
 
+struct bridge_stp_xstats {
+	__u64 transition_blk;
+	__u64 transition_fwd;
+	__u64 rx_bpdu;
+	__u64 tx_bpdu;
+	__u64 rx_tcn;
+	__u64 tx_tcn;
+};
+
 /* Bridge multicast database attributes
  * [MDBA_MDB] = {
  *     [MDBA_MDB_ENTRY] = {
@@ -261,6 +270,7 @@ enum {
 	BRIDGE_XSTATS_UNSPEC,
 	BRIDGE_XSTATS_VLAN,
 	BRIDGE_XSTATS_MCAST,
+	BRIDGE_XSTATS_STP,
 	BRIDGE_XSTATS_PAD,
 	__BRIDGE_XSTATS_MAX
 };
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index a0a54482aabc..d339cc314357 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1597,6 +1597,16 @@ static int br_fill_linkxstats(struct sk_buff *skb,
 		}
 	}
 
+	if (p) {
+		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
+					sizeof(p->stp_xstats),
+					BRIDGE_XSTATS_PAD);
+		if (!nla)
+			goto nla_put_failure;
+
+		memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
+	}
+
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	if (++vl_idx >= *prividx) {
 		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_MCAST,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 36b0367ca1e0..f540f3bdf294 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -283,6 +283,8 @@ struct net_bridge_port {
 #endif
 	u16				group_fwd_mask;
 	u16				backup_redirected_cnt;
+
+	struct bridge_stp_xstats	stp_xstats;
 };
 
 #define kobj_to_brport(obj)	container_of(obj, struct net_bridge_port, kobj)
diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 1f1410f8d312..6856a6d9282b 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -45,6 +45,17 @@ void br_set_state(struct net_bridge_port *p, unsigned int state)
 		br_info(p->br, "port %u(%s) entered %s state\n",
 				(unsigned int) p->port_no, p->dev->name,
 				br_port_state_names[p->state]);
+
+	if (p->br->stp_enabled == BR_KERNEL_STP) {
+		switch (p->state) {
+		case BR_STATE_BLOCKING:
+			p->stp_xstats.transition_blk++;
+			break;
+		case BR_STATE_FORWARDING:
+			p->stp_xstats.transition_fwd++;
+			break;
+		}
+	}
 }
 
 /* called under bridge lock */
@@ -484,6 +495,8 @@ void br_received_config_bpdu(struct net_bridge_port *p,
 	struct net_bridge *br;
 	int was_root;
 
+	p->stp_xstats.rx_bpdu++;
+
 	br = p->br;
 	was_root = br_is_root_bridge(br);
 
@@ -517,6 +530,8 @@ void br_received_config_bpdu(struct net_bridge_port *p,
 /* called under bridge lock */
 void br_received_tcn_bpdu(struct net_bridge_port *p)
 {
+	p->stp_xstats.rx_tcn++;
+
 	if (br_is_designated_port(p)) {
 		br_info(p->br, "port %u(%s) received tcn bpdu\n",
 			(unsigned int) p->port_no, p->dev->name);
diff --git a/net/bridge/br_stp_bpdu.c b/net/bridge/br_stp_bpdu.c
index 7796dd9d42d7..0e4572f31330 100644
--- a/net/bridge/br_stp_bpdu.c
+++ b/net/bridge/br_stp_bpdu.c
@@ -118,6 +118,8 @@ void br_send_config_bpdu(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
 	br_set_ticks(buf+33, bpdu->forward_delay);
 
 	br_send_bpdu(p, buf, 35);
+
+	p->stp_xstats.tx_bpdu++;
 }
 
 /* called under bridge lock */
@@ -133,6 +135,8 @@ void br_send_tcn_bpdu(struct net_bridge_port *p)
 	buf[2] = 0;
 	buf[3] = BPDU_TYPE_TCN;
 	br_send_bpdu(p, buf, 4);
+
+	p->stp_xstats.tx_tcn++;
 }
 
 /*
-- 
2.24.0


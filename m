Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A09C11C1DD
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 02:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1227F88713;
	Thu, 12 Dec 2019 01:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2RMwzplRq1g8; Thu, 12 Dec 2019 01:07:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DAD18871E;
	Thu, 12 Dec 2019 01:07:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D997C0881;
	Thu, 12 Dec 2019 01:07:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D53CCC0881
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0D68204F7
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-I7yvSo7TzH for <bridge@lists.linux-foundation.org>;
 Thu, 12 Dec 2019 01:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B9B43204CE
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 01:07:23 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id k6so249096qki.5
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 17:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FupJ3RGGSuXqZLNq9OYkiWJfWzpWGpZdY0+xiHFNf5k=;
 b=PjjiqJD70gViXxHlckRfHszeRsbEJIdein9bLpB5qNeYEkSfEoTyWW9wkU27svoDy0
 0mxU/QUmL6fRlJtD0dKcT/Q9P5+Ovr2iasAgSLBLpK5Mdc2YSJWsqNsP8Adqs4jmSIb6
 zUPRkCxxbBPNlANZHRj+fZcJtOM/fWE5aHguHGBChkGGJX6KOW4ZXO597JCrxEK3Cyh4
 jj3rxyymrXrUObd0sw+sFVJBltdo67iqcrdu35p/12jQDm6ByLD3HfVecZkA2e6SWWRH
 Z8Qr1Va2idjdJxmpP1U77twQjydNksoo9NtHmK3QLmB9pbbRoOk+GouyAzdUstI00J2B
 Yf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FupJ3RGGSuXqZLNq9OYkiWJfWzpWGpZdY0+xiHFNf5k=;
 b=G28gwboy4OHd1ermZR7FxKG3oXpt5dQtlqTW3i8YfIbWNP2yKgJR5C+2lcOTcCyeOC
 /GHlfpu8oqSJviIPDry18Oe1oYjeI3flRD/G58AB/VON53K4EYOwdVEJ460EJgTFdN/1
 vKvakN2vc/pUMeUihDuMzQwQ9ZRiuf/7HhXsa+ELGIVVe4YLDpL4oNPn57MHTbyD1LW1
 bAE+5IvE+dE8AJNSQqRRlEPuUiu+vGtMYqC3RVE9WI8SOiruQYqF5UA9g/Wzv8TXwD6F
 gRLoIknuyrdsFPdyEIh4LsiAPYEFh9m39M0f137/NZdFAEjjbWhRefqPD24WbzsaGZ5+
 nBBg==
X-Gm-Message-State: APjAAAUh+rbYYGmzpm+bYfLMHoTK7yygIC6BHwd9bGPwYrbKnJnQscbY
 Lchh/aaFhDnp6Z/s9qEt/ac=
X-Google-Smtp-Source: APXvYqxGprr/mAqF6JwMzrw9GeYyV1ZvN2/gkQuSUvX6dGvRZqrZvRbXveEiLEf/uH2nVDK2ZK0gZg==
X-Received: by 2002:a05:620a:b19:: with SMTP id
 t25mr6025198qkg.82.1576112842707; 
 Wed, 11 Dec 2019 17:07:22 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id b7sm1233208qkh.106.2019.12.11.17.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 17:07:22 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Wed, 11 Dec 2019 20:07:10 -0500
Message-Id: <20191212010711.1664000-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 David Ahern <dsahern@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v3] net: bridge: add STP xstats
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
 net/bridge/br_netlink.c        | 13 +++++++++++++
 net/bridge/br_private.h        |  2 ++
 net/bridge/br_stp.c            | 15 +++++++++++++++
 net/bridge/br_stp_bpdu.c       |  4 ++++
 5 files changed, 44 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 1b3c2b643a02..4a58e3d7de46 100644
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
@@ -262,6 +271,7 @@ enum {
 	BRIDGE_XSTATS_VLAN,
 	BRIDGE_XSTATS_MCAST,
 	BRIDGE_XSTATS_PAD,
+	BRIDGE_XSTATS_STP,
 	__BRIDGE_XSTATS_MAX
 };
 #define BRIDGE_XSTATS_MAX (__BRIDGE_XSTATS_MAX - 1)
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index a0a54482aabc..60136575aea4 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1607,6 +1607,19 @@ static int br_fill_linkxstats(struct sk_buff *skb,
 		br_multicast_get_stats(br, p, nla_data(nla));
 	}
 #endif
+
+	if (p) {
+		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
+					sizeof(p->stp_xstats),
+					BRIDGE_XSTATS_PAD);
+		if (!nla)
+			goto nla_put_failure;
+
+		spin_lock_bh(&br->lock);
+		memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
+		spin_unlock_bh(&br->lock);
+	}
+
 	nla_nest_end(skb, nest);
 	*prividx = 0;
 
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


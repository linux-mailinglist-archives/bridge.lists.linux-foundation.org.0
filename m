Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9732B7004
	for <lists.bridge@lfdr.de>; Tue, 17 Nov 2020 21:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FB6287027;
	Tue, 17 Nov 2020 20:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 39FjP8C9whH4; Tue, 17 Nov 2020 20:25:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8B47870B2;
	Tue, 17 Nov 2020 20:25:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8EFCCC07FF;
	Tue, 17 Nov 2020 20:25:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F933C07FF
 for <bridge@lists.linux-foundation.org>; Tue, 17 Nov 2020 20:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37B8A85629
 for <bridge@lists.linux-foundation.org>; Tue, 17 Nov 2020 20:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z26ZoicGs9PC for <bridge@lists.linux-foundation.org>;
 Tue, 17 Nov 2020 20:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF47585631
 for <bridge@lists.linux-foundation.org>; Tue, 17 Nov 2020 20:25:52 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 10so4727837wml.2
 for <bridge@lists.linux-foundation.org>; Tue, 17 Nov 2020 12:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=dA5ORCixvDnHt8lZ+8efwT8Ww5B3A4OyTdr+7FHfaeI=;
 b=ehP1Kk8GttGRKsMhjNLhnvpebYQvBh4AcPNTVW5qv9GhaaRWS4Q/a0c+m3pAGJUjf1
 S3Gf+RPEvWq99E+cmbCfIXFps3WWrAfKbgTnV0XF1ZOBE259TTk5dsFjX0LJ2+ghwNSo
 y9/NgmtSrypzcnSPlBxzGtUm4T8fi1AcTvOuLsRkTrgaL25eXp4Yt+Fnj3uBJYpdAn5b
 z9yUft7fqN7tzTEMPybLxKMm43bMBDh4df7Sw3gUwv4HvHk7YwuaECI4DeVq9lkZlfE/
 xNhWZ6fUcipIHueGax4vY/wlCmawTdXzdf9EF9RknjZLKZ2syUXmRlNX8ecJVzYJHdFP
 UK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=dA5ORCixvDnHt8lZ+8efwT8Ww5B3A4OyTdr+7FHfaeI=;
 b=GQzY11nF5q+wQjy+yE3RJQ0EAn1WhE0gfn2+TyS7VgVaC/+yIxsBFYgfF2Sg1XZ56h
 DauplyjITGEt6hWv0S67AHxN/8rh8wplJlIOefWB+NG4k2ifdu8r/1NKZMBXTyIW3IAn
 YvefzI/rdw+HR6pblKH21lnGG/TmZNx08Mn2KCjpiUBeXvDe9WYKTxc5rsymyXRp4yTh
 ww8OZAuqsI8rBNyn1wXl/iBb26G9P864/TMqFkqG0So+wCiQbkhXQq9jvVJOsI7rOdx6
 fhtGriAsI0B3rFsBWPwMhr/+/UL/cVyib+A4O7AZbmvLAnEbOnWhoL6FTfhxgtRnSaRD
 7VSw==
X-Gm-Message-State: AOAM532q+3898dsodC41KqAKJBLruuN/kUmfzmzoDj526u3sbNhPRLay
 qHTMb7Gb97/v3h1LuJxg7y0=
X-Google-Smtp-Source: ABdhPJy9ukEa00ey3D0FGlDYRZUZTpvTS/i2DYSPoFS4OHQigWofzDjPQ/ajwr0lNM0a74h6m80pyQ==
X-Received: by 2002:a1c:230e:: with SMTP id j14mr799504wmj.187.1605644751300; 
 Tue, 17 Nov 2020 12:25:51 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:44e4:5b02:13:99de?
 (p200300ea8f23280044e45b02001399de.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:44e4:5b02:13:99de])
 by smtp.googlemail.com with ESMTPSA id i16sm29923191wru.92.2020.11.17.12.25.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Nov 2020 12:25:50 -0800 (PST)
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <04d25c3d-c5f6-3611-6d37-c2f40243dae2@gmail.com>
Date: Tue, 17 Nov 2020 21:25:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next] net: bridge: replace struct br_vlan_stats
 with pcpu_sw_netstats
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

Struct br_vlan_stats duplicates pcpu_sw_netstats (apart from
br_vlan_stats not defining an alignment requirement), therefore
switch to using the latter one.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 net/bridge/br_netlink.c |  2 +-
 net/bridge/br_private.h | 14 +++-----------
 net/bridge/br_vlan.c    | 15 ++++++++-------
 3 files changed, 12 insertions(+), 19 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 6952d4852..49700ce0e 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1724,7 +1724,7 @@ static int br_fill_linkxstats(struct sk_buff *skb,
 		pvid = br_get_pvid(vg);
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			struct bridge_vlan_xstats vxi;
-			struct br_vlan_stats stats;
+			struct pcpu_sw_netstats stats;
 
 			if (++vl_idx < *prividx)
 				continue;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 9a99af59b..d538ccec0 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -89,14 +89,6 @@ struct bridge_mcast_stats {
 };
 #endif
 
-struct br_vlan_stats {
-	u64 rx_bytes;
-	u64 rx_packets;
-	u64 tx_bytes;
-	u64 tx_packets;
-	struct u64_stats_sync syncp;
-};
-
 struct br_tunnel_info {
 	__be64			tunnel_id;
 	struct metadata_dst	*tunnel_dst;
@@ -137,7 +129,7 @@ struct net_bridge_vlan {
 	u16				flags;
 	u16				priv_flags;
 	u8				state;
-	struct br_vlan_stats __percpu	*stats;
+	struct pcpu_sw_netstats __percpu *stats;
 	union {
 		struct net_bridge	*br;
 		struct net_bridge_port	*port;
@@ -1092,7 +1084,7 @@ void nbp_vlan_flush(struct net_bridge_port *port);
 int nbp_vlan_init(struct net_bridge_port *port, struct netlink_ext_ack *extack);
 int nbp_get_num_vlan_infos(struct net_bridge_port *p, u32 filter_mask);
 void br_vlan_get_stats(const struct net_bridge_vlan *v,
-		       struct br_vlan_stats *stats);
+		       struct pcpu_sw_netstats *stats);
 void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
 int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
 			 void *ptr);
@@ -1288,7 +1280,7 @@ static inline struct net_bridge_vlan_group *nbp_vlan_group_rcu(
 }
 
 static inline void br_vlan_get_stats(const struct net_bridge_vlan *v,
-				     struct br_vlan_stats *stats)
+				     struct pcpu_sw_netstats *stats)
 {
 }
 
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 3e493eb85..11f54a7c0 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -270,7 +270,8 @@ static int __vlan_add(struct net_bridge_vlan *v, u16 flags,
 			goto out_filt;
 		v->brvlan = masterv;
 		if (br_opt_get(br, BROPT_VLAN_STATS_PER_PORT)) {
-			v->stats = netdev_alloc_pcpu_stats(struct br_vlan_stats);
+			v->stats =
+			     netdev_alloc_pcpu_stats(struct pcpu_sw_netstats);
 			if (!v->stats) {
 				err = -ENOMEM;
 				goto out_filt;
@@ -421,7 +422,7 @@ struct sk_buff *br_handle_vlan(struct net_bridge *br,
 			       struct net_bridge_vlan_group *vg,
 			       struct sk_buff *skb)
 {
-	struct br_vlan_stats *stats;
+	struct pcpu_sw_netstats *stats;
 	struct net_bridge_vlan *v;
 	u16 vid;
 
@@ -474,7 +475,7 @@ static bool __allowed_ingress(const struct net_bridge *br,
 			      struct sk_buff *skb, u16 *vid,
 			      u8 *state)
 {
-	struct br_vlan_stats *stats;
+	struct pcpu_sw_netstats *stats;
 	struct net_bridge_vlan *v;
 	bool tagged;
 
@@ -708,7 +709,7 @@ int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags, bool *changed,
 	if (!vlan)
 		return -ENOMEM;
 
-	vlan->stats = netdev_alloc_pcpu_stats(struct br_vlan_stats);
+	vlan->stats = netdev_alloc_pcpu_stats(struct pcpu_sw_netstats);
 	if (!vlan->stats) {
 		kfree(vlan);
 		return -ENOMEM;
@@ -1262,14 +1263,14 @@ void nbp_vlan_flush(struct net_bridge_port *port)
 }
 
 void br_vlan_get_stats(const struct net_bridge_vlan *v,
-		       struct br_vlan_stats *stats)
+		       struct pcpu_sw_netstats *stats)
 {
 	int i;
 
 	memset(stats, 0, sizeof(*stats));
 	for_each_possible_cpu(i) {
 		u64 rxpackets, rxbytes, txpackets, txbytes;
-		struct br_vlan_stats *cpu_stats;
+		struct pcpu_sw_netstats *cpu_stats;
 		unsigned int start;
 
 		cpu_stats = per_cpu_ptr(v->stats, i);
@@ -1585,7 +1586,7 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
 static bool br_vlan_stats_fill(struct sk_buff *skb,
 			       const struct net_bridge_vlan *v)
 {
-	struct br_vlan_stats stats;
+	struct pcpu_sw_netstats stats;
 	struct nlattr *nest;
 
 	nest = nla_nest_start(skb, BRIDGE_VLANDB_ENTRY_STATS);
-- 
2.29.2


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF5189C7F
	for <lists.bridge@lfdr.de>; Wed, 18 Mar 2020 14:04:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83D3887E9B;
	Wed, 18 Mar 2020 13:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nEbOXl5T0HtN; Wed, 18 Mar 2020 13:04:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F43187E9D;
	Wed, 18 Mar 2020 13:04:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1183EC013E;
	Wed, 18 Mar 2020 13:04:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4E192C013E
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 13:04:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42DAB87E9B
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 13:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cP462CDAjmVW for <bridge@lists.linux-foundation.org>;
 Wed, 18 Mar 2020 13:04:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2CBFE87E90
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 13:04:11 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id x143so4072522lff.12
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 06:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L4yQJluOvc46lNyqqVb7se6AVE/Gv7oCJyL3ecL5y8E=;
 b=hzjFpIyR5P6z3ucc8PqCSysdAnjqk/dzMlwCscfvCsq9DyHXLoXyVDpr6MEMAZ8/lw
 df06enFrsk90Yc1ssz3A6CSJwfofEcyrX038b1vwbxPRNk2Yl+zxOQ8fJ9/g9pyVV3tE
 nxiEm18/XDSfGyy7rO79SD7Ch4gIp3cxnkxjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L4yQJluOvc46lNyqqVb7se6AVE/Gv7oCJyL3ecL5y8E=;
 b=qDYRYTgGknaf2NLqVrsy+oxjAtRbN8Bmok7EvqSAOaqnLY8BkJnab5YIsyJwl46PIF
 fv9qHB6oid83ew88wstOu77fOUwA+nKYvrmoJ+SDEDhsNjW8BE7DWzSegL8zFvDJ+83N
 VAtQhcH1OVZBQqR8URevL7ZqzrGGCw9a3zPtQfhlHa82mlZaMcZ8AcDtN9pDR7eC7M28
 M8b4W9e5kYwyssNUddlHARAYU4YuuJd0ytfFehfmOFLZf3rqOcjaalR31C3sXQySd0EH
 iehmVG4ybgM03/TbNHBQhFEA1bAAth39pAnn+Wj8VHEpdUES2Pw5odeyQnmZSfeDp6ze
 IKJA==
X-Gm-Message-State: ANhLgQ2CtvbXM4ZXcc1Jl5jgvrEbbfAkLF5XxW9JMX5ymo8ea2L3k5sp
 LrZvPmJqBEPLFN9r3OmdqShCSg==
X-Google-Smtp-Source: ADFU+vs2xcl+H0IsaDmTdFXuU/T/kxXtS4+mJrhnTe/rONX3bjTjl7o5kxf9K3BwiyEZ4k4zMVSZQA==
X-Received: by 2002:a19:8c4d:: with SMTP id i13mr2942888lfj.42.1584536648083; 
 Wed, 18 Mar 2020 06:04:08 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id z21sm4327384ljz.49.2020.03.18.06.04.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 06:04:07 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Mar 2020 15:03:25 +0200
Message-Id: <20200318130325.100508-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next] net: bridge: vlan: include stats in dumps
	if requested
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

This patch adds support for vlan stats to be included when dumping vlan
information. We have to dump them only when explicitly requested (thus the
flag below) because that disables the vlan range compression and will make
the dump significantly larger. In order to request the stats dump we turn
one of the br_vlan_msg reserved fields into a flag field and check it for:
  - BRIDGE_VLMSG_FLAG_DUMP_STATS
The stats are intentionally nested and put into separate attributes to make
it easier for extending later since we plan to add per-vlan mcast stats,
drop stats and possibly STP stats. This is the last missing piece from the
new vlan API which makes the dumped vlan information complete.

A vlandb entry attribute with stats looks like:
 [BRIDGE_VLANDB_ENTRY] = {
     [BRIDGE_VLANDB_ENTRY_STATS] = {
         [BRIDGE_VLANDB_STATS_RX_BYTES]
         [BRIDGE_VLANDB_STATS_RX_PACKETS]
         ...
     }
 }

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h | 24 ++++++++++++-
 net/bridge/br_vlan.c           | 62 ++++++++++++++++++++++++++++------
 2 files changed, 74 insertions(+), 12 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 54010b49c093..13b76a4e7ed8 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -170,11 +170,13 @@ struct bridge_stp_xstats {
 /* Bridge vlan RTM header */
 struct br_vlan_msg {
 	__u8 family;
-	__u8 reserved1;
+	__u8 flags;
 	__u16 reserved2;
 	__u32 ifindex;
 };
 
+#define BRIDGE_VLMSG_FLAG_DUMP_STATS	(1 << 0) /* Include stats in the dump */
+
 /* Bridge vlan RTM attributes
  * [BRIDGE_VLANDB_ENTRY] = {
  *     [BRIDGE_VLANDB_ENTRY_INFO]
@@ -194,10 +196,30 @@ enum {
 	BRIDGE_VLANDB_ENTRY_RANGE,
 	BRIDGE_VLANDB_ENTRY_STATE,
 	BRIDGE_VLANDB_ENTRY_TUNNEL_ID,
+	BRIDGE_VLANDB_ENTRY_STATS,
 	__BRIDGE_VLANDB_ENTRY_MAX,
 };
 #define BRIDGE_VLANDB_ENTRY_MAX (__BRIDGE_VLANDB_ENTRY_MAX - 1)
 
+/* [BRIDGE_VLANDB_ENTRY] = {
+ *     [BRIDGE_VLANDB_ENTRY_STATS] = {
+ *         [BRIDGE_VLANDB_STATS_RX_BYTES]
+ *         ...
+ *     }
+ *     ...
+ * }
+ */
+enum {
+	BRIDGE_VLANDB_STATS_UNSPEC,
+	BRIDGE_VLANDB_STATS_RX_BYTES,
+	BRIDGE_VLANDB_STATS_RX_PACKETS,
+	BRIDGE_VLANDB_STATS_TX_BYTES,
+	BRIDGE_VLANDB_STATS_TX_PACKETS,
+	BRIDGE_VLANDB_STATS_PAD,
+	__BRIDGE_VLANDB_STATS_MAX,
+};
+#define BRIDGE_VLANDB_STATS_MAX (__BRIDGE_VLANDB_STATS_MAX - 1)
+
 /* Bridge multicast database attributes
  * [MDBA_MDB] = {
  *     [MDBA_MDB_ENTRY] = {
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 24f524536be4..8fa5f6df36bb 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1569,10 +1569,41 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
 	}
 }
 
+static bool br_vlan_stats_fill(struct sk_buff *skb,
+			       const struct net_bridge_vlan *v)
+{
+	struct br_vlan_stats stats;
+	struct nlattr *nest;
+
+	nest = nla_nest_start(skb, BRIDGE_VLANDB_ENTRY_STATS);
+	if (!nest)
+		return false;
+
+	br_vlan_get_stats(v, &stats);
+	if (nla_put_u64_64bit(skb, BRIDGE_VLANDB_STATS_RX_BYTES, stats.rx_bytes,
+			      BRIDGE_VLANDB_STATS_PAD) ||
+	    nla_put_u64_64bit(skb, BRIDGE_VLANDB_STATS_RX_PACKETS,
+			      stats.rx_packets, BRIDGE_VLANDB_STATS_PAD) ||
+	    nla_put_u64_64bit(skb, BRIDGE_VLANDB_STATS_TX_BYTES, stats.tx_bytes,
+			      BRIDGE_VLANDB_STATS_PAD) ||
+	    nla_put_u64_64bit(skb, BRIDGE_VLANDB_STATS_TX_PACKETS,
+			      stats.tx_packets, BRIDGE_VLANDB_STATS_PAD))
+		goto out_err;
+
+	nla_nest_end(skb, nest);
+
+	return true;
+
+out_err:
+	nla_nest_cancel(skb, nest);
+	return false;
+}
+
 /* v_opts is used to dump the options which must be equal in the whole range */
 static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
 			      const struct net_bridge_vlan *v_opts,
-			      u16 flags)
+			      u16 flags,
+			      bool dump_stats)
 {
 	struct bridge_vlan_info info;
 	struct nlattr *nest;
@@ -1596,8 +1627,13 @@ static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u16(skb, BRIDGE_VLANDB_ENTRY_RANGE, vid_range))
 		goto out_err;
 
-	if (v_opts && !br_vlan_opts_fill(skb, v_opts))
-		goto out_err;
+	if (v_opts) {
+		if (!br_vlan_opts_fill(skb, v_opts))
+			goto out_err;
+
+		if (dump_stats && !br_vlan_stats_fill(skb, v_opts))
+			goto out_err;
+	}
 
 	nla_nest_end(skb, nest);
 
@@ -1675,7 +1711,7 @@ void br_vlan_notify(const struct net_bridge *br,
 		goto out_kfree;
 	}
 
-	if (!br_vlan_fill_vids(skb, vid, vid_range, v, flags))
+	if (!br_vlan_fill_vids(skb, vid, vid_range, v, flags, false))
 		goto out_err;
 
 	nlmsg_end(skb, nlh);
@@ -1699,9 +1735,11 @@ bool br_vlan_can_enter_range(const struct net_bridge_vlan *v_curr,
 
 static int br_vlan_dump_dev(const struct net_device *dev,
 			    struct sk_buff *skb,
-			    struct netlink_callback *cb)
+			    struct netlink_callback *cb,
+			    u8 bvm_flags)
 {
 	struct net_bridge_vlan *v, *range_start = NULL, *range_end = NULL;
+	bool dump_stats = !!(bvm_flags & BRIDGE_VLMSG_FLAG_DUMP_STATS);
 	struct net_bridge_vlan_group *vg;
 	int idx = 0, s_idx = cb->args[1];
 	struct nlmsghdr *nlh = NULL;
@@ -1754,12 +1792,13 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 			continue;
 		}
 
-		if (v->vid == pvid || !br_vlan_can_enter_range(v, range_end)) {
-			u16 flags = br_vlan_flags(range_start, pvid);
+		if (dump_stats || v->vid == pvid ||
+		    !br_vlan_can_enter_range(v, range_end)) {
+			u16 vlan_flags = br_vlan_flags(range_start, pvid);
 
 			if (!br_vlan_fill_vids(skb, range_start->vid,
 					       range_end->vid, range_start,
-					       flags)) {
+					       vlan_flags, dump_stats)) {
 				err = -EMSGSIZE;
 				break;
 			}
@@ -1778,7 +1817,8 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 	 */
 	if (!err && range_start &&
 	    !br_vlan_fill_vids(skb, range_start->vid, range_end->vid,
-			       range_start, br_vlan_flags(range_start, pvid)))
+			       range_start, br_vlan_flags(range_start, pvid),
+			       dump_stats))
 		err = -EMSGSIZE;
 
 	cb->args[1] = err ? idx : 0;
@@ -1808,7 +1848,7 @@ static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
 			err = -ENODEV;
 			goto out_err;
 		}
-		err = br_vlan_dump_dev(dev, skb, cb);
+		err = br_vlan_dump_dev(dev, skb, cb, bvm->flags);
 		if (err && err != -EMSGSIZE)
 			goto out_err;
 	} else {
@@ -1816,7 +1856,7 @@ static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
 			if (idx < s_idx)
 				goto skip;
 
-			err = br_vlan_dump_dev(dev, skb, cb);
+			err = br_vlan_dump_dev(dev, skb, cb, bvm->flags);
 			if (err == -EMSGSIZE)
 				break;
 skip:
-- 
2.25.1


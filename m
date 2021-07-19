Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 760EF3CE73A
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 263FC605F9;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NEhwBEppr54v; Mon, 19 Jul 2021 17:10:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 740FE60853;
	Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44AFEC0029;
	Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C9A7C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CEB483984
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzdpqwWV6ywk for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15F518367B
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:09 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id dt7so29882342ejc.12
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=29TqZv5oN4lRjIuLVLlHSdl22CZNOehTdPTwu5IVoLg=;
 b=UgKnCiitiLfGRIgT44411Dx5uiabkLnWL/K6/F6ItGI+xdJa+ctfbwl6hogSiD6Qhs
 OamGHqEACBiOsrfqae9Xd0hd4qHrbOSMDUs9iCgqDXol3LxZ4s406aUFW+MS8mYS3+uV
 befDHIrIZNIzmkRRH/GDkwT18p+0nP2YYw0yN388X5vJkxVbR2Dz2PuldE5uTDgts5lm
 Vy85Tev8e/kBHccEc55MVi4sPDXrD4zwopr4HKuVad76uTF66vu6kDCqhS+HqYRQOLXL
 cV0+Myv10OjpvL1km+yTu3vyb8cVIUyBReWTIHANrG1O4GGlaijBpuJL8nEELHdH741y
 QAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=29TqZv5oN4lRjIuLVLlHSdl22CZNOehTdPTwu5IVoLg=;
 b=aUScLMv8FrNoRudHsPoLc8HtYS5H8TgQE5sy5aCFEkKacuPnep/+NHD+lWYc1DOHns
 v60GmS5OqKlsALVXei5Wb5/JueeN/qAnHyOzojWAEwn60A6lYae/LTXMzPhDlJPvpSfJ
 b+8a6Iw3G5vpFzfTKftoaTV9S72Dca73cwHr4o3NIJa88ZZTotSFfpTxkfZJB3B1WyQL
 MvixrCCTeKq9IrHIyM/0GZ/PEo+LFSYtl4UuL6WesMHTfSBWr7C8nmsglFtdybUpTZU3
 ZzuQejtpa3hsz7QO+IPXKGo/I3nFGR6lbAOQbOXdBuUR5cFQNy9876zd+glf+wL4VJAR
 H76g==
X-Gm-Message-State: AOAM5331C8ByQZ2oLO/kusBD1EnEP6tXVDQEZ8+a3WLVSGH7jrU+DOYe
 AHrzb+UURPsgK2TBeQT4Bmmwqg==
X-Google-Smtp-Source: ABdhPJxYxJjv1X81gq8ReaRbBW1NnkwEMPa46l5HvYHHzi/S1jUnT0sViircGsm38aNkPlVYEawnfA==
X-Received: by 2002:a17:907:62a5:: with SMTP id
 nd37mr27649202ejc.148.1626714608131; 
 Mon, 19 Jul 2021 10:10:08 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:07 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:34 +0300
Message-Id: <20210719170637.435541-13-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/15] net: bridge: vlan: add support for
	global options
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

We can have two types of vlan options depending on context:
 - per-device vlan options (split in per-bridge and per-port)
 - global vlan options

The second type wasn't supported in the bridge until now, but we need
them for per-vlan multicast support, per-vlan STP support and other
options which require global vlan context. They are contained in the global
bridge vlan context even if the vlan is not configured on the bridge device
itself. This patch adds initial netlink attributes and support for setting
these global vlan options, they can only be set (RTM_NEWVLAN) and the
operation must use the bridge device. Since there are no such options yet
it shouldn't have any functional effect.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 13 ++++++
 net/bridge/br_private.h        |  4 ++
 net/bridge/br_vlan.c           | 16 +++++--
 net/bridge/br_vlan_options.c   | 85 ++++++++++++++++++++++++++++++++++
 4 files changed, 115 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 1f7513300cfe..760b264bd03d 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -485,10 +485,15 @@ enum {
  *     [BRIDGE_VLANDB_ENTRY_INFO]
  *     ...
  * }
+ * [BRIDGE_VLANDB_GLOBAL_OPTIONS] = {
+ *     [BRIDGE_VLANDB_GOPTS_ID]
+ *     ...
+ * }
  */
 enum {
 	BRIDGE_VLANDB_UNSPEC,
 	BRIDGE_VLANDB_ENTRY,
+	BRIDGE_VLANDB_GLOBAL_OPTIONS,
 	__BRIDGE_VLANDB_MAX,
 };
 #define BRIDGE_VLANDB_MAX (__BRIDGE_VLANDB_MAX - 1)
@@ -538,6 +543,14 @@ enum {
 };
 #define BRIDGE_VLANDB_STATS_MAX (__BRIDGE_VLANDB_STATS_MAX - 1)
 
+enum {
+	BRIDGE_VLANDB_GOPTS_UNSPEC,
+	BRIDGE_VLANDB_GOPTS_ID,
+	BRIDGE_VLANDB_GOPTS_RANGE,
+	__BRIDGE_VLANDB_GOPTS_MAX
+};
+#define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
+
 /* Bridge multicast database attributes
  * [MDBA_MDB] = {
  *     [MDBA_MDB_ENTRY] = {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 5515b6c37322..bc920bc1ff44 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1605,6 +1605,10 @@ int br_vlan_process_options(const struct net_bridge *br,
 			    struct net_bridge_vlan *range_end,
 			    struct nlattr **tb,
 			    struct netlink_ext_ack *extack);
+int br_vlan_rtm_process_global_options(struct net_device *dev,
+				       const struct nlattr *attr,
+				       int cmd,
+				       struct netlink_ext_ack *extack);
 
 /* vlan state manipulation helpers using *_ONCE to annotate lock-free access */
 static inline u8 br_vlan_get_state(const struct net_bridge_vlan *v)
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index ab4969a4a380..dcb5acf783d2 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -2203,12 +2203,22 @@ static int br_vlan_rtm_process(struct sk_buff *skb, struct nlmsghdr *nlh,
 	}
 
 	nlmsg_for_each_attr(attr, nlh, sizeof(*bvm), rem) {
-		if (nla_type(attr) != BRIDGE_VLANDB_ENTRY)
+		switch (nla_type(attr)) {
+		case BRIDGE_VLANDB_ENTRY:
+			err = br_vlan_rtm_process_one(dev, attr,
+						      nlh->nlmsg_type,
+						      extack);
+			break;
+		case BRIDGE_VLANDB_GLOBAL_OPTIONS:
+			err = br_vlan_rtm_process_global_options(dev, attr,
+								 nlh->nlmsg_type,
+								 extack);
+			break;
+		default:
 			continue;
+		}
 
 		vlans++;
-		err = br_vlan_rtm_process_one(dev, attr, nlh->nlmsg_type,
-					      extack);
 		if (err)
 			break;
 	}
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index b4add9ea8964..a7d5a2334207 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -258,3 +258,88 @@ int br_vlan_process_options(const struct net_bridge *br,
 
 	return err;
 }
+
+static int br_vlan_process_global_one_opts(const struct net_bridge *br,
+					   struct net_bridge_vlan_group *vg,
+					   struct net_bridge_vlan *v,
+					   struct nlattr **tb,
+					   bool *changed,
+					   struct netlink_ext_ack *extack)
+{
+	*changed = false;
+	return 0;
+}
+
+static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
+	[BRIDGE_VLANDB_GOPTS_ID]	= { .type = NLA_U16 },
+	[BRIDGE_VLANDB_GOPTS_RANGE]	= { .type = NLA_U16 },
+};
+
+int br_vlan_rtm_process_global_options(struct net_device *dev,
+				       const struct nlattr *attr,
+				       int cmd,
+				       struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[BRIDGE_VLANDB_GOPTS_MAX + 1];
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+	u16 vid, vid_range = 0;
+	struct net_bridge *br;
+	int err = 0;
+
+	if (cmd != RTM_NEWVLAN) {
+		NL_SET_ERR_MSG_MOD(extack, "Global vlan options support only set operation");
+		return -EINVAL;
+	}
+	if (!netif_is_bridge_master(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Global vlan options can only be set on bridge device");
+		return -EINVAL;
+	}
+	br = netdev_priv(dev);
+	vg = br_vlan_group(br);
+	if (WARN_ON(!vg))
+		return -ENODEV;
+
+	err = nla_parse_nested(tb, BRIDGE_VLANDB_GOPTS_MAX, attr,
+			       br_vlan_db_gpol, extack);
+	if (err)
+		return err;
+
+	if (!tb[BRIDGE_VLANDB_GOPTS_ID]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing vlan entry id");
+		return -EINVAL;
+	}
+	vid = nla_get_u16(tb[BRIDGE_VLANDB_GOPTS_ID]);
+	if (!br_vlan_valid_id(vid, extack))
+		return -EINVAL;
+
+	if (tb[BRIDGE_VLANDB_GOPTS_RANGE]) {
+		vid_range = nla_get_u16(tb[BRIDGE_VLANDB_GOPTS_RANGE]);
+		if (!br_vlan_valid_id(vid_range, extack))
+			return -EINVAL;
+		if (vid >= vid_range) {
+			NL_SET_ERR_MSG_MOD(extack, "End vlan id is less than or equal to start vlan id");
+			return -EINVAL;
+		}
+	} else {
+		vid_range = vid;
+	}
+
+	for (; vid <= vid_range; vid++) {
+		bool changed = false;
+
+		v = br_vlan_find(vg, vid);
+		if (!v) {
+			NL_SET_ERR_MSG_MOD(extack, "Vlan in range doesn't exist, can't process global options");
+			err = -ENOENT;
+			break;
+		}
+
+		err = br_vlan_process_global_one_opts(br, vg, v, tb, &changed,
+						      extack);
+		if (err)
+			break;
+	}
+
+	return err;
+}
-- 
2.31.1


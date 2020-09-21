Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460272721B4
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 592C3870FE;
	Mon, 21 Sep 2020 11:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jlw68+HNZKcC; Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D7D787104;
	Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91D9DC0890;
	Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21715C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1BA8E204DC
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-7VLYLV2lEk for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:01:42 +0000 (UTC)
X-Greylist: delayed 00:05:26 by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id DF1EE204CA
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:41 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id x23so11666154wmi.3
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pqwHkNx0jImltrLZO0K43fN+lXj/WQjYzW88BeELohU=;
 b=ksjAAvYmkCYlp8jtCb7nM1DJsVS2cYQR9j+7H3NuzQ4j8KQF5C0Pnk/vIJcBdTbfJV
 cbO+9Bs402jPJWBPi5aiGUg1zw/p0a6Qlpb/bhzqmLxG79R/UGygVb8/15U92GIefxE7
 Yg1zxxFcnu+b87sqOq6b5Wv3xzkxF59Zc4+KfsoN6V1mfvfeHnTembsQqm1gTuVbuMxz
 ES2vgPXNgcHCsZc2dWyKIWJFINd3ot66exvd/J8jnhq1KgBkkBTwA/vjl/JXIadAtsjn
 FgfZqWDRCF3Ph1GtV9tli5p70MrO0aKmcrU9vlR2l9V7jWlHg+d/I640m2fuemJ00583
 OyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pqwHkNx0jImltrLZO0K43fN+lXj/WQjYzW88BeELohU=;
 b=VRO3CvhvyjB6APBVvnPJ6EYlVWilw/Jf5xNiocFCfLrBu7kTlKhkbHE/KM1j+bu0O8
 2c903DR7B47xd1RKNieJZB2pFBsJ5aVgytS/htGo+JKUIWus/NuIsbynieAJJa7dQtms
 O481TjUMru+ozisPy1NOy4PxAVAKPFdVH3/JnNDhYI+5z1INNhtth3ygiaY6VNdSsqag
 KwNgipZyu3+PHfpfYyL5i/4t8/1gKzt7EWEjQu8Zwf9Lz+LxeBKLTMbC6xs9BhLzYLLv
 NrxvnS7gCIC/5R0lmHjZIljtfwYO9Z8mHWp0H1a9UsIyJBHoM+U6W3MVCM9IiE6UQT/o
 CeAA==
X-Gm-Message-State: AOAM5331XxcAIwHWYnqjm/Dg5Xi2RVFkLPsnYc90XSMLve6nB4SzsD8h
 K4dJ9lvKthSWExrhQIbdytIg3iLJSTarDBXRC6JfJw==
X-Google-Smtp-Source: ABdhPJzqRbdKTqowiZq/NlIpHHcctARlU3IDwOeq5aBXxboyvxunPaMKKcTR9HZq7MLCBJnSmyFKsw==
X-Received: by 2002:a1c:9ec1:: with SMTP id
 h184mr30158190wme.180.1600685777036; 
 Mon, 21 Sep 2020 03:56:17 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:16 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:17 +0300
Message-Id: <20200921105526.1056983-8-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 07/16] net: bridge: mdb: add support to
	extend add/del commands
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

Since the MDB add/del code expects an exact struct br_mdb_entry we can't
really add any extensions, thus add a new nested attribute at the level of
MDBA_SET_ENTRY called MDBA_SET_ENTRY_ATTRS which will be used to pass
all new options via netlink attributes. This patch doesn't change
anything functionally since the new attribute is not used yet, only
parsed.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 12 ++++++++++++
 net/bridge/br_mdb.c            | 22 +++++++++++++++++++---
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 75a2ac479247..dc52f8cffa0d 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -530,10 +530,22 @@ struct br_mdb_entry {
 enum {
 	MDBA_SET_ENTRY_UNSPEC,
 	MDBA_SET_ENTRY,
+	MDBA_SET_ENTRY_ATTRS,
 	__MDBA_SET_ENTRY_MAX,
 };
 #define MDBA_SET_ENTRY_MAX (__MDBA_SET_ENTRY_MAX - 1)
 
+/* [MDBA_SET_ENTRY_ATTRS] = {
+ *    [MDBE_ATTR_xxx]
+ *    ...
+ * }
+ */
+enum {
+	MDBE_ATTR_UNSPEC,
+	__MDBE_ATTR_MAX,
+};
+#define MDBE_ATTR_MAX (__MDBE_ATTR_MAX - 1)
+
 /* Embedded inside LINK_XSTATS_TYPE_BRIDGE */
 enum {
 	BRIDGE_XSTATS_UNSPEC,
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index a1ff0a372185..907df6d695ec 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -670,9 +670,12 @@ static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
 	return true;
 }
 
+static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
+};
+
 static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 			struct net_device **pdev, struct br_mdb_entry **pentry,
-			struct netlink_ext_ack *extack)
+			struct nlattr **mdb_attrs, struct netlink_ext_ack *extack)
 {
 	struct net *net = sock_net(skb->sk);
 	struct br_mdb_entry *entry;
@@ -719,6 +722,17 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 	*pentry = entry;
 
+	if (tb[MDBA_SET_ENTRY_ATTRS]) {
+		err = nla_parse_nested(mdb_attrs, MDBE_ATTR_MAX,
+				       tb[MDBA_SET_ENTRY_ATTRS],
+				       br_mdbe_attrs_pol, extack);
+		if (err)
+			return err;
+	} else {
+		memset(mdb_attrs, 0,
+		       sizeof(struct nlattr *) * (MDBE_ATTR_MAX + 1));
+	}
+
 	return 0;
 }
 
@@ -803,6 +817,7 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 		      struct netlink_ext_ack *extack)
 {
+	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
@@ -812,7 +827,7 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, mdb_attrs, extack);
 	if (err < 0)
 		return err;
 
@@ -921,6 +936,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		      struct netlink_ext_ack *extack)
 {
+	struct nlattr *mdb_attrs[MDBE_ATTR_MAX + 1];
 	struct net *net = sock_net(skb->sk);
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
@@ -930,7 +946,7 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, mdb_attrs, extack);
 	if (err < 0)
 		return err;
 
-- 
2.25.4


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F81613B192
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 172F787A56;
	Tue, 14 Jan 2020 17:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CkKI8Oxagydz; Tue, 14 Jan 2020 17:58:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0606C87933;
	Tue, 14 Jan 2020 17:58:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED84CC18DD;
	Tue, 14 Jan 2020 17:58:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F1E4C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55A6081E85
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBQDwll1aZ2v for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D91881EE4
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id n25so10559976lfl.0
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aG98qbZFp+XXJpRjorp7YR3pzH22ohcg5CirRKfi8t0=;
 b=bJp7qUl88B0117YTOUhm2lK9o/3P5JvmVRp20k0MfRuUPONci8CEDcPyJ83HOdGzc5
 cw+QggDJ8uo9WY5rSZVZXNyQHf/pZnq2oSkdqlJNp7KwyzG/H1HL62KEkojB/P4Fr1YD
 XRo2sxBEt8OxYwtHiZksiqePfeRn5R3MpejEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aG98qbZFp+XXJpRjorp7YR3pzH22ohcg5CirRKfi8t0=;
 b=TT5fz5/zOczXvk+n6axxhzU2Dpah8ajd/XSaFfzIOYcqQLeA9mMPAmYvxzieo2PgjD
 MCUBFCozFk8kbVBF6AuGtzbGP2ZSV7UVMINNSNm3G8DeJ+Yz/0QYitmMCo2lmEup2pFU
 G2gjhBhmsQW3DmEvIu+NloKxgq5o/yxrYMcqI55GHud2cLqDji0GyxdWoGX5K3F8zDqe
 RafCCAEH54u8puxOYitZyOtrGZ96zlaO4WExbz/SJLwbbkB46y3a9cUFusvDSpy/flnC
 bqNl865s8PHKkKd1gc53+LH7lvDhLjWFj3gulHlb6dpomtStWE69cNhRMhXzxZj0Shkt
 umfw==
X-Gm-Message-State: APjAAAVqcFWoERY5+InR+FjPI29fEs7P0W/fKgUs01IGr+R4PIC+E6Aj
 EYuRtB6LA49hwqxpL/jSDFohZGQCoV4=
X-Google-Smtp-Source: APXvYqxkiZ7glj4+BR4FH0+C+DW55C6Jd4OABC8uI8zNP9IzsUCOYgauRHOjFAzKvlMVIjX9VirQ/g==
X-Received: by 2002:ac2:5195:: with SMTP id u21mr2464396lfi.141.1579024719599; 
 Tue, 14 Jan 2020 09:58:39 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:39 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:13 +0200
Message-Id: <20200114175614.17543-8-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
References: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 7/8] net: bridge: vlan: add rtnetlink
	group and notify support
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

Add a new rtnetlink group for bridge vlan notifications - RTNLGRP_BRVLAN
and add support for sending vlan notifications (both single and ranges).
No functional changes intended, the notification support will be used by
later patches.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/rtnetlink.h |  2 +
 net/bridge/br_private.h        | 11 +++++
 net/bridge/br_vlan.c           | 79 ++++++++++++++++++++++++++++++++++
 3 files changed, 92 insertions(+)

diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index e06e3e09a1b4..fe9136f87a97 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -728,6 +728,8 @@ enum rtnetlink_groups {
 #define RTNLGRP_IPV6_MROUTE_R	RTNLGRP_IPV6_MROUTE_R
 	RTNLGRP_NEXTHOP,
 #define RTNLGRP_NEXTHOP		RTNLGRP_NEXTHOP
+	RTNLGRP_BRVLAN,
+#define RTNLGRP_BRVLAN		RTNLGRP_BRVLAN
 	__RTNLGRP_MAX
 };
 #define RTNLGRP_MAX	(__RTNLGRP_MAX - 1)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index ee3871dea68f..ba162c8197da 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -960,6 +960,10 @@ int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
 			 void *ptr);
 void br_vlan_rtnl_init(void);
 void br_vlan_rtnl_uninit(void);
+void br_vlan_notify(const struct net_bridge *br,
+		    const struct net_bridge_port *p,
+		    u16 vid, u16 vid_range,
+		    int cmd);
 
 static inline struct net_bridge_vlan_group *br_vlan_group(
 					const struct net_bridge *br)
@@ -1166,6 +1170,13 @@ static inline void br_vlan_rtnl_init(void)
 static inline void br_vlan_rtnl_uninit(void)
 {
 }
+
+static inline void br_vlan_notify(const struct net_bridge *br,
+				  const struct net_bridge_port *p,
+				  u16 vid, u16 vid_range,
+				  int cmd)
+{
+}
 #endif
 
 struct nf_br_ops {
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 9d64a86f2cbd..5d52a2604547 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1540,6 +1540,85 @@ static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
 	return false;
 }
 
+static size_t rtnl_vlan_nlmsg_size(void)
+{
+	return NLMSG_ALIGN(sizeof(struct br_vlan_msg))
+		+ nla_total_size(0) /* BRIDGE_VLANDB_ENTRY */
+		+ nla_total_size(sizeof(u16)) /* BRIDGE_VLANDB_ENTRY_RANGE */
+		+ nla_total_size(sizeof(struct bridge_vlan_info)); /* BRIDGE_VLANDB_ENTRY_INFO */
+}
+
+void br_vlan_notify(const struct net_bridge *br,
+		    const struct net_bridge_port *p,
+		    u16 vid, u16 vid_range,
+		    int cmd)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+	struct br_vlan_msg *bvm;
+	struct nlmsghdr *nlh;
+	struct sk_buff *skb;
+	int err = -ENOBUFS;
+	struct net *net;
+	u16 flags = 0;
+	int ifindex;
+
+	/* right now notifications are done only with rtnl held */
+	ASSERT_RTNL();
+
+	if (p) {
+		ifindex = p->dev->ifindex;
+		vg = nbp_vlan_group(p);
+		net = dev_net(p->dev);
+	} else {
+		ifindex = br->dev->ifindex;
+		vg = br_vlan_group(br);
+		net = dev_net(br->dev);
+	}
+
+	skb = nlmsg_new(rtnl_vlan_nlmsg_size(), GFP_KERNEL);
+	if (!skb)
+		goto out_err;
+
+	err = -EMSGSIZE;
+	nlh = nlmsg_put(skb, 0, 0, cmd, sizeof(*bvm), 0);
+	if (!nlh)
+		goto out_err;
+	bvm = nlmsg_data(nlh);
+	memset(bvm, 0, sizeof(*bvm));
+	bvm->family = AF_BRIDGE;
+	bvm->ifindex = ifindex;
+
+	switch (cmd) {
+	case RTM_NEWVLAN:
+		/* need to find the vlan due to flags/options */
+		v = br_vlan_find(vg, vid);
+		if (!v || !br_vlan_should_use(v))
+			goto out_kfree;
+
+		flags = v->flags;
+		if (br_get_pvid(vg) == v->vid)
+			flags |= BRIDGE_VLAN_INFO_PVID;
+		break;
+	case RTM_DELVLAN:
+		break;
+	default:
+		goto out_kfree;
+	}
+
+	if (!br_vlan_fill_vids(skb, vid, vid_range, flags))
+		goto out_err;
+
+	nlmsg_end(skb, nlh);
+	rtnl_notify(skb, net, 0, RTNLGRP_BRVLAN, NULL, GFP_KERNEL);
+	return;
+
+out_err:
+	rtnl_set_sk_err(net, RTNLGRP_BRVLAN, err);
+out_kfree:
+	kfree_skb(skb);
+}
+
 /* check if v_curr can enter a range ending in range_end */
 static bool br_vlan_can_enter_range(const struct net_bridge_vlan *v_curr,
 				    const struct net_bridge_vlan *range_end)
-- 
2.21.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 058353CE73D
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9465D4025B;
	Mon, 19 Jul 2021 17:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9yPiOPkgXh1; Mon, 19 Jul 2021 17:10:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9DD70403D8;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81522C000E;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9EEC4C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78528400BE
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KW4lUPw0CUQG for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E35EE402F7
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:11 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id hr1so29953642ejc.1
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yYcyZCiZBQoPwEo8PkgKkU8xnppoooSri5YHE+fHaaM=;
 b=AupFKrEpi6DreNMsGKaMtPutFkruCxWEvwt+3S1Zxpl0IvbvzbLc1bU+LfkLQeSoY6
 zP/Z+sTsONL8VQWUupHdRSsgXrRTot0vDuiND8kkTLV9EOyAc61xSTPyPeWtntRbNHfr
 ec78lILw6avc1KGvLbf/HFQvFVPyMRIy7xeNU19FQZpLR+wt/0y/xSjm2PCP4+VTdQLz
 roh5BGuCLUws1dtISXl6CbTO8jQvLg6cYBS6J0uayprHps2SpLxkv3KcEdUULkgSxh0i
 5SddzeFNXnESid5y5N141oQ7bssH6S6d9uNU0E7ivgaGpBJobVHVDQYqIUNkVbrKnkN2
 QzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yYcyZCiZBQoPwEo8PkgKkU8xnppoooSri5YHE+fHaaM=;
 b=UDIBcYIiusSHlEPcwsFdXa5AgtI2LvM9DaqtBdDfBF28NB7N9uLznrh4WPjY4ptxIO
 xVu+LOPJQSKe+w4+BvQDqU4INZAe4D1kqzRMFBfi1PRiCrSJE5YUOZaYGQuolhAannwi
 ZoSTZ93wcosK0aSKVb9sus5AvRnRS+p82hTRC7+a4nAblVObnr6CvdOlKQIESVgcf1Ti
 fpnnisYLGUnpat9QVqS2p3RKvgJ23K1aO09xfgO4X6Q8FP61Ma5n4eCGDb6Em3HJVZl1
 Xrt3iiPm1NRt97uCaVhmWmtXcRadJXx5//UHqS2ANPDkjgzFft372uc+sIoLkUAa9hsZ
 t5Ww==
X-Gm-Message-State: AOAM531DWMcDdMXRd0+itOLVPMOL4oN8ahB4c+eCTotn6/I8eSyQTjpF
 mkoKcn5Ie/C7jHp5KdrNfbFbulkNz7JwRl9uRt0=
X-Google-Smtp-Source: ABdhPJz5mxJOjDRwj89onF7oeVaPY+TyRNftAU4jfZWFT5dAcoqtAqJV5ng6GQuHM0+KXcVjA6heVQ==
X-Received: by 2002:a17:906:6b1b:: with SMTP id
 q27mr27854438ejr.169.1626714610011; 
 Mon, 19 Jul 2021 10:10:10 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:09 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:36 +0300
Message-Id: <20210719170637.435541-15-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 14/15] net: bridge: vlan: notify when
	global options change
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

Add support for global options notifications. They use only RTM_NEWVLAN
since global options can only be set and are contained in a separate
vlan global options attribute. Notifications are compressed in ranges
where possible, i.e. the sequential vlan options are equal.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_vlan_options.c | 80 +++++++++++++++++++++++++++++++++++-
 1 file changed, 79 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index f290f5140547..827bfc319599 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -290,6 +290,57 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	return false;
 }
 
+static size_t rtnl_vlan_global_opts_nlmsg_size(void)
+{
+	return NLMSG_ALIGN(sizeof(struct br_vlan_msg))
+		+ nla_total_size(0) /* BRIDGE_VLANDB_GLOBAL_OPTIONS */
+		+ nla_total_size(sizeof(u16)) /* BRIDGE_VLANDB_GOPTS_ID */
+		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
+}
+
+static void br_vlan_global_opts_notify(const struct net_bridge *br,
+				       u16 vid, u16 vid_range)
+{
+	struct net_bridge_vlan *v;
+	struct br_vlan_msg *bvm;
+	struct nlmsghdr *nlh;
+	struct sk_buff *skb;
+	int err = -ENOBUFS;
+
+	/* right now notifications are done only with rtnl held */
+	ASSERT_RTNL();
+
+	skb = nlmsg_new(rtnl_vlan_global_opts_nlmsg_size(), GFP_KERNEL);
+	if (!skb)
+		goto out_err;
+
+	err = -EMSGSIZE;
+	nlh = nlmsg_put(skb, 0, 0, RTM_NEWVLAN, sizeof(*bvm), 0);
+	if (!nlh)
+		goto out_err;
+	bvm = nlmsg_data(nlh);
+	memset(bvm, 0, sizeof(*bvm));
+	bvm->family = AF_BRIDGE;
+	bvm->ifindex = br->dev->ifindex;
+
+	/* need to find the vlan due to flags/options */
+	v = br_vlan_find(br_vlan_group(br), vid);
+	if (!v)
+		goto out_kfree;
+
+	if (!br_vlan_global_opts_fill(skb, vid, vid_range, v))
+		goto out_err;
+
+	nlmsg_end(skb, nlh);
+	rtnl_notify(skb, dev_net(br->dev), 0, RTNLGRP_BRVLAN, NULL, GFP_KERNEL);
+	return;
+
+out_err:
+	rtnl_set_sk_err(dev_net(br->dev), RTNLGRP_BRVLAN, err);
+out_kfree:
+	kfree_skb(skb);
+}
+
 static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 					   struct net_bridge_vlan_group *vg,
 					   struct net_bridge_vlan *v,
@@ -311,9 +362,9 @@ int br_vlan_rtm_process_global_options(struct net_device *dev,
 				       int cmd,
 				       struct netlink_ext_ack *extack)
 {
+	struct net_bridge_vlan *v, *curr_start = NULL, *curr_end = NULL;
 	struct nlattr *tb[BRIDGE_VLANDB_GOPTS_MAX + 1];
 	struct net_bridge_vlan_group *vg;
-	struct net_bridge_vlan *v;
 	u16 vid, vid_range = 0;
 	struct net_bridge *br;
 	int err = 0;
@@ -370,7 +421,34 @@ int br_vlan_rtm_process_global_options(struct net_device *dev,
 						      extack);
 		if (err)
 			break;
+
+		if (changed) {
+			/* vlan options changed, check for range */
+			if (!curr_start) {
+				curr_start = v;
+				curr_end = v;
+				continue;
+			}
+
+			if (!br_vlan_global_opts_can_enter_range(v, curr_end)) {
+				br_vlan_global_opts_notify(br, curr_start->vid,
+							   curr_end->vid);
+				curr_start = v;
+			}
+			curr_end = v;
+		} else {
+			/* nothing changed and nothing to notify yet */
+			if (!curr_start)
+				continue;
+
+			br_vlan_global_opts_notify(br, curr_start->vid,
+						   curr_end->vid);
+			curr_start = NULL;
+			curr_end = NULL;
+		}
 	}
+	if (curr_start)
+		br_vlan_global_opts_notify(br, curr_start->vid, curr_end->vid);
 
 	return err;
 }
-- 
2.31.1


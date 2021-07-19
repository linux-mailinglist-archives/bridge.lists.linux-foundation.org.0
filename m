Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACE13CE740
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0A20403D8;
	Mon, 19 Jul 2021 17:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CsAApdOqEeCk; Mon, 19 Jul 2021 17:10:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D8736403DC;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7489C0026;
	Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BD16C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D55BC400BE
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pUB9ViAMSCF for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C213402F0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:10 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id qb4so29879542ejc.11
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0cf2LlS6jWfQkusBdzzkz/uvVmHVHUO2QoyYAj4uPiI=;
 b=Gkm9g8hVYMOhtrs9MTG+1zFy8TL/tamGGnCnIrlm+IOtoTAHVbv/K3knrcbhKNtLh1
 DYOnkhmtPquPsFpuVbsVwOL79M2+a84h9oTZHx1EpcF9VHvWdGIudiRX9TStEKB57tP0
 54OddR1Zf+EuQ8khnjxVeua9jStoybFiAOr/RaFx0KF5qjyW1xzR4BjUTnRCihyhB+ct
 XGQ0LCgYpOowd3ybZzlAyXFROfrQJE+ra+/fGseWvNfBwG9k2DJeACff9SvKldqR2nI4
 y8VFTpUoI3nXTWu7F5Ellv5vh3lnO2jndI4tSXFpN8MgRH7ajwPrKWEsJbNguoihHsNO
 juwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0cf2LlS6jWfQkusBdzzkz/uvVmHVHUO2QoyYAj4uPiI=;
 b=ZljR2guhupYjksv7L3r95dVs0BTW0d5QUjH8BiJB07eOSbznvbB8ZqbcrdLt6fZEuY
 E98sDYNVR3rEt51H3PbO6nOm44bytE+m1czvo+TEq+GiEe7CHuD8QHYYSKVlF4AzFvSn
 fB+XaSSt+rXE4pWKB7LyOiQysl2+/Kmhy5Sg3PoiPm03FJRK7yjhkEntUAFlXPGWYRV7
 uqLms9M5+XkTDZZVhIBHy0RwdMkaygOie7taXWB8ZksbtdZIRe0LpJFSwlCemb/xHDiT
 Sn4JzFp3UbhSrt8zMnWlM/fde3Jxz7pDo9Eblr2GKXx5CP1M+RdGjkm06Qweyc1xMVzm
 fj9g==
X-Gm-Message-State: AOAM532T6e/yggNrd9rJLpQH7jYUT10ooWoVhnYJjrD+mNUE3LF/uBtV
 5wof0wE2NleUZVAdGdh/NYPmEA==
X-Google-Smtp-Source: ABdhPJwtOFuV3FqU4fr00EqQNTXvoFiTqke8X4xPkej103amW1xUOkZ9vR0U74QcOE0oI6EH95REwQ==
X-Received: by 2002:a17:906:2a04:: with SMTP id
 j4mr28744231eje.344.1626714609073; 
 Mon, 19 Jul 2021 10:10:09 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:08 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:35 +0300
Message-Id: <20210719170637.435541-14-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 13/15] net: bridge: vlan: add support for
	dumping global vlan options
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

Add a new vlan options dump flag which causes only global vlan options
to be dumped. The dumps are done only with bridge devices, ports are
ignored. They support vlan compression if the options in sequential
vlans are equal (currently always true).

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_private.h        |  4 ++++
 net/bridge/br_vlan.c           | 41 +++++++++++++++++++++++++++-------
 net/bridge/br_vlan_options.c   | 31 +++++++++++++++++++++++++
 4 files changed, 69 insertions(+), 8 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 760b264bd03d..2203eb749d31 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -479,6 +479,7 @@ enum {
 
 /* flags used in BRIDGE_VLANDB_DUMP_FLAGS attribute to affect dumps */
 #define BRIDGE_VLANDB_DUMPF_STATS	(1 << 0) /* Include stats in the dump */
+#define BRIDGE_VLANDB_DUMPF_GLOBAL	(1 << 1) /* Dump global vlan options only */
 
 /* Bridge vlan RTM attributes
  * [BRIDGE_VLANDB_ENTRY] = {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index bc920bc1ff44..e0a982275a93 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1609,6 +1609,10 @@ int br_vlan_rtm_process_global_options(struct net_device *dev,
 				       const struct nlattr *attr,
 				       int cmd,
 				       struct netlink_ext_ack *extack);
+bool br_vlan_global_opts_can_enter_range(const struct net_bridge_vlan *v_curr,
+					 const struct net_bridge_vlan *r_end);
+bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
+			      const struct net_bridge_vlan *v_opts);
 
 /* vlan state manipulation helpers using *_ONCE to annotate lock-free access */
 static inline u8 br_vlan_get_state(const struct net_bridge_vlan *v)
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index dcb5acf783d2..e66b004df763 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1919,6 +1919,7 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 			    u32 dump_flags)
 {
 	struct net_bridge_vlan *v, *range_start = NULL, *range_end = NULL;
+	bool dump_global = !!(dump_flags & BRIDGE_VLANDB_DUMPF_GLOBAL);
 	bool dump_stats = !!(dump_flags & BRIDGE_VLANDB_DUMPF_STATS);
 	struct net_bridge_vlan_group *vg;
 	int idx = 0, s_idx = cb->args[1];
@@ -1937,6 +1938,10 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 		vg = br_vlan_group_rcu(br);
 		p = NULL;
 	} else {
+		/* global options are dumped only for bridge devices */
+		if (dump_global)
+			return 0;
+
 		p = br_port_get_rcu(dev);
 		if (WARN_ON(!p))
 			return -EINVAL;
@@ -1959,7 +1964,7 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 
 	/* idx must stay at range's beginning until it is filled in */
 	list_for_each_entry_rcu(v, &vg->vlan_list, vlist) {
-		if (!br_vlan_should_use(v))
+		if (!dump_global && !br_vlan_should_use(v))
 			continue;
 		if (idx < s_idx) {
 			idx++;
@@ -1972,8 +1977,21 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 			continue;
 		}
 
-		if (dump_stats || v->vid == pvid ||
-		    !br_vlan_can_enter_range(v, range_end)) {
+		if (dump_global) {
+			if (br_vlan_global_opts_can_enter_range(v, range_end))
+				continue;
+			if (!br_vlan_global_opts_fill(skb, range_start->vid,
+						      range_end->vid,
+						      range_start)) {
+				err = -EMSGSIZE;
+				break;
+			}
+			/* advance number of filled vlans */
+			idx += range_end->vid - range_start->vid + 1;
+
+			range_start = v;
+		} else if (dump_stats || v->vid == pvid ||
+			   !br_vlan_can_enter_range(v, range_end)) {
 			u16 vlan_flags = br_vlan_flags(range_start, pvid);
 
 			if (!br_vlan_fill_vids(skb, range_start->vid,
@@ -1995,11 +2013,18 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 	 * - last vlan (range_start == range_end, not in range)
 	 * - last vlan range (range_start != range_end, in range)
 	 */
-	if (!err && range_start &&
-	    !br_vlan_fill_vids(skb, range_start->vid, range_end->vid,
-			       range_start, br_vlan_flags(range_start, pvid),
-			       dump_stats))
-		err = -EMSGSIZE;
+	if (!err && range_start) {
+		if (dump_global &&
+		    !br_vlan_global_opts_fill(skb, range_start->vid,
+					      range_end->vid, range_start))
+			err = -EMSGSIZE;
+		else if (!dump_global &&
+			 !br_vlan_fill_vids(skb, range_start->vid,
+					    range_end->vid, range_start,
+					    br_vlan_flags(range_start, pvid),
+					    dump_stats))
+			err = -EMSGSIZE;
+	}
 
 	cb->args[1] = err ? idx : 0;
 
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index a7d5a2334207..f290f5140547 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -259,6 +259,37 @@ int br_vlan_process_options(const struct net_bridge *br,
 	return err;
 }
 
+bool br_vlan_global_opts_can_enter_range(const struct net_bridge_vlan *v_curr,
+					 const struct net_bridge_vlan *r_end)
+{
+	return v_curr->vid - r_end->vid == 1;
+}
+
+bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
+			      const struct net_bridge_vlan *v_opts)
+{
+	struct nlattr *nest;
+
+	nest = nla_nest_start(skb, BRIDGE_VLANDB_GLOBAL_OPTIONS);
+	if (!nest)
+		return false;
+
+	if (nla_put_u16(skb, BRIDGE_VLANDB_GOPTS_ID, vid))
+		goto out_err;
+
+	if (vid_range && vid < vid_range &&
+	    nla_put_u16(skb, BRIDGE_VLANDB_GOPTS_RANGE, vid_range))
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
 static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 					   struct net_bridge_vlan_group *vg,
 					   struct net_bridge_vlan *v,
-- 
2.31.1


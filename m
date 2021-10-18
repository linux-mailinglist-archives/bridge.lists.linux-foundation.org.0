Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FA9431219
	for <lists.bridge@lfdr.de>; Mon, 18 Oct 2021 10:26:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5A9D82861;
	Mon, 18 Oct 2021 08:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sYvceUCODEjl; Mon, 18 Oct 2021 08:26:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EBE4E82868;
	Mon, 18 Oct 2021 08:26:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6318C001E;
	Mon, 18 Oct 2021 08:26:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C5D30C000D
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 08:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A50AB82868
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 08:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jXRU-pXR0Df for <bridge@lists.linux-foundation.org>;
 Mon, 18 Oct 2021 08:26:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C776382861
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 08:26:25 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id y4so10729281plb.0
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 01:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hqS/OCBi97Lg4dVJSxaPDhUri7TkmHBmIpvWz98sinQ=;
 b=Uo3Ur34KlTZV0/azyYnY1u0MLwpqQRvxhi6cTVmlPY8iTo/ifQWAYVoOVi4BR653pn
 pO1IE15BYmkBVJpq/6LDXpm0PdgCOOXElcCnv32gsm88Vo+BJZhpURCQj89uRv78Sjqa
 FmCRxtH76eJBi4st4nDX4tZB2OREMb4tU9ZuiIlMuwdBXYbnqrZJOrSwJMH0V3RP+jDN
 thkwQujT97z9LOnlJF3eibY1PigOCtA+yLWeTo2rR4ydP9HWAmFKNKJ1VKRcOrMRCEqN
 2svtqTwzeNIfr6mz2qaRG49b85WibiHUpi/02wwXbSAfF6KraoiUImNSfuqFEtsshx/7
 w1XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hqS/OCBi97Lg4dVJSxaPDhUri7TkmHBmIpvWz98sinQ=;
 b=vox9drG2Za1xfANWRdtw2FBX+Amseqh3pPijZOdnHcE/iX3zQZ0sNOCjW7SoqWXIg9
 dWQq/XNsGxdpR8kLwlFzO2Bio0KnWYFW4WzO2U+JylMMAM5NV7f//gOWqneDeDgdklHN
 gOjGFhIpxwIkUP3v8O+qgsRFJs76rlJmQDLwiIG3G+B4L3HN76rpIdRpGFdoGhSHTFls
 BTLqRXWVLTPX4EIXc0eTnitCcka2MA5ZA/AElsaIqn6yp+LR972KZbESniHhbXiNT0Gs
 0/nr6ch9Q8ccEz7HAJQpKxM5MUDrhIK4Yc24lu6cztvBsqKneGH8+MGpUco+XpF333yw
 xWBA==
X-Gm-Message-State: AOAM532cTsRjQRAZorMBtu2TkxJsGglYX/0BqmeJc3Gcy1Fe9U3SK/86
 /SVnios8h6P1M3hzJ0PsrM8=
X-Google-Smtp-Source: ABdhPJwXbICpSwNlqxL/rMne7HNylfhWdZx7Z3DhLotn+czRpqwgiTu1GbR65irgdUODC/pMlKHY+Q==
X-Received: by 2002:a17:902:da83:b0:13f:704:d731 with SMTP id
 j3-20020a170902da8300b0013f0704d731mr25644501plx.77.1634545585095; 
 Mon, 18 Oct 2021 01:26:25 -0700 (PDT)
Received: from Laptop-X1.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id k127sm12535583pfd.1.2021.10.18.01.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 01:26:24 -0700 (PDT)
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 18 Oct 2021 16:26:12 +0800
Message-Id: <20211018082612.625417-1-liuhangbin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Hangbin Liu <liuhangbin@gmail.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: mcast: Do not allow users to set
	IGMP counter/timer to zero
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

There is no meaning to set an IGMP counter/timer to 0. Or it will cause
unexpected behavior. E.g. if set multicast_membership_interval to 0,
bridge will remove the mdb immediately after adding.

Fixes: 79b859f573d6 ("bridge: netlink: add support for multicast_last_member_count")
Fixes: b89e6babad4b ("bridge: netlink: add support for multicast_startup_query_count")
Fixes: 7e4df51eb35d ("bridge: netlink: add support for igmp's intervals")
Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
---
 net/bridge/br_netlink.c  | 73 +++++++++++++++++++++++++++++---------
 net/bridge/br_sysfs_br.c | 75 +++++++++++++++++++++++++++++++---------
 2 files changed, 116 insertions(+), 32 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 5c6c4305ed23..d054936373ac 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1168,6 +1168,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 			 struct netlink_ext_ack *extack)
 {
 	struct net_bridge *br = netdev_priv(brdev);
+	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
 	int err;
 
 	if (!data)
@@ -1287,8 +1288,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_ROUTER]) {
 		u8 multicast_router = nla_get_u8(data[IFLA_BR_MCAST_ROUTER]);
 
-		err = br_multicast_set_router(&br->multicast_ctx,
-					      multicast_router);
+		err = br_multicast_set_router(brmctx, multicast_router);
 		if (err)
 			return err;
 	}
@@ -1311,8 +1311,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_QUERIER]) {
 		u8 mcast_querier = nla_get_u8(data[IFLA_BR_MCAST_QUERIER]);
 
-		err = br_multicast_set_querier(&br->multicast_ctx,
-					       mcast_querier);
+		err = br_multicast_set_querier(brmctx, mcast_querier);
 		if (err)
 			return err;
 	}
@@ -1327,49 +1326,93 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_LAST_MEMBER_CNT]) {
 		u32 val = nla_get_u32(data[IFLA_BR_MCAST_LAST_MEMBER_CNT]);
 
-		br->multicast_ctx.multicast_last_member_count = val;
+		if (val) {
+			brmctx->multicast_last_member_count = val;
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Last Member Count");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_STARTUP_QUERY_CNT]) {
 		u32 val = nla_get_u32(data[IFLA_BR_MCAST_STARTUP_QUERY_CNT]);
 
-		br->multicast_ctx.multicast_startup_query_count = val;
+		if (val) {
+			brmctx->multicast_startup_query_count = val;
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Startup Query Count");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_LAST_MEMBER_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_LAST_MEMBER_INTVL]);
 
-		br->multicast_ctx.multicast_last_member_interval = clock_t_to_jiffies(val);
+		if (val) {
+			brmctx->multicast_last_member_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Last Member Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_MEMBERSHIP_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_MEMBERSHIP_INTVL]);
 
-		br->multicast_ctx.multicast_membership_interval = clock_t_to_jiffies(val);
+		if (val) {
+			brmctx->multicast_membership_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Membership Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_QUERIER_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERIER_INTVL]);
 
-		br->multicast_ctx.multicast_querier_interval = clock_t_to_jiffies(val);
+		if (val) {
+			brmctx->multicast_querier_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Querier Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_QUERY_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERY_INTVL]);
 
-		br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
+		if (val && clock_t_to_jiffies(val) > brmctx->multicast_query_response_interval) {
+			brmctx->multicast_query_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Query Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_QUERY_RESPONSE_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERY_RESPONSE_INTVL]);
 
-		br->multicast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
+		/* RFC3376 8.3: The number of seconds represented by the
+		 * [Query Response Interval] must be less than the [Query
+		 * Interval].
+		 */
+		if (val && clock_t_to_jiffies(val) < brmctx->multicast_query_interval) {
+			brmctx->multicast_query_response_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Query Response Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_STARTUP_QUERY_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_STARTUP_QUERY_INTVL]);
 
-		br->multicast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
+		if (val) {
+			brmctx->multicast_startup_query_interval = clock_t_to_jiffies(val);
+		} else {
+			NL_SET_ERR_MSG(extack, "Invalid Startup Query Interval");
+			return -EINVAL;
+		}
 	}
 
 	if (data[IFLA_BR_MCAST_STATS_ENABLED]) {
@@ -1383,8 +1426,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 		__u8 igmp_version;
 
 		igmp_version = nla_get_u8(data[IFLA_BR_MCAST_IGMP_VERSION]);
-		err = br_multicast_set_igmp_version(&br->multicast_ctx,
-						    igmp_version);
+		err = br_multicast_set_igmp_version(brmctx, igmp_version);
 		if (err)
 			return err;
 	}
@@ -1394,8 +1436,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 		__u8 mld_version;
 
 		mld_version = nla_get_u8(data[IFLA_BR_MCAST_MLD_VERSION]);
-		err = br_multicast_set_mld_version(&br->multicast_ctx,
-						   mld_version);
+		err = br_multicast_set_mld_version(brmctx, mld_version);
 		if (err)
 			return err;
 	}
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index d9a89ddd0331..e311aa651d03 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -542,8 +542,13 @@ static ssize_t multicast_last_member_count_show(struct device *d,
 static int set_last_member_count(struct net_bridge *br, unsigned long val,
 				 struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_last_member_count = val;
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_last_member_count = val;
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Last Member Count");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_last_member_count_store(struct device *d,
@@ -564,8 +569,13 @@ static ssize_t multicast_startup_query_count_show(
 static int set_startup_query_count(struct net_bridge *br, unsigned long val,
 				   struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_startup_query_count = val;
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_startup_query_count = val;
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Startup Query Count");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_startup_query_count_store(
@@ -587,8 +597,13 @@ static ssize_t multicast_last_member_interval_show(
 static int set_last_member_interval(struct net_bridge *br, unsigned long val,
 				    struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_last_member_interval = clock_t_to_jiffies(val);
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_last_member_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Last Member Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_last_member_interval_store(
@@ -610,8 +625,13 @@ static ssize_t multicast_membership_interval_show(
 static int set_membership_interval(struct net_bridge *br, unsigned long val,
 				   struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_membership_interval = clock_t_to_jiffies(val);
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_membership_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Membership Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_membership_interval_store(
@@ -634,8 +654,13 @@ static ssize_t multicast_querier_interval_show(struct device *d,
 static int set_querier_interval(struct net_bridge *br, unsigned long val,
 				struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_querier_interval = clock_t_to_jiffies(val);
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_querier_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Querier Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_querier_interval_store(struct device *d,
@@ -658,8 +683,13 @@ static ssize_t multicast_query_interval_show(struct device *d,
 static int set_query_interval(struct net_bridge *br, unsigned long val,
 			      struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
-	return 0;
+	if (val && clock_t_to_jiffies(val) > br->multicast_ctx.multicast_query_response_interval) {
+		br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Query Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_query_interval_store(struct device *d,
@@ -682,8 +712,16 @@ static ssize_t multicast_query_response_interval_show(
 static int set_query_response_interval(struct net_bridge *br, unsigned long val,
 				       struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
-	return 0;
+	/* RFC3376 8.3: The number of seconds represented by the
+	 * [Query Response Interval] must be less than the [Query Interval].
+	 */
+	if (val && clock_t_to_jiffies(val) < br->multicast_ctx.multicast_query_interval) {
+		br->multicast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Query Response Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_query_response_interval_store(
@@ -706,8 +744,13 @@ static ssize_t multicast_startup_query_interval_show(
 static int set_startup_query_interval(struct net_bridge *br, unsigned long val,
 				      struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
-	return 0;
+	if (val) {
+		br->multicast_ctx.multicast_startup_query_interval = clock_t_to_jiffies(val);
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid Startup Query Interval");
+		return -EINVAL;
+	}
 }
 
 static ssize_t multicast_startup_query_interval_store(
-- 
2.31.1


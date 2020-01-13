Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE16139540
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 16:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA94485910;
	Mon, 13 Jan 2020 15:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJYtU2x9zh5U; Mon, 13 Jan 2020 15:53:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B294857F8;
	Mon, 13 Jan 2020 15:53:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6394C077D;
	Mon, 13 Jan 2020 15:53:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4CDD8C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3832987327
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o+C3mUZn1fn8 for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 15:53:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFCE18734E
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:04 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id u1so10643520ljk.7
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 07:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M7dGQIqTzWEMkio4akH4cg6mHCfmnNJAqzweWg3IPew=;
 b=EU4bgx6u3way6NIjZxOKnjaxf5SMcZiKh9iSgZ5u9/HIZCReVaZuyG69vKvYSBobDb
 Nsx/vpkTqKnICdEWR9BlIpGxlST3LRbGo1z1E+ytuGEFM4n/Wf2sz0OJjsEb5MQUJwbS
 ynrIClQV+ZYNfFgSemAMwnqXgIPTukyJbrVJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M7dGQIqTzWEMkio4akH4cg6mHCfmnNJAqzweWg3IPew=;
 b=OIgzvztaps8PYMBKiYYTXYhqyJEpoUttQJKp2ekNqneJKEpWSGSc2JsWMgLR6IkIyK
 Vl1g17p7zY2lPzGxTeu/O4PQZM3G2ItgkDTmcpWY/bmGNT62JfZvn1/sYDbKzMSws3dP
 sz5OHnV6aLRBLuNRcmfdBURhZPIwHGxxaiI5AQeDBo0p6y1uy/BC1H0I1xVexUhFuUpI
 hLPbagfyOIwrnDa7YoLTDKbNFq+EMUFH9PTuzkRTtqEzlqrS1qU3nMOBOkZHNG3KoJVf
 FBMmMOzadW1ZtrExggbLN16Zf2bNxEjI+v2CPd/SijiBzR+HPdyvFHaCG/Oqe1XilyNh
 JquQ==
X-Gm-Message-State: APjAAAVJVXVHGhh+W+nxJHKhTC277ze3yRNuD3ST+hrs6Ny6sXbTg3WY
 Ko0rLOVvwxbqjfYBVp/Gks7xBexug7M=
X-Google-Smtp-Source: APXvYqwkJWoH9wyx/Px9XxfQjuyYN60dv/K4oOZrE8L7SAezrGIqb8W8QhGyYt389PhEKdCNn5mQoQ==
X-Received: by 2002:a2e:721a:: with SMTP id n26mr11317377ljc.128.1578930782863; 
 Mon, 13 Jan 2020 07:53:02 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e20sm6175658ljl.59.2020.01.13.07.53.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:53:02 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Jan 2020 17:52:26 +0200
Message-Id: <20200113155233.20771-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/8] net: bridge: vlan: add helpers to
	check for vlan id/range validity
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

Add helpers to check if a vlan id or range are valid. The range helper
must be called when range start or end are detected.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_netlink.c | 13 +++----------
 net/bridge/br_private.h | 31 +++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 10 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 60136575aea4..14100e8653e6 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -568,17 +568,13 @@ static int br_process_vlan_info(struct net_bridge *br,
 				bool *changed,
 				struct netlink_ext_ack *extack)
 {
-	if (!vinfo_curr->vid || vinfo_curr->vid >= VLAN_VID_MASK)
+	if (!br_vlan_valid_id(vinfo_curr->vid))
 		return -EINVAL;
 
 	if (vinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN) {
-		/* check if we are already processing a range */
-		if (*vinfo_last)
+		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last))
 			return -EINVAL;
 		*vinfo_last = vinfo_curr;
-		/* don't allow range of pvids */
-		if ((*vinfo_last)->flags & BRIDGE_VLAN_INFO_PVID)
-			return -EINVAL;
 		return 0;
 	}
 
@@ -586,10 +582,7 @@ static int br_process_vlan_info(struct net_bridge *br,
 		struct bridge_vlan_info tmp_vinfo;
 		int v, err;
 
-		if (!(vinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_END))
-			return -EINVAL;
-
-		if (vinfo_curr->vid <= (*vinfo_last)->vid)
+		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last))
 			return -EINVAL;
 
 		memcpy(&tmp_vinfo, *vinfo_last,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index f540f3bdf294..dbc0089e2c1a 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -507,6 +507,37 @@ static inline bool nbp_state_should_learn(const struct net_bridge_port *p)
 	return p->state == BR_STATE_LEARNING || p->state == BR_STATE_FORWARDING;
 }
 
+static inline bool br_vlan_valid_id(u16 vid)
+{
+	return vid > 0 && vid < VLAN_VID_MASK;
+}
+
+static inline bool br_vlan_valid_range(const struct bridge_vlan_info *cur,
+				       const struct bridge_vlan_info *last)
+{
+	/* pvid flag is not allowed in ranges */
+	if (cur->flags & BRIDGE_VLAN_INFO_PVID)
+		return false;
+
+	/* check for required range flags */
+	if (!(cur->flags & (BRIDGE_VLAN_INFO_RANGE_BEGIN |
+			    BRIDGE_VLAN_INFO_RANGE_END)))
+		return false;
+
+	/* when cur is the range end, check if:
+	 *  - it has range start flag
+	 *  - range ids are invalid (end is equal to or before start)
+	 */
+	if (last) {
+		if (cur->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN)
+			return false;
+		else if (cur->vid <= last->vid)
+			return false;
+	}
+
+	return true;
+}
+
 static inline int br_opt_get(const struct net_bridge *br,
 			     enum net_bridge_opts opt)
 {
-- 
2.21.0


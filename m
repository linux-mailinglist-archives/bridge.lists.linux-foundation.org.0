Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 001E82721BB
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1A2585EE9;
	Mon, 21 Sep 2020 11:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8LCDZZIHx3HE; Mon, 21 Sep 2020 11:02:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30CF585EC2;
	Mon, 21 Sep 2020 11:02:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15A33C0859;
	Mon, 21 Sep 2020 11:02:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31F02C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 29871204E3
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ariN1qQTAozh for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:02:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D0B91204D9
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:29 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id o5so12239670wrn.13
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lgky1A3hcxj1MPtWkJkYb67UkAbVS/Usr+n+qMifYIA=;
 b=C17WewuTMBmPOJeGBAe4bpLQkSlLYAIqfc/WuuE3KNpR/UHv0TonzV/CFA9ogkUsF9
 PRD0lI/nPA3Jeq27b2l2iHDrXv4+YcdPbl6Fs/DSwdqkfoZVBJYKBDywmE0Cy0zP+wa+
 +JbwjSW1sNGFEtLFYgaihzRzHRELVveiUYOU3BsrXw4lGGX0H76w65bJfXgJAitM48KO
 oo3sOhQ2WmeJ+H+xbpougKh0+7o0hMPH13g+LFxypMzRYGsQTMqlTyg1C08v8jlSmPom
 YCrGbBreVJDVvPKvXmeSP+Gab8r0AAXL+iLrhqDL9081kYa03B6BUFdvWQYnRWlSOAio
 38lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lgky1A3hcxj1MPtWkJkYb67UkAbVS/Usr+n+qMifYIA=;
 b=TNtVcGxRzQwR0D3YWKbS5gMjALGSKGTdJe4BTWlVQLqzaqCNO8Lh7tXMbufaT2FW/h
 k6Kho9fRKQ5fFq5KIMxWQRvjICgEb5d16PswjcZkebwCRFWkuqzObKHdOXEYP0zGzV1t
 VFleBZTVm0MDvIECV130IEBQVT+jRaN0i5tTftsr3JZafFyhX9dvyw7LYs+Um6bjnNb0
 jYt4NW/KXq2y82sz4oYmhuuP4E6cedSK5e7X+wkFoVW0Ot5WMfvhooqECjnP9EMC3Klg
 3s932P/OP4ObkJuyuDeTMnOf661xcx33OL080VK654qh0HsxajXe9rHm/2fdaM+qMqHI
 FZTQ==
X-Gm-Message-State: AOAM53059Kb4dzexVbUQ/O85Q2ZCONdWEw6jLnZAm6trE1eF60cV2CwE
 z3u/Lb5HORRdXtShFv4LdQvLXMDzOZAqdCScKPS9iw==
X-Google-Smtp-Source: ABdhPJzPaX9Qyit+Cnc/LXLXynJ+PNAQ9hKD8yvljfj9TDt7PNv60nZwXm2IjLWbN2RMjhNtFrJcLA==
X-Received: by 2002:a5d:4486:: with SMTP id j6mr49650564wrq.278.1600685785928; 
 Mon, 21 Sep 2020 03:56:25 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:25 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:25 +0300
Message-Id: <20200921105526.1056983-16-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 15/16] net: bridge: mcast: handle host
	state
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

Since host joins are considered as EXCLUDE {} joins we need to reflect
that in all of *,G ports' S,G entries. Since the S,Gs can have
host_joined == true only set automatically we can safely set it to false
when removing all automatically added entries upon S,G delete.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 58 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 11d224c01914..66eb62ded192 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -286,6 +286,53 @@ void br_multicast_star_g_handle_mode(struct net_bridge_port_group *pg,
 	}
 }
 
+/* called when adding a new S,G with host_joined == false by default */
+static void br_multicast_sg_host_state(struct net_bridge_mdb_entry *star_mp,
+				       struct net_bridge_port_group *sg)
+{
+	struct net_bridge_mdb_entry *sg_mp;
+
+	if (WARN_ON(!br_multicast_is_star_g(&star_mp->addr)))
+		return;
+	if (!star_mp->host_joined)
+		return;
+
+	sg_mp = br_mdb_ip_get(star_mp->br, &sg->key.addr);
+	if (!sg_mp)
+		return;
+	sg_mp->host_joined = true;
+}
+
+/* set the host_joined state of all of *,G's S,G entries */
+static void br_multicast_star_g_host_state(struct net_bridge_mdb_entry *star_mp)
+{
+	struct net_bridge *br = star_mp->br;
+	struct net_bridge_mdb_entry *sg_mp;
+	struct net_bridge_port_group *pg;
+	struct br_ip sg_ip;
+
+	if (WARN_ON(!br_multicast_is_star_g(&star_mp->addr)))
+		return;
+
+	memset(&sg_ip, 0, sizeof(sg_ip));
+	sg_ip = star_mp->addr;
+	for (pg = mlock_dereference(star_mp->ports, br);
+	     pg;
+	     pg = mlock_dereference(pg->next, br)) {
+		struct net_bridge_group_src *src_ent;
+
+		hlist_for_each_entry(src_ent, &pg->src_list, node) {
+			if (!(src_ent->flags & BR_SGRP_F_INSTALLED))
+				continue;
+			sg_ip.src = src_ent->addr.src;
+			sg_mp = br_mdb_ip_get(br, &sg_ip);
+			if (!sg_mp)
+				continue;
+			sg_mp->host_joined = star_mp->host_joined;
+		}
+	}
+}
+
 static void br_multicast_sg_del_exclude_ports(struct net_bridge_mdb_entry *sgmp)
 {
 	struct net_bridge_port_group __rcu **pp;
@@ -305,6 +352,12 @@ static void br_multicast_sg_del_exclude_ports(struct net_bridge_mdb_entry *sgmp)
 				  MDB_PG_FLAGS_PERMANENT)))
 			return;
 
+	/* currently the host can only have joined the *,G which means
+	 * we treat it as EXCLUDE {}, so for an S,G it's considered a
+	 * STAR_EXCLUDE entry and we can safely leave it
+	 */
+	sgmp->host_joined = false;
+
 	for (pp = &sgmp->ports;
 	     (p = mlock_dereference(*pp, sgmp->br)) != NULL;) {
 		if (!(p->flags & MDB_PG_FLAGS_PERMANENT))
@@ -326,6 +379,7 @@ void br_multicast_sg_add_exclude_ports(struct net_bridge_mdb_entry *star_mp,
 	if (WARN_ON(!br_multicast_is_star_g(&star_mp->addr)))
 		return;
 
+	br_multicast_sg_host_state(star_mp, sg);
 	memset(&sg_key, 0, sizeof(sg_key));
 	sg_key.addr = sg->key.addr;
 	/* we need to add all exclude ports to the S,G */
@@ -1143,6 +1197,8 @@ void br_multicast_host_join(struct net_bridge_mdb_entry *mp, bool notify)
 {
 	if (!mp->host_joined) {
 		mp->host_joined = true;
+		if (br_multicast_is_star_g(&mp->addr))
+			br_multicast_star_g_host_state(mp);
 		if (notify)
 			br_mdb_notify(mp->br->dev, mp, NULL, RTM_NEWMDB);
 	}
@@ -1155,6 +1211,8 @@ void br_multicast_host_leave(struct net_bridge_mdb_entry *mp, bool notify)
 		return;
 
 	mp->host_joined = false;
+	if (br_multicast_is_star_g(&mp->addr))
+		br_multicast_star_g_host_state(mp);
 	if (notify)
 		br_mdb_notify(mp->br->dev, mp, NULL, RTM_DELMDB);
 }
-- 
2.25.4


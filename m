Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3AB21C4BE
	for <lists.bridge@lfdr.de>; Sat, 11 Jul 2020 17:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D50F8976F;
	Sat, 11 Jul 2020 15:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tz5uNPqsHcX0; Sat, 11 Jul 2020 15:05:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46E788978E;
	Sat, 11 Jul 2020 15:05:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29AA4C016F;
	Sat, 11 Jul 2020 15:05:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 367D0C016F
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jul 2020 15:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 322A288E5F
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jul 2020 15:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRGFr2kg3qA4 for <bridge@lists.linux-foundation.org>;
 Sat, 11 Jul 2020 15:05:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D40C888E49
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jul 2020 15:05:21 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g10so10428587wmc.1
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jul 2020 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3RZP+kRoNIsT3FziqMqySvsKme/wXQTMMb6By92Wljw=;
 b=g3tfppG019TKLAramyd/bDEFL6hxOQIHnsdNOtBYcM1S2/eqTeGBxQoWb48DCNMqJn
 H/PHB56Ye8QR2nwKqx21FM0DkCu/A0f25zXJhc4ezI/AGLtcYXxiOygqaTSCojLeXM3F
 JAbiHVKWrh/bK+mJpvo6dTcsjxNu6YIqA2rkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3RZP+kRoNIsT3FziqMqySvsKme/wXQTMMb6By92Wljw=;
 b=saTs9m8dFloc8+HgRbDaz9BGagWdIBjauzIOdNrZMBzCQFdBj8mowjqN0T1jiRapyC
 Um0KKoFj1SH9gXCHAR3wqgkFPNJgIq1ed0XsWKwRpTO61KoeJxp+zconYPD6IQb1iNuZ
 9oLDgYpgDZ2j0TZddsrzXtX8P9ERNHCSE6PLupktIGzY69iWOBNndiBG+M6En9PVwBL8
 K0SxKmxf3TRPQRz+1kyPPJSBL4c5I9kC4v+P2E1fpPG6NCM/KX49qVqtb2pE+sQRt28X
 Fk9x1qA12FCp7MAfB97XW34pKe5yGHcV109uOgBHVd8tnXybzXRHkDnYcGFTg9g0ZkzB
 V/ng==
X-Gm-Message-State: AOAM530g0Y46PE8S14Kg3LXDKtJxXolbay7FCemALX6GiSm/2Wuwcvzj
 uJ/CXHzGDL+Qcd5YSqnSt4iYvg==
X-Google-Smtp-Source: ABdhPJyBriyhIWZQYNPSP8zQ4Ydk+5ozNY38EE66bVx3lcqNZFBASw6HsUcgsjg2Hg/JvU+Nb+G12A==
X-Received: by 2002:a05:600c:d7:: with SMTP id
 u23mr9741401wmm.183.1594479920056; 
 Sat, 11 Jul 2020 08:05:20 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u84sm14277723wmg.7.2020.07.11.08.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jul 2020 08:05:19 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat, 11 Jul 2020 18:05:04 +0300
Message-Id: <20200711150504.885831-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next] net: bridge: notify on vlan tunnel
	changes done via the old api
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

If someone uses the old vlan API to configure tunnel mappings we'll only
generate the old-style full port notification. That would be a problem
if we are monitoring the new vlan notifications for changes. The patch
resolves the issue by adding vlan notifications to the old tunnel netlink
code. As usual we try to compress the notifications for as many vlans
in a range as possible, thus a vlan tunnel change is considered able
to enter the "current" vlan notification range if:
 1. vlan exists
 2. it has actually changed (curr_change == true)
 3. it passes all standard vlan notification range checks done by
    br_vlan_can_enter_range() such as option equality, id continuity etc

Note that vlan tunnel changes (add/del) are considered a part of vlan
options so only RTM_NEWVLAN notification is generated with the relevant
information inside.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_netlink_tunnel.c | 49 ++++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
index 162998e2f039..8914290c75d4 100644
--- a/net/bridge/br_netlink_tunnel.c
+++ b/net/bridge/br_netlink_tunnel.c
@@ -250,6 +250,36 @@ int br_parse_vlan_tunnel_info(struct nlattr *attr,
 	return 0;
 }
 
+/* send a notification if v_curr can't enter the range and start a new one */
+static void __vlan_tunnel_handle_range(const struct net_bridge_port *p,
+				       struct net_bridge_vlan **v_start,
+				       struct net_bridge_vlan **v_end,
+				       int v_curr, bool curr_change)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+
+	vg = nbp_vlan_group(p);
+	if (!vg)
+		return;
+
+	v = br_vlan_find(vg, v_curr);
+
+	if (!*v_start)
+		goto out_init;
+
+	if (v && curr_change && br_vlan_can_enter_range(v, *v_end)) {
+		*v_end = v;
+		return;
+	}
+
+	br_vlan_notify(p->br, p, (*v_start)->vid, (*v_end)->vid, RTM_NEWVLAN);
+out_init:
+	/* we start a range only if there are any changes to notify about */
+	*v_start = curr_change ? v : NULL;
+	*v_end = *v_start;
+}
+
 int br_process_vlan_tunnel_info(const struct net_bridge *br,
 				const struct net_bridge_port *p, int cmd,
 				struct vtunnel_info *tinfo_curr,
@@ -263,6 +293,7 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
 			return -EINVAL;
 		memcpy(tinfo_last, tinfo_curr, sizeof(struct vtunnel_info));
 	} else if (tinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_END) {
+		struct net_bridge_vlan *v_start = NULL, *v_end = NULL;
 		int t, v;
 
 		if (!(tinfo_last->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN))
@@ -272,11 +303,24 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
 			return -EINVAL;
 		t = tinfo_last->tunid;
 		for (v = tinfo_last->vid; v <= tinfo_curr->vid; v++) {
-			err = br_vlan_tunnel_info(p, cmd, v, t, changed);
+			bool curr_change = false;
+
+			err = br_vlan_tunnel_info(p, cmd, v, t, &curr_change);
 			if (err)
-				return err;
+				break;
 			t++;
+
+			if (curr_change)
+				*changed = curr_change;
+			 __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
+						    curr_change);
 		}
+		if (v_start && v_end)
+			br_vlan_notify(br, p, v_start->vid, v_end->vid,
+				       RTM_NEWVLAN);
+		if (err)
+			return err;
+
 		memset(tinfo_last, 0, sizeof(struct vtunnel_info));
 		memset(tinfo_curr, 0, sizeof(struct vtunnel_info));
 	} else {
@@ -286,6 +330,7 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
 					  tinfo_curr->tunid, changed);
 		if (err)
 			return err;
+		br_vlan_notify(br, p, tinfo_curr->vid, 0, RTM_NEWVLAN);
 		memset(tinfo_last, 0, sizeof(struct vtunnel_info));
 		memset(tinfo_curr, 0, sizeof(struct vtunnel_info));
 	}
-- 
2.25.4


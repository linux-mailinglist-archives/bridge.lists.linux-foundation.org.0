Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6245F13B189
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52FD08796C;
	Tue, 14 Jan 2020 17:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5-5Gra-CUc+k; Tue, 14 Jan 2020 17:58:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 221D1879B8;
	Tue, 14 Jan 2020 17:58:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 005B7C077D;
	Tue, 14 Jan 2020 17:58:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37F13C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BBA61FD43
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3KmQKxJVK9s for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FFBF20436
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:32 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id r19so15402948ljg.3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M7dGQIqTzWEMkio4akH4cg6mHCfmnNJAqzweWg3IPew=;
 b=KOyrYoPDKO/L6xfHagAIPLVBllOIvBf02OrQ4SsgBrEjWAf7oiimfkex4sixNWEiBV
 +6nt2FT4ON+JFNG6S/hfsbMQyP9M4qIzxecg0KgnJn0H4YELqwLf9ErKC7a8gETYz79I
 o2BJAH0YfjbeerHgdfsH8XybtDzGes0Rrkx/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M7dGQIqTzWEMkio4akH4cg6mHCfmnNJAqzweWg3IPew=;
 b=kyqfny94ppQfMWZ/4f28nkfdbQ4PqpShy8+vLzxlHhqfdnX3FiRnI2H+DbfSLmsBH2
 3LhRA7MFsS/SmRehfBiMB5rXIW+dxjiYlDpmN5lRW+Nh2f/8G7u8bTZhpRECRAFSE9CS
 kVx9YNSx3DiULplTw3+5NL97gI2xitAExdtAYEGCrMuOGr1lSnxGGfEXyDpcYqaH+qVf
 nCWhBAfIKUyCsuaed12BjzHUE7NiiUlzJMSZNiM7ieTHqMAf3ERkMC67d4HYkXF2ZpTz
 CrL7E2LhRZk9FuDxYPpzJixRM1IMZEx3y59mZqW/Pxpqp+f3ohLsVVvzVN0F8ZBXQp3+
 B/Og==
X-Gm-Message-State: APjAAAWgJ2BtEdandRTVZ7DyeUZtJvRWPwio9mJruiiZfZuUNfks7x6V
 2E7xPLulBz6JAFP5pDAZfWvS8g==
X-Google-Smtp-Source: APXvYqxcLZRY3/TOPTNVim2eGLUxFCGINorQpID+jv3qnjDdBIE71omVW0RrCPu8IIaG8Ak9h0xU1g==
X-Received: by 2002:a05:651c:1b0:: with SMTP id
 c16mr15378691ljn.236.1579024710559; 
 Tue, 14 Jan 2020 09:58:30 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:29 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:07 +0200
Message-Id: <20200114175614.17543-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
References: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 1/8] net: bridge: vlan: add helpers to
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


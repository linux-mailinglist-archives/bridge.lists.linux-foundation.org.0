Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 113EF139543
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 16:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45DB08528B;
	Mon, 13 Jan 2020 15:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tlxZY7RJ7uxK; Mon, 13 Jan 2020 15:53:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 551DA8517C;
	Mon, 13 Jan 2020 15:53:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35CDEC1D80;
	Mon, 13 Jan 2020 15:53:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B3EDC1D80
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 140D2873BC
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ArcJZSRXzD1Y for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 15:53:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 950E78734E
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:06 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id j26so10625583ljc.12
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 07:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OEK3+d3CKz1mIylcZTyAVylsHfHcJSc3xiPKTSlMW5U=;
 b=JJyBw1Bdfdn/DXRctvYndAg0AuUSmUbCaylTOhEiNjsqQ4f8/QE2UFY4NwHHcEoUer
 PxkGvdOOeAZjIRYdL5wT/4tn7JNvJXR+mR85wrex6ZvWA0Q+luITCfvZer6p8kb4tklp
 Ol0ihmY5HpDqO4oyPFKgU4aK/H0vKrHxvdeXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OEK3+d3CKz1mIylcZTyAVylsHfHcJSc3xiPKTSlMW5U=;
 b=m3qasCPbhdoJ5/e7ud+7Y/2gKFPPzeH72xi/fa8y4k4hryprZ3yKuLMkQbbtWuFg+u
 kRMEepKGZNWyPNhHhonCMxK1YAFKHyYPjbR5ClbQJ2/hTgbcYhIdT8jeSlHCfPcl42gc
 SWDNF849gJzkN5z8C8VvqMju9lmIC1ukjRjxcIW7zbQ7IFTVDNmxxjAqLecP8mxDYxdF
 oOaXDucjJwZ6s1g7WAUI0QDfeWezWFgureObYHEUPbG5zxByZsVVdHNSnavxe3Evhqdn
 tjiQanvmVPmm/V2x+GEvFI4pJU+IEIgmLTb88cJiaXsSaHU1sFofyvpiAOa1S1bhy6b9
 trLA==
X-Gm-Message-State: APjAAAV+wIWLvtR48+MjLgZEpZxxQyUw5g5KeeS3hOWJmUgaBuQOec9v
 bPNapQaa/vwHrrLoXHMU/pm9QQ==
X-Google-Smtp-Source: APXvYqxceAKLZyUuArHDU7dwD9jiViqFCLrqjxbUGKI+t/EoK6oZ93obLx70UWxUHq4SQzZdAUvS7A==
X-Received: by 2002:a2e:8512:: with SMTP id j18mr9188451lji.269.1578930784874; 
 Mon, 13 Jan 2020 07:53:04 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e20sm6175658ljl.59.2020.01.13.07.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:53:03 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Jan 2020 17:52:27 +0200
Message-Id: <20200113155233.20771-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/8] net: bridge: netlink: add extack
	error messages when processing vlans
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

Add extack messages on vlan processing errors. We need to move the flags
missing check after the "last" check since we may have "last" set but
lack a range end flag in the next entry.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_netlink.c |  6 +++---
 net/bridge/br_private.h | 38 +++++++++++++++++++++++++++-----------
 2 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 14100e8653e6..40942cece51a 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -568,11 +568,11 @@ static int br_process_vlan_info(struct net_bridge *br,
 				bool *changed,
 				struct netlink_ext_ack *extack)
 {
-	if (!br_vlan_valid_id(vinfo_curr->vid))
+	if (!br_vlan_valid_id(vinfo_curr->vid, extack))
 		return -EINVAL;
 
 	if (vinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN) {
-		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last))
+		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last, extack))
 			return -EINVAL;
 		*vinfo_last = vinfo_curr;
 		return 0;
@@ -582,7 +582,7 @@ static int br_process_vlan_info(struct net_bridge *br,
 		struct bridge_vlan_info tmp_vinfo;
 		int v, err;
 
-		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last))
+		if (!br_vlan_valid_range(vinfo_curr, *vinfo_last, extack))
 			return -EINVAL;
 
 		memcpy(&tmp_vinfo, *vinfo_last,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index dbc0089e2c1a..a7dddc5d7790 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -507,32 +507,48 @@ static inline bool nbp_state_should_learn(const struct net_bridge_port *p)
 	return p->state == BR_STATE_LEARNING || p->state == BR_STATE_FORWARDING;
 }
 
-static inline bool br_vlan_valid_id(u16 vid)
+static inline bool br_vlan_valid_id(u16 vid, struct netlink_ext_ack *extack)
 {
-	return vid > 0 && vid < VLAN_VID_MASK;
+	bool ret = vid > 0 && vid < VLAN_VID_MASK;
+
+	if (!ret)
+		NL_SET_ERR_MSG_MOD(extack, "Vlan id is invalid");
+
+	return ret;
 }
 
 static inline bool br_vlan_valid_range(const struct bridge_vlan_info *cur,
-				       const struct bridge_vlan_info *last)
+				       const struct bridge_vlan_info *last,
+				       struct netlink_ext_ack *extack)
 {
 	/* pvid flag is not allowed in ranges */
-	if (cur->flags & BRIDGE_VLAN_INFO_PVID)
-		return false;
-
-	/* check for required range flags */
-	if (!(cur->flags & (BRIDGE_VLAN_INFO_RANGE_BEGIN |
-			    BRIDGE_VLAN_INFO_RANGE_END)))
+	if (cur->flags & BRIDGE_VLAN_INFO_PVID) {
+		NL_SET_ERR_MSG_MOD(extack, "Pvid isn't allowed in a range");
 		return false;
+	}
 
 	/* when cur is the range end, check if:
 	 *  - it has range start flag
 	 *  - range ids are invalid (end is equal to or before start)
 	 */
 	if (last) {
-		if (cur->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN)
+		if (cur->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN) {
+			NL_SET_ERR_MSG_MOD(extack, "Found a new vlan range start while processing one");
 			return false;
-		else if (cur->vid <= last->vid)
+		} else if (!(cur->flags & BRIDGE_VLAN_INFO_RANGE_END)) {
+			NL_SET_ERR_MSG_MOD(extack, "Vlan range end flag is missing");
 			return false;
+		} else if (cur->vid <= last->vid) {
+			NL_SET_ERR_MSG_MOD(extack, "End vlan id is less than or equal to start vlan id");
+			return false;
+		}
+	}
+
+	/* check for required range flags */
+	if (!(cur->flags & (BRIDGE_VLAN_INFO_RANGE_BEGIN |
+			    BRIDGE_VLAN_INFO_RANGE_END))) {
+		NL_SET_ERR_MSG_MOD(extack, "Both vlan range flags are missing");
+		return false;
 	}
 
 	return true;
-- 
2.21.0


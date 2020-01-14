Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 993F513B185
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 891F081B79;
	Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXO-qwo8eDwk; Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 434EF81E85;
	Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29446C077D;
	Tue, 14 Jan 2020 17:58:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D441C18DD
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C98381E6F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPTe0gdBn63w for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3040D81422
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:34 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id m26so15341699ljc.13
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OEK3+d3CKz1mIylcZTyAVylsHfHcJSc3xiPKTSlMW5U=;
 b=L1I1cGq/VpF7rqeu4/9JOaVMNqaD7c6cok3OLJOPl574ZH9zu4R3FyH+Ma0EExTcEw
 wLgcDPu17VJMrRImy3c5TAxGreQuchKtD9lgYnhTJw3ZWLtYXv3B5hkPWcyK6f8PgTKl
 eW6lKELnIuzYn3DSD4a4sKoVnWhzghrHj36Bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OEK3+d3CKz1mIylcZTyAVylsHfHcJSc3xiPKTSlMW5U=;
 b=VqOCtoYFZohQkhCuhzEUBfbtmqwgBnuhE/FTkxpQNEiOmm0ybEoR4VUHF2SK4g+ZK2
 COHManvNhLZFFT893jiaV9AhvNczhjzpN7hjq7sos5IRmlL8dC5pZqBdvXHhGH520MCS
 c34hQrElPre0l+17RLKLzX6C7lah/AGtmAZ0Ouquo2y2nQxr+Wb6Fw07e9feLzG0bl4D
 HxkDiI+wi8mumKpWrN8rrRYD8hl+BT3b9NQzz4OCg7f1f14o8BE/g7UM1GRoZ8UWUR81
 3jP8743arMjz+8t8TDav8vWFDKc0DsFy4eCwMHnx0OwDKaFLyrJPB9x2aC1tRKThb31P
 cXJw==
X-Gm-Message-State: APjAAAVL9TPjSZVHRh/Xw80m9o2za5uGj5dIV0VWXMpNNl/Kgi7yCly1
 a0Ax6Yi3seUD51mmm0BXaqvaIw==
X-Google-Smtp-Source: APXvYqwH+MWStQtul4RUIFL2GpYqrcOYO/6bPGvcbwmhPfsrD+4LrI95SGLCtOyK6qObwuUi/kkD7Q==
X-Received: by 2002:a2e:461a:: with SMTP id t26mr15043100lja.204.1579024712249; 
 Tue, 14 Jan 2020 09:58:32 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:31 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:08 +0200
Message-Id: <20200114175614.17543-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
References: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 2/8] net: bridge: netlink: add extack
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


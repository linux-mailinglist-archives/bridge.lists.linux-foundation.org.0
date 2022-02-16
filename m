Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C4C4B89FA
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D627D833A0;
	Wed, 16 Feb 2022 13:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ja5L_NHuvf4g; Wed, 16 Feb 2022 13:30:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 63BE8824EF;
	Wed, 16 Feb 2022 13:30:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F018CC0073;
	Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D0EAC000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAB8D416C9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMVleNUavNWL for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E787B41571
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:28 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id c10so3293882ljr.9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=DYnfKqTSgC5uj+SzX4mt7uAq7sGgk7Wi7t60amasNV0=;
 b=oxgfrsXStgeuX6tCRI8Jrp2u3JdDVV8hMQYPzHmSvI8GOYa/IRYkpGoSbIKCUVYZZq
 pyHvHY1anxMNK9X3eJvqEjDG8+48vm6wLm0q79+bJQrnw6kKhbSZDh9v7OhufwQ+Q3xI
 oLCefAUu7MkS0wFIseqacZjsATPxgvlxhqk2bPdQy3tOYs/4/PNsx74hC8j6vPA2EwYt
 3A3BL4DVRusjAv56hhWzQ6BHib7nvN6z/HRpBkZ2Kf/OBYwIDQzKlAV3Oco5C881kPaY
 UlURxMwmPCiivCJYZPoiZh9ffuVp7p7wamxtLGKluisKrMujGYQOYudOCEHVFBU9YR7I
 SyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=DYnfKqTSgC5uj+SzX4mt7uAq7sGgk7Wi7t60amasNV0=;
 b=KVJTjhPRuZNOF+potBkXgoBJtZUn1gy4kiKdBtYuiQEBXzYpVEt/+zVM6B+Coum+x9
 jWPAaOPkafLD+YYQ6c4sheqr0+L+9iepDYApSeUuwW9Jw9Wcy+xe7N0PJTPXbhxKDz6Z
 AzqN8QXLShrancIpBq0sxJmUPy7ECKNNzPRMq3TCRhltM/0k8zuJtDmNTvU4cRW1kiKW
 G/lRYs38fFVpp7GVu3Iz3QiFD9vFu8va3x8TOzlOl+3xo/bprhFG6/IYGcrM2AaSCJql
 Pr/5zTtr3xj0tH2iGYkMZgKuBKBeUarkzVGyYLV0ed3YOQ34TeunQ3Ymj/fUzlkz8Z1O
 S/kQ==
X-Gm-Message-State: AOAM531HQQHRMhwPSof0sEIiC7xrlmdryrBH4WRqqjMCBQSMfoJQ6vw8
 C6Mf8hJvxwLCS6e32r4kvIztGQ==
X-Google-Smtp-Source: ABdhPJwJFoP2AoBOi0/Lpv5FIoWr4q1oM0BAHDJboChbC8FCLPQd4CMCNVbVyuPHiaJPBASD8aIioQ==
X-Received: by 2002:a2e:8346:0:b0:246:c11:b4c3 with SMTP id
 l6-20020a2e8346000000b002460c11b4c3mr1485442ljh.351.1645018226660; 
 Wed, 16 Feb 2022 05:30:26 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:26 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:28 +0100
Message-Id: <20220216132934.1775649-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220216132934.1775649-1-tobias@waldekranz.com>
References: <20220216132934.1775649-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [RFC net-next 3/9] net: bridge: vlan: Notify switchdev
	drivers of VLAN MST migrations
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

Whenever a VLAN moves to a new MSTID, send a switchdev notification so
that switchdevs can track a bridge's VID to MSTID mapping.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h | 10 ++++++++++
 net/bridge/br_vlan.c    | 20 ++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index d353793dfeb5..ee4a7bd1e540 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -28,6 +28,7 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
 	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
+	SWITCHDEV_ATTR_ID_VLAN_MSTID,
 };
 
 struct switchdev_brport_flags {
@@ -35,6 +36,14 @@ struct switchdev_brport_flags {
 	unsigned long mask;
 };
 
+struct switchdev_vlan_attr {
+	u16 vid;
+
+	union {
+		u16 mstid;
+	};
+};
+
 struct switchdev_attr {
 	struct net_device *orig_dev;
 	enum switchdev_attr_id id;
@@ -50,6 +59,7 @@ struct switchdev_attr {
 		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
 		bool mc_disabled;			/* MC_DISABLED */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
+		struct switchdev_vlan_attr vlan_attr;	/* VLAN_* */
 	} u;
 };
 
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 459e84a7354d..c45a34c14e10 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -173,6 +173,26 @@ static int br_vlan_mst_migrate(struct net_bridge_vlan *v, u16 mstid)
 	old_mst = rtnl_dereference(v->mst);
 	rcu_assign_pointer(v->mst, mst);
 
+	if (br_vlan_is_master(v)) {
+		struct switchdev_attr attr = {
+			.id = SWITCHDEV_ATTR_ID_VLAN_MSTID,
+			.flags = SWITCHDEV_F_DEFER,
+			.orig_dev = br->dev,
+			.u.vlan_attr = {
+				.vid = v->vid,
+				.mstid = mstid,
+			},
+		};
+		int err;
+
+		err = switchdev_port_attr_set(br->dev, &attr, NULL);
+		if (err && err != -EOPNOTSUPP) {
+			rcu_assign_pointer(v->mst, old_mst);
+			br_vlan_mst_put(mst);
+			return err;
+		}
+	}
+
 	if (old_mst)
 		br_vlan_mst_put(old_mst);
 
-- 
2.25.1


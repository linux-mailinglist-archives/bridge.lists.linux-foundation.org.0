Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B694D915E
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 094FB60F58;
	Tue, 15 Mar 2022 00:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_9WMVgw4ESe; Tue, 15 Mar 2022 00:26:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 73CC260F56;
	Tue, 15 Mar 2022 00:26:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8521C0088;
	Tue, 15 Mar 2022 00:26:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66A47C0089
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44D1A415B5
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDQwQzC8-ws5 for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B945405CE
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:33 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id w27so30214494lfa.5
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=fRo8wCl+tN06zy2NqVkO5/xxonQ/jWHccKeTEjzxNfI=;
 b=bllWpNbiRmEE+CK3V7xZ4paKx1F9Mk+OKAnEM86DuBObpcblQIwEsZJlfUUP4EajJ0
 kSHT5ox+4Tp9DtIgzZ0D6vxLVPBVP4Qr76vKXJ0ggJc/5X1gsX9YwUkZDC5II974vOwv
 wykxT0iBfzL6riXdJhhuHIZsqXe250S1CJEXX/yP2zvq10YWTa+HB5D7htI68+N/2BiM
 qyxol81HGUQnXwjAhrj0lXgmY/Nl3+4syfCCFY/mwf/JztSJ7NukjXpb7ztjzABp3YqI
 NoS1UVxZHFJKoSU9tJRgM46inBgfBCBLzg1eItodg7VZzv1U8ObfPLAZkvOMT7fKfZiG
 KImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=fRo8wCl+tN06zy2NqVkO5/xxonQ/jWHccKeTEjzxNfI=;
 b=zmrjJmJ32q1Bphi3URzbuDKpR26ELKLCmxBZFrT5Yx3fdSxCjnmhkkF/mrymGHzR6I
 0edJFhYEufoirNXnWoV0FLBjS2LkFooyErxKDcX6UQpCfM2uyqp0dgkBRjbj+cR7bSvY
 rUcR+edylb9wRX2bA3RIOKKNLDPD1euXrwfuiSzwem/KWlhd/btRmIhO8lMElU0FC4uZ
 js68E3bAqXZCDT3IKrQiCYJF3ZjkC9yTPgn7/vPKSf2q6wrJcW68Wdh4O+Q0DkTk0PoI
 fFeYY3k18OWCiFim/NXX6Ysze0RlIVbqRr8wedNsRKL1wJMwTWmz9PuzxTD0DMyFpTut
 gRBA==
X-Gm-Message-State: AOAM530Y0Md0ecTn705x519Y9LHMBWHaNhYQUcYWE4h6qZsEQ2K7hoSW
 Jnv+XEXsMDqx3V7ctT1Ntl6DaA==
X-Google-Smtp-Source: ABdhPJwDHApJ0DivKf9mcpMTpVj/5kbpPheKt/eudQMU+Uk8jtvPorPtgPMlNGmVwLK9gTXuXsJV3w==
X-Received: by 2002:a19:5510:0:b0:448:2e01:3e10 with SMTP id
 n16-20020a195510000000b004482e013e10mr14979398lfe.628.1647303991162; 
 Mon, 14 Mar 2022 17:26:31 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:30 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:39 +0100
Message-Id: <20220315002543.190587-12-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 11/15] net: dsa: Pass VLAN MSTI
	migration notifications to driver
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

Add the usual trampoline functionality from the generic DSA layer down
to the drivers for VLAN MSTI migrations.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
---
 include/net/dsa.h  |  3 +++
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 16 +++++++++++++++-
 net/dsa/slave.c    |  6 ++++++
 4 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 9d16505fc0e2..1ddaa2cc5842 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -964,6 +964,9 @@ struct dsa_switch_ops {
 				 struct netlink_ext_ack *extack);
 	int	(*port_vlan_del)(struct dsa_switch *ds, int port,
 				 const struct switchdev_obj_port_vlan *vlan);
+	int	(*vlan_msti_set)(struct dsa_switch *ds, struct dsa_bridge bridge,
+				 const struct switchdev_vlan_msti *msti);
+
 	/*
 	 * Forwarding database
 	 */
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 2aba420696ef..d90b4cf0c9d2 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -236,6 +236,8 @@ bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
 int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
 int dsa_port_mst_enable(struct dsa_port *dp, bool on,
 			struct netlink_ext_ack *extack);
+int dsa_port_vlan_msti(struct dsa_port *dp,
+		       const struct switchdev_vlan_msti *msti);
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match);
 int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 02214033cec0..3ac114f6fc22 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -323,7 +323,10 @@ static void dsa_port_bridge_destroy(struct dsa_port *dp,
 
 static bool dsa_port_supports_mst(struct dsa_port *dp)
 {
-	return dsa_port_can_configure_learning(dp);
+	struct dsa_switch *ds = dp->ds;
+
+	return ds->ops->vlan_msti_set &&
+		dsa_port_can_configure_learning(dp);
 }
 
 int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
@@ -800,6 +803,17 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
 	return 0;
 }
 
+int dsa_port_vlan_msti(struct dsa_port *dp,
+		       const struct switchdev_vlan_msti *msti)
+{
+	struct dsa_switch *ds = dp->ds;
+
+	if (!ds->ops->vlan_msti_set)
+		return -EOPNOTSUPP;
+
+	return ds->ops->vlan_msti_set(ds, *dp->bridge, msti);
+}
+
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match)
 {
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 879d18cc99cb..5e986cdeaae5 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -482,6 +482,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
 		break;
+	case SWITCHDEV_ATTR_ID_VLAN_MSTI:
+		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_vlan_msti(dp, &attr->u.vlan_msti);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
-- 
2.25.1


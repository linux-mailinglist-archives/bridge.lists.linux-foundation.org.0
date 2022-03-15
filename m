Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C144D914C
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D591A415A8;
	Tue, 15 Mar 2022 00:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNkqzvwkIgLx; Tue, 15 Mar 2022 00:26:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 441BD415AC;
	Tue, 15 Mar 2022 00:26:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49F25C008B;
	Tue, 15 Mar 2022 00:26:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59405C0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3924E4053F
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LwUuF0pbogvP for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 319DD40142
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:26 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id 25so24319438ljv.10
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=tVCBhw08qNLsuFlkkOFuU98rHtIBmvXy+B80j+Mh3AE=;
 b=Ajad6Ng/K4St+Mej1wNaeU0DUSLAHoVfY9FQknmR5yYT0J2LcN3B5EM38Y2C3t3imY
 DbiPOzt1npZVsybU3zpIYM8hNYVIdjsYWnnbUqdYZ5vg9LWKRabomUcnwD6JbOG3TKe5
 mvT4PRWZ9xYkrofAinDjQUW0N+bGJmIPBmqwVIKminAXhqLaOwpdMJQL6f/b6I874Fgu
 v5ijsBCze+REVPVoAM3kDLD3VjRUm6vGDcXuSem9gkFP8igNTzYssJ9/JO2NrWrlju+1
 wLSY2JQ5qqwauprBlQWxdRuTLviVvn0kHAkywTUR2zefTfDQ0/FZyoHXO5jBG7dUVUxR
 RPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=tVCBhw08qNLsuFlkkOFuU98rHtIBmvXy+B80j+Mh3AE=;
 b=TFSjmBU50o6X3hPxWiABTKGNE3spDOCE9VVceQ1nUPPflyYgvbUGb5O9IF5YN3HZsY
 T3jmIIEZWFbRX+kiGHrfqm54Akoblt1hsS+ldh4i1pRdvLUHlYGuCkRfYJDhancEFr9l
 lFSOr7oHkje6cw/4RauRenSnBiJvFCxF96JcH7VMxRh0OhLi2DX87V8YKaxizf2bb44K
 whcvync708YjIaocpdOjLNy10oOKDbOusiOxe2NCxca32H7FMmCQzraBUzKIOGGjagOm
 AOS8bFTNb8SALtpu5yoKaBHLOOZDOlRJlveDcKZlDFCd8erunntkW4gfOfMSUi5kXFr4
 Z9Zg==
X-Gm-Message-State: AOAM530iOItxhsLT8JVgCGlLqxzPFb9eNy7vJ9h5c1EJyfEksASULN1j
 G4jXWDt3xk4tE7zSljECHnM1ew==
X-Google-Smtp-Source: ABdhPJzppm1HhRODkPhFyEPM5GPn/loX/IjWJz3NXCgwfrnKfb6+haIfNXipONdnWjQVMhCmDPjohw==
X-Received: by 2002:a05:651c:179c:b0:247:e1b4:92aa with SMTP id
 bn28-20020a05651c179c00b00247e1b492aamr15717879ljb.55.1647303984167; 
 Mon, 14 Mar 2022 17:26:24 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:23 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:32 +0100
Message-Id: <20220315002543.190587-5-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v4 net-next 04/15] net: bridge: mst: Notify
	switchdev drivers of MST mode changes
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

Trigger a switchdev event whenever the bridge's MST mode is
enabled/disabled. This allows constituent ports to either perform any
required hardware config, or refuse the change if it not supported.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/switchdev.h |  2 ++
 net/bridge/br_mst.c     | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 3e424d40fae3..85dd004dc9ad 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -27,6 +27,7 @@ enum switchdev_attr_id {
 	SWITCHDEV_ATTR_ID_BRIDGE_VLAN_PROTOCOL,
 	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
 	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
+	SWITCHDEV_ATTR_ID_BRIDGE_MST,
 	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
 };
 
@@ -48,6 +49,7 @@ struct switchdev_attr {
 		clock_t ageing_time;			/* BRIDGE_AGEING_TIME */
 		bool vlan_filtering;			/* BRIDGE_VLAN_FILTERING */
 		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
+		bool mst;				/* BRIDGE_MST */
 		bool mc_disabled;			/* MC_DISABLED */
 		u8 mrp_port_role;			/* MRP_PORT_ROLE */
 	} u;
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 355ad102d6b1..051b9358946b 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -99,8 +99,14 @@ void br_mst_vlan_init_state(struct net_bridge_vlan *v)
 int br_mst_set_enabled(struct net_bridge *br, bool on,
 		       struct netlink_ext_ack *extack)
 {
+	struct switchdev_attr attr = {
+		.id = SWITCHDEV_ATTR_ID_BRIDGE_MST,
+		.orig_dev = br->dev,
+		.u.mst = on,
+	};
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p;
+	int err;
 
 	list_for_each_entry(p, &br->port_list, list) {
 		vg = nbp_vlan_group(p);
@@ -116,6 +122,10 @@ int br_mst_set_enabled(struct net_bridge *br, bool on,
 	if (br_opt_get(br, BROPT_MST_ENABLED) == on)
 		return 0;
 
+	err = switchdev_port_attr_set(br->dev, &attr, extack);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
 	if (on)
 		static_branch_enable(&br_mst_used);
 	else
-- 
2.25.1


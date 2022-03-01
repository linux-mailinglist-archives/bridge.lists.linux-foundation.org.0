Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9724C88D2
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:04:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E730560BA6;
	Tue,  1 Mar 2022 10:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeEoV1Bif7dC; Tue,  1 Mar 2022 10:03:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 78F5F60C31;
	Tue,  1 Mar 2022 10:03:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59325C0077;
	Tue,  1 Mar 2022 10:03:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 97477C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A2DF4151E
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LfLQBXD9clL for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58DED414E5
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:56 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id bu29so26077653lfb.0
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=dN16fgCTqmhSfWtON594E0vOkCFf2RmkoetWGdp6JJ4=;
 b=FGP37pZXEBxkL0RxQNnVRGaX5eyOsC22WbmLISe8yfJ43HMUdsFMgaXv9tkRS4DpVG
 tjGzCvGsTtjeWS+jnvH5B8+Yp0D8sycoVCMC3x1VD+fqlEoJdOXBZAkevk4YU74QVAk1
 S5ohNO6qfTP38dNJWcXPMuzxIRN7XtdtSoEONxXDoc74FLrZM4zM8X32zs+4tEagEIkD
 w76Srz/HbjzTAXMO6Jxw6l2CfLw7TcYeWVSyE90AFjDExj1M8DmPp93Em1NJxpYfj38U
 DbO1BDdxtMQwnqJF6B6W6I7OS/++rHXExExII94jWf2+Ux04FqkA2vPbo1YwpemaydjV
 5Tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=dN16fgCTqmhSfWtON594E0vOkCFf2RmkoetWGdp6JJ4=;
 b=crNC7P3io0mwvKeI5Md9wz1dUeBHvu0D2UcFBGnj6dUs/9un01EitUqhFvr9kJWOU7
 TtdxZPN7XUL2vVlyLaV9JlZvWzkfCS4rI6sTNYZ99yaQf6q6itX/0R86AS8drXiB2tWd
 N1Hs62NEDI5W2sQe9JVzQQUFtXQsr/ypc1vdI6LWQ3bK+x8+0qoBxOES5En5By3WEjvs
 +ymQBcLgvlWfshTFR1mHe/fwfbkm97DVaYghILOvgPTHE/JcKABEM9NqWmJU90PQSnMi
 8ICuh64jezlXo5voHHxWEtwe0JF8Vrh94lbwADHE3UYttRKv1s77pWXIVO/fRlk0/Y4R
 6YMA==
X-Gm-Message-State: AOAM533EF99bM/IkUOyzYq6KgzbMSXASBDGy1/W+4bruB4Pewm2xIDdJ
 N0D+b7WMC+qB8KLHwn2yd8xceA==
X-Google-Smtp-Source: ABdhPJzd8u7r/RDGEtANGyQfgwedHUl5shTP/BHfpDtp0lTOI/ubmRMWeuVYHto4/ElK6FcsVT7r0g==
X-Received: by 2002:ac2:5295:0:b0:443:ddce:d283 with SMTP id
 q21-20020ac25295000000b00443ddced283mr15040074lfm.246.1646129034218; 
 Tue, 01 Mar 2022 02:03:54 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:53 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:18 +0100
Message-Id: <20220301100321.951175-8-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301100321.951175-1-tobias@waldekranz.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 07/10] net: dsa: Pass MST state changes
	to driver
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
to the drivers for MST state changes.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h  |  2 ++
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 30 ++++++++++++++++++++++++++++++
 net/dsa/slave.c    |  6 ++++++
 4 files changed, 40 insertions(+)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index cc8acb01bd9b..096e6e3a8e1e 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -943,6 +943,8 @@ struct dsa_switch_ops {
 				     struct dsa_bridge bridge);
 	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
 				      u8 state);
+	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
+				      const struct switchdev_mst_state *state);
 	void	(*port_fast_age)(struct dsa_switch *ds, int port);
 	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
 					 struct switchdev_brport_flags flags,
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 87ec0697e92e..a620e079ebc5 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -198,6 +198,8 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
 void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
 			       const struct dsa_device_ops *tag_ops);
 int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
+int dsa_port_set_mst_state(struct dsa_port *dp,
+			   const struct switchdev_mst_state *state);
 int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
 int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
 void dsa_port_disable_rt(struct dsa_port *dp);
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 5f45cb7d70ba..26cfbc8ab499 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -108,6 +108,36 @@ int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age)
 	return 0;
 }
 
+int dsa_port_set_mst_state(struct dsa_port *dp,
+			   const struct switchdev_mst_state *state)
+{
+	struct dsa_switch *ds = dp->ds;
+	int err, port = dp->index;
+
+	if (!ds->ops->port_mst_state_set)
+		return -EOPNOTSUPP;
+
+	err = ds->ops->port_mst_state_set(ds, port, state);
+	if (err)
+		return err;
+
+	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
+		switch (state->state) {
+		case BR_STATE_DISABLED:
+		case BR_STATE_BLOCKING:
+		case BR_STATE_LISTENING:
+			/* Ideally we would only fast age entries
+			 * belonging to VLANs controlled by this
+			 * MST.
+			 */
+			dsa_port_fast_age(dp);
+			break;
+		}
+	}
+
+	return 0;
+}
+
 static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
 				   bool do_fast_age)
 {
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index c6ffcd782b5a..32b006a5b778 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -288,6 +288,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_set_state(dp, attr->u.stp_state, true);
 		break;
+	case SWITCHDEV_ATTR_ID_PORT_MST_STATE:
+		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_set_mst_state(dp, &attr->u.mst_state);
+		break;
 	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
 		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
 			return -EOPNOTSUPP;
-- 
2.25.1


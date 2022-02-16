Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 692ED4B89FF
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E36BB415A1;
	Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRJI91ffm4wU; Wed, 16 Feb 2022 13:30:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7B40741625;
	Wed, 16 Feb 2022 13:30:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A321EC0079;
	Wed, 16 Feb 2022 13:30:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BAA18C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FAC4833A3
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cqUXGmowtJT for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB6F583367
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id j7so3853660lfu.6
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=V1eQh2z2Mp1dVqtDPqG/YccGeTfz3qSetOtmZo+4lcI=;
 b=4Z9spyZJh7I6GdzYp1fUuY70ylRefnQynE2afvnnLFa/c9ru744iYsrV7GcIN6GCIr
 azVyPHTH8XsrmRbOF/9lSx5VTcSZAfTlNk0LmtMdOvUycpITjHKdm01opJv6+j3Yz5Ro
 c/ztRs1SefZd5LUk5cDjkz1Vq+TR6PsWDvLGVHZhnLPP8axeyShWStroQAlIxab7MZp1
 UwS+th+DXfSoDOp92F7yzPH6Xv/F71AhcnEd0lepnoZ5ry01Sf1xg95Y1uTY779/YcvD
 vMgLZV5svdBdcAST0pvnBH6TS1vD0+BOGrVJg6VUSR9cMTYLcbrkYGzHSYtxN3geykH+
 V/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=V1eQh2z2Mp1dVqtDPqG/YccGeTfz3qSetOtmZo+4lcI=;
 b=np71+47Mo+q9nvqMKAn/Oz50yjJ6W2ULgQ+sRetR86QkOjNq8ONfeW59sJBtIg3ciP
 1q9bx8SBhQnnbMIdPPgy8U9DJS5iftvrqZDm1VkmsfWnvjCOnf1a3ywqlwpPOmxkj0EO
 AIh7cB1S8YUIjzooEd9Un1X6fDV/ybIIUax/3VogFyjtAGrDvE6eEkxbZuQfC+NCLKqq
 cipof7VjqBFEvGQU+GmhYT6T9ij1AAMi3yT3cWK+DsjJF1nO+9zm7zq2wr0+S2Xv1D+5
 Yfuc6uu+EETOK1RICDG6TDIlQ8TLRiM3GrO2Cmf91/M/Cdu5m7HysNUiOcxjycaiPf/0
 7OnQ==
X-Gm-Message-State: AOAM531TzBIXanZgAXUKdxAMhmFINWd8B1N/4+DVbRwvQUIFHDZaCW56
 yVpqzvaFeQqoYS2v6V2RtHeZ8g0WbsH7Sg==
X-Google-Smtp-Source: ABdhPJxrdT9GpN5CD0SXwHRy99cf5gwLF/Zjv5+srBYJhHsU3KKNdraqOtxfe9PAMcnY4S+oWN1L8Q==
X-Received: by 2002:a05:6512:22c5:b0:443:890c:a9e3 with SMTP id
 g5-20020a05651222c500b00443890ca9e3mr2007506lfu.662.1645018228436; 
 Wed, 16 Feb 2022 05:30:28 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:28 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:30 +0100
Message-Id: <20220216132934.1775649-6-tobias@waldekranz.com>
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
Subject: [Bridge] [RFC net-next 5/9] net: dsa: Pass VLAN MST migration
	notifications to driver
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
to the drivers for VLAN MST migrations.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h    |  3 +++
 net/bridge/br_vlan.c |  2 +-
 net/dsa/dsa_priv.h   |  1 +
 net/dsa/port.c       | 10 ++++++++++
 net/dsa/slave.c      |  6 ++++++
 5 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index fd1f62a6e0a8..2aabe7f0b176 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -901,6 +901,9 @@ struct dsa_switch_ops {
 				 struct netlink_ext_ack *extack);
 	int	(*port_vlan_del)(struct dsa_switch *ds, int port,
 				 const struct switchdev_obj_port_vlan *vlan);
+	int	(*vlan_mstid_set)(struct dsa_switch *ds,
+				  const struct switchdev_attr *attr);
+
 	/*
 	 * Forwarding database
 	 */
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index c45a34c14e10..48b2f5dd277c 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -173,7 +173,7 @@ static int br_vlan_mst_migrate(struct net_bridge_vlan *v, u16 mstid)
 	old_mst = rtnl_dereference(v->mst);
 	rcu_assign_pointer(v->mst, mst);
 
-	if (br_vlan_is_master(v)) {
+	if (!old_mst || br_vlan_is_master(v)) {
 		struct switchdev_attr attr = {
 			.id = SWITCHDEV_ATTR_ID_VLAN_MSTID,
 			.flags = SWITCHDEV_F_DEFER,
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 2bbfa9efe9f8..43709c005461 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -204,6 +204,7 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
 			    struct netlink_ext_ack *extack);
 bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
 int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
+int dsa_port_vlan_mstid(struct dsa_port *dp, const struct switchdev_attr *attr);
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match);
 int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index bd78192e0e47..4fb2bf2383d9 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -729,6 +729,16 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
 	return 0;
 }
 
+int dsa_port_vlan_mstid(struct dsa_port *dp, const struct switchdev_attr *attr)
+{
+	struct dsa_switch *ds = dp->ds;
+
+	if (!ds->ops->vlan_mstid_set)
+		return -EOPNOTSUPP;
+
+	return ds->ops->vlan_mstid_set(ds, attr);
+}
+
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match)
 {
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 2f6caf5d037e..0a5e44105add 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -314,6 +314,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
 		break;
+	case SWITCHDEV_ATTR_ID_VLAN_MSTID:
+		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_vlan_mstid(dp, attr);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
-- 
2.25.1


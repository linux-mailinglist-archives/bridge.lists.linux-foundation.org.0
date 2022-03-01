Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 981024C88D4
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:04:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AF60826C1;
	Tue,  1 Mar 2022 10:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rSRrJ2FuVIAT; Tue,  1 Mar 2022 10:04:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 02C2081865;
	Tue,  1 Mar 2022 10:04:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6E3CC007B;
	Tue,  1 Mar 2022 10:04:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 595D7C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3309B4061F
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xavP02WgJ1ew for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50B7B40621
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:55 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id 29so21102079ljv.10
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=9f7PbMRM1byMWVKRPVH2DH+qKFogCebwnAS9gVQDC5I=;
 b=LfKQcjKEK5wI+sNFr+DRYqUk+bAEDYWDniCP2ki23Pban4lZywbpkNO37WC9287GE4
 GUzTXcC7WfXhifu+HNVLh3hQagN1CsjazTGcN3YY2uq8fGGDGzCdya5i61D0NX15he2/
 dIiLOrDJZrDvV0yjBETAqcapWu/haPjOuIcTKoDX8Paqo2R7I+0MO1yWX5zT2rZgwihK
 xKwRYi/rzfgmKXKBSRmq020acgJjGZn41GrlcN2YqxDnHHu1Oip0P2qDOMmjgQYO8OBt
 L2mkd/8V0lV7bWm+pIbFhLZVdOI+r9Ck9VzcPQJYvLqw/AJ/f7OtO1THeQOLZSPJzWcF
 +Kkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=9f7PbMRM1byMWVKRPVH2DH+qKFogCebwnAS9gVQDC5I=;
 b=SmeicIZhTDFKaiMDMaOhyMP0jgLndaXXq0tS/wxWDD1azKrJk2kZr1nIBDycIDoC9n
 fLaIFZpU4YbEIROGl7qjfZhfyMRVEM37gOdxhi0tpVyeuxmV4bjK+pMcpQbvhF1Y2uXy
 6Pl/SagEkim+ljfU2yNIrpJI0EovqKce7FdmZLdI8q3ZXwg9Fd3TGbDxY6/5GGakC2Ql
 Zsaxmpdxf7MPV54irYpar/w3df69ACK77ysp2S3lLACnAFze7joISy/3W1vrssMqcADE
 21Y4xLn2tTSMeaP2Qz/lVkuxLZrdAqne4czX4ad9llbPj6vUAfi82ckEgul7O36tkZNh
 QgEw==
X-Gm-Message-State: AOAM532/T9JsxxX1DZkkJ8wmLNtAPMbvYmp9LoABREN1urahvs1DB5Li
 3uGFICjngk8VTSoxYtu3L41hlg==
X-Google-Smtp-Source: ABdhPJzMCZtiN5flmK0LILPNyZm7i1BbaUaNC+ytrvpDRyBrkkkb3keXqM+c+OqQ6Jt4nH5EEwLwDg==
X-Received: by 2002:a2e:bc09:0:b0:246:7327:879b with SMTP id
 b9-20020a2ebc09000000b002467327879bmr13832354ljf.381.1646129033092; 
 Tue, 01 Mar 2022 02:03:53 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:52 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:17 +0100
Message-Id: <20220301100321.951175-7-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v2 net-next 06/10] net: dsa: Pass VLAN MSTI
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
---
 include/net/dsa.h  |  3 +++
 net/dsa/dsa_priv.h |  1 +
 net/dsa/port.c     | 10 ++++++++++
 net/dsa/slave.c    |  6 ++++++
 4 files changed, 20 insertions(+)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index cfedcfb86350..cc8acb01bd9b 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -962,6 +962,9 @@ struct dsa_switch_ops {
 				 struct netlink_ext_ack *extack);
 	int	(*port_vlan_del)(struct dsa_switch *ds, int port,
 				 const struct switchdev_obj_port_vlan *vlan);
+	int	(*vlan_msti_set)(struct dsa_switch *ds,
+				 const struct switchdev_attr *attr);
+
 	/*
 	 * Forwarding database
 	 */
diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 07c0ad52395a..87ec0697e92e 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -217,6 +217,7 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
 			    struct netlink_ext_ack *extack);
 bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
 int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
+int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr);
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match);
 int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index d9da425a17fb..5f45cb7d70ba 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -778,6 +778,16 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
 	return 0;
 }
 
+int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr)
+{
+	struct dsa_switch *ds = dp->ds;
+
+	if (!ds->ops->vlan_msti_set)
+		return -EOPNOTSUPP;
+
+	return ds->ops->vlan_msti_set(ds, attr);
+}
+
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match)
 {
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 089616206b11..c6ffcd782b5a 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -314,6 +314,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
 		break;
+	case SWITCHDEV_ATTR_ID_VLAN_MSTI:
+		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_vlan_msti(dp, attr);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
-- 
2.25.1


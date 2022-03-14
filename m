Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8FF4D7F19
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 068E360EE8;
	Mon, 14 Mar 2022 09:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id is8PY9s_3UFA; Mon, 14 Mar 2022 09:53:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 97BFA60EE0;
	Mon, 14 Mar 2022 09:53:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F7F5C0084;
	Mon, 14 Mar 2022 09:53:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ACA0AC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BDD583E3B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryqXo_eKCsSH for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAEA683E34
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id s25so26023764lfs.10
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=Xug1BH6fNokmYBfp1m7lmzVoHZRMKG6TmFS0A8AYQqI=;
 b=gvIFP34YAnZboyufyNgDvH4eWj9u+O+mpEkbj54ZArxII18gk06pWhM3nAr+JpQlOH
 c92qb9/6wGIGougMYSfZScMD7p/yyVvPutR3IlorBAGy4vZxZmrg7NnVWHRmqym/v3b+
 /9Nk4PRVz2twJrbxzq38jyUi3RmXqWkJuJKgMJvGuYGNQHSleNl7+bx2kqHJEjGkVeSH
 /y6BXoJK+LC3BR08K/77mH/rFZ08sdqBf+G936o3TWZBEp3kPOwm7/nIPOJpOWqqntWX
 q94NluUPApIEYrJsL1O6wRP0HTFlJey3CTdPz4Z7Jkkkzf4GhasZG22EUb6UnerSrKrM
 aykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=Xug1BH6fNokmYBfp1m7lmzVoHZRMKG6TmFS0A8AYQqI=;
 b=tM8F5mm5oKx7ekpLSq7+5lDzeiC5eUbxK42JiIaJYlpHDBI/5rOu0LrcwWqFY2pQXW
 vi43FK1QPWqHQEZCVwKuBMVe4UgMT1lqfH5BhWncwxHqj8JNyRfDmmF7q5617pJBm3gj
 UJ5v6Bbpt36RTHgqKqykMSYE1vmrGgiG9Yn+ehFCeZSKJx+KSqvmY90BMd445TNNWdrw
 YWa8qfEx39CNWIOhXF/4iUBi3Jn1nTLt9fh4d5NyB2bzKlKCmSB5bfYMN8ah5RE9owSS
 J/ghYk00JHFKZcZbmQYbRsU0EqCRbQziu2aT7E9pUjwU96duH/EtgVm8fjgI19nO9nO9
 jr0A==
X-Gm-Message-State: AOAM532BpW54aRtQyslhm97796Ph0b5km29TYO66N280PspG2t2jPM4z
 ocb/9PbCU372FoqNMVlzXvwD/w==
X-Google-Smtp-Source: ABdhPJwU0M50Tvhi2qkouOipvP6AfZbTBMjqM+CPa4vA9VHX45AOikwvdLBQ0Afw88UlWhcEmJnHtw==
X-Received: by 2002:a05:6512:b03:b0:448:1e7c:8859 with SMTP id
 w3-20020a0565120b0300b004481e7c8859mr13565935lfu.110.1647251589737; 
 Mon, 14 Mar 2022 02:53:09 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.53.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:27 +0100
Message-Id: <20220314095231.3486931-11-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314095231.3486931-1-tobias@waldekranz.com>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 10/14] net: dsa: Pass VLAN MSTI
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
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 14 +++++++++++++-
 net/dsa/slave.c    |  6 ++++++
 4 files changed, 24 insertions(+), 1 deletion(-)

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
index 1a17a0efa2fa..f6a822d854cc 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -747,7 +747,8 @@ int dsa_port_mst_enable(struct dsa_port *dp, bool on,
 	if (!on)
 		return 0;
 
-	if (!dsa_port_can_configure_learning(dp)) {
+	if (!(ds->ops->vlan_msti_set &&
+	      dsa_port_can_configure_learning(dp))) {
 		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
 		return -EINVAL;
 	}
@@ -798,6 +799,17 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
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
index 333f5702ea4f..cd2c57de9592 100644
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


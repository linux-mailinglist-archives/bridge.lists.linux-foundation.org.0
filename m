Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A43664DB444
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 456F48472C;
	Wed, 16 Mar 2022 15:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwZoNszORopQ; Wed, 16 Mar 2022 15:09:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CD95F84720;
	Wed, 16 Mar 2022 15:09:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91971C000B;
	Wed, 16 Mar 2022 15:09:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F353C0031
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DE7A611F9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AwCzefVntl4t for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97EA6611E5
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id h14so4221220lfk.11
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=akWzYrIA0f7A74GU4gqxjh8xdXZeuUVFKu3EYBQU0u8=;
 b=5WCup1a1iZIhs6zKsDXNRtYiF+OmuSJenUiuhmrGMbgRY2VLwJEBUpkIv4WJZavNsG
 Li67VLDKgBwFlZAuviq670EL7VcNtfKUKkX44EYzda+3gd1yVkxcExaN+6F/yhPpmJHN
 vaEkjBUdAal3Uu/zxHVjZpqKA4gLOdYaz3bFDXPEr6uU5+405HHkzE4GB4omBcdKUPMR
 uA10X0CygKXZFgOFCIy5Jrm40jdf//jSpuMWLMXsEpb6Dvv41iM3bnfiL3R3LFsYcDtA
 gPrPy7pC6uKk+y1pj4Vs4N+SXANsU89aeiPDVnA5WXyPPfeBAu/42HZ5WTnhLXdvC2ai
 sZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=akWzYrIA0f7A74GU4gqxjh8xdXZeuUVFKu3EYBQU0u8=;
 b=x9SfGqUDPVRZqQ8kaWLnKpzCk2uKrWpcLF6DaplJVkelKlOdDjDNXTP11tUvvPBMjI
 1DvigYT4qoRWveoAlZY77TOybkKs9slmoS4NVM6GLOQquS3srBdfRjZinPpyKhrh5Gip
 84hIHYVlcNSXQyrxsSVOHUfhM0rqsVhZPijunH9RR1Dj/rNFw1fRCNes+3/z46pTf+qA
 K9NMvq5P5gxm/GWotImxTynN6CBOM/PoOTrtmX9nvoz1deCb1ZbZ0aaqbTgYG23eOW20
 dHVUWFltOMMVFfa+r99pwyFtChy2eXbdS+G/JTYR7yndF/X6tB6r2PXMo02FRhRWa3H1
 RdBQ==
X-Gm-Message-State: AOAM532suwJtdsY5oiHOq0Pe6bvE+MvJn0kT5LSO82I442BwsYUjrmp2
 1UKsTR70FQ73nnHAo7RYPcUXAg==
X-Google-Smtp-Source: ABdhPJxqAc8yTfQ9oDPedAeCVnAEX41Q9ElvytjZastGmNlW4og36AabxVaLx4eCo2wHcB9ZzvmoFg==
X-Received: by 2002:a05:6512:455:b0:448:24a7:a241 with SMTP id
 y21-20020a056512045500b0044824a7a241mr95256lfk.208.1647443356545; 
 Wed, 16 Mar 2022 08:09:16 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 d2-20020a194f02000000b00448b915e2d3sm176048lfb.99.2022.03.16.08.09.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:09:16 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Mar 2022 16:08:52 +0100
Message-Id: <20220316150857.2442916-11-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316150857.2442916-1-tobias@waldekranz.com>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v5 net-next 10/15] net: dsa: Validate hardware
	support for MST
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

When joining a bridge where MST is enabled, we validate that the
proper offloading support is in place, otherwise we fallback to
software bridging.

When then mode is changed on a bridge in which we are members, we
refuse the change if offloading is not supported.

At the moment we only check for configurable learning, but this will
be further restricted as we support more MST related switchdev events.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/dsa/dsa_priv.h |  2 ++
 net/dsa/port.c     | 22 ++++++++++++++++++++++
 net/dsa/slave.c    |  6 ++++++
 3 files changed, 30 insertions(+)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index f20bdd8ea0a8..2aba420696ef 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -234,6 +234,8 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
 			    struct netlink_ext_ack *extack);
 bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
 int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
+int dsa_port_mst_enable(struct dsa_port *dp, bool on,
+			struct netlink_ext_ack *extack);
 int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
 			bool targeted_match);
 int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 58291df14cdb..02214033cec0 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -321,6 +321,11 @@ static void dsa_port_bridge_destroy(struct dsa_port *dp,
 	kfree(bridge);
 }
 
+static bool dsa_port_supports_mst(struct dsa_port *dp)
+{
+	return dsa_port_can_configure_learning(dp);
+}
+
 int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
 			 struct netlink_ext_ack *extack)
 {
@@ -334,6 +339,9 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
 	struct net_device *brport_dev;
 	int err;
 
+	if (br_mst_enabled(br) && !dsa_port_supports_mst(dp))
+		return -EOPNOTSUPP;
+
 	/* Here the interface is already bridged. Reflect the current
 	 * configuration so that drivers can program their chips accordingly.
 	 */
@@ -735,6 +743,20 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
 	return 0;
 }
 
+int dsa_port_mst_enable(struct dsa_port *dp, bool on,
+			struct netlink_ext_ack *extack)
+{
+	if (!on)
+		return 0;
+
+	if (!dsa_port_supports_mst(dp)) {
+		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
 			      struct switchdev_brport_flags flags,
 			      struct netlink_ext_ack *extack)
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index f9cecda791d5..2e8f62476ce9 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -464,6 +464,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
 
 		ret = dsa_port_ageing_time(dp, attr->u.ageing_time);
 		break;
+	case SWITCHDEV_ATTR_ID_BRIDGE_MST:
+		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
+			return -EOPNOTSUPP;
+
+		ret = dsa_port_mst_enable(dp, attr->u.mst, extack);
+		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
 			return -EOPNOTSUPP;
-- 
2.25.1


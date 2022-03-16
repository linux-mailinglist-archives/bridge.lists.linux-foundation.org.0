Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 571144DB442
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0C2C417B0;
	Wed, 16 Mar 2022 15:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXHx9si73tvn; Wed, 16 Mar 2022 15:09:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3F0EF417B3;
	Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16CEBC0083;
	Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 842FEC000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7896484389
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tnd8jAglqxUC for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B495384381
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id q5so3498487ljb.11
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=GnM2vWwSx2i5cE2iNl+NO2cDrpNSR+FaAqPVnKFkrgM=;
 b=uyhfrzP7w9DjuBUBI2RL71VgIXkwbG6IgUN2y0ZJe7zvgp8IWsL1bDwgVyCDnoTfZ9
 CHQA4UL9uMDbL2tZOAVJGcMjd3ekQIITSByP5SF129hYTSMLHsapZA8uro58+w3svgBx
 51EtxzdMy9jSYcZv3YxmR9oMMdHCWHVUXbJw7lXaeDdfO+VUJnkA3GUlXevzhv1TM593
 m9RFo1iNJo/OXZQxmkIvpd+zic1FlIbILxF5UVF06rgyMCg1ah8dZ3nBmQMsZM8cION6
 onopmBEBmOr45EaQ1P9TlgmsjTmQ2K6WVeufmzgSglCsjZ39R0Lr+/TS6pyzGMMCD4wQ
 N9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=GnM2vWwSx2i5cE2iNl+NO2cDrpNSR+FaAqPVnKFkrgM=;
 b=YCIyccjaAcWJaUkSRVYPIvelpFon+kHrGPef9IXVA2ia/RYJJqILq9dllFn3zDVODj
 7mbUCJkNnyvyk5+XLAAamlngjnTFXQYFxE5WP6tmZ0g+nZNK65sPpVJsW86pKDVMTvNh
 8PSDHre3D9ZoDtIZqM2ebvcsOZsnxEVq6lmUy/UDUrCVeGE26uo4BPSFC7KYcbrBR2kL
 i8szAMZC9NTQEFgR8A37JpBLe7f0K0q3FOavj9pJZYc4e80hatLVaOoU1gU3am/lXAXG
 0tjJOcyIfYA76ruREOKovRADPGP7alm2TDgXy0QxE0gdzXELhF2TOmLck3KlWyydMDCI
 SPyA==
X-Gm-Message-State: AOAM533W72+w+RmyAPaFGgb5QZ7VM/e25MqGLEr/9S5OvFple7NkICY0
 OiYevLoEErTeSzBAABu7UybrzQ==
X-Google-Smtp-Source: ABdhPJzbOI3RF2Lo7DsoZn4bCh3kZRgGrUgW3rYJ0m0cbZOwnF6t9JI4yZfGQL5uXPcjR1fXubPKKw==
X-Received: by 2002:a2e:a584:0:b0:249:1463:cb84 with SMTP id
 m4-20020a2ea584000000b002491463cb84mr45535ljp.231.1647443355643; 
 Wed, 16 Mar 2022 08:09:15 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 d2-20020a194f02000000b00448b915e2d3sm176048lfb.99.2022.03.16.08.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:09:15 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Mar 2022 16:08:51 +0100
Message-Id: <20220316150857.2442916-10-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v5 net-next 09/15] net: bridge: mst: Add helper to
	query a port's MST state
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

This is useful for switchdev drivers who are offloading MST states
into hardware. As an example, a driver may wish to flush the FDB for a
port when it transitions from forwarding to blocking - which means
that the previous state must be discoverable.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/linux/if_bridge.h |  6 ++++++
 net/bridge/br_mst.c       | 25 +++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 4efd5540279a..d62ef428e3aa 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -121,6 +121,7 @@ int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 			 struct bridge_vlan_info *p_vinfo);
 bool br_mst_enabled(const struct net_device *dev);
 int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids);
+int br_mst_get_state(const struct net_device *dev, u16 msti, u8 *state);
 #else
 static inline bool br_vlan_enabled(const struct net_device *dev)
 {
@@ -164,6 +165,11 @@ static inline int br_mst_get_info(const struct net_device *dev, u16 msti,
 {
 	return -EINVAL;
 }
+static inline int br_mst_get_state(const struct net_device *dev, u16 msti,
+				   u8 *state)
+{
+	return -EINVAL;
+}
 #endif
 
 #if IS_ENABLED(CONFIG_BRIDGE)
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 830a5746479f..ee680adcee17 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -48,6 +48,31 @@ int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids)
 }
 EXPORT_SYMBOL_GPL(br_mst_get_info);
 
+int br_mst_get_state(const struct net_device *dev, u16 msti, u8 *state)
+{
+	const struct net_bridge_port *p = NULL;
+	const struct net_bridge_vlan_group *vg;
+	const struct net_bridge_vlan *v;
+
+	ASSERT_RTNL();
+
+	p = br_port_get_check_rtnl(dev);
+	if (!p || !br_opt_get(p->br, BROPT_MST_ENABLED))
+		return -EINVAL;
+
+	vg = nbp_vlan_group(p);
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		if (v->brvlan->msti == msti) {
+			*state = v->state;
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+EXPORT_SYMBOL_GPL(br_mst_get_state);
+
 static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
 				  u8 state)
 {
-- 
2.25.1


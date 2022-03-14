Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF94D7F17
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D557140610;
	Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJNcL7YMm21r; Mon, 14 Mar 2022 09:53:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1EE4C40608;
	Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E601EC0084;
	Mon, 14 Mar 2022 09:53:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09BA6C001D
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE7A760ED6
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7psTm32xlkJh for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 051C460EC3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:08 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id 17so18860625lji.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=7lHeWPXEXWrCYgRFwcHwT0FA/DPhlUmoROl0FMGvSmk=;
 b=odLD55IR7r4dldGhulofhapMI5jrMDOi5q3CTbdcs8RDrs6wRN+BGPhnHaUKb6e22F
 5T/KPRXcIqll0h+XN7kOP7NTJ+FcAu2741kVFIUHFc/MI/XMqGo2HWPLlIzALElpDQ1F
 Mm02O7POmyISL2X167BSom71A92PoigsuxFKBoZbi/rGd6xnJHDeiZvSsFKufA2Is8Jd
 edmH4YijZ+M6MsQPcX/RJeW0yjJB1KUThuEF34pbsNfLHBPuo6NB+yBLgL9zri/CR5jz
 zwtw9yb0Sd56tBr9EtRjMM99jeKPUvlHsEpM0/k4NlpP8yJFCLmfsSPyOhRSBV0YIN/S
 Ieww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=7lHeWPXEXWrCYgRFwcHwT0FA/DPhlUmoROl0FMGvSmk=;
 b=HJ9POVBxfDmSzHjqDBG9yidAl6KfQjGiSpnD1WIqRGayWc6W9O/NI8dAEHJivYExPC
 jBV6BjJIXtpzj5uiSAs844MRrUjO3+UFqUKUlhbB70IEvP9hWrULZphSTPESlAMSinlI
 YUVA5rIzQMYtuVcd2fi8ma4AOykavHEh4BK9aJCMVkAoFhwmPUfiRXY9o6mKeGjMyzxb
 6UabIFT89JYWIfw4MG+ePIajTwyxbth6OgAxwaZDFu1GlXTujlHXUNXN9WVLDDhYAWNO
 H9dou3pZaBLkp8h50PttLCoP2AmRCw44zx6qKifm/t7APXkwtGDeaUoo0vIurba7nPh1
 a9dQ==
X-Gm-Message-State: AOAM530JImj0AoDTG/eYfghruiQXlx4gR2B02NvcCaFV6LhD+68hotH4
 gYRvwjPslnn+/u0usmxAR+gNlg==
X-Google-Smtp-Source: ABdhPJz1zlZc0EJq0fH1zUvvHQpnL1KiaYGOHaxUVmjz61r/PA6V4A+s1LKf2GzSFRNmZ3zS4kqUpA==
X-Received: by 2002:a05:651c:2dc:b0:247:e451:48ae with SMTP id
 f28-20020a05651c02dc00b00247e45148aemr13813200ljo.248.1647251586691; 
 Mon, 14 Mar 2022 02:53:06 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:06 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:25 +0100
Message-Id: <20220314095231.3486931-9-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v3 net-next 08/14] net: bridge: mst: Add helper to
	check if MST is enabled
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

This is useful for switchdev drivers that might want to refuse to join
a bridge where MST is enabled, if the hardware can't support it.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/linux/if_bridge.h | 5 +++++
 net/bridge/br_mst.c       | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 46e6327fef06..5dbab0a280a6 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo);
 int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 			 struct bridge_vlan_info *p_vinfo);
+bool br_mst_enabled(struct net_device *dev);
 int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids);
 #else
 static inline bool br_vlan_enabled(const struct net_device *dev)
@@ -152,6 +153,10 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 {
 	return -EINVAL;
 }
+static inline bool br_mst_enabled(struct net_device *dev)
+{
+	return false;
+}
 static inline int br_mst_get_info(struct net_device *dev, u16 msti,
 				  unsigned long *vids)
 {
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index eb18dbd5838f..e5ab2ce451c2 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -13,6 +13,15 @@
 
 DEFINE_STATIC_KEY_FALSE(br_mst_used);
 
+bool br_mst_enabled(struct net_device *dev)
+{
+	if (!netif_is_bridge_master(dev))
+		return false;
+
+	return br_opt_get(netdev_priv(dev), BROPT_MST_ENABLED);
+}
+EXPORT_SYMBOL(br_mst_enabled);
+
 int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids)
 {
 	struct net_bridge_vlan_group *vg;
-- 
2.25.1


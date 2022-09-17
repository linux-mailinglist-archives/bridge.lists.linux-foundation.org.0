Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9155BBA3A
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9730584408;
	Sat, 17 Sep 2022 20:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9730584408
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=MWAjhl+x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1s2LrsK6G8vl; Sat, 17 Sep 2022 20:18:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 22B2984411;
	Sat, 17 Sep 2022 20:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22B2984411
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEC05C0070;
	Sat, 17 Sep 2022 20:18:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A9FCC002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0218C843FB
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0218C843FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVeOv7LIDPc6 for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDBD6843F5
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDBD6843F5
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:17 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id x18so4837140qkn.6
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=W7xcUTJ+Xi3/2c+HEMlnIJrwY7Px5v+GX+wSId5EDcY=;
 b=MWAjhl+xoCtoaOvlX5qq05l39uxVSoxvIlUaU55ko4WaCeYDNkn0oncD0EiX46yoQt
 ccbjdN3leY+2tL2T1iPG0AqZri5cOUHdEloinZbEdwtjquCkGvhnn6olCwK9n6KsuZc9
 PfzXa7Z7yvrCO3hT97TvsXKKFkl9MwxaWwpfFP3ODGWKl7nlHsnh2OpBrCQw7O6inAho
 8Bl/kbDWxvu9mez4VtcPkke48/0Chbnh/gzTRZtox9jwpEeuNfWbOc7DWXTxRSsLtBVz
 hgpo8sQOTKAOI+JTFU9jiRXpul6ILHO7TxsHOtmbdgSRAf0vEleLgFrP1p2S301/TlZV
 QoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=W7xcUTJ+Xi3/2c+HEMlnIJrwY7Px5v+GX+wSId5EDcY=;
 b=p6P7FZTtDXWyvDIJFT2bZDLuPaoPxAHoOG5wyg7YfNwgKc4GuNKg02O1dRHQ2J6O9Z
 VVPFpLTUI7g9gQGS2aJUOITVc4xcKf3/utExBi2lX2PReusTnvczrzFSuQsfY1GiGfrz
 0z7eTh3/WZ+UVVPcF91p24skHOm2Yd9auljeXhyyrVZ93Z9kIsvf11ewqGqBBzJPaJ/j
 Exm1c9FpZ6ELXorqRR9vQNGVSiHXPOr6DPZy60gavN6xLOqkj8JxOprYrTOyLs36Ax43
 Z1YqLcgTiCReDTQJLOB1LlwaSksHBeo2llLticcWQYWVSPzXD6Y82kzxnva9F0iuCp1d
 ++yg==
X-Gm-Message-State: ACrzQf3BKEbLOIGVRg+07hyl5xTb28xaW5LDb2fArIfUpDw0qbCaaw1F
 rGqetxl9XYYnAYZbbmb9Ge8=
X-Google-Smtp-Source: AMsMyM6iUxZzKpNhK/xvKNJBH21tgFbn0d8acYZSQ3UJuauQl/86HAVdFvqViqcHMOKe4c6+4ROcrA==
X-Received: by 2002:a05:620a:2681:b0:6b5:b60c:1e66 with SMTP id
 c1-20020a05620a268100b006b5b60c1e66mr8303008qkp.99.1663445897521; 
 Sat, 17 Sep 2022 13:18:17 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 s21-20020a05620a0bd500b006bb7ccf6855sm10374577qki.76.2022.09.17.13.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:17 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:18:00 -0400
Message-Id: <8ef43d44ebdebe90783325cb68edb70a7c80c038.1663445339.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 4/5] net: bridge: handle
	link-type-specific changes in the bridge module
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

Introduce a handler to bridge module for handling vlan-specific
events.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 net/bridge/br.c         |  5 +++++
 net/bridge/br_private.h |  7 +++++++
 net/bridge/br_vlan.c    | 18 ++++++++++++++++++
 3 files changed, 30 insertions(+)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 96e91d69a9a8..62e939c6a3f0 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -51,6 +51,11 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
 		}
 	}
 
+	if (is_vlan_dev(dev)) {
+		br_vlan_device_event(dev, event, ptr);
+		return NOTIFY_DONE;
+	}
+
 	/* not a port of a bridge */
 	p = br_port_get_rtnl(dev);
 	if (!p)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 06e5f6faa431..a9a08e49c76c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1470,6 +1470,8 @@ void br_vlan_get_stats(const struct net_bridge_vlan *v,
 void br_vlan_port_event(struct net_bridge_port *p, unsigned long event);
 int br_vlan_bridge_event(struct net_device *dev, unsigned long event,
 			 void *ptr);
+void br_vlan_device_event(struct net_device *dev, unsigned long event,
+ 			  void *ptr);
 void br_vlan_rtnl_init(void);
 void br_vlan_rtnl_uninit(void);
 void br_vlan_notify(const struct net_bridge *br,
@@ -1701,6 +1703,11 @@ static inline int br_vlan_bridge_event(struct net_device *dev,
 	return 0;
 }
 
+static void br_vlan_device_event(struct net_device *dev,
+				 unsigned long event, void *ptr)
+{
+}
+
 static inline void br_vlan_rtnl_init(void)
 {
 }
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 6e53dc991409..ba4e3c7a5f03 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <linux/kernel.h>
 #include <linux/netdevice.h>
+#include <linux/notifier_info.h>
 #include <linux/rtnetlink.h>
 #include <linux/slab.h>
 #include <net/switchdev.h>
@@ -1768,6 +1769,23 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
 	}
 }
 
+void br_vlan_device_event(struct net_device *dev,
+			  unsigned long event, void *ptr)
+{
+	struct netdev_notifier_change_details_info *details;
+	struct net_device *br_dev;
+
+	switch (event) {
+	case NETDEV_CHANGE_DETAILS:
+		details = ptr;
+		if (!netif_is_bridge_master(vlan_dev_priv(dev)->real_dev))
+			break;
+		br_dev = vlan_dev_priv(dev)->real_dev;
+		br_vlan_upper_change(br_dev, dev, details->vlan.bridge_binding);
+		break;
+	}
+}
+
 static bool br_vlan_stats_fill(struct sk_buff *skb,
 			       const struct net_bridge_vlan *v)
 {
-- 
2.34.1


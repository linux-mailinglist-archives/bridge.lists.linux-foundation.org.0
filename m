Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0365BBA38
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F551416A3;
	Sat, 17 Sep 2022 20:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F551416A3
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=gs9ODi1S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHfW_N3CNNOI; Sat, 17 Sep 2022 20:18:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E42B440297;
	Sat, 17 Sep 2022 20:18:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E42B440297
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BC2FEC007D;
	Sat, 17 Sep 2022 20:18:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1CF9DC002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1054843FB
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1054843FB
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gs9ODi1S
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OelxYBKvXcEc for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D10AC843F5
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D10AC843F5
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:16 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id x18so4837106qkn.6
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=KD38OQmgSaziFwz483qpbZ1Z/wABtZJQ/6K4DXA6e78=;
 b=gs9ODi1SU9Kl9RMZdfPPVTL92g9U582A3QyiLLRHk0DP7aMRekW1vpxaCY0DuFyIy4
 Gmc4JC2MEREo4YrkmPICVj1cRladnhz9FRB9fiEK9D3+BIlyLccZYLnCIxuHqHwdrsGD
 dW8uzY5Nr3tOyjePNVIUQBANY0ZAZjFX1So6C4mK1nQlfAAJBFmtz6jCoNsXy7zttZND
 jKfX1evavoNcmyB5HmuMkKAb5ycpNjp8o+OKvklksejBqwuCTi0YqGk2/+C1AXLVvmLd
 o8ma7WJJpQUuFiae7662YPBheSg92Qu7bruwrCCM5boqvzkYdsq1aBWq0QBXeiPfQ6Js
 14Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=KD38OQmgSaziFwz483qpbZ1Z/wABtZJQ/6K4DXA6e78=;
 b=6u149MIQuI75S63aZJF/Ldz7OabFNDF9pxMCwWYB2KCyzseonQfHrI1Ufuqqse1b3e
 2VA6PgO8HBY95K3IDm1bllz/gtoECX4lWxaitdxZu+WpYYyHeD6EPnzqGMZJjXd38tep
 bYpou+i6gpOztMEfu9Hfry4tiATtWesNAVdCzphry+Bloqt76R2qoT2D+1/Vv354HjNi
 cKB3NRzb+h5DyifB5qZxJtsAtmLDueQRlcPFCBLu3H9CYTell3sA8Xj6S+bW8t+Env0q
 /vrjZjAlPFBbXN6B9ekLw9XmIb3mTNHrYeYavlq/BePSIAE5a4EaxI3ieoVf5JJBXbJu
 YkmA==
X-Gm-Message-State: ACrzQf3V9LFtsdoE5mYRsR/PQ0a+kqXB3ysRswhYHxM2HL0LdwsT79DK
 +7tgnxGq/MmpS4hlpAvcco0=
X-Google-Smtp-Source: AMsMyM6Ok6WmHv6IRGK6yGFxMFRo9CdplvCq2/ELeU5O7Zh8aUDcrdFmWFDh2DR4PhIfiFuVbfsnHg==
X-Received: by 2002:a05:620a:254f:b0:6bc:5763:de4b with SMTP id
 s15-20020a05620a254f00b006bc5763de4bmr8083968qko.207.1663445895626; 
 Sat, 17 Sep 2022 13:18:15 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 q13-20020a37f70d000000b006b8e63dfffbsm8769539qkj.58.2022.09.17.13.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:15 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:17:59 -0400
Message-Id: <d6500b2caf726437fad97d37c728708755791c0e.1663445339.git.sevinj.aghayeva@gmail.com>
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
Subject: [Bridge] [PATCH RFC net-next 3/5] net: 8021q: notify bridge module
	of bridge-binding flag change
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

Notify the bridge module when a user changes the bridge-binding flag
of a VLAN interface using "ip link set ... vlan bridge_binding on"
command, so that the bridge module can take the appropriate action for
this change.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 net/8021q/vlan.h     |  2 +-
 net/8021q/vlan_dev.c | 20 +++++++++++++++++---
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
index 5eaf38875554..71947cdcfaaa 100644
--- a/net/8021q/vlan.h
+++ b/net/8021q/vlan.h
@@ -130,7 +130,7 @@ void vlan_dev_set_ingress_priority(const struct net_device *dev,
 int vlan_dev_set_egress_priority(const struct net_device *dev,
 				 u32 skb_prio, u16 vlan_prio);
 void vlan_dev_free_egress_priority(const struct net_device *dev);
-int vlan_dev_change_flags(const struct net_device *dev, u32 flag, u32 mask);
+int vlan_dev_change_flags(struct net_device *dev, u32 flag, u32 mask);
 void vlan_dev_get_realdev_name(const struct net_device *dev, char *result,
 			       size_t size);
 
diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
index e1bb41a443c4..7c61b813e654 100644
--- a/net/8021q/vlan_dev.c
+++ b/net/8021q/vlan_dev.c
@@ -22,6 +22,7 @@
 #include <linux/skbuff.h>
 #include <linux/netdevice.h>
 #include <linux/net_tstamp.h>
+#include <linux/notifier_info.h>
 #include <linux/etherdevice.h>
 #include <linux/ethtool.h>
 #include <linux/phy.h>
@@ -211,8 +212,9 @@ int vlan_dev_set_egress_priority(const struct net_device *dev,
 /* Flags are defined in the vlan_flags enum in
  * include/uapi/linux/if_vlan.h file.
  */
-int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
+int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
 {
+	struct netdev_notifier_change_details_info details;
 	struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 	u32 old_flags = vlan->flags;
 
@@ -223,19 +225,31 @@ int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
 
 	vlan->flags = (old_flags & ~mask) | (flags & mask);
 
-	if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
+	if (!netif_running(dev))
+		return 0;
+
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
 		if (vlan->flags & VLAN_FLAG_GVRP)
 			vlan_gvrp_request_join(dev);
 		else
 			vlan_gvrp_request_leave(dev);
 	}
 
-	if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
 		if (vlan->flags & VLAN_FLAG_MVRP)
 			vlan_mvrp_request_join(dev);
 		else
 			vlan_mvrp_request_leave(dev);
 	}
+
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
+	    netif_is_bridge_master(vlan->real_dev)) {
+		details.info.dev = dev;
+		details.vlan.bridge_binding =
+		    !!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING);
+		call_netdevice_notifiers_info(NETDEV_CHANGE_DETAILS, &details.info);
+	}
+
 	return 0;
 }
 
-- 
2.34.1


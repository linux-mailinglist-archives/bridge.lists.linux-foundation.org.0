Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DB958E536
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 05:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D4C040AFF;
	Wed, 10 Aug 2022 03:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D4C040AFF
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=cNpzzB1r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ddZJynv2ChQN; Wed, 10 Aug 2022 03:11:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9A01F40A96;
	Wed, 10 Aug 2022 03:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A01F40A96
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 316CCC007B;
	Wed, 10 Aug 2022 03:11:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D64A5C002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B179260FE2
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B179260FE2
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=cNpzzB1r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yd-ZagJGFwVb for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 03:11:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4A9D60FA8
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4A9D60FA8
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:48 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id d1so10100628qvs.0
 for <bridge@lists.linux-foundation.org>; Tue, 09 Aug 2022 20:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=Hp8X0Fyr4/2vEhnQv+XptPZYetbjO6fR4naGTVRNFEM=;
 b=cNpzzB1r3CIyeIFPMsN7JSnnntMkiuMtFWRzYVBFPnHuy082TYrzFn/KTQZipNcjgk
 uZ1Mk/VwdQoMec9VWUtDqfcMKy47WBL32T7HHnz6i14X7ZAdZq37p1iaUBXsAXndQbxA
 1F3Jp4KoCltzWgv6n1TUfL0ry8MKU9RLs5XgcgAzheVqVsIeUUNfvcFBilIPFjgChHBs
 Rv4KXtpSNmRbp9f5stWjX5Avc6XJbG06A55YMS8BxDViv1EllxR6ysbpA0BduKb6nM8V
 XmskwtufmwpAtFuPT8xW3v1i5YH4wv9qErn+znOLnbISrtP9bDLhTRna3ghVntrBewwV
 f43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=Hp8X0Fyr4/2vEhnQv+XptPZYetbjO6fR4naGTVRNFEM=;
 b=o3tbMvPk1kNFP+4Au9HuNpocz07AEcqTKVpMkMH2dE2InEX+rrPrD4w+iJw6GHM2wD
 Lf5yxU8RBVWwVYDDqW3GW9KshOoAKe1wXDJKlk4d6Rpgj2i0H+TP+/MfDCVMHyikOGvL
 Rnx9B2eSYJNdNKaO4SEUjcvhNYrudnqAn372rPSDnA1WUZTK5GlIZzuuQ+pG0wSCntXg
 74nTmW/N8AMyPP+hSLG8pwdY3DYZIbJlruHlMn+WL3Pr/w4+90gbYJiWxWvVwSJbQpx7
 9mqdWnIu3fVDbzudy1hbUglIuQ93DyL/yNB7pr5orRhC8HdQ1JRRHXUoi5Q4kvG3HQAN
 Fxww==
X-Gm-Message-State: ACgBeo31SOah0h1MKB+5Dmy9gohBqpPMBN4luVlrClN1eDum9dY2jdIu
 lSQ+xcwDfBerEKu4i0F1MDM=
X-Google-Smtp-Source: AA6agR6nqrPhrxobM5Q9dHGGZvRWGptqfBT8L9O4bSMq5BcAfoMZRBU9yDXeOK3rutc7YpNPkJleiA==
X-Received: by 2002:ad4:5be4:0:b0:47b:4bdd:b1c7 with SMTP id
 k4-20020ad45be4000000b0047b4bddb1c7mr10203328qvc.64.1660101107623; 
 Tue, 09 Aug 2022 20:11:47 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 bl4-20020a05620a1a8400b006b999c1030bsm676680qkb.52.2022.08.09.20.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 20:11:47 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Tue,  9 Aug 2022 23:11:20 -0400
Message-Id: <3a01eea27e92133a3130e3d8d5f487d6900298db.1660100506.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 2/3] net: 8021q: fix bridge binding
	behavior for vlan interfaces
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

Currently, when one creates a vlan interface with the bridge binding flag
disabled (using ip link add... command) and then enables the bridge binding flag
afterwards (using ip link set... command), the second command has no effect. In
other words, the vlan interface does not follow the status of the ports in its
vlan.

The root cause of this problem is as follows. The correct bridge binding
behavior depends on two flags being set: a per vlan interface flag
(VLAN_FLAG_BRIDGE_BINDING) and global per bridge flag
(BROPT_VLAN_BRIDGE_BINDING); the ip link set command calls vlan_dev_change_flags
function, which sets only the per vlan interface flag.

The correct behavior is to set/unset per bridge flag as well, depending on
whether there are other vlan interfaces with bridge binding flags set. The logic
for this behavior is already captured in br_vlan_upper_change function, which is
called whenever NETDEV_CHANGEUPPER event occurs. This patch fixes the bridge
binding behavior by triggering the NETDEV_CHANGEUPPER event from the
vlan_dev_change_flags function whenever the per interface flag is changed.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 net/8021q/vlan.h     |  2 +-
 net/8021q/vlan_dev.c | 25 ++++++++++++++++++++++---
 2 files changed, 23 insertions(+), 4 deletions(-)

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
index 839f2020b015..49cf4cceebef 100644
--- a/net/8021q/vlan_dev.c
+++ b/net/8021q/vlan_dev.c
@@ -208,12 +208,19 @@ int vlan_dev_set_egress_priority(const struct net_device *dev,
 	return 0;
 }
 
+static inline bool netif_is_bridge(const struct net_device *dev)
+{
+	return dev->rtnl_link_ops &&
+	    !strcmp(dev->rtnl_link_ops->kind, "bridge");
+}
+
 /* Flags are defined in the vlan_flags enum in
  * include/uapi/linux/if_vlan.h file.
  */
-int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
+int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
 {
 	struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
+	struct netdev_notifier_changeupper_info info;
 	u32 old_flags = vlan->flags;
 
 	if (mask & ~(VLAN_FLAG_REORDER_HDR | VLAN_FLAG_GVRP |
@@ -223,19 +230,31 @@ int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
 
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
+	    netif_is_bridge(vlan->real_dev)) {
+		info.info.dev = vlan->real_dev;
+		info.upper_dev = dev;
+		info.linking = !!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING);
+		call_netdevice_notifiers_info(NETDEV_CHANGEUPPER, &info.info);
+	}
+
 	return 0;
 }
 
-- 
2.25.1


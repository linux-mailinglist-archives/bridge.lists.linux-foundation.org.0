Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F49636C0A3
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E565060AFF;
	Tue, 27 Apr 2021 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27m3VSLfMgCm; Tue, 27 Apr 2021 08:08:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69DEA60B00;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D27FC000B;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DEB8FC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0C426075C
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0QxZe47WMez6 for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A986F605DA
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:53 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id u20so64975722lja.13
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=/cToQRV0mJaSSO0QEmQ51Ug3Puq0Aydk1IJ9qqf2Bqc=;
 b=IN7uLMxPZgDf04DhBNQ/M0LSB4xFCnTKIft27Dqa2FtVsn0wMjCmmq2QdOt8ydaDGs
 Oa4vsDz7GsRRepffcsSNmQUygJYPf7JlTk77Mn6S6iaRQ0K39Ar/8IFh7TCDgEQoSb5K
 r32fFyO44b3NEEbhrEO0M9005/ni2C7qJfWo1jleNraYHtixZBA4n+wYIDY+066PUQ1k
 AwwnLrZ4k21NzkVVHYi3IrJ1sNqmcp5xvTqMMbGSeQoFVQqzBKgpaVJKtU1BLmTQlJ47
 SBmC0GE9Za+hk1NVIWAtPtRwNVpJvNpZeb1E9bltFjYn9zGEjBx1LA3IrHHI/XqGy+1z
 I4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=/cToQRV0mJaSSO0QEmQ51Ug3Puq0Aydk1IJ9qqf2Bqc=;
 b=XE/kV5N/1yDxk1eh47rwSEggYtSc9/biNAZpRM33A2ScrEytyP+nUlX6jW+FiyF9YI
 r9m10crS0gIarT2Ypc7bWjwTU3+QGk4vlbJtlg9iujQLlkeoJoh8RnfgB+ZQjxu6N4iW
 FFElsGZ52N89OZEqOw6080wbBfXFsttXKUd9+HqdKKWyv2ra9p40N/+RZoR0NEzpUi03
 aZ3UdaA/a9kwz4ajQORXfylRqI7A5gQsSNPozp7mCFZmoHbzNyyLHGX1R7WtPbTQOGBa
 KtM3eddXeAdk0Mlmo4yjLQsNs+9XNTQgqS887wAO3xczP9Son7VtVA+CtFWonq8E9Gzf
 VNnA==
X-Gm-Message-State: AOAM533gWlDfICJHpnjhmSWQYOIpdXp2vQwO6XKH6UMKBXrAwOWnKQsy
 BpMgMpaYCoj4DRWesmQI32VWTA==
X-Google-Smtp-Source: ABdhPJwiwIAzhAYQlfgSh7oEM6DQaIlug0eAJkF1KcAFAV0VzQAr36jqkj2FGm5jsj8jRP0DBt48sg==
X-Received: by 2002:a05:651c:1308:: with SMTP id
 u8mr13954449lja.425.1619456690143; 
 Mon, 26 Apr 2021 10:04:50 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:49 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:06 +0200
Message-Id: <20210426170411.1789186-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 4/9] net: bridge: switchdev: Forward
	offloading
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

Allow switchdevs to forward frames from the CPU in accordance with the
bridge configuration in the same way as is done between bridge
ports. This means that the bridge will only send a single skb towards
one of the ports under the switchdev's control, and expects the driver
to deliver the packet to all eligible ports in its domain.

Primarily this improves the performance of multicast flows with
multiple subscribers, as it allows the hardware to perform the frame
replication.

The basic flow between the driver and the bridge is as follows:

- The switchdev accepts the offload by returning a non-null pointer
  from .ndo_dfwd_add_station when the port is added to the bridge.

- The bridge sends offloadable skbs to one of the ports under the
  switchdev's control using dev_queue_xmit_accel.

- The switchdev notices the offload by checking for a non-NULL
  "sb_dev" in the core's call to .ndo_select_queue.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/bridge/br_forward.c   | 11 +++++++-
 net/bridge/br_private.h   | 27 ++++++++++++++++++
 net/bridge/br_switchdev.c | 59 +++++++++++++++++++++++++++++++++++++--
 3 files changed, 93 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 6e9b049ae521..b4fb3b0bb1ec 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -32,6 +32,8 @@ static inline int should_deliver(const struct net_bridge_port *p,
 
 int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb)
 {
+	struct net_device *sb_dev = NULL;
+
 	skb_push(skb, ETH_HLEN);
 	if (!is_skb_forwardable(skb->dev, skb))
 		goto drop;
@@ -48,7 +50,10 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
 		skb_set_network_header(skb, depth);
 	}
 
-	dev_queue_xmit(skb);
+	if (br_switchdev_accels_skb(skb))
+		sb_dev = BR_INPUT_SKB_CB(skb)->brdev;
+
+	dev_queue_xmit_accel(skb, sb_dev);
 
 	return 0;
 
@@ -105,6 +110,8 @@ static void __br_forward(const struct net_bridge_port *to,
 		indev = NULL;
 	}
 
+	nbp_switchdev_frame_mark_accel(to, skb);
+
 	NF_HOOK(NFPROTO_BRIDGE, br_hook,
 		net, NULL, skb, indev, skb->dev,
 		br_forward_finish);
@@ -174,6 +181,8 @@ static struct net_bridge_port *maybe_deliver(
 	if (!should_deliver(p, skb))
 		return prev;
 
+	nbp_switchdev_frame_mark_fwd(p, skb);
+
 	if (!prev)
 		goto out;
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index aba92864d285..933e951b0d7a 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -332,6 +332,7 @@ struct net_bridge_port {
 #endif
 #ifdef CONFIG_NET_SWITCHDEV
 	int				hwdom;
+	void				*accel_priv;
 #endif
 	u16				group_fwd_mask;
 	u16				backup_redirected_cnt;
@@ -506,7 +507,9 @@ struct br_input_skb_cb {
 #endif
 
 #ifdef CONFIG_NET_SWITCHDEV
+	u8 fwd_accel:1;
 	int src_hwdom;
+	br_hwdom_map_t fwd_hwdoms;
 #endif
 };
 
@@ -1597,6 +1600,15 @@ static inline void br_sysfs_delbr(struct net_device *dev) { return; }
 
 /* br_switchdev.c */
 #ifdef CONFIG_NET_SWITCHDEV
+static inline bool br_switchdev_accels_skb(struct sk_buff *skb)
+{
+	return BR_INPUT_SKB_CB(skb)->fwd_accel;
+}
+
+void nbp_switchdev_frame_mark_accel(const struct net_bridge_port *p,
+				    struct sk_buff *skb);
+void nbp_switchdev_frame_mark_fwd(const struct net_bridge_port *p,
+				  struct sk_buff *skb);
 void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 			      struct sk_buff *skb);
 bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
@@ -1619,6 +1631,21 @@ static inline void br_switchdev_frame_unmark(struct sk_buff *skb)
 	skb->offload_fwd_mark = 0;
 }
 #else
+static inline bool br_switchdev_accels_skb(struct sk_buff *skb)
+{
+	return false;
+}
+
+static inline void nbp_switchdev_frame_mark_accel(const struct net_bridge_port *p,
+						  struct sk_buff *skb)
+{
+}
+
+static inline void nbp_switchdev_frame_mark_fwd(const struct net_bridge_port *p,
+						struct sk_buff *skb)
+{
+}
+
 static inline void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 					    struct sk_buff *skb)
 {
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 54bd7205bfb5..c903171ad291 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -8,6 +8,26 @@
 
 #include "br_private.h"
 
+static bool nbp_switchdev_can_accel(const struct net_bridge_port *p,
+				    const struct sk_buff *skb)
+{
+	return p->accel_priv && (p->hwdom != BR_INPUT_SKB_CB(skb)->src_hwdom);
+}
+
+void nbp_switchdev_frame_mark_accel(const struct net_bridge_port *p,
+				    struct sk_buff *skb)
+{
+	if (nbp_switchdev_can_accel(p, skb))
+		BR_INPUT_SKB_CB(skb)->fwd_accel = true;
+}
+
+void nbp_switchdev_frame_mark_fwd(const struct net_bridge_port *p,
+				  struct sk_buff *skb)
+{
+	if (nbp_switchdev_can_accel(p, skb))
+		set_bit(p->hwdom, BR_INPUT_SKB_CB(skb)->fwd_hwdoms);
+}
+
 void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 			      struct sk_buff *skb)
 {
@@ -18,8 +38,10 @@ void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
 bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 				  const struct sk_buff *skb)
 {
-	return !skb->offload_fwd_mark ||
-	       BR_INPUT_SKB_CB(skb)->src_hwdom != p->hwdom;
+	struct br_input_skb_cb *cb = BR_INPUT_SKB_CB(skb);
+
+	return !test_bit(p->hwdom, cb->fwd_hwdoms) &&
+		(!skb->offload_fwd_mark || cb->src_hwdom != p->hwdom);
 }
 
 /* Flags that can be offloaded to hardware */
@@ -125,6 +147,27 @@ int br_switchdev_port_vlan_del(struct net_device *dev, u16 vid)
 	return switchdev_port_obj_del(dev, &v.obj);
 }
 
+static void nbp_switchdev_fwd_offload_add(struct net_bridge_port *p)
+{
+	void *priv;
+
+	if (!(p->dev->features & NETIF_F_HW_L2FW_DOFFLOAD))
+		return;
+
+	priv = p->dev->netdev_ops->ndo_dfwd_add_station(p->dev, p->br->dev);
+	if (!IS_ERR_OR_NULL(priv))
+		p->accel_priv = priv;
+}
+
+static void nbp_switchdev_fwd_offload_del(struct net_bridge_port *p)
+{
+	if (!p->accel_priv)
+		return;
+
+	p->dev->netdev_ops->ndo_dfwd_del_station(p->dev, p->accel_priv);
+	p->accel_priv = NULL;
+}
+
 static int nbp_switchdev_hwdom_set(struct net_bridge_port *joining)
 {
 	struct net_bridge *br = joining->br;
@@ -176,13 +219,23 @@ int nbp_switchdev_add(struct net_bridge_port *p)
 		return err;
 	}
 
-	return nbp_switchdev_hwdom_set(p);
+	err = nbp_switchdev_hwdom_set(p);
+	if (err)
+		return err;
+
+	if (p->hwdom)
+		nbp_switchdev_fwd_offload_add(p);
+
+	return 0;
 }
 
 void nbp_switchdev_del(struct net_bridge_port *p)
 {
 	ASSERT_RTNL();
 
+	if (p->accel_priv)
+		nbp_switchdev_fwd_offload_del(p);
+
 	if (p->hwdom)
 		nbp_switchdev_hwdom_put(p);
 }
-- 
2.25.1


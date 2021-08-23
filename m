Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 569183F4807
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 11:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C098402A9;
	Mon, 23 Aug 2021 09:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOufCayvHW-a; Mon, 23 Aug 2021 09:56:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 11091402B1;
	Mon, 23 Aug 2021 09:56:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BE2A4C001F;
	Mon, 23 Aug 2021 09:56:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0697FC000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3432605AE
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bu3X8zlmRUrV for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 09:56:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BC6E600D4
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:56:40 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 28-20020a17090a031cb0290178dcd8a4d1so13076450pje.0
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 02:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yne3gbAEgfLvuzl4ISOkMOkCXwKPNJ/FBTXv1EJmNsU=;
 b=YHDP74AbShnhW5meoBsQ1QYdIjc1c4tgZ6mqQmAVTFy848TGQQqIyv+LQ/0DbIvJIe
 4OEbNb6G4iCxHpmT7nK4EXbTum5BulylgPIakzGd2yr0czxgI7yOyVKBgrmTnf0mdaRn
 GfqfXyh2xAzSv3Sg2D7hNz5sMLwA9Dn8t9HnNKHrKhtBydgAdfL42vZMeYtcajYTTDd+
 3suCdMlFcSgZjpdYOJkUGIg1wcdnvEWHYKSOBm7r0MG6PPNIjERYe3/BwmZhLVZPiTHO
 7uc3wRgttdbRuookpJ/WH/xRCOrGUxAqmll3Kx32OJyVK+ca77M9PGDHWcUXOc8PplwD
 9X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yne3gbAEgfLvuzl4ISOkMOkCXwKPNJ/FBTXv1EJmNsU=;
 b=dwy/vQQLC7ajiTW3gYDwZinsvm9s/kOnTUIAESRA0/YOqYUX95cMMa4QmVyVMsFy6X
 km2JF3TD7fHf0sEOpDBNDzTMSgZYwSLxAKj8gUwgtbKzeSYrQfMNC/fpJY3M70kb6qdr
 JkIYkwfs8glyRbxGqB0Nn6IyxMzmTlG92I+XxCi6bCMFDv472L0K4tfommV8pLr7z31s
 meZruD4XVzpmRachvpzIl+zwqfueDyDTZdPq6Z59DmWVG7bniyfCj8/dL7UdYfFOXpvq
 f7LUmTA73W0T3rLV4pEbFgJS723dZuidmuptVNKod2/rzlh0IdvzEgxUuGYLa7sXBha0
 NUUA==
X-Gm-Message-State: AOAM531ohnRBS3bR48XLN/q+tjdpViUzvgQEA5KjAufc9b7XID1tNgyS
 kj1fuFglzCyG24jJI2e0y4E=
X-Google-Smtp-Source: ABdhPJwHG81pJecGw4CS54n5Ehnl98Eu8SCdM4WnNI/BGKDETYkhSMI6JGhVUIgtobCjFBNKTBNBRA==
X-Received: by 2002:a17:902:8348:b029:12b:b2a0:941b with SMTP id
 z8-20020a1709028348b029012bb2a0941bmr28027041pln.62.1629712599680; 
 Mon, 23 Aug 2021 02:56:39 -0700 (PDT)
Received: from localhost.localdomain ([1.240.193.107])
 by smtp.googlemail.com with ESMTPSA id i5sm18538486pjk.47.2021.08.23.02.56.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 02:56:39 -0700 (PDT)
From: Kangmin Park <l4stpr0gr4m@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Date: Mon, 23 Aug 2021 18:56:34 +0900
Message-Id: <20210823095634.34752-1-l4stpr0gr4m@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v2 net-next] net: bridge: change return type of
	br_handle_ingress_vlan_tunnel
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

br_handle_ingress_vlan_tunnel() is only referenced in
br_handle_frame(). If br_handle_ingress_vlan_tunnel() is called and
return non-zero value, goto drop in br_handle_frame().

But, br_handle_ingress_vlan_tunnel() always return 0. So, the
routines that check the return value and goto drop has no meaning.

Therefore, change return type of br_handle_ingress_vlan_tunnel() to
void and remove if statement of br_handle_frame().

Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
---
v2:
 - cleanup instead of modifying ingress function
 - change prototype of ingress function
 - cleanup br_handle_frame function
 - change commit message accordingly

 net/bridge/br_input.c          |  7 ++-----
 net/bridge/br_private_tunnel.h |  6 +++---
 net/bridge/br_vlan_tunnel.c    | 14 +++++++-------
 3 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8a0c0cc55cb4..b50382f957c1 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -294,11 +294,8 @@ static rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
 	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
 
 	p = br_port_get_rcu(skb->dev);
-	if (p->flags & BR_VLAN_TUNNEL) {
-		if (br_handle_ingress_vlan_tunnel(skb, p,
-						  nbp_vlan_group_rcu(p)))
-			goto drop;
-	}
+	if (p->flags & BR_VLAN_TUNNEL)
+		br_handle_ingress_vlan_tunnel(skb, p, nbp_vlan_group_rcu(p));
 
 	if (unlikely(is_link_local_ether_addr(dest))) {
 		u16 fwd_mask = p->br->group_fwd_mask_required;
diff --git a/net/bridge/br_private_tunnel.h b/net/bridge/br_private_tunnel.h
index c54cc26211d7..2b053289f016 100644
--- a/net/bridge/br_private_tunnel.h
+++ b/net/bridge/br_private_tunnel.h
@@ -38,9 +38,9 @@ int nbp_vlan_tunnel_info_add(const struct net_bridge_port *port, u16 vid,
 void nbp_vlan_tunnel_info_flush(struct net_bridge_port *port);
 void vlan_tunnel_info_del(struct net_bridge_vlan_group *vg,
 			  struct net_bridge_vlan *vlan);
-int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
-				  struct net_bridge_port *p,
-				  struct net_bridge_vlan_group *vg);
+void br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
+				   struct net_bridge_port *p,
+				   struct net_bridge_vlan_group *vg);
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
 				 struct net_bridge_vlan *vlan);
 bool vlan_tunid_inrange(const struct net_bridge_vlan *v_curr,
diff --git a/net/bridge/br_vlan_tunnel.c b/net/bridge/br_vlan_tunnel.c
index 01017448ebde..7d42b2a5be80 100644
--- a/net/bridge/br_vlan_tunnel.c
+++ b/net/bridge/br_vlan_tunnel.c
@@ -158,30 +158,30 @@ void vlan_tunnel_deinit(struct net_bridge_vlan_group *vg)
 	rhashtable_destroy(&vg->tunnel_hash);
 }
 
-int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
-				  struct net_bridge_port *p,
-				  struct net_bridge_vlan_group *vg)
+void br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
+				   struct net_bridge_port *p,
+				   struct net_bridge_vlan_group *vg)
 {
 	struct ip_tunnel_info *tinfo = skb_tunnel_info(skb);
 	struct net_bridge_vlan *vlan;
 
 	if (!vg || !tinfo)
-		return 0;
+		return;
 
 	/* if already tagged, ignore */
 	if (skb_vlan_tagged(skb))
-		return 0;
+		return;
 
 	/* lookup vid, given tunnel id */
 	vlan = br_vlan_tunnel_lookup(&vg->tunnel_hash, tinfo->key.tun_id);
 	if (!vlan)
-		return 0;
+		return;
 
 	skb_dst_drop(skb);
 
 	__vlan_hwaccel_put_tag(skb, p->br->vlan_proto, vlan->vid);
 
-	return 0;
+	return;
 }
 
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
-- 
2.26.2


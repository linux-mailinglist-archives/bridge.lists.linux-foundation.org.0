Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBAC3F488F
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 12:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A592E80D2D;
	Mon, 23 Aug 2021 10:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id viBQ5GYzC5TF; Mon, 23 Aug 2021 10:21:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3CA1A80D2F;
	Mon, 23 Aug 2021 10:21:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E73A5C001F;
	Mon, 23 Aug 2021 10:21:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04C57C000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7E89402AD
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sb8yCbFXbWHl for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 10:21:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3AF74021F
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 10:21:23 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 j10-20020a17090a94ca00b00181f17b7ef7so5479166pjw.2
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 03:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cGasR7WzNEMTvDVDQ6lbvU3xnDLeP0u7zfxmVNjFYPU=;
 b=rFrVSrosHqfZBwG558QWzesJXzhHHz6kIPy1y1yvII6nQxtXq2zIlgEFwMmUdxkyhV
 Ce4aMoaHb+JD8zd6P/UjiPwoSLTHa97AvKpDZWLPYQKlDx5bpeJmKOYbsckI0wxxJeqp
 X27v/M/mbMUINnSV+SuzMIHxzuAAirbvrgY8nE54+hyuYcir/MuExNmUQ+LE8haUj8Nr
 6ySrml1EVn+stlsAEGirJMvxtE3szd9KnMOoGMt3WDW+I3Wp2xgtun7ZR6GIMAby+TVg
 CMBl0vuZN0VmkwG2yjKRcecP/tKATYD7Oec62jBp4IdSP8B2im9HHsGG2EICQeLgEhfi
 wE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cGasR7WzNEMTvDVDQ6lbvU3xnDLeP0u7zfxmVNjFYPU=;
 b=acDQdub7b8K6DB8hslIl8D4JXVvvn6fmQWtZvsY+ao1sPN8mMC0m/zJUmIegpbyEGp
 uGANZ/qPf1/Eqy2swdPkWgrq7ILDUE35C21HzTtgfI4zFlwLPqzl50h6AGqqBTQgf+mn
 zZrZm46i4SbVNcflHfs1mrA2ywu2qr7xKTRQUlvfj5Dy4zjKT3D9Pe8GUELOTgwtz533
 0dOB99MxFCmpdmhlvlPmrrVEN+D+mJn6C52vuieUGbya/YYht3SvUQoWWCMFPUlD8NMz
 aw78utEtBD6ZS9GJg/tnaIKSEW5t2cU6DodzUauekuqlKmOUkIJ1dhrfWqcMQEnLXjAm
 iatg==
X-Gm-Message-State: AOAM530RNBBrDlEb38TJ1nd2TcmA8GKpruud57FGV0hA4GB6yaLnYaLD
 Nszortw1zbtXjw2X/A9T11k=
X-Google-Smtp-Source: ABdhPJyaGnWL030a8L8Yo6zKwRM2qOHZs3bcb7JkTJga61C1szPRk/I8txRYHUZqRRZZlVWVCBr9uQ==
X-Received: by 2002:a17:90b:1c8c:: with SMTP id
 oo12mr19175597pjb.170.1629714083221; 
 Mon, 23 Aug 2021 03:21:23 -0700 (PDT)
Received: from localhost.localdomain ([1.240.193.107])
 by smtp.googlemail.com with ESMTPSA id o14sm18084788pgl.85.2021.08.23.03.21.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 03:21:22 -0700 (PDT)
From: Kangmin Park <l4stpr0gr4m@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Date: Mon, 23 Aug 2021 19:21:18 +0900
Message-Id: <20210823102118.17966-1-l4stpr0gr4m@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v3 net-next] net: bridge: change return type of
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
v3:
 - remove unnecessary return statement

v2:
 - cleanup instead of modifying ingress function
 - change prototype of ingress function
 - cleanup br_handle_frame function
 - change commit message accordingly

 net/bridge/br_input.c          |  7 ++-----
 net/bridge/br_private_tunnel.h |  6 +++---
 net/bridge/br_vlan_tunnel.c    | 14 ++++++--------
 3 files changed, 11 insertions(+), 16 deletions(-)

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
index 01017448ebde..6399a8a69d07 100644
--- a/net/bridge/br_vlan_tunnel.c
+++ b/net/bridge/br_vlan_tunnel.c
@@ -158,30 +158,28 @@ void vlan_tunnel_deinit(struct net_bridge_vlan_group *vg)
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
-
-	return 0;
 }
 
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
-- 
2.26.2


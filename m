Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72C767FEDF
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 13:30:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBD9540529;
	Sun, 29 Jan 2023 12:30:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBD9540529
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Ly7bRraX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSjah68E12mS; Sun, 29 Jan 2023 12:30:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 290B040179;
	Sun, 29 Jan 2023 12:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 290B040179
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D491BC007C;
	Sun, 29 Jan 2023 12:30:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 44FB4C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 12:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 102E18188D
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 12:30:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 102E18188D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ly7bRraX
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71HOhxtKEvRC for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 12:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5E628183D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E5E628183D
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 12:30:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 09CA360D2C;
 Sun, 29 Jan 2023 12:30:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1D90C433EF;
 Sun, 29 Jan 2023 12:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674995442;
 bh=SFa1Tf6DaGpaATtn+gFBOA09DFsVEqjspVrHP2ouWaQ=;
 h=From:To:Cc:Subject:Date:From;
 b=Ly7bRraXGnQHozmRHrpU/oNYWxdDGDwFVojva+g4Mr3O5c4CnB1gvibw18rPLxyqq
 jjrC/IC86GJS734/yDRqSa+uzCdFtF0u3dcbv1MsovQfHfrbojMlJ4TzZoCq8lFc0U
 FzKdGKLlqCy3g3efAeaOSmCC+nKlmC3B0QJtMqy70QieIsony3s0jl/fbjREwTE0By
 5xAwc1XxC24BcJ8uYJjU3HdfZVcyD6YGziFYkeLk2/OW+V2cihV+0JIOcXFZATRCWi
 u3PxbIJ5iasIzCDEs3d44hRVREo/E3g3vRaDSqBvr8Zd+dZYHxuj2lUtO4K7/e4ipB
 Tuhd3tJM2lPJQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sun, 29 Jan 2023 14:30:35 +0200
Message-Id: <d4843760219f20367c27472f084bd8aa729cf321.1674995155.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>
Subject: [Bridge] [PATCH net-next v1] netlink: provide an ability to set
	default extack message
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

From: Leon Romanovsky <leonro@nvidia.com>

In netdev common pattern, extack pointer is forwarded to the drivers
to be filled with error message. However, the caller can easily
overwrite the filled message.

Instead of adding multiple "if (!extack->_msg)" checks before any
NL_SET_ERR_MSG() call, which appears after call to the driver, let's
add new macro to common code.

[1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
Changelog:
v1: 
 * Added special *_WEAK() macro instead of embedding same check in
   NL_SET_ERR_MSG_MOD/NL_SET_ERR_MSG_FMT.
 * Reuse same macro for XFRM code which triggered this patch.
v0: https://lore.kernel.org/all/2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org
---
 include/linux/netlink.h   | 10 ++++++++++
 net/bridge/br_switchdev.c | 10 ++++------
 net/dsa/master.c          |  4 +---
 net/dsa/slave.c           |  4 +---
 net/xfrm/xfrm_device.c    |  5 ++++-
 5 files changed, 20 insertions(+), 13 deletions(-)

diff --git a/include/linux/netlink.h b/include/linux/netlink.h
index fa4d86da0ec7..2cc1dc784273 100644
--- a/include/linux/netlink.h
+++ b/include/linux/netlink.h
@@ -130,6 +130,16 @@ struct netlink_ext_ack {
 #define NL_SET_ERR_MSG_FMT_MOD(extack, fmt, args...)	\
 	NL_SET_ERR_MSG_FMT((extack), KBUILD_MODNAME ": " fmt, ##args)
 
+#define NL_SET_ERR_MSG_WEAK(extack, msg) do {		\
+	if ((extack) && !(extack)->_msg)		\
+		NL_SET_ERR_MSG((extack), (msg));	\
+} while (0)
+
+#define NL_SET_ERR_MSG_WEAK_MOD(extack, msg) do {	\
+	if ((extack) && !(extack)->_msg)		\
+		NL_SET_ERR_MSG_MOD((extack), (msg));	\
+} while (0)
+
 #define NL_SET_BAD_ATTR_POLICY(extack, attr, pol) do {	\
 	if ((extack)) {					\
 		(extack)->bad_attr = (attr);		\
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 7eb6fd5bb917..de18e9c1d7a7 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -104,9 +104,8 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 		return 0;
 
 	if (err) {
-		if (extack && !extack->_msg)
-			NL_SET_ERR_MSG_MOD(extack,
-					   "bridge flag offload is not supported");
+		NL_SET_ERR_MSG_WEAK_MOD(extack,
+					"bridge flag offload is not supported");
 		return -EOPNOTSUPP;
 	}
 
@@ -115,9 +114,8 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 
 	err = switchdev_port_attr_set(p->dev, &attr, extack);
 	if (err) {
-		if (extack && !extack->_msg)
-			NL_SET_ERR_MSG_MOD(extack,
-					   "error setting offload flag on port");
+		NL_SET_ERR_MSG_WEAK_MOD(extack,
+					"error setting offload flag on port");
 		return err;
 	}
 
diff --git a/net/dsa/master.c b/net/dsa/master.c
index 26d90140d271..1507b8cdb360 100644
--- a/net/dsa/master.c
+++ b/net/dsa/master.c
@@ -464,9 +464,7 @@ int dsa_master_lag_setup(struct net_device *lag_dev, struct dsa_port *cpu_dp,
 
 	err = dsa_port_lag_join(cpu_dp, lag_dev, uinfo, extack);
 	if (err) {
-		if (extack && !extack->_msg)
-			NL_SET_ERR_MSG_MOD(extack,
-					   "CPU port failed to join LAG");
+		NL_SET_ERR_MSG_WEAK_MOD(extack, "CPU port failed to join LAG");
 		goto out_master_teardown;
 	}
 
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 6014ac3aad34..26c458f50ac6 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2692,9 +2692,7 @@ static int dsa_slave_changeupper(struct net_device *dev,
 			if (!err)
 				dsa_bridge_mtu_normalization(dp);
 			if (err == -EOPNOTSUPP) {
-				if (extack && !extack->_msg)
-					NL_SET_ERR_MSG_MOD(extack,
-							   "Offloading not supported");
+				NL_SET_ERR_MSG_WEAK_MOD(extack, "Offloading not supported");
 				err = 0;
 			}
 			err = notifier_from_errno(err);
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 562b9d951598..95f1436bf6a2 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -325,8 +325,10 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 		 * authors to do not return -EOPNOTSUPP in packet offload mode.
 		 */
 		WARN_ON(err == -EOPNOTSUPP && is_packet_offload);
-		if (err != -EOPNOTSUPP || is_packet_offload)
+		if (err != -EOPNOTSUPP || is_packet_offload) {
+			NL_SET_ERR_MSG_WEAK(extack, "Device failed to offload this state");
 			return err;
+		}
 	}
 
 	return 0;
@@ -388,6 +390,7 @@ int xfrm_dev_policy_add(struct net *net, struct xfrm_policy *xp,
 		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
 		xdo->dir = 0;
 		netdev_put(dev, &xdo->dev_tracker);
+		NL_SET_ERR_MSG_WEAK(extack, "Device failed to offload this policy");
 		return err;
 	}
 
-- 
2.39.1


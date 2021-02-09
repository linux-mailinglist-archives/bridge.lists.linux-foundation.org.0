Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8F3157A9
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:24:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 892438727C;
	Tue,  9 Feb 2021 20:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RNl64CWFvxG1; Tue,  9 Feb 2021 20:24:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59C2D87263;
	Tue,  9 Feb 2021 20:24:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FFE4C013A;
	Tue,  9 Feb 2021 20:24:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8FE8AC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E76787264
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLNg6BuFNG3p for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAFC687263
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612902269; x=1644438269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f5geSd6pjJ0N+Fxoxpo/NSh5XSs8UlW8frZ6CCHDsDY=;
 b=tdOjn/oY4dzftWOvm5aYUHYuDZ9BypCithae+vCrKuFcLFwj7+U6ChQf
 TrdCzcfljx/1A5XvCQDeTiXlcXaEOFAakzdHEATQ2g4KJ5JVfwbVrzRCr
 irLZ8weW4aV2P2V7rcInCqHyQcGOv2YxgWh/QwZFXQAOgAbRS756KbTjH
 RNTALs3T45xG2eEvFt7+51RE+IE2OgpIiWlaVR3EKPOAcrinQRJbi3zJ3
 LDlEjny/Eh6GpFClW9BoTKm94spuWsn2idDIiv438rd5+QWMn11bRPhi2
 Hh4HdAbcWp4evpCnfeGFFu7xTxwUdOqailJCb2nL13HE4R4sEtzJx8J13 w==;
IronPort-SDR: oAzYc2gSFMk/b3LcYlV1yCKJ5eMZjxn88O3euNs+Xuzsce+73MAuOtAXScZv4ygidJSfnUXHAO
 cr6PW60VdRhN3xqdV6t+cuhm2/Cz58szCawN8CsmHBJamz6MstvYHPD6aV+pQOPTyvnOxGok2S
 ry9p9K4inhYtfPM83USNvoDpCMOy0lQFeGPDm9m9fKluIVSaCnymMBpxsyINgUkm1UJiHcQWV5
 x1u9rRNLG24Ha5TU0CJQLlma5t4K7adRTEjglfRmmeAp2t+2NS6IAzeIq69VsMFCa0uM6UV4JR
 07c=
X-IronPort-AV: E=Sophos;i="5.81,166,1610434800"; d="scan'208";a="114457601"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Feb 2021 13:24:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 9 Feb 2021 13:24:28 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 9 Feb 2021 13:24:25 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <vladimir.oltean@nxp.com>,
 <claudiu.manoil@nxp.com>, <alexandre.belloni@bootlin.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Tue, 9 Feb 2021 21:21:11 +0100
Message-ID: <20210209202112.2545325-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
References: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 4/5] bridge: mrp: Update br_mrp to use
	new return values of br_mrp_switchdev
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Check the return values of the br_mrp_switchdev function.
In case of:
- BR_MRP_NONE, return the error to userspace,
- BR_MRP_SW, continue with SW implementation,
- BR_MRP_HW, continue without SW implementation,

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 43 +++++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index 01c67ed727a9..12487f6fe9b4 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -639,7 +639,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
 			 struct br_mrp_ring_role *role)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
-	int err;
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -647,9 +647,9 @@ int br_mrp_set_ring_role(struct net_bridge *br,
 	mrp->ring_role = role->ring_role;
 
 	/* If there is an error just bailed out */
-	err = br_mrp_switchdev_set_ring_role(br, mrp, role->ring_role);
-	if (err && err != -EOPNOTSUPP)
-		return err;
+	support = br_mrp_switchdev_set_ring_role(br, mrp, role->ring_role);
+	if (support == BR_MRP_NONE)
+		return -EOPNOTSUPP;
 
 	/* Now detect if the HW actually applied the role or not. If the HW
 	 * applied the role it means that the SW will not to do those operations
@@ -657,7 +657,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
 	 * SW when ring is open, but if the is not pushed to the HW the SW will
 	 * need to detect when the ring is open
 	 */
-	mrp->ring_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
+	mrp->ring_role_offloaded = support == BR_MRP_SW ? 0 : 1;
 
 	return 0;
 }
@@ -670,6 +670,7 @@ int br_mrp_start_test(struct net_bridge *br,
 		      struct br_mrp_start_test *test)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, test->ring_id);
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -677,9 +678,13 @@ int br_mrp_start_test(struct net_bridge *br,
 	/* Try to push it to the HW and if it fails then continue with SW
 	 * implementation and if that also fails then return error.
 	 */
-	if (!br_mrp_switchdev_send_ring_test(br, mrp, test->interval,
-					     test->max_miss, test->period,
-					     test->monitor))
+	support = br_mrp_switchdev_send_ring_test(br, mrp, test->interval,
+						  test->max_miss, test->period,
+						  test->monitor);
+	if (support == BR_MRP_NONE)
+		return -EOPNOTSUPP;
+
+	if (support == BR_MRP_HW)
 		return 0;
 
 	mrp->test_interval = test->interval;
@@ -721,8 +726,8 @@ int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state)
 int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
+	enum br_mrp_hw_support support;
 	struct net_bridge_port *p;
-	int err;
 
 	if (!mrp)
 		return -EINVAL;
@@ -780,10 +785,10 @@ int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
 	mrp->in_id = role->in_id;
 
 	/* If there is an error just bailed out */
-	err = br_mrp_switchdev_set_in_role(br, mrp, role->in_id,
-					   role->ring_id, role->in_role);
-	if (err && err != -EOPNOTSUPP)
-		return err;
+	support = br_mrp_switchdev_set_in_role(br, mrp, role->in_id,
+					       role->ring_id, role->in_role);
+	if (support == BR_MRP_NONE)
+		return -EOPNOTSUPP;
 
 	/* Now detect if the HW actually applied the role or not. If the HW
 	 * applied the role it means that the SW will not to do those operations
@@ -791,7 +796,7 @@ int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
 	 * SW when interconnect ring is open, but if the is not pushed to the HW
 	 * the SW will need to detect when the interconnect ring is open.
 	 */
-	mrp->in_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
+	mrp->in_role_offloaded = support == BR_MRP_SW ? 0 : 1;
 
 	return 0;
 }
@@ -804,6 +809,7 @@ int br_mrp_start_in_test(struct net_bridge *br,
 			 struct br_mrp_start_in_test *in_test)
 {
 	struct br_mrp *mrp = br_mrp_find_in_id(br, in_test->in_id);
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -814,8 +820,13 @@ int br_mrp_start_in_test(struct net_bridge *br,
 	/* Try to push it to the HW and if it fails then continue with SW
 	 * implementation and if that also fails then return error.
 	 */
-	if (!br_mrp_switchdev_send_in_test(br, mrp, in_test->interval,
-					   in_test->max_miss, in_test->period))
+	support =  br_mrp_switchdev_send_in_test(br, mrp, in_test->interval,
+						 in_test->max_miss,
+						 in_test->period);
+	if (support == BR_MRP_NONE)
+		return -EOPNOTSUPP;
+
+	if (support == BR_MRP_HW)
 		return 0;
 
 	mrp->in_test_interval = in_test->interval;
-- 
2.27.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A03016BA
	for <lists.bridge@lfdr.de>; Sat, 23 Jan 2021 17:20:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1ED4E86AAA;
	Sat, 23 Jan 2021 16:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzKgKfJEOon6; Sat, 23 Jan 2021 16:20:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ADFF86AD8;
	Sat, 23 Jan 2021 16:20:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F64BC08A1;
	Sat, 23 Jan 2021 16:20:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42A45C013A
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C17787135
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFNR1g32ibfr for <bridge@lists.linux-foundation.org>;
 Sat, 23 Jan 2021 16:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29FED87148
 for <bridge@lists.linux-foundation.org>; Sat, 23 Jan 2021 16:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611418800; x=1642954800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fIQDl2lqrznWxU4zPJMR/Sa1BQ5hWGWeH15FBPjjRa4=;
 b=Le1K7IslAx4Q60h1pLShjuYUPY7xmhs3movsHUl2Jb4mte06E2VOWnpq
 cD/RsjBfmwICRlO5nCMDmdFnYy78C0vcLzV9wA9xd91dxPpUzpoBx4G7G
 uAoqnG1APljWd4Ncj42Tf9AoyO/yyrTBFl+YfbwOdzV/YgAm+cilTZFld
 IIFxbk+3FcFBVckQEtf7hQJWI7cPBIN3+MoLZzrFxPkQtqF7jY1BqGkWl
 ITOg2eZw5UelQBTiWZwlkKNp1pSDiTiszJcYKnj7+Fr1keC96McN1EeH5
 bfaQiiSN5NuJFJFi+JXUiLNAGZ8vEfl/coDEE63vrqcXMukyIiT1HPNZ7 Q==;
IronPort-SDR: hu1S7pmrmQQQo4gKcabhAGrK/cKnS9BOqhRyVzg+guND5/5TeHjBOMTndMF46abR26B/dszAJq
 e3wgqiyFx3aLiaa4qC3+0furu7O7k9pFCBF/7TQ5/Gppy30QnYbI781wL90GSNA094fGqfq2/I
 /5DiaflnWeYbCz3rfKCLcisUBpeIQbWcy+cZ7Or09nLrysTCRJisdbq342mGJmIEdq984IJOO+
 OoOcf3abrksdVhQTTe6lW/mGsvHAbdKASMba8Nvp4dTDO3RP9i9jAc29qNkR/wfHItmPay/sVt
 j18=
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="101164379"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2021 09:19:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 23 Jan 2021 09:19:59 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sat, 23 Jan 2021 09:19:56 -0700
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@nvidia.com>, <nikolay@nvidia.com>,
 <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Sat, 23 Jan 2021 17:18:12 +0100
Message-ID: <20210123161812.1043345-5-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
References: <20210123161812.1043345-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 4/4] bridge: mrp: Update br_mrp to use new
	return values of br_mrp_switchdev
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
- BR_MRP_SW, continue with SW implemtation
- BR_MRP_HW, continue without SW implemtation.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 43 +++++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index fc0a98874bfc..faa4ccb20f0a 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -636,7 +636,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
 			 struct br_mrp_ring_role *role)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
-	int err;
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -644,9 +644,9 @@ int br_mrp_set_ring_role(struct net_bridge *br,
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
@@ -654,7 +654,7 @@ int br_mrp_set_ring_role(struct net_bridge *br,
 	 * SW when ring is open, but if the is not pushed to the HW the SW will
 	 * need to detect when the ring is open
 	 */
-	mrp->ring_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
+	mrp->ring_role_offloaded = support == BR_MRP_SW ? 0 : 1;
 
 	return 0;
 }
@@ -667,6 +667,7 @@ int br_mrp_start_test(struct net_bridge *br,
 		      struct br_mrp_start_test *test)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, test->ring_id);
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -674,9 +675,13 @@ int br_mrp_start_test(struct net_bridge *br,
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
@@ -718,8 +723,8 @@ int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state)
 int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
 {
 	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
+	enum br_mrp_hw_support support;
 	struct net_bridge_port *p;
-	int err;
 
 	if (!mrp)
 		return -EINVAL;
@@ -777,10 +782,10 @@ int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
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
@@ -788,7 +793,7 @@ int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
 	 * SW when interconnect ring is open, but if the is not pushed to the HW
 	 * the SW will need to detect when the interconnect ring is open.
 	 */
-	mrp->in_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
+	mrp->in_role_offloaded = support == BR_MRP_SW ? 0 : 1;
 
 	return 0;
 }
@@ -801,6 +806,7 @@ int br_mrp_start_in_test(struct net_bridge *br,
 			 struct br_mrp_start_in_test *in_test)
 {
 	struct br_mrp *mrp = br_mrp_find_in_id(br, in_test->in_id);
+	enum br_mrp_hw_support support;
 
 	if (!mrp)
 		return -EINVAL;
@@ -811,8 +817,13 @@ int br_mrp_start_in_test(struct net_bridge *br,
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


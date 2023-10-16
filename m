Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A351C7CA90C
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E508D611ED;
	Mon, 16 Oct 2023 13:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E508D611ED
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Lnx3Fkk3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9OY2ybt54_Mk; Mon, 16 Oct 2023 13:14:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2E86E611E4;
	Mon, 16 Oct 2023 13:14:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E86E611E4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81FD4C0DD9;
	Mon, 16 Oct 2023 13:14:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1944C0072
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C1A9408EC
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C1A9408EC
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Lnx3Fkk3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEakJL1Rmdwk for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:14:06 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20626.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::626])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 924BE40965
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 924BE40965
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M3W7FGsgvPjKPdBV+Ezmvq7pZK3jiNMCwXJCeKs81txDiImZRwpG/rGzjEuf9QenvYA3vyTdXo/R1daZz43G64N0TAL1Dtc+9EV4JXC6uU7Q/wFhDbPZDOr5+Q4Br/1QXmqxggZWbSgwPWwlap4MXuIA0hzOigdH9rfKgLDIWRDNPmAl/mej5AB0kZGeVJ/WWDXIG0OuYYnjdZMy3jDWa4P7L+a8O4w0TUtePe+Yji2GYtNLsT2SjAZDIHXz1DU8TJLcheWSIVALBqekcZ4LaDuLLbpNl4OZGkBQyzXYCgoirZF93gZlzZ9U16wT+NDLb2+x+pPI0cACPvOjhG6NLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kvn98rfcbAc2Va2VU7W+Q2Eo0H1y6sr9aaANUCjT7Lk=;
 b=Y2/iOSbklAV4t251Lzq3ZgHSQUACWXfYrkj9E4GWGq05mSraSjdTY94xFU404FPwIxOpPg0fkEeaCTNdxejL7DD6jiryJWSbnkO4M4InvHHhl5uY4CiLuQrYQYofkZGOWZyJZ2lexg+ZR8f4aiE67eAeMYgYs35uSxPxmgoomEQQwC/iLTpJHt56hRYP5Hlfma05WO+HzZIRGpSQt/7bquOYDZ27Lhl5zfkP0XyLbkls0PJhG3GzbJK009PzKViZ8l+j5tKUChNHpVoYUlOYUitdasWdgq0+Q66ELbl9ijFo5ZKEtpDxfMhAEU8+p/2NHRDT/EbM9H1cCkl0JIw6ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kvn98rfcbAc2Va2VU7W+Q2Eo0H1y6sr9aaANUCjT7Lk=;
 b=Lnx3Fkk3g4vZ0D4x+lNHaSYDZULDPoeLcq56uXC2ztCM740zpB9chtlB7oukcKqhozAUThNml3ZSe9zRRwc3GRASyfxyp6RhlEfzfGvreqGs3pdGmjSQHwWYp3PIqtpwKmd+F61rscClXuPbvrEiN0XQ5XqIb2Pp0pw0RQK+/YCK7ICrT5XY0JnBAI0fNhkYoMTWhY8yHIxNNAKbKgcv7KYgbEx1+iDuo6J1ciOYMvSAzBasqTIkYZ4tCVjTGPOymGVfCyHoBYZjW6SvBx3BCKSN7gxn73jyukBk4S47+kAiB/sgxDQLfKUnbtq0LZPSgz+0wfUi65DSuzY9am3NuQ==
Received: from MN2PR20CA0049.namprd20.prod.outlook.com (2603:10b6:208:235::18)
 by PH8PR12MB7447.namprd12.prod.outlook.com (2603:10b6:510:215::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 13:14:04 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::4f) by MN2PR20CA0049.outlook.office365.com
 (2603:10b6:208:235::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36 via Frontend
 Transport; Mon, 16 Oct 2023 13:14:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BL6PEPF0001AB71.mail.protection.outlook.com (10.167.242.164) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Mon, 16 Oct 2023 13:14:03 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 16 Oct
 2023 06:13:46 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 16 Oct 2023 06:13:43 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 16 Oct 2023 16:12:50 +0300
Message-ID: <20231016131259.3302298-5-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231016131259.3302298-1-idosch@nvidia.com>
References: <20231016131259.3302298-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|PH8PR12MB7447:EE_
X-MS-Office365-Filtering-Correlation-Id: ba55cd98-c75d-4b3d-8a34-08dbce49c4f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OCB2KxfWBLHoItBJZ+ZuoI69+7fTDR4sfcuUZkNXGe7OZDD/RI0MyKg7Njk/TVeqcZrpePcB385JQsqzMPOJZRDlKaNHVCLTCv31uwLlWu8Ap1CEB38Hm8XIqAFAy7HHBAecFCEcIBuBYCdTDbmYJlHCUIQ/K6e0ayRqTnOMYmSwvQp8XCvymNEu1CICpvM8UWOsbWlOukIDto8evpiPviyl6FDXHf/fnmBv72mlIEd6BEbTV7aIGfuP/8kkZXOGyFsxNsnhpICJ41KkosmBG479UojsUp4lZwXTlbRVR3+JWqGBB1Kzk16c4x7SzX7AkFKxONzwBkXQpb0KH+wgVQfdPBr++w0TwL5LGMGatSxDxuLeMHvqjif2A3o/PbZr5qf6owzeUJJmmVkCmeBG/g6uZK3h6MKwnygEGRizxets33ga9i6PwBwh2ZWaZCN2feJy3plagwXqhqkUUFg4i8OC034lAZ6EC1Q3bljxr3cgaUNnsHlAYnr9Dz12h+QMy1toxINN7wXhHmrNt3rNY5UqwaLZrTDzjXFIhWSgZlmD9IFryin4yBOqB5x/t9L24PKV3mUGQzpA8AuXr+OSYEMIuqQABnsF31OmxKpLCVTUKT34x7F9dbfv8DnN1WQHELT9JMN6asU58pdhv3nKEdDSwmgtp4vytI2LlUNUtBhvqNu/JYrslKgv/ldj1FzT9pkPxELQM8aQtXGDjte7qctab5OWMzfv1Or2cHRG/KXEClY8x9L2ZFkac7f93P06
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(376002)(396003)(346002)(136003)(39860400002)(230922051799003)(451199024)(64100799003)(82310400011)(186009)(1800799009)(36840700001)(40470700004)(46966006)(40460700003)(1076003)(26005)(6666004)(107886003)(2616005)(16526019)(336012)(426003)(54906003)(36860700001)(83380400001)(47076005)(41300700001)(478600001)(5660300002)(4326008)(2906002)(8676002)(8936002)(70586007)(316002)(110136005)(82740400003)(7636003)(356005)(70206006)(86362001)(40480700001)(36756003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 13:14:03.3346 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba55cd98-c75d-4b3d-8a34-08dbce49c4f2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7447
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 04/13] bridge: mcast: Rename MDB entry get
	function
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The current name is going to conflict with the upcoming net device
operation for the MDB get operation.

Rename the function to br_mdb_entry_skb_get(). No functional changes
intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_device.c    |  2 +-
 net/bridge/br_input.c     |  2 +-
 net/bridge/br_multicast.c |  5 +++--
 net/bridge/br_private.h   | 10 ++++++----
 4 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 9a5ea06236bd..d624710b384a 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -92,7 +92,7 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 			goto out;
 		}
 
-		mdst = br_mdb_get(brmctx, skb, vid);
+		mdst = br_mdb_entry_skb_get(brmctx, skb, vid);
 		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
 		    br_multicast_querier_exists(brmctx, eth_hdr(skb), mdst))
 			br_multicast_flood(mdst, skb, brmctx, false, true);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index c729528b5e85..f21097e73482 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -175,7 +175,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 
 	switch (pkt_type) {
 	case BR_PKT_MULTICAST:
-		mdst = br_mdb_get(brmctx, skb, vid);
+		mdst = br_mdb_entry_skb_get(brmctx, skb, vid);
 		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
 		    br_multicast_querier_exists(brmctx, eth_hdr(skb), mdst)) {
 			if ((mdst && mdst->host_joined) ||
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 96d1fc78dd39..d7d021af1029 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -145,8 +145,9 @@ static struct net_bridge_mdb_entry *br_mdb_ip6_get(struct net_bridge *br,
 }
 #endif
 
-struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge_mcast *brmctx,
-					struct sk_buff *skb, u16 vid)
+struct net_bridge_mdb_entry *
+br_mdb_entry_skb_get(struct net_bridge_mcast *brmctx, struct sk_buff *skb,
+		     u16 vid)
 {
 	struct net_bridge *br = brmctx->br;
 	struct br_ip ip;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index cbbe35278459..3220898424ce 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -951,8 +951,9 @@ int br_multicast_rcv(struct net_bridge_mcast **brmctx,
 		     struct net_bridge_mcast_port **pmctx,
 		     struct net_bridge_vlan *vlan,
 		     struct sk_buff *skb, u16 vid);
-struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge_mcast *brmctx,
-					struct sk_buff *skb, u16 vid);
+struct net_bridge_mdb_entry *
+br_mdb_entry_skb_get(struct net_bridge_mcast *brmctx, struct sk_buff *skb,
+		     u16 vid);
 int br_multicast_add_port(struct net_bridge_port *port);
 void br_multicast_del_port(struct net_bridge_port *port);
 void br_multicast_enable_port(struct net_bridge_port *port);
@@ -1341,8 +1342,9 @@ static inline int br_multicast_rcv(struct net_bridge_mcast **brmctx,
 	return 0;
 }
 
-static inline struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge_mcast *brmctx,
-						      struct sk_buff *skb, u16 vid)
+static inline struct net_bridge_mdb_entry *
+br_mdb_entry_skb_get(struct net_bridge_mcast *brmctx, struct sk_buff *skb,
+		     u16 vid)
 {
 	return NULL;
 }
-- 
2.40.1


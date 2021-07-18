Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427913CCB0E
	for <lists.bridge@lfdr.de>; Sun, 18 Jul 2021 23:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D64B401CB;
	Sun, 18 Jul 2021 21:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2We_GgXHnQbU; Sun, 18 Jul 2021 21:46:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D85A440025;
	Sun, 18 Jul 2021 21:46:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99A17C0022;
	Sun, 18 Jul 2021 21:46:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12608C000E
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBE6283794
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGnQVOqJRg9p for <bridge@lists.linux-foundation.org>;
 Sun, 18 Jul 2021 21:46:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on0606.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe1f::606])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37DC883777
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/bxK4DB51qZESTVBxRlaOYDHcqGB/pVhqDLN2HJcmRGwOOl1XHEfScxRbhcVIVgoMuTHgF+sKQ47HpXoOn15iC66QfWysKNW5IpvMvqlc+mI/WbuhgXz1YKpDA/2qTxFdnKo+cC78f7EwUC+GUwO1PBs0if7zeoaZq2mJWnA1DRxvW6GiZJz/b/BnIFFlM4ENtQ2uFeS7XWokjrhLHrXHSsWCEUlwuJDeRllaGc802WsDB83d1JVfpfcpC8jL1glql9fi1jpauAd/wINp1qg+sI4f4DOTY53l/TAYsk7uTPteEmohk7IKx9SVPQufRxa/niQkogr8qHlyD+7MiGBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTjK25SX+HRbdM8q7IhgjuFnt6eVU/jofELM/WJhGos=;
 b=kxAfdbmw15zniAeA8ukwSkTpn9SdsxMDSfz1DTm6GZq+SE50yLva/l58vnVvIXYy+fDK/0edm5M3SoYAsqrQ0UjzALwdceEaJZchkWL46y0qNeGL5Q+j6Lw1nZQiu4pe7s231nD3SPoP0aVWw8aSNoj/4ZO805gA3RLH+2YkIrdtIGsHwFTakG0Vzk6HQsxAq3uhCI9CY8HjdEKwEIF8zmN/ErdH46FvqM9f32jb3HVV2g3LVlJDyndxPInHVf+2em/3x7gL3SBtkCwhZCCTlHrs9PCeapDYQkI8QTsv0kvhui/IJz/2Z1XGxfii9TSE1ar8Cw510OR3AK/bWbwkSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTjK25SX+HRbdM8q7IhgjuFnt6eVU/jofELM/WJhGos=;
 b=fM1Bu6QxQoVovTcPUzIv7SgEOheuwZ4gaiHyl7nu4pfyvNR7OEFrLcZYuJGmuDwe3p1deF1AYz0OqBzqdVi/UjY9RRe/+SWQ02p9DUxdQBnjeWcV7zwHs2n7UmUDDaOO/0Zixgbc91JGZ8Z4df0xfgLZgcfRTVZpn1/ZnZVquwo=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VE1PR04MB7325.eurprd04.prod.outlook.com (2603:10a6:800:1af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Sun, 18 Jul
 2021 21:46:11 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0%2]) with mapi id 15.20.4331.032; Sun, 18 Jul 2021
 21:46:11 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Mon, 19 Jul 2021 00:44:21 +0300
Message-Id: <20210718214434.3938850-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0602CA0014.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::24) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (82.76.66.29) by
 VI1PR0602CA0014.eurprd06.prod.outlook.com (2603:10a6:800:bc::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Sun, 18 Jul 2021 21:46:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a980c99-aa3a-4be9-3adb-08d94a35758d
X-MS-TrafficTypeDiagnostic: VE1PR04MB7325:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB7325F3D03DEB3CD1BCFE41FEE0E09@VE1PR04MB7325.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1107;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1OW94HhHB5G7ZqRvkbh2TO26uVWxauff9tKSvN/Pmx340utmMFz3JEL18Er1R1QBsQ4H4pLNmb+YLd8zzB7QWhKeBePYU+49bxl0wWl0Zv8BGjbmqtvtD+eGgXnysY6CAyCbghf8XeLcn73d+4IlP9Kq2wRbsU2uKtwTadk7HRdZOLT+S6fLoLMpWu6GlHkQbSR0AlUSbmqLR405xoODXHNlVohC7YIItHMfwMLm8pF9Ov06/yrHCdPEYeKKsflkdjU/0KBekrRztYyP3t4FB4EuHwXQFMK0qE9BOlbAprSC5bDYz2pV6d585s/GHAbkBSAjYO1tK62D7GNU7kMDIfbxRFTJ3dSrtscBM+zdPZs4RaLmNWBYYQgOOiz4gqkPpNUo5t6css/mtTvgxOi4kAXnwvFDTHQku6jLLAesgtHbuzAm14ttjAZt5ewtWz4FWa2LkukzDotqoilFIG3zP/PaojVNmVUaCIbrstPstpo0HAUeZgoK6mQfibeLJjnQ96juKHfkpgw70k4wemKEV8hhwaTPNAU9RC1ie0t4e8TnKEAuOFUuheJMdRvTHAc72t0Gy6W7I7I2E0SIiA/pqlUx3KCyTFLBtAFVsfuEr7lddZkT20eHUXyViBw2bl3nFuWyBuPO3eSgvnkTzECGDCm10MPczOaBCZT5g9B6NzdTV5SHJZl5oFbyhugdfYjfpjK3Bn2GCiCZ4a5m5w6kqQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(366004)(39850400004)(346002)(6666004)(110136005)(8936002)(6506007)(8676002)(86362001)(54906003)(186003)(26005)(66946007)(66556008)(83380400001)(66476007)(52116002)(2906002)(1076003)(316002)(7416002)(5660300002)(478600001)(36756003)(6512007)(6486002)(44832011)(4326008)(956004)(38350700002)(2616005)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NP6ZE38OYZegtyQfJhJzCss7jLWHy5s728PxCWu2CFmgaaWFBL/Tlmvw/SHT?=
 =?us-ascii?Q?r0YfCJrp2cJ5CNZM54HfAdjIxcvcjyyuWeKhJ4YgAVxeJK8c8qohcV2UYdU3?=
 =?us-ascii?Q?7f9lBq+dkzRUx8ulan0iXqGSHTbKzzIu2pPTP++vpLgxhKLr8kdwS0uaab4C?=
 =?us-ascii?Q?FCEIWyBtaCX7gjy7CkWGT/0e2LEds4NL1HpZ/Ie3UbKkx1/f+Yr99H5bsF45?=
 =?us-ascii?Q?QSQo4Yq48YM3EdadraYEJ3lkfe1JWFYcfP2uI+XZbFNfCvJrZyM5LNZotXYW?=
 =?us-ascii?Q?CS6EAXhGwH2zfKCjGiAG7ahey33jig/5lh+ETPjvtjg3QcaTuZlwayTSrv0x?=
 =?us-ascii?Q?5xZWjZyGhLG0r2gupJlAmnnpRNA0IzZCZrN5KIW2VZQYEPs2nOvlGMXGCfOy?=
 =?us-ascii?Q?5pffkfbtveHeteE/yw5fmfERYcFcx34m9STlLNtphcg1I+hvo+dN9MgSmdJM?=
 =?us-ascii?Q?5gSBQXzbqUPjxxwaDkNhPf10DVKwJbaDTzX1aKkfHrYBk//nYm6TmTSNdWzP?=
 =?us-ascii?Q?GhH2M5xIIOziMaVoIkalEpH8Qk/i9jd7QtqqMEzqjS/1swK5nORZhyx8ROlo?=
 =?us-ascii?Q?X/19LSGO/xv2X5F2Kk2fFXeubn4BzkjaarFK8Wyb7+wWJdsMsA90V6HGPmVF?=
 =?us-ascii?Q?OkcSGanprMUD0HEeE5kf32tTh3E3u9DBK03GjVt2b4S7stAk/k+lIiyt67KN?=
 =?us-ascii?Q?iTp8HzzRK61Ziy39adbbBjI65R/TFvO+76KVRfDohFdaRbkwrB1Odg08u2So?=
 =?us-ascii?Q?RXXxlMCuyWNZWEANFvDp65wfHdB2TpRLYtKRTB6hgiuyS2PRQAuC+A5x+HEg?=
 =?us-ascii?Q?VGwVbYgEVeexDOIgWppfsG8sBtzjrzQtCtcEo1kXBH/wgXE8rmLEZTgBf4qi?=
 =?us-ascii?Q?8gS68xg4iARlMUNVGgaOTDQz+yRa7ISUP1wAxB7PZcQzxSyNlyNDomfU3PZh?=
 =?us-ascii?Q?/fiBGIKWHjnei7+F7NLaOE7consg1XUCX1QfXDulja7deFzB7tSNTDlVmfZi?=
 =?us-ascii?Q?o+yeBRnc+221BZ3PU9q4rxTUB+qYZAZT5R2rloSX0N7L0toy1GHbQ9V8NK1h?=
 =?us-ascii?Q?xRtccJUxGX+QKfeQ95eMJGLVQVZn+ASSFLdhGqw1SK4BQICFXLCY/0dVckDp?=
 =?us-ascii?Q?2T7tu2wwUhGzqTsU2G55v+fZtMU6wAecPrXbKxUZ0Ux2Dc5AxFBB0nqBCgIr?=
 =?us-ascii?Q?pyjJdL+Fy/d7W2sA2Q2SWhzZ7NHPDh/cIeEgE1APgcLo0uOfxJdea8uIvceN?=
 =?us-ascii?Q?Sz/OYKSuhwKb1Vxs35asyKbhWq6yH0A0jAAvmMms5KtQ2LcjIj7xvPIXSj7v?=
 =?us-ascii?Q?qWAvNTRT9bIPFdV0VNIL1JhC?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a980c99-aa3a-4be9-3adb-08d94a35758d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2021 21:46:11.7316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 16x0AjtTWLWXJ5xiDMuMw2t+RCJnDbVHYpbEFIsYlHBqziRBgnOB27PsgRK6reD4cJA+99LXBhUNJemwNPKPZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7325
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Ido Schimmel <idosch@idosch.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 02/15] net: dpaa2-switch: refactor
	prechangeupper sanity checks
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

Make more room for some extra code in the NETDEV_PRECHANGEUPPER handler
by moving what already exists into a dedicated function.

Cc: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
v2->v3: patch is new
v3->v4: fix build error (s/dev/netdev/)

 .../ethernet/freescale/dpaa2/dpaa2-switch.c   | 37 +++++++++++++------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
index 62d322ebf1f2..23798feb40b2 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c
@@ -2030,6 +2030,28 @@ static int dpaa2_switch_prevent_bridging_with_8021q_upper(struct net_device *net
 	return 0;
 }
 
+static int
+dpaa2_switch_prechangeupper_sanity_checks(struct net_device *netdev,
+					  struct net_device *upper_dev,
+					  struct netlink_ext_ack *extack)
+{
+	int err;
+
+	if (!br_vlan_enabled(upper_dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Cannot join a VLAN-unaware bridge");
+		return -EOPNOTSUPP;
+	}
+
+	err = dpaa2_switch_prevent_bridging_with_8021q_upper(netdev);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Cannot join a bridge while VLAN uppers are present");
+		return 0;
+	}
+
+	return 0;
+}
+
 static int dpaa2_switch_port_netdevice_event(struct notifier_block *nb,
 					     unsigned long event, void *ptr)
 {
@@ -2050,18 +2072,11 @@ static int dpaa2_switch_port_netdevice_event(struct notifier_block *nb,
 		if (!netif_is_bridge_master(upper_dev))
 			break;
 
-		if (!br_vlan_enabled(upper_dev)) {
-			NL_SET_ERR_MSG_MOD(extack, "Cannot join a VLAN-unaware bridge");
-			err = -EOPNOTSUPP;
-			goto out;
-		}
-
-		err = dpaa2_switch_prevent_bridging_with_8021q_upper(netdev);
-		if (err) {
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Cannot join a bridge while VLAN uppers are present");
+		err = dpaa2_switch_prechangeupper_sanity_checks(netdev,
+								upper_dev,
+								extack);
+		if (err)
 			goto out;
-		}
 
 		break;
 	case NETDEV_CHANGEUPPER:
-- 
2.25.1


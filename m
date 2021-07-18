Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E563CCB10
	for <lists.bridge@lfdr.de>; Sun, 18 Jul 2021 23:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F6A83848;
	Sun, 18 Jul 2021 21:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyzmA6FIHEwq; Sun, 18 Jul 2021 21:46:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6644C837EC;
	Sun, 18 Jul 2021 21:46:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 389EAC0010;
	Sun, 18 Jul 2021 21:46:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19A08C000E
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07449837A1
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8WsY2mODkVpr for <bridge@lists.linux-foundation.org>;
 Sun, 18 Jul 2021 21:46:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on0606.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe1f::606])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56B0F8376D
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 21:46:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iArn0BMmbIKRqVt1ERRVORxKPqYyc1Yw8h2qRE/qACkXvnYdA40+TBkoSRBOuA1TarexxPs0OqrwJYOUKNawFg6KAtNk3grA9HJbYI2fQ/bbZqWAlhwX0IlZcWQQsNjct8LdlykQxwyafuXRPS5Kuvgp7gb+emhUTIaanpQ6TQFrdYoncWE0RyeeiTJMZxPl/zp7/m2VNgqBoZ50m3vU04+dghWUciHK6TpCz9+sq9M8wL3QfyC4WGGMeyhL0kFgZtomMEqDnQox9qNY6k487Tqnlt2GJZJ9WWmV5Q5asKc6Kp82IWf1yO+i6dJoUxSPaJ0TxPjh/ruRnUJA/ctbmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qocFjnfds/Q3esaj8xNKnBZ3Tz/PgB7Ko5kKVsqifIo=;
 b=R/+VVR8km7yBoaFSRDg3oHXZxszAf8qoARbZgTrcr3Rsvpy+9KHmYy6vv1eSjP9k8w+yPEk9W+/XbZDmXk5P6oCZUtvwyCkxPp9+3fSK4S1ixQ7I64MUjZsbbEyLG2NU87Aoo0CQuTOQ6iWl+F0PC/Nv9fiVwCKt8s9aHJUfyG0n0RmARSEymnt8RF5LvdoWGWiOdRzcnPfB8NgwAExlLD3R9l00Mxa+kHOOuvkJqR54vvDwFINUquP3OSidFHZ2kq+7YMdFfu2lu+sioExniPClReQilUy9aOTmvOCZzSE39ZErLZcWhLlCVCjjxusFI1MJTzqqKMnXbFrEP521FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qocFjnfds/Q3esaj8xNKnBZ3Tz/PgB7Ko5kKVsqifIo=;
 b=mVK+uhJ7oQr7QJ1cqJj2JVgEBB3tp85sUvGAYC21syOlqmuDjK4bjLFlsDqavpt9sial0QQ3fDzkti9uKyjOKcRoft1EqPkzAaf7vmFW6lCayQg4a3hSu3emia9vzy/B3uYukWBNFONs4O+aOkSYXaGhoE3xUUlnMk1pkSoAz1o=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VE1PR04MB7325.eurprd04.prod.outlook.com (2603:10a6:800:1af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Sun, 18 Jul
 2021 21:46:14 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0%2]) with mapi id 15.20.4331.032; Sun, 18 Jul 2021
 21:46:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Mon, 19 Jul 2021 00:44:24 +0300
Message-Id: <20210718214434.3938850-6-vladimir.oltean@nxp.com>
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
 Transport; Sun, 18 Jul 2021 21:46:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 537c6f92-4954-4d94-2c5f-08d94a357713
X-MS-TrafficTypeDiagnostic: VE1PR04MB7325:
X-Microsoft-Antispam-PRVS: <VE1PR04MB73257FFDEC96672552F66FBBE0E09@VE1PR04MB7325.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UZB3/JcHgLiFk6bSHgNutVWE3ZyOEv33Yi2luGhZY6muIxi9PiD67lnlcft43bCKdHjnhOzjNOGPwOEot0FONclyQYIf6eJR1uqZV6+qZHHDKysoWeNqfnW/D24lS7hBWHfb3WRn10GB3Ov0o9XMKiswxz06R+QkB5BSJo97nXd+VcKNNjF9tQUZxN0wFKbjNduA8SHE5cTsmVAMrI2Yqu4k4qR2FXwgaagdUGIxQjuAsfFnl5q4yAEj0Er38v+rh6JE7zmlFrDcfJd++C0KLPZLRkfX1bUDQZy7pcMlcIcdEP2oWaVC5O5ckEn00v8LflFbCloGXuhMtntE52ZefM2R2DI/kr+agbJ5yw8mS6o4IUz0e8R/6gEdn+r3nP2XI2B2nbT68sMJ3MSDiGdEJ+okcuCw9mTlMCD+tbWwRkewi97HgK9G4vb5gvrYd8ds3sEZUSmJMBKylQ2NyKP8Kdj2YnM9tjmpvbDQVsU/hplOJMgTh0ooK7g91b+hWQ/6V5nvqwec5hwl3eG3P9guJ7Cg9blRwwRRMj5rF2AG54jCgWedSjYGfb5dB3eMJSvuY7fLNjghCalcqP1x2N7ZWBQpKQl5PT3XQqhmjUGKg8849NcuxyohO/GD61u8+LuqordjKMpkqnIhyrBSNKCTTn+wUX3JkVw1/ejPo/TpLh83WL4oX1thB3+9D5GfdD/LV7eHw2u7zRm/OuI6OXWYrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(366004)(39850400004)(346002)(6666004)(110136005)(8936002)(6506007)(8676002)(86362001)(54906003)(186003)(26005)(66946007)(66556008)(83380400001)(66476007)(52116002)(2906002)(1076003)(316002)(7416002)(5660300002)(478600001)(36756003)(6512007)(6486002)(44832011)(4326008)(956004)(38350700002)(2616005)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jwr70bFt0dIZziZXg7lAjZPr46znraftUVPwEpeC/hA5930NIbPl1PRL77L1?=
 =?us-ascii?Q?N/7DAC/9IW87q9Re1ZKp5lWWJBkUX3FKxeZD8jpcwHm3+Wqu+L10qZt41dJj?=
 =?us-ascii?Q?sMSO4Jl/YY3yZrEi4RYIx3j3DzZsvYVMjivcI/O+1S+H1R8vAexljqAJngVu?=
 =?us-ascii?Q?Pn2MFmEn8iXqqd5//LV95kwmSXSrL1zJCMyC0hvoawfCA1uxbMCQuVTowbDE?=
 =?us-ascii?Q?ApshJ1gyIEUb14UHiPXliDCg8yun4b/4nFdMtmaxZJ8eBVVPQx6tunWMbrs8?=
 =?us-ascii?Q?WD9hOn9aGdXGCKLLxxEr3riVQnHWxseUF2w1bnZjKxJuvWyUbwVN+JrBPmR2?=
 =?us-ascii?Q?EnEXdDn0ft3s9ot6NRCclgVMM+Z4dKhkhPUhLAx1hCYn70AYiERNv+2BpJRf?=
 =?us-ascii?Q?DtniaMpIIbK2ZsLHKCexwlYgP94v2r8sHYCnhI1BwhHTZEsuUhQIUjPSLuIr?=
 =?us-ascii?Q?MKaEti0Fc56YUqFROgeMR/5iyhhkxatJI1excbNmW6hsFSvMQQhb0FBSfXRA?=
 =?us-ascii?Q?aBrE5dRMZwKUtigIcVpDthLaw/lvhQEC4jynP370MGRoU5+a1XPGaEsoHSX2?=
 =?us-ascii?Q?TobRe6/ERLfhggdYsoly43elsSORpIJ9SiUpMWQc7K24T7PpOsJ6H5c6Y2Iq?=
 =?us-ascii?Q?RJjJl9kIIhbzd6vjY/9Qlk7liFDIlq41p8CsuhrSAGsMO1wcoPDQc8Gj3i4E?=
 =?us-ascii?Q?P6txGLjdr2gxjb4U2VhkEsgmtGFNQo8o/O7APb/bIlTR3MYqy6ZDzMd40Djy?=
 =?us-ascii?Q?uj87emOcs33JIWq1akAEMH5FHvjGuLcb8C8HMrmj4RIYD9wI/0mLftq50UCj?=
 =?us-ascii?Q?GsY3NG2pPW8kmI2xax2IYYaDh2B7bxq8UQcx3FxljOX7Kx0ExgrOArwZxYNs?=
 =?us-ascii?Q?jvTPuVeizZcX1kAF+ovuOBdbXNd7lens0ekhBPu0U3z45nwujIJ4uM726/pB?=
 =?us-ascii?Q?NH1huQKnsUcYBG68myJepn1xuc80T2V1+0bgBYL6FuWhXxuM1cN1MKtMFcDt?=
 =?us-ascii?Q?QckGPHFcoLlGjSFZsMSS/XhI3T6ma2aZD2u7EUtm1YXCKKnQxU1d7SukWOHJ?=
 =?us-ascii?Q?cnyGw6LDzV25iRwyKSv6KIagRBOMPNM2js9Ol61VdbXvuje9+awX75xq7v0I?=
 =?us-ascii?Q?ZsIJqeKHYgwNcB5GFs3FCtazMRLWBmxVsxK+cjZs8a48JXFvuDP/OnNnfYgm?=
 =?us-ascii?Q?bRd3CC9T/Lp7maS47jd/jg0rSceHmJ7UXCqBneG9bdPlH5qwtumSXUlgvN2D?=
 =?us-ascii?Q?S16mk1yG4Cru3RqzSvQoci0guVTK99qOSAB93mzwEyB6pYDyh0japmFoiYj7?=
 =?us-ascii?Q?Yod33/MhzCrrptuLd58gL5Ni?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 537c6f92-4954-4d94-2c5f-08d94a357713
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2021 21:46:14.2442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fOefMXJs9jZpgdwkHGbjn9n8tkILJeDMnYHb+YcrvPKDFJKepjfCEVEi45R089yDxywukXP406pRxnL7dFGx+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7325
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 Vadym Kochan <vkochan@marvell.com>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Taras Chornyi <tchornyi@marvell.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 05/15] net: marvell: prestera: refactor
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

In preparation of adding more code to the NETDEV_PRECHANGEUPPER handler,
move the existing sanity checks into a dedicated function.

Cc: Vadym Kochan <vkochan@marvell.com>
Cc: Taras Chornyi <tchornyi@marvell.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: patch is new
v3->v4: none

 .../ethernet/marvell/prestera/prestera_main.c | 71 ++++++++++++-------
 1 file changed, 44 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_main.c b/drivers/net/ethernet/marvell/prestera/prestera_main.c
index 226f4ff29f6e..1f3c8cd6ced2 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_main.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_main.c
@@ -699,6 +699,45 @@ static bool prestera_lag_master_check(struct net_device *lag_dev,
 	return true;
 }
 
+static int prestera_prechangeupper_sanity_checks(struct net_device *dev,
+						 struct net_device *upper,
+						 struct netdev_notifier_changeupper_info *info,
+						 struct netlink_ext_ack *extack)
+{
+	if (!netif_is_bridge_master(upper) &&
+	    !netif_is_lag_master(upper)) {
+		NL_SET_ERR_MSG_MOD(extack, "Unknown upper device type");
+		return -EINVAL;
+	}
+
+	if (!info->linking)
+		return 0;
+
+	if (netdev_has_any_upper_dev(upper)) {
+		NL_SET_ERR_MSG_MOD(extack, "Upper device is already enslaved");
+		return -EINVAL;
+	}
+
+	if (netif_is_lag_master(upper) &&
+	    !prestera_lag_master_check(upper, info->upper_info, extack))
+		return -EOPNOTSUPP;
+
+	if (netif_is_lag_master(upper) && vlan_uses_dev(dev)) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Master device is a LAG master and port has a VLAN");
+		return -EINVAL;
+	}
+
+	if (netif_is_lag_port(dev) && is_vlan_dev(upper) &&
+	    !netif_is_lag_master(vlan_dev_real_dev(upper))) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Can not put a VLAN on a LAG port");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int prestera_netdev_port_event(struct net_device *lower,
 				      struct net_device *dev,
 				      unsigned long event, void *ptr)
@@ -707,40 +746,18 @@ static int prestera_netdev_port_event(struct net_device *lower,
 	struct prestera_port *port = netdev_priv(dev);
 	struct netlink_ext_ack *extack;
 	struct net_device *upper;
+	int err;
 
 	extack = netdev_notifier_info_to_extack(&info->info);
 	upper = info->upper_dev;
 
 	switch (event) {
 	case NETDEV_PRECHANGEUPPER:
-		if (!netif_is_bridge_master(upper) &&
-		    !netif_is_lag_master(upper)) {
-			NL_SET_ERR_MSG_MOD(extack, "Unknown upper device type");
-			return -EINVAL;
-		}
-
-		if (!info->linking)
-			break;
-
-		if (netdev_has_any_upper_dev(upper)) {
-			NL_SET_ERR_MSG_MOD(extack, "Upper device is already enslaved");
-			return -EINVAL;
-		}
+		err = prestera_prechangeupper_sanity_checks(dev, upper, info,
+							    extack);
+		if (err)
+			return err;
 
-		if (netif_is_lag_master(upper) &&
-		    !prestera_lag_master_check(upper, info->upper_info, extack))
-			return -EOPNOTSUPP;
-		if (netif_is_lag_master(upper) && vlan_uses_dev(dev)) {
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Master device is a LAG master and port has a VLAN");
-			return -EINVAL;
-		}
-		if (netif_is_lag_port(dev) && is_vlan_dev(upper) &&
-		    !netif_is_lag_master(vlan_dev_real_dev(upper))) {
-			NL_SET_ERR_MSG_MOD(extack,
-					   "Can not put a VLAN on a LAG port");
-			return -EINVAL;
-		}
 		break;
 
 	case NETDEV_CHANGEUPPER:
-- 
2.25.1


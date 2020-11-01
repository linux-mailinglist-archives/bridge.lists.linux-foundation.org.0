Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA41C2A1B60
	for <lists.bridge@lfdr.de>; Sun,  1 Nov 2020 01:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A75EA85D08;
	Sun,  1 Nov 2020 00:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_We-ourZIKj; Sun,  1 Nov 2020 00:24:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7051806D9;
	Sun,  1 Nov 2020 00:24:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA6ADC0859;
	Sun,  1 Nov 2020 00:24:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3DE61C0051
 for <bridge@lists.linux-foundation.org>; Sun,  1 Nov 2020 00:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 381B3203E2
 for <bridge@lists.linux-foundation.org>; Sun,  1 Nov 2020 00:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qp00QRbDCDVH for <bridge@lists.linux-foundation.org>;
 Sun,  1 Nov 2020 00:24:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2063.outbound.protection.outlook.com [40.107.20.63])
 by silver.osuosl.org (Postfix) with ESMTPS id 002B220398
 for <bridge@lists.linux-foundation.org>; Sun,  1 Nov 2020 00:24:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2mqczBoHd6V5g1whjq3jpSsug0O4OMMxYd3SQxGVqiu6mXaCiociary+pDopTPQxP8hTxrCKCAxFxIZ5TBKIq8/DZsGrO66652INfqx6E0rX9kezrTnjf7CWUzn64HKhrqrfA3gUh6qIkpjfZbw1N3ugb78vniXgkHYYzRFL7z2fr5B29ORmTgqSoeEtIX+Ke0WFBkvkmHan8ZYkxOsFREn4C7DpefUf3OxqB08JiG3VAbBEbAIt2NrPn9bn5rUF3xesGRKPkmpDGY6wrtSUdlZ5rGyrw7a32vU+cSFRjh6JCIyfms/bXVZwKE27kZNcSkn6HRHKSn+ccbd7T0baQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dl7XzK3Eivke6MpoUHcV1M5dV+lmRkhJvQM3A0MzpJY=;
 b=hOg77zCcae8keWkAw8taAnyfRwV0XUk6Uxs0dvlCP5A/XtiHniCxfsbC01y+fvX7jUeIyXh6cDj3ODDB2TMzqLXIXgxRsMcHdbSlG3D//Vr9NNe37B6Jhq1A9BZzuY3VivrN3dwigeB/6TIQhvYilzjAYMdRen1bXR0e2Gv6GiLU4d4bD4h8NGJqPcTI08vQEyjeW8VI/JdkzezXNoRhhTqO1n5U/tbsmbvStQyXjPZnmroL3GrNN1/AmfK1BBYY2sPcMRRD3fSIVHytBs/7vuC/xXt+ppVciUYUdpNvuUlj2vpo9DHKQv6sUm+4AS62xEbvBmYw8NCoxmoFGYvlvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dl7XzK3Eivke6MpoUHcV1M5dV+lmRkhJvQM3A0MzpJY=;
 b=QqLKKRsVZnyn6F4utnUErUlsZLrYSzJw85tqdFzeYy7aS0g7sgByKiFki3R0JnaRFDP37qUhicxmAuiPqXlh+E9Hs7Hg1wD/xVTZPQSe+Ed+srsGdlVgPYDsnbLu16hZdZZpwfqV5Lcpoc6FZ0LBJhAc763oeGHfW9g8rAbxQbA=
Authentication-Results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR0401MB2685.eurprd04.prod.outlook.com (2603:10a6:800:58::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sun, 1 Nov
 2020 00:08:57 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d%3]) with mapi id 15.20.3499.029; Sun, 1 Nov 2020
 00:08:57 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sun,  1 Nov 2020 02:08:45 +0200
Message-Id: <20201101000845.190009-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [188.25.2.177]
X-ClientProxiedBy: AM3PR07CA0089.eurprd07.prod.outlook.com
 (2603:10a6:207:6::23) To VI1PR04MB5696.eurprd04.prod.outlook.com
 (2603:10a6:803:e7::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (188.25.2.177) by
 AM3PR07CA0089.eurprd07.prod.outlook.com (2603:10a6:207:6::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.10 via Frontend Transport; Sun, 1 Nov 2020 00:08:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 86d1ca41-7a56-470e-08ba-08d87dfa53da
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2685:
X-Microsoft-Antispam-PRVS: <VI1PR0401MB268505D1E8989C60160B21D4E0130@VI1PR0401MB2685.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:612;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZiN1alLy6ATV76vm9v2fvjg8jNPHMnbdJcfQR8eMdmuE5mIzi6MO7fOyQ5kUGSX15ANvdhRc7pWpWaE67BrgBsKa1x7rhkdfUHsqLqWNqJ6tzfCVMZKaTLxYfP2WLsv4xvMpHZtriro8mDplYcWWPgLkeIVqnawNNy0qESvG0i6hjrJ0TwU6vNr3dsNzhKZqrzDGSIoIxRK1oxnLk+S+YY9DHy+KgrvO9IU4BXg5VoaRqZGdo2ZOMiMpsmNckX5vsTOO8Z7uH+HRev6D1UhGSUp3JvPGtMoNuHZzLmmu3lqhmx1N8f/53iBjGLTLQCXyJ36V8i7DwxKhDC2NnvxGR+xMhF87Bpw/pg+6w8m3O9eVKCBKyQOEhhxQ8+l7diGh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5696.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(39850400004)(346002)(396003)(66556008)(66574015)(316002)(4744005)(1076003)(66476007)(66946007)(52116002)(6486002)(36756003)(110136005)(83380400001)(6512007)(5660300002)(86362001)(478600001)(8936002)(186003)(16526019)(6506007)(2906002)(26005)(956004)(4326008)(69590400008)(2616005)(44832011)(6666004)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: td75BwOr4awAFIrU0L9DI3pORvB4NapwdddVu+SyW7M8xdhuOShVqq+lw0TugJxcg028yU9w6W66OvFUzSPgtcMnH+FdiUx9MF4bSWY/OlX6mLtzvkGLbXmOBVem6+SXvakZ9jO7GTZoB2Yv7PKC3d9aKOo867uEcV8h0ZCPKToMgH4wd52b87ViGSWsJqv7gEj/qohT32QDRkXEXDodrW0i0BJWgLJzpp7x6/IhnMN/xxCaipqIAfOX8yFU0S7h5j1y9Thn3vZR2076wF2tAXcFYFQBa+1IXpWgjJmrbnIHtNeOBgUpVUUm+ypPdyv1QqpsGxOxPB7xwfs9a2fPcC/RwSlplE4tYOaj11I+yBBlrOCaAcldYG4AbjlMKL3x8e7zF+y+VUQ7sGqwE8Otr0e4DtZofGNfnEsX7r3dfpz0Z9Ysx/GrFv6pcqypfgvtfVWKI2X7yHzJPslYiuhBd0W7Dz1Zma2B77UUQoJ8jNwFH2kJ6R+G6+BuvuOkKSPI4BRwXwJCzKFSzMXxNTXNNgym54Rd/gT5FMwH8v4IGV+l/XTVaKjSYHhZE2CJDiUd7rB77Qnd9xwbDkpNcRqXNnb42V9E36GQlCnVQTMWVlbw/fX/p2uJl0SY5AYbUhilYG4sG6G8VlMKNAold6v/PA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86d1ca41-7a56-470e-08ba-08d87dfa53da
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5696.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2020 00:08:57.7747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Tt5SJ7XSnOcN6DpyRP1kUUmGp4pB+QQwEhuvzAZpCaom6uoBuyT59pJK39EoL8X+/uJx3NVuZKT4ehxn3nzTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2685
Cc: kernel test robot <lkp@intel.com>
Subject: [Bridge] [PATCH net-next] net: bridge: mcast: fix stub definition
	of br_multicast_querier_exists
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

The commit cited below has changed only the functional prototype of
br_multicast_querier_exists, but forgot to do that for the stub
prototype (the one where CONFIG_BRIDGE_IGMP_SNOOPING is disabled).

Fixes: 955062b03fa6 ("net: bridge: mcast: add support for raw L2 multicast groups")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/bridge/br_private.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 4c691c371884..891f3b05ffa4 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1013,7 +1013,8 @@ static inline bool br_multicast_is_router(struct net_bridge *br)
 }
 
 static inline bool br_multicast_querier_exists(struct net_bridge *br,
-					       struct ethhdr *eth)
+					       struct ethhdr *eth,
+					       const struct net_bridge_mdb_entry *mdb)
 {
 	return false;
 }
-- 
2.25.1


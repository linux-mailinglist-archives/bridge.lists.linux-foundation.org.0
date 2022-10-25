Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070AA60C943
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 12:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 889E440412;
	Tue, 25 Oct 2022 10:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 889E440412
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=QOxqTHHE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z7-mIBWH7GmP; Tue, 25 Oct 2022 10:02:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0590140432;
	Tue, 25 Oct 2022 10:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0590140432
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD334C0033;
	Tue, 25 Oct 2022 10:02:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87454C002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5201440432
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5201440432
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NeiLgLOBQeU9 for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 10:02:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EC9240423
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2084.outbound.protection.outlook.com [40.107.244.84])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EC9240423
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 10:02:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=caKOlIuyGxs7hxyBchYHSh9lqsklTXxcYDNjs5oApiI6gNzbbZqQa8ih4+WO3/J6Gb9OGjpjRaWWHfxFfwscapB7nF37Byg5hQmgRn9Q/z7vV9Pojyk6jT0yLZqopXG/4fhBZEn3yjbcM37Um76+fk0GtYic/s7u9/4G3xehH/fLtG6DOfN+gmeeOoAEuyR4fTy4/b1IF442YAMqicqa1HT+slqHHZmGyi8IC58tHtTcbTNxH5X05NE8HXz+uU9+YKEE0RdyQ6KU20tE1iH4yWnUIwUkUJVKFeGnjIKpRsDOUbHr7o5kmB6yeQ9McT/KyUz9zUB2QdUvadpA5W+gSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsSX65Hc9NPlM2RQ9207KWt9PjGr09N1IFejciEgLQ4=;
 b=VG/9eM5V/T2248vH07M2jvg+iybxdXMS4MOp+OgyFv5OTe2+5pDkdmdMN1a4q+oF9jceFOmGFWL9gofDEzeIlqujY01R2N/WKomyw2apDES9m9HXPx1LW+axr6S8ANn6td2iRiyqf8rDU5EhTVEXbUzT3vIU09+iWnTJaqEA5sD2CGV17wOtrZFZ6AkJ/eRZBHTPfDXK0FDE8zhD1gvoAc20re42nyM4RK2W/d9SLFxl1ud1rmfkI/6MNad//Oa34Y9p2AX5hxHLttbDkP/mIEEca49goJzEuxjVX+hjOreyvSyPkSVYPj5QGRCQ7NJv/sbD9GKejjuf0HUQt1xEtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsSX65Hc9NPlM2RQ9207KWt9PjGr09N1IFejciEgLQ4=;
 b=QOxqTHHEt1pS8/pu0lHNxUs9UOEtXYGYZKteyEiqQx1nv1b17VDK0VlQQiGacWKq4DdVIJdt4hW3dbg1sb/7coRgQAUOnQ1xbKccFhHlAWBGbP/dwlOrayqMUSKVmgJIismP/jFPYMU9ZJBk9WtbxjDu7mnXTDsFYtZMVsm3EpyuoH4zxPLQ0C8EvyHUlFoao01T9sYsDQugwFjSfHvxSjwsDW7Vl/GMQfjGzgZQxBcSklY8IHs2odB6A3EIhRlorsh3DWmH7i7G+P2hf3mRGe13Pfgru1mwHvaxAtAwOM4e8YfTwI2XmearIptgaaN8Oi/QlyF8DaZzhmklKkkeVQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by MN2PR12MB4270.namprd12.prod.outlook.com (2603:10b6:208:1d9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 25 Oct
 2022 10:02:05 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%7]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 10:02:05 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Tue, 25 Oct 2022 13:00:19 +0300
Message-Id: <20221025100024.1287157-12-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025100024.1287157-1-idosch@nvidia.com>
References: <20221025100024.1287157-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0802CA0030.eurprd08.prod.outlook.com
 (2603:10a6:800:a9::16) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|MN2PR12MB4270:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f4c3b7d-d586-4a40-8536-08dab66ff84c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZfeQLXJSYzxKnavI8otPhUp5ySfaUARIG7fzgmpqQdFbMap75eu9SXUYFhqR2fXwr9Lc2VAYm57ZpCHUes+V65oiWE+JNC5VVYhAWPXjqEd89nrOaA06JCq7kbz5bE1K/11rs3kMpEWmr9LGTtUnrVc8WrOU17azpCplcrWZwDyC0CbG9BPei8UGweByPzdTfLNy8213ZzvgUDYp8ePcfxd1ykgL6wkx+FjNrdPCheTxCSS5sgMUmc/25XwLAIL2UaBA59ZL2QCRC/oszdkdI2PTrszXQhmgfaGbFgXbh8gdt2K/coDVQ/5Hef/f7tzltbXzR/1vK5i4bbxaQ8hgQ3kXsA/gkKcakKM7eOO+2xG98eZ1OicJx7B/AW97gev90yx6D/TkQ30CvmFi2UNFpMzk5TouwAhn7L7xi97IgnhhIdhKNGHC6LV2IOPj1nU2MBAkfZC1sxIl+orxRS2FO0rWhx3mH2IX5LuNCJmDIHp8QD6EK5ImDiN3cC8RZxkgj/71pUr+70rkmgo09ZBi1MD4Z86xOhP71KCQSJxwuKLAhp9xJ4Er6zQSN2ICVUC7qyPiOD04mZdD1JajPU/Bz3ICWAfzVzt82rsESH9XQdMyXpwdZovkCJkT2wP8bwgxG5szRP2zBzry9VPGmzoRpMNZZRrzROV3cJYj2jncb/81mi8/DQHhDCl9j01fDPb7FhXTJViuFlR8cVJaFvGOKA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199015)(36756003)(5660300002)(66476007)(66556008)(66946007)(7416002)(38100700002)(8936002)(83380400001)(86362001)(316002)(186003)(2616005)(1076003)(26005)(6512007)(6486002)(478600001)(2906002)(8676002)(41300700001)(4326008)(6506007)(6666004)(107886003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z+3CyCmkOc/BgZ6Uitp+8D3V0zpne/D0QTi2oBYmIVbiZh7ou6dCqfcAC7Vj?=
 =?us-ascii?Q?8znmvbhzX8TKOEDaz2TzMLu/HvkB89P8sLSKkkOJ6JAu5C0M1pboEw6ZTtah?=
 =?us-ascii?Q?ATk+8f+RtvP/ljnRbsnENkajxzs5swEYueA8ufOKwBRLHVgAgMPNVd8q/D93?=
 =?us-ascii?Q?16EoAHgIseuRETrJIJ9o1sUgvpwnD+rSSuN2boc138lEv7l2lTGn5LDkQ03s?=
 =?us-ascii?Q?jJY3lNpKvX8BxFu+B39DTOwa9zTJEI5KyTw+ivaGUGMn7cKSTja4zdj2dUgC?=
 =?us-ascii?Q?68+7zlVJ4That3fXmxIsV2eY3pXBT58gyXt8ziC24UjabDPQwy0klVpSHZgF?=
 =?us-ascii?Q?Oc3oPszaL6b0mfw+18Rpqs42tcyefsAGhxoSJ6W61BMsVX+AdxiWrqEiQcpe?=
 =?us-ascii?Q?uv387RCXjibdTeNtd6txCqXwcO8ZGpE5JpO9M/KdPusysLKiBVkVxFeabXsr?=
 =?us-ascii?Q?xGam41E0JmhzAldQhNA16ARokOmY4pjyMqntRNh3gMUxNoDKbGCgJKgcF+9h?=
 =?us-ascii?Q?pQa20P9m4fwK8Q+FplMBhopcFK+iqdJkFol1J2mT9yjbTl99UmBqzqtQZuA+?=
 =?us-ascii?Q?PS30Jwns77QUtR3SEO3a0Y4LQzv0+2x8OAO4fvePwYXSFKWiAXQ9rj3R7jd5?=
 =?us-ascii?Q?+yg0sDCaR9q2X6gGQ1G1iXAn6ZiAwKUzTIewCrQw/X5MEMLn9C0Or6heducW?=
 =?us-ascii?Q?TWY+eI9JrSeWZwRoNcmUMobOzb68D9hhi3On0At+PvJ2vi/8C5LpNIvU92dT?=
 =?us-ascii?Q?AjtvvSxM/W+/sXVDQqwzM6fxXvACyw6EOX8/lcPKYdUEgQKEyGkQzhNhu1gr?=
 =?us-ascii?Q?kxvdLutn1VfdCxv1BbZRpTiPrk0fd0TVpdcrWnjnumZicsZtwCiqbEVNc1ky?=
 =?us-ascii?Q?6nyO66dlWHwtpD1m7vHAJ0+iovbK2rrg4bVEE596k3Dk6kM62D86aBkzpwyF?=
 =?us-ascii?Q?7jXdTp7nVexXqIAZSnEWvzWng6SCtPcGRco18SfD/EvBKLJhDVopKUPe1iQM?=
 =?us-ascii?Q?yBuTklbzx4ZsGcR3q91mc7JFlI7phXMgKyBDe21Ds0bt/HkUy7GjZv2w21rp?=
 =?us-ascii?Q?xENUx85+o3fpleobv7qffGIqhnKBA2XFkaovg64HhSOUKntMIyyCEIjEu3wJ?=
 =?us-ascii?Q?orqH/JrDqBQylwGuGSHR7iLikYJVZcoxLC4IajflUXBK3BiTTcf8ZdPGFSTk?=
 =?us-ascii?Q?GV20rEpDXWOEqNWGqpPgSWZxaOY5cDs2eKO7ZRfiy/o72ygsMSa81OjSoujq?=
 =?us-ascii?Q?0cJoNc9iOKQTxV4V6krfPZC+gOUDHX+Ym1mF85SqS4pwUdgSLQZR7r2BD3KG?=
 =?us-ascii?Q?S3G9KEWgO+4K+wX60w98sFBS4FuDSBd4/WjtJbOP9Bom/dP2G2IeiLY4/FYC?=
 =?us-ascii?Q?l8duBK7HQNSon5L4y1MkrqyBO0N9aNA79O94rv2nTWttmr+wYpONBeyO5UKq?=
 =?us-ascii?Q?JUOpgKRp1mAQK5HRlfG1t2GWbFEpyQpCnsjIVWGwYeeTpobb5RBn+LcLK0oV?=
 =?us-ascii?Q?1fLvG6kOROwzC+l+HmfIbf2hx5hHoXJsAutrsbx7G4+fOoB6baORJR/dSjCc?=
 =?us-ascii?Q?B0kZnkTettaNxNWmsPxI6t8LssrOtjwvzQ+XIGfn?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f4c3b7d-d586-4a40-8536-08dab66ff84c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 10:02:05.2235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3eT2QWdcKoxNfgjdOc+X8B/ZrNuTu4kYI3BeHB8Ak1c6hBLMApymcCF4xXhNezGukU8faeMCjn+oAW3OaG4s0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4270
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 razor@blackwall.org, roopa@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 vladimir.oltean@nxp.com, edumazet@google.com, mlxsw@nvidia.com,
 jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 11/16] mlxsw: spectrum_switchdev: Use
	extack in bridge port flag validation
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

Propagate extack to mlxsw_sp_port_attr_br_pre_flags_set() in order to
communicate error messages related to bridge port flag validation.

Example:

 # bridge link set dev swp1 locked on
 Error: mlxsw_spectrum: Unsupported bridge port flag.

More error messages will be added in subsequent patches.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../net/ethernet/mellanox/mlxsw/spectrum_switchdev.c   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
index f336be77019f..db149af7c888 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c
@@ -782,10 +782,13 @@ mlxsw_sp_bridge_port_learning_set(struct mlxsw_sp_port *mlxsw_sp_port,
 
 static int
 mlxsw_sp_port_attr_br_pre_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
-				    struct switchdev_brport_flags flags)
+				    struct switchdev_brport_flags flags,
+				    struct netlink_ext_ack *extack)
 {
-	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD)) {
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported bridge port flag");
 		return -EINVAL;
+	}
 
 	return 0;
 }
@@ -1186,7 +1189,8 @@ static int mlxsw_sp_port_attr_set(struct net_device *dev, const void *ctx,
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_pre_flags_set(mlxsw_sp_port,
-							  attr->u.brport_flags);
+							  attr->u.brport_flags,
+							  extack);
 		break;
 	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
 		err = mlxsw_sp_port_attr_br_flags_set(mlxsw_sp_port,
-- 
2.37.3


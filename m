Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 571AB68AB87
	for <lists.bridge@lfdr.de>; Sat,  4 Feb 2023 18:12:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5ABA41C9F;
	Sat,  4 Feb 2023 17:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5ABA41C9F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=oP3b3nQS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gaf6mgKxypnk; Sat,  4 Feb 2023 17:12:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BDE7F41C7E;
	Sat,  4 Feb 2023 17:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDE7F41C7E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90FC0C0078;
	Sat,  4 Feb 2023 17:12:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86800C002B
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60162820AE
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:12:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60162820AE
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=oP3b3nQS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doBlxv-F9jMY for <bridge@lists.linux-foundation.org>;
 Sat,  4 Feb 2023 17:12:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B66C8209C
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2062e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7ea9::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B66C8209C
 for <bridge@lists.linux-foundation.org>; Sat,  4 Feb 2023 17:12:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UxmL8BVH1d4+zA5mwiAfCnJCcIeTgKI6vx21rT2ovNfhHmvWBgQi3pNpWHKTMSg4+7pZ/Ou8FC0EYbIy2lun/8kgvZ/jBwlJlA3BqrLvxCdkqR9Pai5tH0H49/HjcBuCq4y3rQxf99/J3iAQjQgRpjaBgP/Vs6xHklgqffpt3lIc8h/GQhr/+tVOEiisK/qp2c2fLKuOvWfluB5fNfPtGGl9EabO0Ox/WN1wfFjSokBlBhHn1s18py8plGRl0b95/Jj57mUgryOj97Tt5EtPKfoskwyNnhQaS583EWdvsqNaHch4R3TWhJpaidJAY0HBmtOzWL2Z3mdq+Apit4GAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+wZRvEiTCl/aBueUPQj+epY02aK1I0070LJ8c5Z/BAg=;
 b=eeDwZWoaU2BTyvz4+P6B2IH5pgQXOA16tLq7w06syhbzNl0H0tWEfVgaM1+EBa/unRmT3B13XRP0TuOHxV2fVanUakiEFSVebcOmhyJjIFCpHx7ANjXZAHXHq8td5u8FJajlt2g8Mk0bvPRpJRpPBVabLLf6xdwd+Td8QMjnQcvaKSHgEUIwBMeQV8Z21sSeriXF0JoEMdLhoCRAL75nVhXtpGWOOvsH7o6i5/EAIfxEwp1WN1VzTz8Pse2lSrDKeeX2h5M8X3nw8BCp2QHj2oGKuPQrgfqTqiIP2V6T88za78tXwQbmcooby4fc7iZEH2clhvILhVF54BqKxVtA0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wZRvEiTCl/aBueUPQj+epY02aK1I0070LJ8c5Z/BAg=;
 b=oP3b3nQSWvWfVbY7gHu3R3bcJmB8cmtdo/EP3GmDXhCCkRxhth2k2t6cL2wEEYBrlfyTQjcnO3m0K1t5iFbUe2yYeXUJf/3ZtWyj0+t3kqFecTAmmST97l3GApLL3K8V4m88qOJxrtBWb78tsEnKdCkoL35HJ6PCzCZvpP451alRHhLrbfx1Kw4LaIl7NELjHz3TRC1bEXUI/EjLlBUBu8mNCzBlaT15q9sb0LWG148x9kvQRNIvCoO7sIGKiu0mT0dEcNxlcW2c3To4ha9vRxoWxs1TCmKpFx/NfLn78kJZTidnDUC2A8ay8+790Mm5Tyspgi5gH1YP36VAurUd3Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SN7PR12MB6816.namprd12.prod.outlook.com (2603:10b6:806:264::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.31; Sat, 4 Feb
 2023 17:12:42 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.025; Sat, 4 Feb 2023
 17:12:42 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sat,  4 Feb 2023 19:07:57 +0200
Message-Id: <20230204170801.3897900-10-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230204170801.3897900-1-idosch@nvidia.com>
References: <20230204170801.3897900-1-idosch@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P194CA0042.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::31) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SN7PR12MB6816:EE_
X-MS-Office365-Filtering-Correlation-Id: 21a3b827-4877-4972-b4c5-08db06d30680
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dRgZKFilV+DDfvq0rx77hr1vQ6PbkNmjf3Ls0NeIddElfJkeDxfQGpE5BsEqMF2pp/coHIH+XenMrkJUHdFfhSf0NUYt3jrhHZOFwogucPghjQBKvi3YYh5klbb6B0U3mtNMTRs6APt/2TUZe6l7cmDDvdX+HBdb+/YwrynlO8nd987YVx+BbPHK/aKGRrTkg247/6loYINrAb4A1/I5Xxnrsq1fTWiDwTtDsBCAFgChUNiBvMdYP77PGOuH1HwlkHBW/WqqGzi5/k4M7Gp5omU+aJyGxQMCtmLRs8KbdrDj02et/rPSRn2vy0FmtdluWGQ0HF0bh45RIW4CQfa2VM4+2OXXVSRtRsa1ceKSyP6Evvl6zbKHhSnvD0dXInYN+REvIZjY1Kud9Dt0lrlHoJrB+FvOSeSDUbb1h6VWkbtnlzC9HTlQkIzq8JD/ByAF+eL6BoSWoECM43S3MhYtqznbkdurjr6ClK1M/yGDzSsr26hunbPP+pit+aNEIHRRcgJh7SntRF6KG4hn8kPlrGJcYQWWajxLYQnQdx9wDKxSOWRk15Fj2/9XX9c/EkOZWX5bUJJHqkFImr1uuBSChayGC05H9LcXHWMurz+PJdlAcgvQrpbJfr6fFAOSblUs/xWUSXfiuRuhPC3MbdbjWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199018)(8936002)(36756003)(5660300002)(107886003)(1076003)(6666004)(316002)(6506007)(478600001)(38100700002)(6486002)(66476007)(4326008)(8676002)(66946007)(2616005)(83380400001)(66556008)(41300700001)(86362001)(186003)(2906002)(6512007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Hs6BpwKmN86aWTutuvMGStLghjPEnXBXI0po7IGE223/L6Iv1ZlDgE11V2l8?=
 =?us-ascii?Q?2JFYsam70nhlNkooUhL6myh8w+NcXsVcWCPetZGI+jXf5LLr4pz2dv6ifygA?=
 =?us-ascii?Q?darhyLGtkQ5SPZKbCQhSC69EJafalUsdbI2ggUVgm+HfWBJmpftqd+XpNTrv?=
 =?us-ascii?Q?NmTkdGrMWlo0wHac8HI7Rb9m77depBeDbERxwaVvvkN0aCOf5UlJgpsYjpp4?=
 =?us-ascii?Q?sgdqJNKIEjIrc2moWnfp6gx/EC+XWECu6VpM3XCbm9mu0pM+Rb4Do33RFIFE?=
 =?us-ascii?Q?+e13/b1tjIDFonHxX4DSSmCuqj8zfqAEMv752zAlvW2wvQUGc7TS+2mMdUNh?=
 =?us-ascii?Q?yLu+gyk5LPpwzDjZaDdN25jLRmMwWMZVHubldZZlrYB7klm4NF/s4cQSdGUL?=
 =?us-ascii?Q?lHWE/cR0NwRzE7bK1jTpJZkpcWJizQ9SerYnypr3xq5+uRwajBJ//bQzA6hx?=
 =?us-ascii?Q?Jmz216GC3WDSOz7LA7OLnsefsmEwId7N7Uz3HwL+B+D/QOx6GCl+Lk+sZ+Ob?=
 =?us-ascii?Q?j1OldiYIeP4g8DGx5oA9LSoRcxH4mo2jvFlVMapyWUO0pz8O/k6XCVgIKJx8?=
 =?us-ascii?Q?+iB0Stf/7wSh5xlyocYLw8B48zR9vuBUpgarQTVXvsjLH2Z1t1zNZGFRy0pb?=
 =?us-ascii?Q?jbtPuLdkg4fvbS17lt+o8Fmo2FNYv0SzLSR+gLJNF0XWsd2EyveXfK6JARmr?=
 =?us-ascii?Q?89xva1De0ETqclx4fktKzD5TlGoK2dZ/I1926wO0uxj8GVI5MCSMuacAKtVz?=
 =?us-ascii?Q?oD2MaX87g5ncKIFjQa9jrbNu9kM4ixksqlffPpW+MuSkWpiNA36+1kjnIEO7?=
 =?us-ascii?Q?lP8sTmK+QhWG/jrjc7hEO1x/b4siu9lrJ/OwM8OmTw9b/iI0wbMgUk4vttq5?=
 =?us-ascii?Q?PTQdwqyckVgDEGFUJujucnd72jIpcWaC8sGOhO1cy3kJvK4aQEnY+7D450Od?=
 =?us-ascii?Q?UojjjpIUTBR/IPf+YFAmCFlnAxhnI9gB5gYEEzrnpb3DFT/L3HZOHKBjeLSv?=
 =?us-ascii?Q?ATUu7Nvgcz7jXxYGtdcC3y+JbXAxJX4Khgtu+l/S0bv8JK1CT4YD52dHsKrK?=
 =?us-ascii?Q?YMhYLzkJXmCaK8MZjMuUajrY1ZcmtlCTQhl1WF6Y05t1dVkcF1rw31uHmW9i?=
 =?us-ascii?Q?h874xIaU8crjtqmf0oDV7OEyAG0vPsbtlXNs3TBc8vUv9AqUtLoJowNYz9xo?=
 =?us-ascii?Q?5+TAC9MO2mQuSodGyCjn4MEg49A1wwohVaP44bZbY9W0g4KEV17xdpihd0F5?=
 =?us-ascii?Q?gAIRk5nxbL10g7kOeuYSHbSNlIn5h5a81fuKTQEXX8AswqOTKmj9CyxADO8v?=
 =?us-ascii?Q?70u3rSvVJ4/tAJy5qi5q/NIH/Nd/UjcDAGP/3R+0x6oI2xqbXoZ5B38TjkhP?=
 =?us-ascii?Q?uR1uLHWN3abQZHdpicn/FhvPRrI4LhfI20TFlmzv7A5jQnwho/KNRgX8fwz+?=
 =?us-ascii?Q?BX9O7W/HZ7+OVjPGw3Lpnv8LcDJFFy0THN3WUkckv8LXKJZpnEfo3aFPL2ha?=
 =?us-ascii?Q?uk5c0sBOA3hOhSamdc10OTsuZIRPUIAiBxrIdLFk9bK7slzqaekfW2mqeA5d?=
 =?us-ascii?Q?fc+SowB9P9YZZQiz0m47w5rsjesbTl/RkRRQLNNr?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21a3b827-4877-4972-b4c5-08db06d30680
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2023 17:12:42.1115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 61ey+8cd8gU9Y3i0QEFs+XdER0FWJbphb0R+o+kdyNOqkAadRA5zI2Q/lzjgmJFHS9pR1ky74VIeG/U+KGuWrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6816
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 09/13] vxlan: Expose vxlan_xmit_one()
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

Given a packet and a remote destination, the function will take care of
encapsulating the packet and transmitting it to the destination.

Expose it so that it could be used in subsequent patches by the MDB code
to transmit a packet to the remote destination(s) stored in the MDB
entry.

It will allow us to keep the MDB code self-contained, not exposing its
data structures to the rest of the VXLAN driver.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/vxlan/vxlan_core.c    | 5 ++---
 drivers/net/vxlan/vxlan_private.h | 2 ++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index a3106abc2b52..f8165e40c247 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -2395,9 +2395,8 @@ static int encap_bypass_if_local(struct sk_buff *skb, struct net_device *dev,
 	return 0;
 }
 
-static void vxlan_xmit_one(struct sk_buff *skb, struct net_device *dev,
-			   __be32 default_vni, struct vxlan_rdst *rdst,
-			   bool did_rsc)
+void vxlan_xmit_one(struct sk_buff *skb, struct net_device *dev,
+		    __be32 default_vni, struct vxlan_rdst *rdst, bool did_rsc)
 {
 	struct dst_cache *dst_cache;
 	struct ip_tunnel_info *info;
diff --git a/drivers/net/vxlan/vxlan_private.h b/drivers/net/vxlan/vxlan_private.h
index 038528f9684a..f4977925cb8a 100644
--- a/drivers/net/vxlan/vxlan_private.h
+++ b/drivers/net/vxlan/vxlan_private.h
@@ -172,6 +172,8 @@ int vxlan_fdb_update(struct vxlan_dev *vxlan,
 		     __be16 port, __be32 src_vni, __be32 vni,
 		     __u32 ifindex, __u16 ndm_flags, u32 nhid,
 		     bool swdev_notify, struct netlink_ext_ack *extack);
+void vxlan_xmit_one(struct sk_buff *skb, struct net_device *dev,
+		    __be32 default_vni, struct vxlan_rdst *rdst, bool did_rsc);
 int vxlan_vni_in_use(struct net *src_net, struct vxlan_dev *vxlan,
 		     struct vxlan_config *conf, __be32 vni);
 
-- 
2.37.3


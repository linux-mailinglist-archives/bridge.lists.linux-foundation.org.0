Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E5A67D259
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 18:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA81C6102E;
	Thu, 26 Jan 2023 17:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA81C6102E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=VyBH/EuE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIWwd4VOo0o7; Thu, 26 Jan 2023 17:02:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A07CF60BFE;
	Thu, 26 Jan 2023 17:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A07CF60BFE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4CA98C0077;
	Thu, 26 Jan 2023 17:02:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B59EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC8B481759
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC8B481759
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=VyBH/EuE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14Yj0oe9eJpL for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 17:02:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 057B98149A
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 057B98149A
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/B7wNugv3UTN7/CmM3Z3m0wXKwXB/JtB7dEkQjWu//q0srWaoC4r5jk1So1AItq1GSxKbM1GNnWDeWSlijW81KvxxC3t5ipzfd/inwXLisjvcECw7Ss4uYrJ1ZoqhXqpHLK4CF7OwSgCaxQa8t9x1ilqIyixraNMdayxfsJsyZ04BcdAurD6GacSYzseQFQB3io2ejYZEoXOwN7aCwSqlEWNtgFHBwI0cq5YBl+vk6crg6WymJu9xfDvMAHUrn2nOEsmdCHtYA1vZWCUVY+P5rpfQdOVQN9Q2jaS+/KftK01sbBJQFqzmFVRoILUtLZeWhJVTP2VbBXJUCwIqMAcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PdvkyOWqkuTdF5Uiph75HRDRDgwnL0E63JwfbM2XHlc=;
 b=lxJKGuaAVxQ3zAVLSFXdGNRRfiD9XCeaB0A9ppP6WGmFJCYcsz42MVDjCGoQdGgOg4CTAF2zMTjaWRdDLxYc0gvVCBc0HnZodNA6vTGVkiZdu76J0fy6Y5WcwuIE2zHyHMGueQU+HVNtaDJJhHm+IEdm5xN2S/LRGdqd2OY4l4TzOefBrNNtV1Hx9Um6B6/BqwHeFdnTqG5sW9wEDl5aBNhywWBVcjwatxBLgXhxr9YgKjmKnOpzL/juCHV45e9yVigHFNNsvRUQX8HXi3xIP+tuxybWe8QyE2ztL9LI9EoifmN+fapwb8Nu6ysYtKrx6GUHUi3LUmUuaA2CA3bqyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PdvkyOWqkuTdF5Uiph75HRDRDgwnL0E63JwfbM2XHlc=;
 b=VyBH/EuEraq+uTgEFyKITAr4NWuDYAjGGziXaJmfTPpfNIlEI8pjYpDoydSYAUOSE/L/3XBDXRZDZp/jwQb8FoftPQl3TpIVdrN/t4Xcm4IKR/qPpP1LfHqhdx36XsMkxWvj8Dwbgxlqsi2/KfoTEoCSe7XwOpFNWw+LfwaZ56TrBLOYZ/FfB8kyNzWy3XQQNhgbMt1Bd3CiZogOPi8bygTP/nMtw1DFeYQrag6i6eTz82xhuiOi6+5vZxNN+fwmkNVvo2SK9o/bXZeFLCrW2TgqDPD6ludTLu7ChaHoJHtM4zOxbhAJR9s2h4/2zCjrTUxnci7otVYXUuwhLrnqgw==
Received: from MW4PR04CA0285.namprd04.prod.outlook.com (2603:10b6:303:89::20)
 by PH7PR12MB5735.namprd12.prod.outlook.com (2603:10b6:510:1e2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 17:02:06 +0000
Received: from CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:89:cafe::d6) by MW4PR04CA0285.outlook.office365.com
 (2603:10b6:303:89::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21 via Frontend
 Transport; Thu, 26 Jan 2023 17:02:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1NAM11FT035.mail.protection.outlook.com (10.13.175.36) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.17 via Frontend Transport; Thu, 26 Jan 2023 17:02:05 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:01:54 -0800
Received: from localhost.localdomain (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:01:51 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 26 Jan 2023 18:01:09 +0100
Message-ID: <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674752051.git.petrm@nvidia.com>
References: <cover.1674752051.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT035:EE_|PH7PR12MB5735:EE_
X-MS-Office365-Filtering-Correlation-Id: 45ace193-bcf1-4c42-41fb-08daffbf0db7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5u24rfm+lx7PZPCG9XfzdiMgnJx45R6mGeSP5TIqF9SL9cCtPS0bawxHLhBRyTcH0FNdAbNDnnRmBUx1g4dPKLajGkbmkKDycDzKNi83t4t5b5Xpxb+vI1CYpda65n2MwtxqoNAIvBcapufIr2z/qk/PHnCwZlUXCbwZpJoJqo43If3ucrpyumL4eyMCP8j+M3ylcGaSPx8nWazjeqw21m7XlSxuCuKmEu3poa1cHf01Wxl2co9bTaoCOd2Ij0hsNCJBMJ+cuOho6rrJ/lmyay+aZBh3by8CgbCAlQCzCRUlXrY4wqgByG29R+X3eCZrSwFuRpZs2vKLdkgsdrdgOwxDSwUWPCCo6y9kQ/IDG10gg4mriwAUk4L111hurZ04ZaOj2ZvLRLqmXtWMhrwVqljTv7eSJuMo0beukHzEgsmyuQWuAHvmN0LPpNMXLbpTjpgl3nNPw9J/cn94fhaerw4P53ZE6jBK88N6w33nz+mbh87Z+5SonDSMKmKCxWiF9i544quAuKmT1AlKvHrwF/+vQJ2TiK5hb9H5CdZ+8oGs/FHuKMC6tRqmGhjWQ3T6aufLaCDnb/Tr9ehGjanpX4uoBkR51JYzqMnkaVGkXN5eqfPoHBVTjwgdJAQVy1PvlgsPYCZVr6Ff01KU8EdTMvuposnz4Oq9lEW+KfxK7Fi/wsG1123+1L8N9WWKugWcPeueK129141oORjYOeVzJg==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(396003)(136003)(39860400002)(376002)(346002)(451199018)(40470700004)(46966006)(36840700001)(478600001)(16526019)(186003)(26005)(47076005)(336012)(2616005)(82310400005)(426003)(83380400001)(107886003)(6666004)(110136005)(54906003)(316002)(356005)(41300700001)(8676002)(7636003)(70206006)(82740400003)(36756003)(86362001)(5660300002)(40460700003)(8936002)(4326008)(70586007)(40480700001)(36860700001)(2906002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 17:02:05.9359 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ace193-bcf1-4c42-41fb-08daffbf0db7
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5735
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 01/16] net: bridge: Set strict_start_type
	at two policies
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
From: Petr Machata via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Petr Machata <petrm@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Make any attributes newly-added to br_port_policy or vlan_tunnel_policy
parsed strictly, to prevent userspace from passing garbage. Note that this
patchset only touches the former policy. The latter was adjusted for
completeness' sake. There do not appear to be other _deprecated calls
with non-NULL policies.

Suggested-by: Ido Schimmel <idosch@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_netlink.c        | 2 ++
 net/bridge/br_netlink_tunnel.c | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 4316cc82ae17..a6133d469885 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -858,6 +858,8 @@ static int br_afspec(struct net_bridge *br,
 }
 
 static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
+	[IFLA_BRPORT_UNSPEC]	= { .strict_start_type =
+					IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT + 1 },
 	[IFLA_BRPORT_STATE]	= { .type = NLA_U8 },
 	[IFLA_BRPORT_COST]	= { .type = NLA_U32 },
 	[IFLA_BRPORT_PRIORITY]	= { .type = NLA_U16 },
diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
index 8914290c75d4..17abf092f7ca 100644
--- a/net/bridge/br_netlink_tunnel.c
+++ b/net/bridge/br_netlink_tunnel.c
@@ -188,6 +188,9 @@ int br_fill_vlan_tunnel_info(struct sk_buff *skb,
 }
 
 static const struct nla_policy vlan_tunnel_policy[IFLA_BRIDGE_VLAN_TUNNEL_MAX + 1] = {
+	[IFLA_BRIDGE_VLAN_TUNNEL_UNSPEC] = {
+		.strict_start_type = IFLA_BRIDGE_VLAN_TUNNEL_FLAGS + 1
+	},
 	[IFLA_BRIDGE_VLAN_TUNNEL_ID] = { .type = NLA_U32 },
 	[IFLA_BRIDGE_VLAN_TUNNEL_VID] = { .type = NLA_U16 },
 	[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS] = { .type = NLA_U16 },
-- 
2.39.0


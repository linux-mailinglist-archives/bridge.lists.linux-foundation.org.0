Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD20B6885D0
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:00:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16D3C82032;
	Thu,  2 Feb 2023 18:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16D3C82032
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=SAfyXe03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-pBQp-VjIzD; Thu,  2 Feb 2023 18:00:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AD1BB82037;
	Thu,  2 Feb 2023 18:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD1BB82037
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5B56AC0078;
	Thu,  2 Feb 2023 18:00:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ACA0CC002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86B5941CD9
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86B5941CD9
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=SAfyXe03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoOQ78aqRhiP for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:00:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55F8A41CC3
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20612.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::612])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55F8A41CC3
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoaV6Jhh7nJA3+y0uX+59HNwPd7Dmcc8XxaS/yddzl9c4gj0qm/Q7o6bdZCC3QBrhIVRcmfQWblZdwSaNUS5jw/rkuS4Wg9P1rBFyhfA55TFgH4lGYCz6tdpOVUocWD3XT6MmEvV3jHfg9G7U+FIKSd674KGU5QBNyiLLW39u2sqcvUSOShSnD8gwm5y8MQZQ8rxA/K/p8xmJbvsx6ZXicfzBkYDoF5BP4Ic+/Qm+4qoZ0/cdSbS8JvVd0ily+I9Lo5/IemV3uqWkFzs4uo+nFmCHrMbVCyD6+LA9/ZTgg4ZIL2EhrP7L2nozsng6kM1+2EGGuUhfZ1rkpZhlNj2kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDXzltQ499SFSA5wC5YjpprEG2qUTXpMLp0Yjy56ozQ=;
 b=K/0DIhMM1L4fsC26l803d4UW1Au70aFuN/5/qU3YUWrk43e7ftJ5KGdXWxHmNG6eBqcWRWlvglLlr3HpBXCP74y0p7tCpZeov34XC//y7LTKXFbSem7A4eWJt75Z2UPjAAfmkiB6kIF8ECWk9teck8xgPUt6gjvpZX3fK4ndSlL2yjxb/Xv3K3wupvSxvgfTn1PEIjnw5mwadP0IDQRPsyzUg62MIsnCA0lo/Nm1QtuouCYx9XB6Vh8vd0HzQ9mkQM0carArEqvD+6CwfJUFRrRv0zwA5YvpFmuCWTv6TQeV7K4S4n9F8SIN10hfgpG8rFLdQYNDY1XkNrbSrUOL3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aDXzltQ499SFSA5wC5YjpprEG2qUTXpMLp0Yjy56ozQ=;
 b=SAfyXe03BfXzeVGB9LgImH2Ym43tyIWOFxU4ku6u879VrYaRopEwWU0Mq/9lO+059baTg4+cb7DJ9kYW+qQ2sSGO33uuXnpHwAZhKQo97Qmo/ozFKRKtXJ5pDaznAVu3AEgNGBO99OQ6HAA+4vo63l/CRK1RdVIZ9jZ24A6xqx8sx/20LyKe6H5sUsgTiFdn7wbHNarmPHvdViIF2Nb85J+RiX52O9X9fBZV/wAHaRTYijjvh+yDU5WK2R6XrtodDsO9KQrxjl7ME6uEbK/s/vFSzj2xJj2CZ5p+N0R5E2SYVuoMH2qAmeDEt8zx5F+1MiZicU+a0nlc1aStJPiybA==
Received: from MW4P222CA0027.NAMP222.PROD.OUTLOOK.COM (2603:10b6:303:114::32)
 by CY8PR12MB7338.namprd12.prod.outlook.com (2603:10b6:930:52::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Thu, 2 Feb
 2023 18:00:37 +0000
Received: from CO1NAM11FT087.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:114:cafe::fe) by MW4P222CA0027.outlook.office365.com
 (2603:10b6:303:114::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24 via Frontend
 Transport; Thu, 2 Feb 2023 18:00:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT087.mail.protection.outlook.com (10.13.174.68) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:00:36 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:17 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:13 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:19 +0100
Message-ID: <af9d9613a3febdb0210d15106e48766bf190b0a8.1675359453.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675359453.git.petrm@nvidia.com>
References: <cover.1675359453.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT087:EE_|CY8PR12MB7338:EE_
X-MS-Office365-Filtering-Correlation-Id: ab9e553e-3c7b-4ee6-3dd7-08db05476326
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sNu86A7NBxc0xESLAz94xnjOQ8TRJFFQljnO0114sDOZKiEErIvlyaX38hJYMCSPMBaA1m1wejikjOdPZoQPKo8DlN/zVE1a+791unPjX8u0tDCYQBiUggMf8ln4dDZb4zZf2eHGLAOb2W8BVT4njad1hUgXN0PWUX0bGIrunzmifSo8Gvtdsmkcbx8Vk87hhoWGxsRVi7t/TBihYYVoNY1BV7kcH1t2NuK22gClLBlkMc3mV8UJW0Cwmwt7bFj5m/2h/6g8/5g1wUzAYxL6WOFrslVWz8J1ykNlIp5ClZcz7f+baeXvza85C4FxcMW9KYoRT4e886e5+bvpQ/OBIWoa9Q4yfQRkA3xBthEb6djRPSmOGrcf4U/8pN4Mwnl3+8ppe8zcMn00UTgP1BSVr6Nm13EOL6TaXfeDSM2Vm8OyfyhMSFgNBHJs6eybA+4rOMsZ5xmquc9HWSAaos1/WlMATu+OaWROjW7JNgK5NKXdD9nHll1eVUTzK51OKYmiOHH2q8aFsMnVJSTL7QpoIJex8k6YLImllKjm8jgyziBtv9JqjMIKshHpn2ls4OSiSwB4accngFuOaSACj2VCRvmfMkxuYQaN0Mt6g6KTNwuqCxsFe1mlS0A0tba9v64TSnTobK90wThud1BdPut+0N59JX5mAP85OQy/48IlLaA4jfU0e5+oMZb2WFhtJb6pdVALsjPw8Lths5pJ7AISxQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(376002)(346002)(396003)(39860400002)(451199018)(36840700001)(46966006)(40470700004)(16526019)(5660300002)(186003)(110136005)(26005)(54906003)(2616005)(86362001)(40480700001)(478600001)(40460700003)(2906002)(36756003)(36860700001)(70206006)(107886003)(4326008)(356005)(70586007)(82310400005)(82740400003)(7636003)(47076005)(83380400001)(426003)(316002)(336012)(8676002)(41300700001)(8936002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:00:36.5918 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9e553e-3c7b-4ee6-3dd7-08db05476326
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT087.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7338
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 01/16] net: bridge: Set
	strict_start_type at two policies
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
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
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


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 499CD7C03CA
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97C5761472;
	Tue, 10 Oct 2023 18:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97C5761472
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=UAWV55vz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZuUsGG0NHAZE; Tue, 10 Oct 2023 18:53:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6CE4161457;
	Tue, 10 Oct 2023 18:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CE4161457
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69EBDC0DD7;
	Tue, 10 Oct 2023 18:53:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0AEECC0032
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AEDE6002E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AEDE6002E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Hr7UqW16spG for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 10:07:41 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on20626.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::626])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E96261139
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E96261139
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AG56LkU55dWdeQ90XFSvUMp5ES83NdB2Nj3GiJ51L4X0PBdu2J8rOX/L3FUk2Coux9r7AhxvNA8kilwImL7puuDpWesGOq0bkLIZbU2Q0UrPCtK6OBV1rRld69dw0a/ALo2EkyE5UBhLNOh8cBwZ/dAmHUSzf5iehckzxcGLxs0I86eTBjDvpr+tdWD4YomyXbfaent3Krsdiz9qb+rB00aXM3KcQbavh+Y0VPoiIGPW89zuRZm+5PfEobK0iDNx7ASE3hMexc+Via0HLYMqVbwIMWc4Mgzb5KfqzMl2d/NA3wq6zaGv7KtlgBbJVck7DmzWOxBn2Q30F2ZAwHkeig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vts9POVX0ewQ3xqs/c2ntRY8jSorF1LamTxeTz8FSz0=;
 b=LD33wgAqC9sDiySyB49tbB9bIHCnECQDnS577W8jS7Vz717PjLsEco8wUnNgnmFm58WGzyWK3eDWGPm1OCYDm1+yOuAB/t4nywHQVuoOLbw8iQ9POlAXgOjFpMEaQtbAVunQ8SxdWUsM6kCLRPQ1SsnrMG9CmxNufa5jAFHFgoDBpHJ02atMoz0bnio8LQrq82OqaAWIDKbZjXml765hckPuvaBUtcoDFjiqxl2GkYlfAAM/IvAXbELQgV1QnXv1l2VfcW9UAmk9w3ueVkzSCDPnI+c9Zy7cTA8n0bvEE8sQAaoaBL61lZm/k98nEKCMe7HNJlKGTh0K2kCj7C89Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vts9POVX0ewQ3xqs/c2ntRY8jSorF1LamTxeTz8FSz0=;
 b=UAWV55vzzF9eGJq4q28E0ZJxmWPW+lbjMC+ln+FXVM0oNzVZ+kY2OIzKummySw/gjtonFaftoMIVJLpB9lcgYQVj8mtv3j24fHb6wFepy7aeh1wRwJZ/Vu6O97rjZxV6afCZ4W2UxjZVQQWRkbLtSSopAMZM9zKvsDUbHPy23KQ0iHtdMVeXTtLM0tzuUCb1SlxBnaE3rtVUbx5Lc9/weyrTKy79D9k7k09HgbFpTzD6XDTK0pa7slqJVDQxfCGSqY5XYxPxMfd5rI+sYzUnP5mIfAU3+VtNlBR7yeIxSysRbMam7lAaKLbcEPAdWcmwKoPOa/+NhE77aMALCeg8zQ==
Received: from DM6PR07CA0063.namprd07.prod.outlook.com (2603:10b6:5:74::40) by
 DM4PR12MB7624.namprd12.prod.outlook.com (2603:10b6:8:107::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.37; Mon, 9 Oct 2023 10:07:37 +0000
Received: from DS2PEPF00003439.namprd02.prod.outlook.com
 (2603:10b6:5:74:cafe::3a) by DM6PR07CA0063.outlook.office365.com
 (2603:10b6:5:74::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38 via Frontend
 Transport; Mon, 9 Oct 2023 10:07:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS2PEPF00003439.mail.protection.outlook.com (10.167.18.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.14 via Frontend Transport; Mon, 9 Oct 2023 10:07:37 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 9 Oct 2023
 03:07:26 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 9 Oct 2023 03:07:22 -0700
To: <netdev@vger.kernel.org>
Date: Mon, 9 Oct 2023 13:06:16 +0300
Message-ID: <20231009100618.2911374-10-amcohen@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231009100618.2911374-1-amcohen@nvidia.com>
References: <20231009100618.2911374-1-amcohen@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF00003439:EE_|DM4PR12MB7624:EE_
X-MS-Office365-Filtering-Correlation-Id: c6ed520c-95d2-446d-938a-08dbc8af90bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UrnSsOGOPoq14c7ANi/KquWNQdQAvyMMxa6I38QAQijoHFrgBzVUIF8wsylXvG/rqYNGE84srm557G9Utolg9b0djVni/zVvWPBmLE6PNVV+8HTGkpBmtx2n3wPkVPc2wMA/OXoOVXC8DZWadN/qJadHYwXferPUoSp8G/swpQ2VdKijZC93qkv2zpplx2LnM8cwOcFCAkV3hq8GzkOEmDsSftJtEtp7Fgyr0fG9v7klF3KAfI0+S4G9XZWqLQrlQBQasHf2Wl839VnqK93UsZHIYcCRIm34hdIL1gy9Y4BJsaW+YcA7TDvGdWV6Fk/Av1NQqT9XljoVVthAmb/NfRijs/FgNT7wyBj9u3VjuZXwt47YWBkbU5egHjYri/tsKdrl/BlGnjyVNtNnirE5LfXY6IBhRc8aAIk6/wFXmFZuYLj00jG7xXg28A2RLeh89ODz3K0Mdb5Zk5qur5Uei5WFbBr21oEmLqTGe5epcvAhXUdwq+W7CNm50dIq//MiZJJrWnCdkvt7uk3sgOMtHG5hh/ddBA/W5VpIPGu2thGzW44zE65jbIiCVQk++Wk98xUz5o9QjGsyeKPnVbQsIqiiWhD70pAqWw4Nxudr6ps6hnyN85VWRyxiIdPyE7JyLDJEUdSGoBDgOHgdT9ft94AfSdmZ8x8himcOW75cZAwMx32l7S20Ktkrsb1OC0jnEDxVuRIW4/CVGrn7K5+tBcRzTiDGgBuJWvKlcrqOix0=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(136003)(39860400002)(376002)(396003)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(82310400011)(40470700004)(46966006)(36840700001)(40480700001)(40460700003)(83380400001)(1076003)(107886003)(2616005)(336012)(426003)(26005)(16526019)(47076005)(316002)(36860700001)(54906003)(70206006)(70586007)(6916009)(8936002)(8676002)(4326008)(5660300002)(41300700001)(6666004)(2906002)(82740400003)(478600001)(36756003)(356005)(7636003)(86362001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 10:07:37.4957 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6ed520c-95d2-446d-938a-08dbc8af90bf
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF00003439.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7624
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Cc: razor@blackwall.org, Amit
 Cohen <amcohen@nvidia.com>, mlxsw@nvidia.com, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com,
 linux-kselftest@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 09/11] vxlan: vxlan_core: Support FDB
	flushing by destination IP
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
From: Amit Cohen via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Amit Cohen <amcohen@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Add support for flush VXLAN FDB entries by destination IP. FDB entry is
stored as {MAC, SRC_VNI} + remote. The destination IP is an attribute of
the remote. For multicast entries, the VXLAN driver stores a linked list
of remotes for a given key.

In user space, each remote is represented as a separate entry, so when
flush is sent with filter of 'destination IP', flush only the match
remotes. In case that there are no additional remotes, destroy the entry.

For example, the following are stored as one entry with several remotes:
$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.3 self permanent
00:00:00:00:00:00 dst 192.1.1.1 self permanent
00:00:00:00:00:00 dst 192.1.1.2 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 1000 self permanent

When user flush by destination IP x, only the relevant remotes will be
flushed:
$ bridge fdb flush dev vx10 dst 192.1.1.1

$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.3 self permanent
00:00:00:00:00:00 dst 192.1.1.2 self permanent

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/vxlan/vxlan_core.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 1d6efca4ec4a..ece377b1b6bd 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -3032,6 +3032,7 @@ struct vxlan_fdb_flush_desc {
 	u32				nhid;
 	__be32				vni;
 	__be16				port;
+	union vxlan_addr		dst_ip;
 };
 
 static bool vxlan_fdb_is_default_entry(const struct vxlan_fdb *f,
@@ -3072,7 +3073,7 @@ static bool vxlan_fdb_flush_matches(const struct vxlan_fdb *f,
 static bool
 vxlan_fdb_flush_should_match_remotes(const struct vxlan_fdb_flush_desc *desc)
 {
-	return desc->vni || desc->port;
+	return desc->vni || desc->port || desc->dst_ip.sa.sa_family;
 }
 
 static bool
@@ -3085,6 +3086,10 @@ vxlan_fdb_flush_remote_matches(const struct vxlan_fdb_flush_desc *desc,
 	if (desc->port && rd->remote_port != desc->port)
 		return false;
 
+	if (desc->dst_ip.sa.sa_family &&
+	    !vxlan_addr_equal(&rd->remote_ip, &desc->dst_ip))
+		return false;
+
 	return true;
 }
 
@@ -3146,6 +3151,8 @@ static const struct nla_policy vxlan_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_NH_ID]	= { .type = NLA_U32 },
 	[NDA_VNI]	= { .type = NLA_U32 },
 	[NDA_PORT]	= { .type = NLA_U16 },
+	[NDA_DST]	= NLA_POLICY_RANGE(NLA_BINARY, sizeof(struct in_addr),
+					   sizeof(struct in6_addr)),
 	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
@@ -3202,6 +3209,18 @@ static int vxlan_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 	if (tb[NDA_PORT])
 		desc.port = nla_get_be16(tb[NDA_PORT]);
 
+	if (tb[NDA_DST]) {
+		union vxlan_addr ip;
+
+		err = vxlan_nla_get_addr(&ip, tb[NDA_DST]);
+		if (err) {
+			NL_SET_ERR_MSG_ATTR(extack, tb[NDA_DST],
+					    "Unsupported address family");
+			return err;
+		}
+		desc.dst_ip = ip;
+	}
+
 	vxlan_flush(vxlan, &desc);
 
 	return 0;
-- 
2.40.1


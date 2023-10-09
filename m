Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6614B7C03C8
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BA4A6144B;
	Tue, 10 Oct 2023 18:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BA4A6144B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=P8FAiu7I
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXqk4M07QM0V; Tue, 10 Oct 2023 18:53:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C361C61459;
	Tue, 10 Oct 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C361C61459
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE6E4C0DDA;
	Tue, 10 Oct 2023 18:53:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9A5CC0032
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75BF2417FA
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75BF2417FA
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=P8FAiu7I
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5lordnVBkk1 for <bridge@lists.linux-foundation.org>;
 Mon,  9 Oct 2023 10:07:32 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20617.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::617])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66EA2417D3
 for <bridge@lists.linux-foundation.org>; Mon,  9 Oct 2023 10:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66EA2417D3
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYJesJM08jQJoWYUhmCbX8zBV28epawNn7nA0pSwmWpRvgQLmM6LeiYwIVzz5qMaVyR3Q4USD2rKQhGolpcRIi+092cdvYLdz65q09WRGVm5URFz18Wxo8l3L56OOf88nN+JzxF7+H6aqQtF8GsUZD6Rs8519q30dg11JUFXbaVoh/H9pyqlq4agb0q9cr+WWB8ZXo4W8kj7n2RXMyYhhxkXJu/mWta0S92u5pANMKvINjusCmtWcwu/qbBbDOVlQV0vx4StBo+DNfturosTPS+Uhbqm+pZHKFFKawbhjZMtaANA0AwRTiEyB2US20i9sTMZARlsYUfcXoFB8o5ETQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRcHIngCdxLXbNg1mM1AOfmR9WB5qyAajfBSpzdhuVg=;
 b=SeGImQQIBBsWYoELZ4UYfjoM0rXegyfwsMx5FO91fElLMk8gNBVp/KVc8BmLW+KqWspKhHsaq0o91s9Sz3Y+l82L7FS9dRRN19U2cKgfusS6v8lTRiKfEM7sXKCSVXH9piP3eolo6igr+IrjJBQV6CiKfW/EOZ4Cteyy6w2vBTamtoLk8nlKgkG1m76q9mBIJt1dQPTgdaQSrtJAfYBaWq85apj9sVWGkciso5Mci0qpLlg9KJUFLUB/ZM4R0mLKB7WU6zcpGQzD1AIy98k+xRbb8CFtHzFTNWQ2YNaBpARLWlvjkycJ/QKpxfknCM8PqpSnWUimCJ3L5kPByqwidw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRcHIngCdxLXbNg1mM1AOfmR9WB5qyAajfBSpzdhuVg=;
 b=P8FAiu7IiBbfZQIlS7+1Obw30MsxKjvEGSOdpL4uhrn6mvk6k0d9+lM+EYo/TMVZiY/Yg7hM2YuYyVraHP8CMvfZw1dIMQcrGduz2hCJwok5m6PqwEPTF+i7gdUnYLXj0Dj25DAr5Nvv54IAFzjIbNKS053Hmd5CMxQbSmlJBPwYOC8bDVx4T7vqzMgMsF3O/DuKxXbTTO8XoBoPYCc0dWsbnaGFPxmm/cFt4ApWUNo/Rmarqcmx/cJf3O24/ZBbypKvB2FKXACEHYnoG2kVVooD6xKj1ej3OyX+d+IteTAFT04lZG6Z17vQZrv9kbuAe6If9Th+I9oTHJfefbHLeA==
Received: from DM6PR07CA0065.namprd07.prod.outlook.com (2603:10b6:5:74::42) by
 DM6PR12MB4864.namprd12.prod.outlook.com (2603:10b6:5:209::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Mon, 9 Oct 2023 10:07:30 +0000
Received: from DS2PEPF00003439.namprd02.prod.outlook.com
 (2603:10b6:5:74:cafe::84) by DM6PR07CA0065.outlook.office365.com
 (2603:10b6:5:74::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36 via Frontend
 Transport; Mon, 9 Oct 2023 10:07:30 +0000
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
 15.20.6838.14 via Frontend Transport; Mon, 9 Oct 2023 10:07:29 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 9 Oct 2023
 03:07:18 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 9 Oct 2023 03:07:14 -0700
To: <netdev@vger.kernel.org>
Date: Mon, 9 Oct 2023 13:06:14 +0300
Message-ID: <20231009100618.2911374-8-amcohen@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DS2PEPF00003439:EE_|DM6PR12MB4864:EE_
X-MS-Office365-Filtering-Correlation-Id: 45210a96-a89f-4427-a399-08dbc8af8c3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SnTpVsWe4txWCKYH/78XY9KJPUmo1Xgh9QoJ/dTnAaeEAA7k8U73hV5SsMkJDuwDKe8CPND+PqaT1jcZfI6+cpmg/NqS/Ztsa2nNt2Bm/hTfGwAZsAgBZIfudOG7DPtv88GupwCntUu7BgOJPCIdzEP9CVCjrC7FjgiCOdQnGDAdFi9FTMg7KtmnCl3zOFhGTU7vH5hpD320lHMG0RaW+bH90GkPSH1pxRg9KChyXpqN+oroJKP3olW1bv9ijVjLQ14yr+M6vajUqRly5ItrA2EUn7WhUhVTe0V+wXTGo0J5zE+OdAZFJoruRYzwnMnEqU3AQyQQGydqjapvPQFHZLlnwfcNyijpwVp7rz4dH9AsyvWBTCXtgp6+GSckEZ2HNrdNoib/yyJ6EmUmW8wsso55PLk54iugwI+4ftFL91++sDSxXyResdwcd4iK2VlHyL78LJywn/HH05yB7G86lELu/QCkjTJPBX/Bf081aYjcxFMMFJgckJz8f2RY9I+O6HpYRNm/FnjQta0iZE2bvwidqb91CIrargPchBg1B9Mpapyep8NxR1VPi/fYu4MfhmSbAai5Y3Jhpwhzmgz7xo3qk5hF75hz7XgsWWQlLwo/hI7Gz7VIZBKXQ6OC1Lz2StdMpd2CvP7IT+on/WVGTiTgah0JqEibjdy0Cigqs7SvM9blTOckz97Zkjqywahtnt6rFv14r6F956t5K/eadQrvRCdgMCieuvwhWRE5Q5woNNsamDYcScjt/HRJZ/qZUZ50JJT4nHMrPn9mq9DgyA==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(82310400011)(36840700001)(40470700004)(46966006)(2616005)(1076003)(426003)(26005)(336012)(16526019)(40460700003)(36756003)(82740400003)(86362001)(40480700001)(7636003)(356005)(107886003)(83380400001)(8676002)(8936002)(4326008)(2906002)(478600001)(47076005)(36860700001)(41300700001)(6916009)(316002)(5660300002)(54906003)(70586007)(70206006)(309714004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 10:07:29.9332 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45210a96-a89f-4427-a399-08dbc8af8c3d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF00003439.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4864
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Cc: Petr Machata <petrm@nvidia.com>, razor@blackwall.org, Amit
 Cohen <amcohen@nvidia.com>, mlxsw@nvidia.com, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@nvidia.com,
 linux-kselftest@vger.kernel.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 07/11] vxlan: vxlan_core: Support FDB
	flushing by destination VNI
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

Add support for flush VXLAN FDB entries by destination VNI. FDB entry is
stored as {MAC, SRC_VNI} + remote. The destination VNI is an attribute
of the remote. For multicast entries, the VXLAN driver stores a linked list
of remotes for a given key.

In user space, each remote is represented as a separate entry, so when
flush is sent with filter of 'destination VNI', flush only the match
remotes. In case that there are no additional remotes, destroy the entry.

For example, the following are stored as one entry with several remotes:
$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.1 vni 3000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 4000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 2000 self permanent
00:00:00:00:00:00 dst 192.1.1.2 vni 2000 self permanent

When user flush by VNI x, only the relevant remotes will be flushed:
$ bridge fdb flush dev vx10 vni 2000

$ bridge fdb show dev vx10
00:00:00:00:00:00 dst 192.1.1.1 vni 3000 self permanent
00:00:00:00:00:00 dst 192.1.1.1 vni 4000 self permanent

Signed-off-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 drivers/net/vxlan/vxlan_core.c | 51 ++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index ec7147409d99..f16328a0f9fe 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -3030,6 +3030,7 @@ struct vxlan_fdb_flush_desc {
 	unsigned long			flags_mask;
 	__be32				src_vni;
 	u32				nhid;
+	__be32				vni;
 };
 
 static bool vxlan_fdb_is_default_entry(const struct vxlan_fdb *f,
@@ -3067,10 +3068,46 @@ static bool vxlan_fdb_flush_matches(const struct vxlan_fdb *f,
 	return true;
 }
 
+static bool
+vxlan_fdb_flush_should_match_remotes(const struct vxlan_fdb_flush_desc *desc)
+{
+	return !!desc->vni;
+}
+
+static bool
+vxlan_fdb_flush_remote_matches(const struct vxlan_fdb_flush_desc *desc,
+			       const struct vxlan_rdst *rd)
+{
+	if (desc->vni && rd->remote_vni != desc->vni)
+		return false;
+
+	return true;
+}
+
+static void
+vxlan_fdb_flush_match_remotes(struct vxlan_fdb *f, struct vxlan_dev *vxlan,
+			      const struct vxlan_fdb_flush_desc *desc,
+			      bool *p_destroy_fdb)
+{
+	bool remotes_flushed = false;
+	struct vxlan_rdst *rd, *tmp;
+
+	list_for_each_entry_safe(rd, tmp, &f->remotes, list) {
+		if (!vxlan_fdb_flush_remote_matches(desc, rd))
+			continue;
+
+		vxlan_fdb_dst_destroy(vxlan, f, rd, true);
+		remotes_flushed = true;
+	}
+
+	*p_destroy_fdb = remotes_flushed && list_empty(&f->remotes);
+}
+
 /* Purge the forwarding table */
 static void vxlan_flush(struct vxlan_dev *vxlan,
 			const struct vxlan_fdb_flush_desc *desc)
 {
+	bool match_remotes = vxlan_fdb_flush_should_match_remotes(desc);
 	unsigned int h;
 
 	for (h = 0; h < FDB_HASH_SIZE; ++h) {
@@ -3084,6 +3121,16 @@ static void vxlan_flush(struct vxlan_dev *vxlan,
 			if (!vxlan_fdb_flush_matches(f, vxlan, desc))
 				continue;
 
+			if (match_remotes) {
+				bool destroy_fdb = false;
+
+				vxlan_fdb_flush_match_remotes(f, vxlan, desc,
+							      &destroy_fdb);
+
+				if (!destroy_fdb)
+					continue;
+			}
+
 			vxlan_fdb_destroy(vxlan, f, true, true);
 		}
 		spin_unlock_bh(&vxlan->hash_lock[h]);
@@ -3093,6 +3140,7 @@ static void vxlan_flush(struct vxlan_dev *vxlan,
 static const struct nla_policy vxlan_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_SRC_VNI]   = { .type = NLA_U32 },
 	[NDA_NH_ID]	= { .type = NLA_U32 },
+	[NDA_VNI]	= { .type = NLA_U32 },
 	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16 },
 	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
@@ -3143,6 +3191,9 @@ static int vxlan_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 	if (tb[NDA_NH_ID])
 		desc.nhid = nla_get_u32(tb[NDA_NH_ID]);
 
+	if (tb[NDA_VNI])
+		desc.vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
+
 	vxlan_flush(vxlan, &desc);
 
 	return 0;
-- 
2.40.1


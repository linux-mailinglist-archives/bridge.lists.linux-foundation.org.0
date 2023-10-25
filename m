Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 076477D6B9D
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 832FF708A2;
	Wed, 25 Oct 2023 12:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 832FF708A2
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=b3HTZoQe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgBlokfqe4KI; Wed, 25 Oct 2023 12:31:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 15E95708A6;
	Wed, 25 Oct 2023 12:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15E95708A6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BEA22C008C;
	Wed, 25 Oct 2023 12:31:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E13F5C0032
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A334C708A2
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A334C708A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1BoC7ggHJ2h4 for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:38 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::61b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B678D70893
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B678D70893
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J25c9BDxYsx53Uqt/r87l8IfW2Z4tNIeuBhdzo7sTWLJF7f7uj3H2H21yCSCwailPq1TQA9Lajhuj3yylHtayEbg5PAPGup4TYBbW1+/U3Vzis2P5y2Y3mf2WDlzuarFd+cG4sOc/Lj+aT5or2LGig3hmdUfIUzu8p10XjDX+bImUbzmvaLsu9ddQqY7v5R1AxJt8f5HrEdzSJ3LFzXTTW8fa8pfkaQYcK+gzDMMYW0kLrqyjtFFp05E4eoR92JjNiDqPkIubLii9YqT5xOqXrVwbSxshr/jzqYFbyJPGSrrNk8/KF0bjaNMjIWJy7h39qPOmtAAuuYdbFZnlPkcvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AsAJ0Pa5F/FZiYV8zm16gn6Wb3XmKGfj7pxlsgvFSBk=;
 b=k1sBjvh7F1biibBIwPDdAgRSWCxz1uAA2K4UsEr7cUaPUb3zbaQ+/ruJcblnNdFZnGlOwQVR1+ikFojOM5f89cMjVbsmVRyeuT0d64HfAyaZZBmDUqpUXpkPjoNGieoaQW5RPw0hvttL72G0Opn9bcQC+Pdt9/VH5h/6HlmgYCFGp4CQHhtd+CvaxpfAw1g/nit0kVs4sguOEZIrtJoDBONJy1SJmToBp3D3RX/Zb7CkNPltzKGm35O3tztdT19VOrXoitqp2ZtUvVUOb2dQBOQHNtWiW84LQqr8UnqwzNJZZTQpY8huK7BzF9jfFtdj8v/D6zfxr1KqqwQyAwuE4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AsAJ0Pa5F/FZiYV8zm16gn6Wb3XmKGfj7pxlsgvFSBk=;
 b=b3HTZoQeVv4BHx2gV6Sg28FVH1OjGEwVzSf4GyKr8HzrgErRx7ezB0Y2utHRv+0iDKpoFid7JpZr7p4wYHL3xwm8vQDu0ocRHJhekl6Rh+SzYQm9ztAJ6rwv75gcILMlyu53igV9T2nsVOlMgQzQSpW3GK/eN+NbvXQYGm1x2njuez5cwNc8Sw3YuzZg6UB/LakfZhhg0qmUC4wspkyiSiDWyDiAaoujWKs/UY9TgQeWGInzOYZDU2uxuLaJwnkuTO5om4U5Ocz6aN6XcmII1HK9doagrX0sff/RzeQeqHPd1T7nj+gzfKZrYhh8P6nQECNP/fBD8Qqtlid97b9hMA==
Received: from DM6PR04CA0017.namprd04.prod.outlook.com (2603:10b6:5:334::22)
 by MN2PR12MB4535.namprd12.prod.outlook.com (2603:10b6:208:267::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 12:31:36 +0000
Received: from DS2PEPF0000343A.namprd02.prod.outlook.com
 (2603:10b6:5:334:cafe::62) by DM6PR04CA0017.outlook.office365.com
 (2603:10b6:5:334::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS2PEPF0000343A.mail.protection.outlook.com (10.167.18.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.18 via Frontend Transport; Wed, 25 Oct 2023 12:31:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:14 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:31:11 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:13 +0300
Message-ID: <20231025123020.788710-7-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025123020.788710-1-idosch@nvidia.com>
References: <20231025123020.788710-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343A:EE_|MN2PR12MB4535:EE_
X-MS-Office365-Filtering-Correlation-Id: d4b80d9d-bcae-4d92-57ee-08dbd5565434
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t6Qphq3tSWfwh+Ftim3vd1iR7EVnFu9oqLOVBxT+IrsFbkjRp+LonTXAfuNuqJ0xU/qK5i92RyTlCTF44Qtz0w8vOjPaAS+1uiuwl6uFBUiVTSEnvXqHp99WnhSYpfq0/CMbj6UcNDCSazUPgF7Oc5XZnPagDSGX+uEiR/dhJ874g2ETgqMWpajCBhLQWaDtomqWGTtls1qVu0Y3cIMPulKpsEFqH1LukrcREm9pbk1OGDxRyb9dPIg4qJeOzM30lEnworL0MX/TanCc/xn+R99M4zhO+n9SI+0I/GgTU0eW7J5+28se0AC6hgSsqeYVuAeo5pd3vQAUngEr/GfZX9j2UtKOimU36jteR8FhHyFmxg6v8CPJxdHgjbqy4ILzi4pph1GZc9rVvVkj9Jtgh6jjVYa/6Rl07C1LgjSsxxpRsCSsFVQcoLNZiCcT9J1axtqjPNTedgbkiL/8JV8SlUvTTEUysK8pFnAKgnR6sPzCecB/Iipm/ecFWr51amrjVB7YmbI2hREZhD9pBTb6hR0lLV5pg6sLxsFDrQGorqW02LEPnVSP8IOGe7XAb6Gw0fmIWXqF4gKXtATlNq4RECTdS4fRcryUkyZWqSOxS3RqH+NsFSbIBFjO+insnK8bwh5Vjd/BL0CifX0M5xQpg6Y2EUt4lSnVDiCohaK+v9CsJXtWkqZ3J+39htj1z+eIKOAHLOv6jlEvE/CEVjWErFpekuyspQMqe0sxFOrhbXsoFR3Dfi6ArLFCB6y3Kcvf
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(346002)(39860400002)(376002)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(82310400011)(36840700001)(40470700004)(46966006)(478600001)(316002)(70206006)(70586007)(110136005)(54906003)(4326008)(8936002)(8676002)(5660300002)(40480700001)(86362001)(36860700001)(82740400003)(356005)(47076005)(41300700001)(16526019)(26005)(426003)(336012)(2906002)(83380400001)(40460700003)(7636003)(107886003)(2616005)(1076003)(36756003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:35.8271 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b80d9d-bcae-4d92-57ee-08dbd5565434
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF0000343A.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4535
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 06/13] vxlan: mdb: Factor out a helper
	for remote entry size calculation
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

Currently, netlink notifications are sent for individual remote entries
and not for the entire MDB entry itself.

Subsequent patches are going to add MDB get support which will require
the VXLAN driver to reply with an entire MDB entry.

Therefore, as a preparation, factor out a helper to calculate the size
of an individual remote entry. When determining the size of the reply
this helper will be invoked for each remote entry in the MDB entry.

No functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 drivers/net/vxlan/vxlan_mdb.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_mdb.c b/drivers/net/vxlan/vxlan_mdb.c
index 0b6043e1473b..19640f7e3a88 100644
--- a/drivers/net/vxlan/vxlan_mdb.c
+++ b/drivers/net/vxlan/vxlan_mdb.c
@@ -925,23 +925,20 @@ vxlan_mdb_nlmsg_src_list_size(const struct vxlan_mdb_entry_key *group,
 	return nlmsg_size;
 }
 
-static size_t vxlan_mdb_nlmsg_size(const struct vxlan_dev *vxlan,
-				   const struct vxlan_mdb_entry *mdb_entry,
-				   const struct vxlan_mdb_remote *remote)
+static size_t
+vxlan_mdb_nlmsg_remote_size(const struct vxlan_dev *vxlan,
+			    const struct vxlan_mdb_entry *mdb_entry,
+			    const struct vxlan_mdb_remote *remote)
 {
 	const struct vxlan_mdb_entry_key *group = &mdb_entry->key;
 	struct vxlan_rdst *rd = rtnl_dereference(remote->rd);
 	size_t nlmsg_size;
 
-	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
-		     /* MDBA_MDB */
-		     nla_total_size(0) +
-		     /* MDBA_MDB_ENTRY */
-		     nla_total_size(0) +
 		     /* MDBA_MDB_ENTRY_INFO */
-		     nla_total_size(sizeof(struct br_mdb_entry)) +
+	nlmsg_size = nla_total_size(sizeof(struct br_mdb_entry)) +
 		     /* MDBA_MDB_EATTR_TIMER */
 		     nla_total_size(sizeof(u32));
+
 	/* MDBA_MDB_EATTR_SOURCE */
 	if (vxlan_mdb_is_sg(group))
 		nlmsg_size += nla_total_size(vxlan_addr_size(&group->dst));
@@ -969,6 +966,19 @@ static size_t vxlan_mdb_nlmsg_size(const struct vxlan_dev *vxlan,
 	return nlmsg_size;
 }
 
+static size_t vxlan_mdb_nlmsg_size(const struct vxlan_dev *vxlan,
+				   const struct vxlan_mdb_entry *mdb_entry,
+				   const struct vxlan_mdb_remote *remote)
+{
+	return NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+	       /* MDBA_MDB */
+	       nla_total_size(0) +
+	       /* MDBA_MDB_ENTRY */
+	       nla_total_size(0) +
+	       /* Remote entry */
+	       vxlan_mdb_nlmsg_remote_size(vxlan, mdb_entry, remote);
+}
+
 static int vxlan_mdb_nlmsg_fill(const struct vxlan_dev *vxlan,
 				struct sk_buff *skb,
 				const struct vxlan_mdb_entry *mdb_entry,
-- 
2.40.1


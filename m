Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CF47CA912
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:14:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3ADFA611E8;
	Mon, 16 Oct 2023 13:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ADFA611E8
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=pKrIPF5P
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1A8tGu-c1YlW; Mon, 16 Oct 2023 13:14:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A6003611F3;
	Mon, 16 Oct 2023 13:14:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6003611F3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01931C0DD7;
	Mon, 16 Oct 2023 13:14:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3EC56C0032
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14612611D3
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14612611D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLtVXyyXpzgC for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:14:15 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8d::601])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48DFB611F3
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48DFB611F3
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxOcnXK654N5l2SpvmCOjR4HQ2kEtE4B7owrjVJbfnECTQpdkUTP0rD3gu6Szm4y5Dez+oBEqBAf4it4rbLm+JjyAu9OOnHe2UftZVmr/muQHiFS7rURUdk+2iAdC25QyR/7Rz0pzEFhWBr0IfDH+C9Tk6Wx1NvkVicgd5CNkbJVF+R6AgyMQkBZJScSiWIOd2wRIFcHebSgnxywvCJfzDTthAnO6yXKJ7XUo385Ek+ZJn5AKFPlxoUh/op5RWB2WMxzYgoWqQ3Y53u18J72i2wXV+10+pTUULqyZUIWLH2i8iG7xMc96LaD0fAeWOwLMc34cuaIe/GwlsH5GS1KVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxOTaOw4cZpPZSdAOZ5K6je+j79U4reLeuBegx+6YZc=;
 b=oI3nf21e8BxF2Iif3LtMOX6QM9NBiBXrniuMwoiq0rahPZq0+ddpi2VuEfv/RbVDfDO3Xu1DqwLec6Y1oKMnboVqKpU8MdmM0NOKqgni04dcYBHDVuAktMV8AwtwOU/ExxfdqRLNLNHgBPpzwSUUgeZnaRd0Mu4tmeR+DCPSxV854uhw0rJ+FL8G6z0FvxEK+2Yn9mrxFnhz9zL41/gMlwFhugYHaQ6DuXzTscd2uxuSwc29tt5qj2DDo3iQv3hze080FjOxVLbhAW68sdGxErXJS/y3Ycv9Jue1DQPPRpwdpMGACb40Tgwzgr3TwdU8xUsCV4Y8l9VENlfa4IIu6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxOTaOw4cZpPZSdAOZ5K6je+j79U4reLeuBegx+6YZc=;
 b=pKrIPF5P5g8M9ah1G1W8Z2H7177q/9jX3Mi+pMxesKB+hJFzACYISwuBBUfI8gxfb2LrMrK67QI5teKvltGvrLWaUCqPMzXdE90NZ6WZ7ACLjYNOE1uUcBSf1rFHp7d6uWrELFonmIff+1oCY6gtFlrmroIDxCSUDMWxOkEtJnQHOcYCQjvDm4cUasx1RNQWdenxQEQ5bKURt1Et4LTMdFG4VN9UYO1Eeb+gCRORBooaoMkxkttdcm9s7W9eEEP63Xe/3F1loxuMnTLBfFZo4JwSTCB21sh32p+HIpMTp0c5zDdYu001nnFeKdH7H9lb13bup4pIT04vmMcD9NJnCg==
Received: from SJ0PR05CA0060.namprd05.prod.outlook.com (2603:10b6:a03:33f::35)
 by SJ2PR12MB8158.namprd12.prod.outlook.com (2603:10b6:a03:4f7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 13:14:12 +0000
Received: from CO1PEPF000044F1.namprd05.prod.outlook.com
 (2603:10b6:a03:33f:cafe::3) by SJ0PR05CA0060.outlook.office365.com
 (2603:10b6:a03:33f::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.17 via Frontend
 Transport; Mon, 16 Oct 2023 13:14:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1PEPF000044F1.mail.protection.outlook.com (10.167.241.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Mon, 16 Oct 2023 13:14:12 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 16 Oct
 2023 06:13:56 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 16 Oct 2023 06:13:53 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 16 Oct 2023 16:12:53 +0300
Message-ID: <20231016131259.3302298-8-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231016131259.3302298-1-idosch@nvidia.com>
References: <20231016131259.3302298-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044F1:EE_|SJ2PR12MB8158:EE_
X-MS-Office365-Filtering-Correlation-Id: d24bdbb0-1464-40f4-2b37-08dbce49ca19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nxfhPaGZYvLy2F3S2A/f0qK9eUsY/ldb8NlqCwjgwHV/wd5UWlTmntIMPv+X4H2ari5pyO0SXtmr6reZMk8fDelba0Ik/b0gOoixtxjKXpEk/gL0dwyo6VlI3GoHD746dpDSEvAp0nc+uW7NWkmikt4Npfscl/u8S872SckrPsovtCnim69FhgM5Ukg8u+EJMyix2eG9E/0Uzvv+Gm9n/W+UVLoz6IuVKpwrhOAGOcek7UCFDip96worLoU34CRCuViGMDyV8udh87gktha8i9bInUwEhaFlmdGmxwEUl1/erld7jHsgmot1Lc5speC0SjfDgG3iTz+AG8sev4BEPLu8S/UQKUPUlcAfg1r8P2L6v+kP66DTY9tCJqNrPJG1lH/3SOf3BdNy/u4TxikgX99ooHhmmfl2ia6VPBGIxeFwESCahlGX3zKga3kRUVNMQjTyNA7aoU8LMHn32KqJ3oK6jUa0JB3ba3NE51v2YWvqyIua6tZr6+t36Ps3FxACxKV36UoEgI2pMxmBYfoDDwD4d4E+m3ClR+hQ+k5KPV9nO6VgLycogFpXgFL8tpoGjzeDLJWdSG6Xn9xDj4nIoxeAJ+J8CSrNc/wA2WLzGEyX9DC48nG3hpJ38WrIDLMY+paxIJEknIxZJoN8QbpF84VexIpnCLUwK4RhFEyXAklwCXvgCt+4YrR9ui5eUu9AZ2Lf70rsYZ0C2Hsn+kTIWaIScXFOcRQhLo4OyuMOrvCmVyJs4PNTQjgdkKC6sxORwdun7y6Ylf55V3NmZ/X6sQ==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(39860400002)(346002)(136003)(396003)(376002)(230922051799003)(82310400011)(1800799009)(64100799003)(186009)(451199024)(46966006)(40470700004)(36840700001)(40480700001)(82740400003)(40460700003)(26005)(16526019)(426003)(336012)(107886003)(2616005)(7636003)(356005)(1076003)(478600001)(5660300002)(8936002)(4326008)(86362001)(2906002)(54906003)(316002)(36756003)(41300700001)(70206006)(70586007)(110136005)(8676002)(47076005)(36860700001)(83380400001)(21314003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 13:14:12.0232 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d24bdbb0-1464-40f4-2b37-08dbce49ca19
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000044F1.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8158
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 07/13] bridge: add MDB get uAPI attributes
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

Add MDB get attributes that correspond to the MDB set attributes used in
RTM_NEWMDB messages. Specifically, add 'MDBA_GET_ENTRY' which will hold
a 'struct br_mdb_entry' and 'MDBA_GET_ENTRY_ATTRS' which will hold
'MDBE_ATTR_*' attributes that are used as indexes (source IP and source
VNI).

An example request will look as follows:

[ struct nlmsghdr ]
[ struct br_port_msg ]
[ MDBA_GET_ENTRY ]
	struct br_mdb_entry
[ MDBA_GET_ENTRY_ATTRS ]
	[ MDBE_ATTR_SOURCE ]
		struct in_addr / struct in6_addr
	[ MDBE_ATTR_SRC_VNI ]
		u32

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index f95326fce6bb..7e1bf080b414 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -723,6 +723,14 @@ enum {
 };
 #define MDBA_SET_ENTRY_MAX (__MDBA_SET_ENTRY_MAX - 1)
 
+enum {
+	MDBA_GET_ENTRY_UNSPEC,
+	MDBA_GET_ENTRY,
+	MDBA_GET_ENTRY_ATTRS,
+	__MDBA_GET_ENTRY_MAX,
+};
+#define MDBA_GET_ENTRY_MAX (__MDBA_GET_ENTRY_MAX - 1)
+
 /* [MDBA_SET_ENTRY_ATTRS] = {
  *    [MDBE_ATTR_xxx]
  *    ...
-- 
2.40.1


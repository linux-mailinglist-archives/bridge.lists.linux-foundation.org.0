Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D367D6BA2
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E35143645;
	Wed, 25 Oct 2023 12:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E35143645
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=E7fVF0Ac
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3qLTTqMlICJ; Wed, 25 Oct 2023 12:31:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 44EF443646;
	Wed, 25 Oct 2023 12:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44EF443646
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17F9CC0DD2;
	Wed, 25 Oct 2023 12:31:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08061C0032
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9A4D4F367
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9A4D4F367
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=E7fVF0Ac
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukMvPQkvUbgB for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:46 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::600])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F26944F37D
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F26944F37D
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9iGzFvyCYJCwRATvfGBSH3nPxCxS4M6RhZ0b1MQIVA8cdVteZUeSlxrMBZ2MZBGIir2aqqUBm37fqh+bEZB4LSBHm0sYRnhuvNIfMAfEysgfyFmkzlLKHzHbJcAffG3cD6Jd2glKlYIiT7Mbsgfp8+lZkCH7kz0VOOzw5V1lpIynLMGyCihcLrBTa6J0TQmlua87PqHf0r2iFucUrZfZPBd4zgJStGDTyUnnvXLLMJLYg/XlCE/MBhLK+Z3Nb0i2nnC0RZfmFVe1sgbJeh1tzXY/9kpIFhKXMBEvdIzgbsPhsV5sWglhDTL9OCHD88aMk0+/EmsY9RbCiH+LSd/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rae7OqQxUVSCz3yVdVwxQVJJJF5zTn/3L+OqBVD0qsg=;
 b=YaTVCRn2SwDlymgZVBkrq0D+yFohA/Jajo4/1oLESWSngwzzvJKWSsI1usOcv8vbKQHZmDSL8LLdtZjEiBxhJU96MkkM2ox/vBiAdkcMJdFhvOjYl47zgJ4CYtpPrCr2z3St7lDKj+1H5OJ/qcCbhv7LxLMGFQX0ug6W9dAy7tm+HbZQwO08Jb4SxpN7x8dBnWk8mDfoxWVviDOijElBC6dpXdzd8xXv7bX50L9ZgV+umYRXFwl6LfGvwVTsty1ONkC3Ts7itEr1FfPJc0M/Su6rKFCEvtpElKB8H/xMrDKN/aithiLDTHnyqgxeVX58o+hzx9o/+XYB3hFlqJPd+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rae7OqQxUVSCz3yVdVwxQVJJJF5zTn/3L+OqBVD0qsg=;
 b=E7fVF0Ac0mJWGUX9N1QOHm7T4EuEOeRHHJSS4hPRIYk5Y9PXR022Vx7Q3OoE+vQPhIkKmY2k21b2TFzd0xlYF4fj0TIGzQ0ZQowxJT1j6im6X4w5YUOcHs6wEIPRQBvXBLtc0/1gUB+BTQyaLT92DEaDVN2UqeB0UMhtTYcLw8+jIl4QH9+8S5TeprMndN63stuw4shnYyHn79lBaHgQWCFAqDwsARUQ21+XEkNsHIHKHWMtatP1/8rSFqT8bJjUaUNyxyY4rQ1KFnKOmB/k/v79jy+t79J7cGCgiQMi6hAzbhT30vm9ZVFuLMwJdPxF6wDAoR14gsktyqa9vYM6UQ==
Received: from DM6PR04CA0016.namprd04.prod.outlook.com (2603:10b6:5:334::21)
 by DM4PR12MB7527.namprd12.prod.outlook.com (2603:10b6:8:111::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Wed, 25 Oct
 2023 12:31:43 +0000
Received: from DS2PEPF0000343B.namprd02.prod.outlook.com
 (2603:10b6:5:334:cafe::33) by DM6PR04CA0016.outlook.office365.com
 (2603:10b6:5:334::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.35 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS2PEPF0000343B.mail.protection.outlook.com (10.167.18.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.15 via Frontend Transport; Wed, 25 Oct 2023 12:31:43 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:20 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:31:17 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:15 +0300
Message-ID: <20231025123020.788710-9-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343B:EE_|DM4PR12MB7527:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b6b5e47-4e6a-4329-4554-08dbd5565886
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oRVnVZ7EQcA8jIFzLYvHW544RjnOHHNrHw1tCEOV8uR7gEZ7EgPGEFDC5T8py+P7KK28N9HVQRp7OMr1ZjleCVDzuStgSpu0u6tLcFzGkrWyzbH/1gGhpqUxJTrkccM5ppGgOLwW/Euj1Cq2FdDCNBRMeCR56ZiXXY865AJ1sfHa+/F2AfBwFmvVpAQszhh9yJI1ZSEPhwvVoYyQK8TrBJzLjU+6OefNn151KXeuvsksvaHIUbyoUcC5Cg2CmqT3jzKBpuosu9B1SSTuyQ+gWWczTD4NWeT70tqnoaA2ifI516ZVburxbC3Q6Dk2JxuMMVAXxCNaNIv1J2floSWOEqUU6YCWlBYi3now/NEkyWzakUZwVoww7L2EHO6xiVQas6alQg84YUZ4ekLD92+dZUA3zeT9ZOo2dWE+/ZY5OMxSJBcjBVaAlfVdANXT3/Bw0GpXtDXxfZGDeVMQ+3SgPVcEP1zUD5cAF4DEjMm6yIWp+j0c+1NMtbhsuGbVf6XMjiUHjbb73E40EVUJq8+e+IYULHCQulJ11L7R/yn419vTwMmypybBvUZME0Ty911nGXlzn6aaJ50o5eZuquJEgu/e3sbGMcWzBsSzocF/NiMnmoO2aWKzPmc/dDCYOZEKt+oQVFkBaWCY60RrX8RYF5JSJjMShQhs3OnbnVbTTL6HwlhCRzwa/PGbltK7gPBAU4feEbwcTJpa+Xiy/x2nbh2ja3uGJDX2e3lXdWml5w1pyx1/7C0zCoDS/Jq/enFZ
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(39860400002)(376002)(346002)(136003)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(82310400011)(46966006)(40470700004)(36840700001)(40460700003)(41300700001)(40480700001)(16526019)(478600001)(107886003)(2616005)(70586007)(70206006)(110136005)(36756003)(54906003)(1076003)(316002)(86362001)(36860700001)(47076005)(426003)(336012)(26005)(82740400003)(356005)(7636003)(83380400001)(8676002)(8936002)(4326008)(5660300002)(2906002)(4744005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:43.0592 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6b5e47-4e6a-4329-4554-08dbd5565886
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS2PEPF0000343B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7527
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 08/13] net: Add MDB get device operation
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

Add MDB net device operation that will be invoked by rtnetlink code in
response to received RTM_GETMDB messages. Subsequent patches will
implement the operation in the bridge and VXLAN drivers.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/linux/netdevice.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index b8bf669212cc..a16c9cc063fe 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1609,6 +1609,10 @@ struct net_device_ops {
 	int			(*ndo_mdb_dump)(struct net_device *dev,
 						struct sk_buff *skb,
 						struct netlink_callback *cb);
+	int			(*ndo_mdb_get)(struct net_device *dev,
+					       struct nlattr *tb[], u32 portid,
+					       u32 seq,
+					       struct netlink_ext_ack *extack);
 	int			(*ndo_bridge_setlink)(struct net_device *dev,
 						      struct nlmsghdr *nlh,
 						      u16 flags,
-- 
2.40.1


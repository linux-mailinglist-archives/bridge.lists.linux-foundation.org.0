Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A207D6BA0
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2424D43648;
	Wed, 25 Oct 2023 12:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2424D43648
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=c2nuO8oN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUBit_QvA1yE; Wed, 25 Oct 2023 12:31:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4E42343642;
	Wed, 25 Oct 2023 12:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E42343642
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7C17C008C;
	Wed, 25 Oct 2023 12:31:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7510C0032
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81F8385211
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81F8385211
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=c2nuO8oN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mn5rCpGF4z8S for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:45 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2060d.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8c::60d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC1D985167
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC1D985167
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gqjIZDHDBygGmNS35viEO1dUV8y8o1dDzBBCQUBv7A2wdFqXqx528fkucaNAwmii1uSSL4nkzARmsfy5Tk/0NjVylSt4DMWzGauJzQvQCROvgV973iB6pyX+VPilWL4UVcq9up2OvZUfbZPQ+2YvGrBGhW7H1VS3yZ1wpYDGmkVav68dEbUHENYpMwMW6x1BHNNXvv8De/OiDei1vJn9eWqttptzUijlhxCK4+WsNtRlyVEvoaBUbTZMd4wLmRpKz+3m8sfT5EFvB1boTH5CC2y+PXKumfEnM0RqzTfUxkApBdFumIxWaonJ/x/98UBMPEKFx5mOZNsDt8Ip1v8kpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=laoG30tubjGqBrfWjLo6SuMiCIlE3dw4f+NOzwcbHRY=;
 b=P92JZ+eAtDayFYA6sgZ8oGoa6d55suYlzrEl/pwa1cpLknjao1Iz0Ux+DcMdyeailNyAKj4ejNEzMtnLYk1+lbPPlzRT2l+FUPOh2tKqdTZ7s93FU0hiEbS2wR4GXDKGbrUlWZ0EbyOYop85otBBlVSdQPz3iLxVURFUQ5eoZO45xDIEPztmkT8xeJMiSOuyP6/dnUmhODEVbboEHrbtzoz+ThjDsRAkv+w8Zq3P8bmdbYauHpk8YCSoXh3ZtUIR8Ib/MO/BJlP9Zds8WFt3+ZkBuOUnC1/Ql/8rc9GzlXn6qBQ/l62G1s/JHzldzpmyLsY5m/Lwme5BLpT81Bz/bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=laoG30tubjGqBrfWjLo6SuMiCIlE3dw4f+NOzwcbHRY=;
 b=c2nuO8oN34md3cTGZCRHx3EFf35q20I7PjRuu/7vG6Jq9TIx1GfM4h8K3ju5fRmEtE7ccjtvkN5AhTsB1efCTS4ZtusE+BiYQA8r7oLDHXURTZ7TQdQdOJW9GU4BlukVklzUnxW5PlaXs2tT6Jx0mpEgikBnHk2dS4L5V7A9O+VE9ws7HBSCssVHrvNAe74S2o5eIFgiflr8Fzbo5pffIIV86VCGiw4B0ka6Sh43HpPt+PAj2M5OLyEfbjhSZSgfHJ9LKuUNj3CiJpKNlfBH/tUHTVc/sO5k2gDUg9/K41HWCapWQ5rnMCansSw8fUDlUS0W9TVW9IGKOOz+hoPbag==
Received: from MN2PR16CA0042.namprd16.prod.outlook.com (2603:10b6:208:234::11)
 by CH2PR12MB4280.namprd12.prod.outlook.com (2603:10b6:610:ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 25 Oct
 2023 12:31:43 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:234:cafe::8d) by MN2PR16CA0042.outlook.office365.com
 (2603:10b6:208:234::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BL6PEPF0001AB71.mail.protection.outlook.com (10.167.242.164) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.15 via Frontend Transport; Wed, 25 Oct 2023 12:31:42 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:17 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:31:14 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:14 +0300
Message-ID: <20231025123020.788710-8-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|CH2PR12MB4280:EE_
X-MS-Office365-Filtering-Correlation-Id: d5437a15-ea87-4c06-a677-08dbd556586f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xMDos5HKKRYQTzFyYwjGHC3twqEhy9Ifyl2idipdqJ4u0LFyKEEwgdHqWk6ZwqDR9AkfOUYsW6Pc9T/rs1mrZT9CWr6pyZSkccPwVWoNomI+6bxDWNCyWQzWRePwJBnspp+iVXAH4z2HUWTawTd2ytEaA/qZLvfVc/9QUzRKZUX75uMO7tGDQW3jGrCx25Bteg2xEzumWyFTb49pyH/7ZVNnW8GgK8PG9VLD/0Vfi31q08id4kT4KEpao6GoalgJg4jHUzJGI6VIr3NIuSIdO0LINwpM4uKcsVjZ00sKTow5nTTOtljZxLIy/GDfptUGBLCAFmyjnoTLe66sMQ7rcUWoJXqyKyZZwwJECD1mLzFz8qbODkTwiP4mKwMjAp4QMfolkSH3I9YDZjEhjMBVtq5uXZ93aaJpukjimJwDCXpKL+9w77ZNelgknw/18vUuy5TXPc7ZVqo0Eavp0pFf9rqSlYPJRB4ZB2MSoPchslModk2CwSeC8UmR7McDAuVMoWt4ZMtioftaE/C9EABREbjj7yFnWT41jIrL3hSBSLzfq6WTT1+QISQgYAeybImmgJAKpFZQc9ZnOpoRi54/LfamPjzKLtwD8OpTf0yarBFAeM1umHe8Kl0WHNc3dY42jACCI7LqiEYgJwkq5/XOw6OMGxt8W0X8xdIPCtQJLBgFN8bU1AduM8GCXeggFfhwqFyIp6OG+WSqzmK0KWvzt4Rh/flwJYAd4RmOzuD5KDxOZQqOOKFdMZ93QJ26GaPY93iFi/kMXm3u4o2VQK8x9Q==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(396003)(346002)(376002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(82310400011)(46966006)(40470700004)(36840700001)(47076005)(40460700003)(41300700001)(5660300002)(70586007)(86362001)(316002)(8676002)(54906003)(478600001)(8936002)(70206006)(110136005)(4326008)(82740400003)(356005)(7636003)(40480700001)(36756003)(36860700001)(2906002)(336012)(83380400001)(1076003)(426003)(26005)(16526019)(107886003)(2616005)(21314003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:42.8641 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5437a15-ea87-4c06-a677-08dbd556586f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4280
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 07/13] bridge: add MDB get uAPI
	attributes
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

Notes:
    v2:
    * Add comment.

 include/uapi/linux/if_bridge.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index f95326fce6bb..2e23f99dc0f1 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -723,6 +723,24 @@ enum {
 };
 #define MDBA_SET_ENTRY_MAX (__MDBA_SET_ENTRY_MAX - 1)
 
+/* [MDBA_GET_ENTRY] = {
+ *    struct br_mdb_entry
+ *    [MDBA_GET_ENTRY_ATTRS] = {
+ *       [MDBE_ATTR_SOURCE]
+ *          struct in_addr / struct in6_addr
+ *       [MDBE_ATTR_SRC_VNI]
+ *          u32
+ *    }
+ * }
+ */
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


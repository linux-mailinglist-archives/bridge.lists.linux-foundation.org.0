Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EE0751966
	for <lists.bridge@lfdr.de>; Thu, 13 Jul 2023 09:10:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD58341F5A;
	Thu, 13 Jul 2023 07:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD58341F5A
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=TSd/fVqw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0BWs01icOmI; Thu, 13 Jul 2023 07:10:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1172F41F68;
	Thu, 13 Jul 2023 07:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1172F41F68
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97B60C0DD4;
	Thu, 13 Jul 2023 07:10:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2ACD4C0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 07:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F206B40A85
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 07:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F206B40A85
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=TSd/fVqw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9CcnI8Rtd04 for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 07:10:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D78740640
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on20618.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e83::618])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D78740640
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 07:10:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A00QTGs5hJbzrfY7hlxikXD9XWSn2VWVVe322M8leetPeZyYHwe6h6YDogHB9/bIWJ1B2ujgubVnHmza/14njMEMUlhvHvL8lpB6QCrX+g4JIntLWFArkfwaOuduWr81WLfy+5ED26+O/Uv19VHI7tJKQobFpDVlgef6+4GKr2UAMk+ofwx6MVk2F6yTcdCU1RBIGO3Cl068S4nniv5xKfCiBUqpJ8MGl4s9xFZv9kWQgDYZoBOEjnv2C+/gw9RCVUtkXerRFD30kl+h6NbczGTZWiNx3n7cSzkeDEKgekKwWWxTj2h2qKeO2ZlJMrpiXwx3yBptcWi9FnI4c6OTWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DO+uLIS1dBPXdBfEZBh1qciQOB31Z7EWfy/iI61kG3U=;
 b=h9TFnj4rKuXi8oIGLqLw5GuugR2eN/ppJFcwtVdpzj2znhSc6Xe1B448Dx/oOJhe1mQojXHN+K0/5gHQTcFcqyrryL0SLd1IV1znbMecvXU1DvFB+C5k2SExvvb16xUvhT8uWre+028svDLIazy9mtEPfEuRQmyHqb7G3MYKdhj66vFrxZ1yEvQMjZnyoCpkjaHPXc/GRqcKjyJjggCzvBI5gE0S8gtvrrY1DASOgY4xtQNDdKIV55qkPzMKnrx3EJQ8Ao3wg49l3+5POofzzdS180MF/lYPjZ1/bWtN2GfxE7uJZhJegzIRZZsOWvEYdLU3yS+yrKOb5dUtbXqnvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DO+uLIS1dBPXdBfEZBh1qciQOB31Z7EWfy/iI61kG3U=;
 b=TSd/fVqwfGkGK+V9wHKxLAfT/8qS9YNeGxGT5w6/hxbXbyYocwKENplJInpwCssyvZGTt03NccVsb4sgAR5M1oeKJDdFaaTEzLLrpV0nnNvYaL/T9polHXXLlSEnn8Elo7pwZxzwu7ZRLQxjBxWx5T/yiqcyCJZtrIGd1cA8CB993L1RiG5QuVL3WUkE23kLYVvvMwFIlKS29YsELIlqP5Kha+a6laco0rN8DVwUBKCfF/AijI9KHNRLO5ijUZFnYCQfCtUr55ZpxBj4glxe0g4YOevsyf6FRXVAu0sTVHp/UVIJbs+y4u27bKdsyVufSafiCpxjLuf/GyKKyOW1+w==
Received: from BN7PR02CA0028.namprd02.prod.outlook.com (2603:10b6:408:20::41)
 by PH8PR12MB6988.namprd12.prod.outlook.com (2603:10b6:510:1bf::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Thu, 13 Jul
 2023 07:10:24 +0000
Received: from BN8NAM11FT008.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:20:cafe::68) by BN7PR02CA0028.outlook.office365.com
 (2603:10b6:408:20::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20 via Frontend
 Transport; Thu, 13 Jul 2023 07:10:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BN8NAM11FT008.mail.protection.outlook.com (10.13.177.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.24 via Frontend Transport; Thu, 13 Jul 2023 07:10:24 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Thu, 13 Jul 2023
 00:10:12 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Thu, 13 Jul 2023 00:10:09 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Thu, 13 Jul 2023 10:09:22 +0300
Message-ID: <20230713070925.3955850-2-idosch@nvidia.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230713070925.3955850-1-idosch@nvidia.com>
References: <20230713070925.3955850-1-idosch@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT008:EE_|PH8PR12MB6988:EE_
X-MS-Office365-Filtering-Correlation-Id: 99264d9b-ed42-4aed-669f-08db83703aae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s5qTuVUjTP/lQC+FeP1QODSYN3zA0JqJ3XDHfiRK08ysKwL6ol+9Mou+A5x3Egg6xRpQnFTTDmK7OxSU5JTHZBOrU3S+rLzLXZsrNrytuWYKjS8iV/W3y/jGQviGaKh9lBFgLbc2kDZTNnu56CrFiA+1Mxe+vrFIlgdf7FS7zJv/y7HnJT6devtDIW6LA5sVetgwVPKYwH3gowNxdx6+GvSeRbXlIhwx6MwczAD9wmkKEjEho/1QCwg0ujSoJOw2l07Vre8sR3amjhJ9rLDY3gvtz1lDWQKd61a0m0PsEn3rZDyJEhP31Wwmqx29HTiDOQCXGYbTxZaifZRq0wPXC7/L9+KC0Avf6n9B5RPG85vUrQF9VMJIjh2dJYScOYEo3cMlznJwbypQwzXjaNAjEO62K/mKIffELFezJI2nTvOMhxbimXkmxDIZKC5uclZFZDwJ8no8JmG8urUJyZHiD+YBlk/Cw0s3rqCG6CqWVOjHCI0fI3xut/zhp18IHDWkYlwHJwWhUDti/WtHqb8o5N8mwU73ht//D1RatTDAbIPt+IxVys10VvYo9pFpKwP7oJ/mEnK/SXyWvD3zP2NGS9qpj0d4HEQXAU5wbRXH8eHFtBn1aaIeqPcwoWppLoJ/ntVYm29Ov7czBa5jXE37rS9thHVDLFfkDGZvOtYP0oBHWYCrj+wR7t3XX9qcd8+QZvv0fnSdYrMh1eHKUZDLVEn7lvBJ9ZmO0kADXkmtm5hbm1EUsHCtzAr3nic/hazi
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(346002)(39860400002)(396003)(451199021)(36840700001)(40470700004)(46966006)(41300700001)(2906002)(107886003)(2616005)(186003)(40480700001)(16526019)(40460700003)(8936002)(1076003)(26005)(8676002)(316002)(6666004)(36756003)(4744005)(82310400005)(7636003)(356005)(82740400003)(110136005)(54906003)(70586007)(70206006)(4326008)(478600001)(36860700001)(426003)(336012)(5660300002)(47076005)(83380400001)(86362001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 07:10:24.5109 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99264d9b-ed42-4aed-669f-08db83703aae
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT008.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6988
Cc: petrm@nvidia.com, taspelund@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 razor@blackwall.org, dsahern@gmail.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [RFC PATCH net-next 1/4] ip_tunnels: Add nexthop ID field
	to ip_tunnel_key
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

Extend the ip_tunnel_key structure with a field indicating the ID of the
nexthop object via which the skb should be routed.

The field is going to be populated in subsequent patches by the bridge
driver in order to indicate to the VXLAN driver which FDB nexthop object
to use in order to reach the target host.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 include/net/ip_tunnels.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index ed4b6ad3fcac..e8750b4ef7e1 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -52,6 +52,7 @@ struct ip_tunnel_key {
 	u8			tos;		/* TOS for IPv4, TC for IPv6 */
 	u8			ttl;		/* TTL for IPv4, HL for IPv6 */
 	__be32			label;		/* Flow Label for IPv6 */
+	u32			nhid;
 	__be16			tp_src;
 	__be16			tp_dst;
 	__u8			flow_flags;
-- 
2.40.1


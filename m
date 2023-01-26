Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AEF67D268
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 18:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E141941726;
	Thu, 26 Jan 2023 17:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E141941726
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=dOL5EYiV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVAepEY0JhBl; Thu, 26 Jan 2023 17:02:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 801844171D;
	Thu, 26 Jan 2023 17:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 801844171D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 32908C0078;
	Thu, 26 Jan 2023 17:02:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B2C8C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38980822DC
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38980822DC
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=dOL5EYiV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jslBSAumEY28 for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 17:02:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54FEA822E4
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2058.outbound.protection.outlook.com [40.107.100.58])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54FEA822E4
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 17:02:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOEQbrL2R5c/dBmf7PQt2c7/OHVD1ZvjdOjQNWvfoAY7tdY9SemMFFrJigK2RnpI/IVLl4LKnbwSb55E2AkQb9Zo7iN9FQbFRbwzom+oIPNHwKDj7DlIE8zbx73dLGIHMbxxpnV7Hkw0wE1+jdFDELQKda5LtSrl0HpBJqL+WO1aTfiV1lHD7Q092MCyTcwdCFCcHIvDfmcnwEMw/GDJwEwzHP8MC6GTKnECe+oyVCA+THlEB/N656cY/u09tah3fH4QLf5AmqmU5tPt0GuFWtYvPR4JTL+04PFmObMhSoGjQ0J0GuCwmT6JkNNTQeTGQ4OaM6rDx8g/g4H5LOb+jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unZIVLZjFEKbYFMIB3J78jjRpX+nGMx659EWcFNWJ/Q=;
 b=aU/pTsHe77tlsYTgEP2W2MCUiIPBhQDXTZSk8Y3pQKee0XwGMN4U/Fmsdp+Em9TEkYxBwGR/qpdhCYiVoQ/MnDz/IIHcFYKpoUrTaQ5rwTyLja+WY0SmFLpQ18Y8CRNYKY862DRFCfDWtXHkzHbUlMhkhrBQ9W+b1uKXT0y6fZgaE0KXgPTeyqDZBtYVXYOGHByaYRC7+ZoasGF29Wv1E15hcwZ0ZQVPYPNYYq98nWktFBVCokfG18arDfoVjBrgkUwTt91USrBR5yTsGR6loBuSgaMO0k7FQojXS1OPMjNpo98RB3puWFBq9BEmavf5DWT2aTu4VojOw6gRxvREKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=unZIVLZjFEKbYFMIB3J78jjRpX+nGMx659EWcFNWJ/Q=;
 b=dOL5EYiVj6vJ5DzQ8ZA34E4m+RkLkqYfY99Q1keIg3SCGJxLeozACCMqrjrxnEeVGBybAgpBkVpqv/u+pmXkHDATNM5SopAm8QpxqQ2sSQ6f53CUnCZF6Trz7PsUL6ygOKP9ZPb/knL2T87BlGguE+6Yy9CBhvtBI2KvrWr0JghZkd/SfNEo7sm9Ip0vRZLltbJjDTt8PPE7MLx2WPo6OiOvmOzgBr5hQCPpoz08gHKLvKD/iHGBmnaao53468iHrkkYdPlZnlxTQbpbaB1P2I2rPZbdA45clbmJhY54WHGshIbDXbxn9jFajvPDenjG1E0NBFTHC8Mgsi+Yc3ME6w==
Received: from DS7PR03CA0322.namprd03.prod.outlook.com (2603:10b6:8:2b::29) by
 MN2PR12MB4584.namprd12.prod.outlook.com (2603:10b6:208:24e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 17:02:31 +0000
Received: from CY4PEPF0000B8EB.namprd05.prod.outlook.com
 (2603:10b6:8:2b:cafe::17) by DS7PR03CA0322.outlook.office365.com
 (2603:10b6:8:2b::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21 via Frontend
 Transport; Thu, 26 Jan 2023 17:02:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CY4PEPF0000B8EB.mail.protection.outlook.com (10.167.241.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.3 via Frontend Transport; Thu, 26 Jan 2023 17:02:30 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:02:18 -0800
Received: from localhost.localdomain (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 26 Jan
 2023 09:02:16 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 26 Jan 2023 18:01:18 +0100
Message-ID: <064ee17ac1c20603b3530a23e0ca533d57450cfc.1674752051.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: CY4PEPF0000B8EB:EE_|MN2PR12MB4584:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e89581d-4ed7-4f52-b89c-08daffbf1cad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q4uxGQ3OeR9g4KxAG23lD9GWNcuq3oGnp/Z2EG+zZVBkQBIb14EBdijufXrF7rWTeSlktAdb3yCciivVsRK543moGvswdy7n+dBJj0U9VolrVFC1XMtLjVgxloJZorsXjq9ZGa+N990eH+uuYQVIwP7hcaoftn9L6olt4gWcMbPgaQCxUM0Ky3bq6I8w0j98fJ/DFX/L9HNTFovEXZeXfvcmx59FPzvgctgttUTd8rFHuDVG265TMIsmU1enrMaKqrVM/V8S/tGNnfTaoRhkAutDUQ+mmAi5Exu8jVFaJSsQYJLlWfPYqh3nhckG5PpkvWC9bsIZp76muDluIg7N/AAdIruxB0jBvxGglcz9q1I0H22oDOY+gsffcoschFoB//GMB66KELvbgtQ3tl07Y1aAZaGuXsnqNgE9aiAhYukIp2gkm6QJB6fIQ2BDm62RX8mQYkzHpOq41ntF5iEjTa243raqnCA7td37CmSNyFjWsZsrO4zgqRMYlghCXKOyBle2oXn8QmKZBkQrHuOrVfZk1sNq8URDtPZLjTsuXn7tRkCylgEql1SDPMIA2AARBCz6FTpJwOnn2BSeEDmu7TvNYh6yQjFvCkhtviGp9t9JcwTVWpmsXrokiKutMaMHGPNKo43DXkwwRAkOrQ0aFopdDXBpapwj3roya56z8jzsx652R1YVifHLfY4B1f66A8y8vpEKOQwLiK9sZJuOhQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199018)(40470700004)(46966006)(36840700001)(54906003)(110136005)(41300700001)(356005)(7636003)(70206006)(8676002)(40480700001)(4326008)(70586007)(5660300002)(4744005)(40460700003)(86362001)(36756003)(8936002)(2906002)(36860700001)(82740400003)(316002)(26005)(186003)(16526019)(478600001)(426003)(83380400001)(107886003)(47076005)(82310400005)(336012)(2616005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 17:02:30.9923 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e89581d-4ed7-4f52-b89c-08daffbf1cad
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CY4PEPF0000B8EB.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4584
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 10/16] selftests: forwarding: bridge_mdb:
	Fix a typo
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

Add the letter missing from the word "INCLUDE".

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
---
 tools/testing/selftests/net/forwarding/bridge_mdb.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
index 51f2b0d77067..4e16677f02ba 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
@@ -1054,7 +1054,7 @@ ctrl_igmpv3_is_in_test()
 
 	bridge mdb del dev br0 port $swp1 grp 239.1.1.1 vid 10
 
-	log_test "IGMPv3 MODE_IS_INCLUE tests"
+	log_test "IGMPv3 MODE_IS_INCLUDE tests"
 }
 
 ctrl_mldv2_is_in_test()
-- 
2.39.0


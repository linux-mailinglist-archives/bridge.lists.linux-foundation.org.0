Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F14144B4E00
	for <lists.bridge@lfdr.de>; Mon, 14 Feb 2022 12:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 188848139E;
	Mon, 14 Feb 2022 11:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ck4NCV3PWK6s; Mon, 14 Feb 2022 11:24:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AD68C813B8;
	Mon, 14 Feb 2022 11:24:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5810BC0073;
	Mon, 14 Feb 2022 11:24:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 872CFC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 11:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 691E5402B7
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 11:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBEXJ9T4bzEH for <bridge@lists.linux-foundation.org>;
 Mon, 14 Feb 2022 11:23:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on20622.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7ea9::622])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 532F64025A
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 11:23:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFdhTZ8CNzMjr1hyfGfblTSxUcPZoYv/6CLUyj744ZO51wuIDEl0sDZFLdV5lO9vfb9zWLiJdoPdXoVb0kHv9WkRuDwRxatqaM7PkEuVjZw6hySKFTq44j6T4Czxs295lFw0asII3VD82WVzxzdjqp8MISL7CymvZ++gVu5NEOtkVLX1e9geAiFChagPneIuDSEx+9+2T75dZCRPEggaEs4ym55WHXZ3arTI+nDIC8vmsREtKc9G7xbZTr8fOZbJ0LU7hZUVXftT6CQUEhmEQiJqu4K9kX2VAXGw78V+VU37v5tjE3P2aG0HZUmwRzBixt1mC9U06LoS9gVBAXVJsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KfP6ixMSlLLBQi8hwtgYo+mzjMgRuDn0LKTSk9S0G6s=;
 b=OVXsi3+DyFHotbVv3WD2/VQEFhXqeLm5kXyZh+AH2igu74Cz0Th/HJUEalYxnTXXPtY8y43i+uOcW/5TFPcreZvMn1uBiZ40yPXYM/wvqiS1imrPo+VWwdc68AhIjxhB3kk7C2xz/oxveOzXeP6GtNbOsIrFYGAObPaajMk7uGkClb56iWLhwH1HCiyfiN3I1h9vOudzNaGqHcMONW/plqpvdoqbRLPbueJI6tO0MKuFVW0SPQp/aCK1jVSC404197WtUVE2A4u2wwgqpeNn/qwpNhFQbO8xS8VHXwlncAYfAUraGR7NC92h95FwuEtAAl74lPjvlBuf0b/whuw7JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KfP6ixMSlLLBQi8hwtgYo+mzjMgRuDn0LKTSk9S0G6s=;
 b=DgnS3dE+0u/MR+rQb1k1FntJf4B5WHWD/9AQe7b8RStDAOtygjV8qEWAYGQcRxadl5xuvk49yLFgdz5oL1/CsoiYABy2bdJjnfDYpqeyZjPqs4sR1i1JHW8ftMI7DSoxjwf+6lAEsFIXa6VfDNKU+Us84dUWXsZLGkPs1CprGaLs9caAlOaaeOf92qwW1tQiOffkET2kuuOIHLt5eXjy5xGqdoZvOLKezYeKDMiVfsRyyBSkyTw5r6WxiuPjkKhBZQhm/1LSaTXfOGPjYJSEIQnAG5zeUxI3mGvCRGzG3ua9uLLw+EZYKZFXc5GvFYjlNKjdpf8f1XlnyQEqVJHmEw==
Received: from DM3PR12CA0102.namprd12.prod.outlook.com (2603:10b6:0:55::22) by
 MW5PR12MB5682.namprd12.prod.outlook.com (2603:10b6:303:19f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Mon, 14 Feb
 2022 11:23:56 +0000
Received: from DM6NAM11FT015.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:55:cafe::1e) by DM3PR12CA0102.outlook.office365.com
 (2603:10b6:0:55::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11 via Frontend
 Transport; Mon, 14 Feb 2022 11:23:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.236) by
 DM6NAM11FT015.mail.protection.outlook.com (10.13.172.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4975.11 via Frontend Transport; Mon, 14 Feb 2022 11:23:55 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Mon, 14 Feb 2022 11:23:54 +0000
Received: from debil.mellanox.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Mon, 14 Feb 2022
 03:23:51 -0800
To: <netdev@vger.kernel.org>
Date: Mon, 14 Feb 2022 13:23:32 +0200
Message-ID: <20220214112332.3330923-1-nikolay@nvidia.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf7e1b14-8359-41a9-0fb7-08d9efac7ce6
X-MS-TrafficTypeDiagnostic: MW5PR12MB5682:EE_
X-Microsoft-Antispam-PRVS: <MW5PR12MB5682E210BA11C3760013A9ADDF339@MW5PR12MB5682.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w95MnW1t7oWoB2WPUuVtEvRIwNltD2SOnjbEb3s84YSQLi+sjtymeucBI+5Blq7k3FIuiD8hKfE/42n2aSHz3cDG1EsRuEIapKOrjWn4K5FwkaHEDv89riQV2kzdDGbywdLgflWHceIhfTPjWJJqmQoMr+hzUtLoRznnKA9KDh4eo3YcvcqgTAASrnN0yhfz0kRIyG2/65T34lhtZ+kE6ZGjlJoqbncWXsNHo/2qhU2oH8Y1j3xhrEJ3i5v/jCViNt1VymEvDXQPl7sg2mteEV5A3ftyN21xBF0cqZGxn/LEMzYJYachMSHeDmu+BFKTl92RMc37cEXB9EPtJ030bGdBs/N8iDWUm6M8fM1ZozehHO4DZzkJCHne3QZBkFo7SDrVtTFXLfFu75jwIR401GBWuaunrhjP+pccPAfJFvC3jbMg1vUC8y47ED/1FUq2Z5s+CicFtzAoiQ3cRvT6VCoZQ7U10D+rQU1crvfChiJNsma7JEl+/sisDjN1P6J+nrn5JMkk2zS8AUMdJsx7ntXE0s8qA98fCTGrAMWnrXl9AcK+32rNLHAmUtGZYwqn2V6OdLCo6CXHHcBYJzpFScq4sRLSrrwPycvSJSo3G9SwLUwH33oRBddNMo2VdLHX05AfdmMAXsx4Arj2UyAgXF0xytoQeu/hw0Cz7qAwKqMkh5altkHOWalK6GQX++hQ+bffdMgv+j2rmwCexfcH6w==
X-Forefront-Antispam-Report: CIP:12.22.5.236; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(2906002)(2616005)(26005)(186003)(1076003)(16526019)(86362001)(508600001)(6666004)(40460700003)(107886003)(4744005)(426003)(15650500001)(8936002)(336012)(5660300002)(82310400004)(83380400001)(54906003)(81166007)(36756003)(316002)(6916009)(47076005)(70586007)(36860700001)(8676002)(4326008)(356005)(70206006)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2022 11:23:55.7251 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf7e1b14-8359-41a9-0fb7-08d9efac7ce6
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.236];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT015.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5682
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net] MAINTAINERS: bridge: update my email
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
From: Nikolay Aleksandrov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Nikolay Aleksandrov <nikolay@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

I'm leaving NVIDIA and my email account will stop working in a week, update
it with my personal account.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
Routing through -net to get merged in net-next so there are no
discrepancies. It applies also to net-next if that is preferred.

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2ac90c8b432a..4251553ea2e8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7180,7 +7180,7 @@ F:	drivers/net/can/usb/etas_es58x/
 
 ETHERNET BRIDGE
 M:	Roopa Prabhu <roopa@nvidia.com>
-M:	Nikolay Aleksandrov <nikolay@nvidia.com>
+M:	Nikolay Aleksandrov <razor@blackwall.org>
 L:	bridge@lists.linux-foundation.org (moderated for non-subscribers)
 L:	netdev@vger.kernel.org
 S:	Maintained
-- 
2.34.1


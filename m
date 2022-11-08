Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4AD620D92
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A377B8188B;
	Tue,  8 Nov 2022 10:48:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A377B8188B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=BaylwctL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kBklpXUAYTLy; Tue,  8 Nov 2022 10:48:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3B11D81A23;
	Tue,  8 Nov 2022 10:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B11D81A23
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03BA0C0077;
	Tue,  8 Nov 2022 10:48:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C02CC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECC0D40894
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECC0D40894
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=BaylwctL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1PTsaHRh9gP for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:47:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED54E4032C
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2065.outbound.protection.outlook.com [40.107.223.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED54E4032C
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:47:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0eIlIXOpyvfTgVikNDnjkpmUAzU2hDklBastGj0V0mOyK9cNQn3lv3bkD8wub6g0cCzbrNzBDZpzvkvIRb5duYm0srT+sClXcLA5Pre8j8pFELZwRcuSrW2RWcdD7YRW1BgaA2zPqOBTdM+iVhFftcBeQXF1TpLowKW+OwEB4xVNRTC8cVlHrYo5m6sA98+7V9Xv1RRkFKzw4q2eLq1xeR9YJnrexvta516NNhzKXgTIhYmg/5jTPJwQiN2Fcb1norcaimAvFsIsNXfF4g9kG3FSfebngceMzbUWxUYLOqe3kBZmyldOHfnPNlEkGQ/3FAvJKOqVb8yA1yvYEFFOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J5CjmYMVarafJWwlmM7fhyDRkbO5NPlFuYuaDKhHG/o=;
 b=GPBzSgue+p6jtmwoOt5VXINcWYv8tOnTT117ZIktl4Al57mpE0QrkvDfE1Jv8ay62p2Gm0BpSHLFSnS2iV5p5Cvc3SjYLhifjHYSyRjM8kh1DrAxfBqRgDR0KPtoRjf6SerH+Nz/rOkTBSKCxckkUUABFAdB+BwZGnKed6Zn0LSI+pM2etTep9FJvzDQPEXNjiZhIiCUjpMC9FyZrR0WOEoCfAS+tR92h0sHt/wBcAJ5PFP2UvN6JAUsjF7HGznBtVYS3pF2HrjiXaBrpIO1FD2Ckd0XXbeVukuhNcSgMAmOfZwsaDmFukYrMwGLfXYe87+tFc43fbSAEEnkpw/ZJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J5CjmYMVarafJWwlmM7fhyDRkbO5NPlFuYuaDKhHG/o=;
 b=BaylwctLnhmFA6OXUK36TuvLJJ7gvnOk/7CW2W5dMfC9FrolPXtrfnGXxMoPthn7JoyKIqngTyu8QYEPovbwaV7j+h4Vd+I+fION03I8HdrF0UcfkLBMT7P+r01l2RlUgiNO96ZhuoGLssTElGiADcym41YLZSls9hdZqHNo/h4I3GnXrIdqZUegCtT21QK6yaHfLI6v6gIBGNetsmuibHO6KfuXlYv8wpEfMYeXbshoCD6cGrgNcB8ivPucxvF+3+BaWFr/K1YT1d100A5QTys3ZOvo0SheM4CKgaOc4kITjj9X9+gHqwQwm5ioZ3G8sEBm2Xfh68UkQDaKEudAAA==
Received: from BN9PR03CA0161.namprd03.prod.outlook.com (2603:10b6:408:f4::16)
 by IA1PR12MB6113.namprd12.prod.outlook.com (2603:10b6:208:3eb::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Tue, 8 Nov
 2022 10:47:54 +0000
Received: from BN8NAM11FT096.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:f4:cafe::df) by BN9PR03CA0161.outlook.office365.com
 (2603:10b6:408:f4::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26 via Frontend
 Transport; Tue, 8 Nov 2022 10:47:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT096.mail.protection.outlook.com (10.13.177.195) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:47:54 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:47:41 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:47:37 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:07 +0100
Message-ID: <b266dcf6d647684a10984d12f98549f93fd378ab.1667902754.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT096:EE_|IA1PR12MB6113:EE_
X-MS-Office365-Filtering-Correlation-Id: e758bc46-5b3c-4b25-11db-08dac176b0f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 59tC0fKO8uQ9qsPpFEcwQ93mGizW7Uip8XXnfkWpDJVvPKI16p+h3qObWASnCg1q/4myiKJ7+5DqhGhsY7oRs76jdBpf5E6CQSrYgyey8x98Td+7TLDeq3HPUONYXLztMO8HCJISaPBiZmkiDN8/RaJGVX7fyRzIHMIEfDaHANsZV51wPrJJu/14EMMPlpAu7GGCbTX9PVbrKfVF/8l5rMK8C+KOrpaEHioI5W4JUtOG620gVA/WJGoZvs3xOKpjpV1sVIC0OzPCw9+Ep45RPXI+U7611k5LGmX+pfHS/l3kJH5Ogy9120QAmXvgZ+qWe8f8Nncy/ZEIQUSqsIjbhn9E8ApDDCc1mQBGVtpJC7FYql3w3lhotm2HtZrQTXUK7pc6rNdikNDMFh/GIQLB4Hj8tOPZ3O4e9ySG7Y2TrcTnc1R1WUthXUaqSXH/IMq8Dzfq0+QN2fokPrdOx1lNcETK/FYZWm5I2SmFtsNbq2fnf9NBelxNuKBYPudbTrxFqeB8FspjEipR0C/1feGQY/80SgFvDCGXjE6vTX3FX+nPh+l2WDoy/ziNw/zjS8inlU/Fx0ziJOWxU6CZhNPAQC7b8G6xDhkPSXAtH3BW8/EThk8LvPLGnbs7fPxFAxqBbGwCZbVVQ03fDebr6aIj9kmh2EA/igjaHevh3yEZYXkWHUnzx2NAHcPoXlHfdwIe8RF94nhqUD1zXibI3+7O8MXLAPZUCz+IAzt5Esqj45wQmqCnkId+H0P6fPOHFEHL7x0KGlc685qE60glcQ7DfQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(346002)(376002)(39860400002)(136003)(451199015)(36840700001)(40470700004)(46966006)(86362001)(36756003)(7636003)(356005)(36860700001)(82740400003)(5660300002)(2906002)(7696005)(336012)(426003)(47076005)(83380400001)(26005)(186003)(16526019)(2616005)(70206006)(70586007)(316002)(82310400005)(40480700001)(40460700003)(4326008)(8676002)(41300700001)(8936002)(54906003)(478600001)(110136005)(107886003)(6666004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:47:54.3664 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e758bc46-5b3c-4b25-11db-08dac176b0f8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT096.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6113
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 01/15] bridge: switchdev: Let device
	drivers determine FDB offload indication
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

From: Ido Schimmel <idosch@nvidia.com>

Currently, FDB entries that are notified to the bridge via
'SWITCHDEV_FDB_ADD_TO_BRIDGE' are always marked as offloaded. With MAB
enabled, this will no longer be universally true. Device drivers will
report locked FDB entries to the bridge to let it know that the
corresponding hosts required authorization, but it does not mean that
these entries are necessarily programmed in the underlying hardware.

Solve this by determining the offload indication based of the
'offloaded' bit in the FDB notification.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 net/bridge/br.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 96e91d69a9a8..145999b8c355 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -172,7 +172,7 @@ static int br_switchdev_event(struct notifier_block *unused,
 			break;
 		}
 		br_fdb_offloaded_set(br, p, fdb_info->addr,
-				     fdb_info->vid, true);
+				     fdb_info->vid, fdb_info->offloaded);
 		break;
 	case SWITCHDEV_FDB_DEL_TO_BRIDGE:
 		fdb_info = ptr;
-- 
2.35.3


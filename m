Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 429A87D6B96
	for <lists.bridge@lfdr.de>; Wed, 25 Oct 2023 14:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05C134F33E;
	Wed, 25 Oct 2023 12:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05C134F33E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Cfp4ZDov
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmndcbwWwQSt; Wed, 25 Oct 2023 12:31:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 655794F31D;
	Wed, 25 Oct 2023 12:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 655794F31D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 395A1C008C;
	Wed, 25 Oct 2023 12:31:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 357AEC0DD8
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01D1670894
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01D1670894
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Cfp4ZDov
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3oWAnE3wnhG1 for <bridge@lists.linux-foundation.org>;
 Wed, 25 Oct 2023 12:31:21 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2062b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8a::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29F6970888
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 12:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29F6970888
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOVJ0gkurN+9H3l+vFZzPNyDUnA/Cm/FdieMNbRKj9eh/B+aIdrjGoY0CptN/ms6XnJtRPHHcHh6TLyv+4m/my9pX42CaxrriQ56OVOe1YtubG7SBaIIMy3kc3aZaZ2U7tSYdG/LdPv6Y8HZU/G1ae583Du6BBle5QV1TmhfFJuE/imX/tQzF8QrU2BhsS6O8FOjmid66mZi+4zoZTPE031a8kSbLD0GZ3IStHI9nr1GyYiLRVZwmnCl2fLevvOoRY7rH3SenhoNenywrRpZcLpSxj27PN+cmmo1Pu94e/2lU56RZfsvHV0xlz0l89dzDQOcidecCxNFQlBE8UfwVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dN0p310OhYEDnUIJsuqFIwqDVpDZ9nfizkH1O1aHY0g=;
 b=j+lcKmH6YHyIevu5+/7puzeV91Q6Yqb4C913p9kZQViXO8YEPAgbWtEggso95feq9oBJbsJWz/CzpeIOzmeTvAQUyxJq/kyA2NB6q6bTImOCl+18sIoyewbxWYxbCj7A4XQ9JNtshf49MNkeXhpu+HJYQRMoFDXR6jFCKQQ7Wi3N3OboDd34LfzgLOLXV27JBKlE8V93UeejVVK4e0R5pTJIYKtDUL4+tVWO4ZD4XAhGNdRtdu1SyjThrJhR2z2NjOCE2u7eb5viN24Uhy+PLyNK/G7h+Kpz6S7SZMP6MC3xA+LtgrUs+ByQzp+LIHFLCylvNbkfspQHnsfbeT1sDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dN0p310OhYEDnUIJsuqFIwqDVpDZ9nfizkH1O1aHY0g=;
 b=Cfp4ZDovjeX5kIC999kzy6+2FBxukZZ+OEIR6C8oWhfnHgRkpqNPixsCL4J2+Bcu1uAyFk4FMR2K623/rOXbOjLobMJX1DIQPSNbVEefOa3CZscB1yOhIMtQLrb5yRuwTvcaYxPupjxFaT9wWdFzJ6oLrsVOkTa0gFrpQfsbu2QYJYMSg4F8C+qDrP1nRZPkj+Nfu9HEqTEybO3LKLkEblKIIGbAZS5zaey0U/XwDqA4S19bjL8/mbfpLTgmgdVIvqXidTfp2uLyuI281ht7wW7ktPrM2Jo3Sr5hQ8o3s4Qq9BXR26BBSo8dsebtTLyzl+7VSObT3Qv3jJYBp2Zcwg==
Received: from MN2PR16CA0042.namprd16.prod.outlook.com (2603:10b6:208:234::11)
 by PH8PR12MB6724.namprd12.prod.outlook.com (2603:10b6:510:1cf::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Wed, 25 Oct
 2023 12:31:18 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:234:cafe::e) by MN2PR16CA0042.outlook.office365.com
 (2603:10b6:208:234::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33 via Frontend
 Transport; Wed, 25 Oct 2023 12:31:17 +0000
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
 15.20.6933.15 via Frontend Transport; Wed, 25 Oct 2023 12:31:17 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 25 Oct
 2023 05:31:02 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.231.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 25 Oct 2023 05:30:58 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 25 Oct 2023 15:30:09 +0300
Message-ID: <20231025123020.788710-3-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|PH8PR12MB6724:EE_
X-MS-Office365-Filtering-Correlation-Id: 9475fc2c-8f2d-4245-f55e-08dbd556494a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kwzZyu5xXiCB1VEmYYcNMdSMmoXhEsLcMhml6TXol5JyTyOv31DvPk7Xv8XiPGiG+HRp0FMKOrh1G1OZZc5YFOlhCcpVbr7KO9UEjxDclK5XKGd8lxiJGwdV+qMJAop1u8/EcwfcHtwweSd5A3adHCGRh7TZfaL92o0PLxSQJ5GNJPK8+9rXCY20S9dw9HC4EhNLEypUr4+xyAD4bIs8KreHf+3vRA3DZS+UpLvFyhYvklveBGZ6mjvz71BOJMgYk+FpwD8k6mMfkXc12v9hyg0f/O81Wti5CrMLddntL6zzXIru8+cCB33y9WkyuptOsanBbE5S0uBIx8Drzs3akc+QUQgdpUo1pszZvrL4yj5/aHielL+fuvpgQBbAhHNYP6NT+D6uXgdv1UDCs75KZHKxeTpZnsHoxK/BnSu7nBS9zYE+QkJV1TN2eVs0ROjtjnYx9nSlRI+mHP3thQVnT6ejcw3nMXITmHNHDxhej/Fi86vNHVcj8RMgNdscn+5yxQ64txvitgtHab+8SR6au6YVCgRUdLtj3285P7QkJ2b7O3j4GsTUdHY3G+PFfYEcXot9uDhDcjuazUdkbl4qswfjmHzUtW38ui9NbJ3LSFztQX15aCeCkPivqSwEYwV4TanHwzXDj1Wsz+g8eRt0zfBLAIIcJA31dtj1UUcOhsJnvNlMLHvz5BAsqOlkw0MyrBqgIWap+b7X5BOvzcLne9KFTXP19Tw9UEbO/Czzog/2ixqHV5lTAjmsMZ11+Oll
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(396003)(346002)(136003)(376002)(39860400002)(230922051799003)(64100799003)(1800799009)(451199024)(82310400011)(186009)(46966006)(36840700001)(40470700004)(107886003)(2906002)(5660300002)(82740400003)(54906003)(478600001)(356005)(316002)(110136005)(70586007)(6666004)(1076003)(70206006)(41300700001)(7636003)(426003)(47076005)(2616005)(83380400001)(40480700001)(86362001)(336012)(36860700001)(15650500001)(36756003)(4326008)(40460700003)(8676002)(8936002)(26005)(16526019);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 12:31:17.0360 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9475fc2c-8f2d-4245-f55e-08dbd556494a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6724
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 02/13] bridge: mcast: Account for
	missing attributes
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

The 'MDBA_MDB' and 'MDBA_MDB_ENTRY' nest attributes are not accounted
for when calculating the size of MDB notifications. Add them along with
comments for existing attributes.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index fb58bb1b60e8..08de94bffc12 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -452,11 +452,18 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 
 static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 {
-	size_t nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
-			    nla_total_size(sizeof(struct br_mdb_entry)) +
-			    nla_total_size(sizeof(u32));
 	struct net_bridge_group_src *ent;
-	size_t addr_size = 0;
+	size_t nlmsg_size, addr_size = 0;
+
+	nlmsg_size = NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+		     /* MDBA_MDB */
+		     nla_total_size(0) +
+		     /* MDBA_MDB_ENTRY */
+		     nla_total_size(0) +
+		     /* MDBA_MDB_ENTRY_INFO */
+		     nla_total_size(sizeof(struct br_mdb_entry)) +
+		     /* MDBA_MDB_EATTR_TIMER */
+		     nla_total_size(sizeof(u32));
 
 	if (!pg)
 		goto out;
-- 
2.40.1


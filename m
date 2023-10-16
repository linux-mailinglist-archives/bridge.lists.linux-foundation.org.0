Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BDB7CA90D
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 330FB82111;
	Mon, 16 Oct 2023 13:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 330FB82111
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Gbn4h+Wb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tvLASa5PA-A; Mon, 16 Oct 2023 13:14:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A79B78212C;
	Mon, 16 Oct 2023 13:14:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A79B78212C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5BDF8C008D;
	Mon, 16 Oct 2023 13:14:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4AA82C0032
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16FC740921
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16FC740921
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Gbn4h+Wb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKoTXf82QNig for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:14:05 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2062e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F374B408EC
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:14:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F374B408EC
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFg3wp4clCGRMR4T+2X9Kfs9pRtSLmkNTjG+M3l3POQ3TNfQ/vdWPXtVz4k53UUxHDeflbLXbIufKZ7J9iq2zxoK0Q3j4VgYUyFVRUDG35t1mku3rPmrpqF+3Y197d1+Jop665cw9cZGy5ZECog20JgD56VDJMNhuQuqZ/TRk10rmu0O4MdLpizsuSsi8MhG1nejBZVSjNiRcc5b04/g/Hr8oEXxPS6o1kEECJgY9i+KCTcm8vOaFewfKKxKQxeJxLxhbR1rpy+XJQz9Oc8UYJUar0P3i6zRPp3eMqspcyr+kQ9wBHbSBW0J3xBjKCnZJHxWdHVwgt1mZOIs9SfM4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gfHz9A1EjkSmiPWIWHhNnY5h/JaToGDWRgl4zJ1e234=;
 b=VzsEXlB1sKbNBz7PkJbSY5kgW7m6AZqGjdDLvQIg0jMI5FOFg7/PhzQRJLs03XveUDGC8NmF7Iwa/6iNf4HGTequ8VPvD9n+3gEfnc6yJWsWXojmfQFwXT8k6jWq6l+zG3Vkr9EtEUP75CFFCvVaKeb9dUtK1gE2BL7UiR00P74fWUTN/9YqCFK+q3ADqTqvRLY+Ly8j09AABtfy6QYs88/oLdXerQniWvT/qrAIjpHsSvxqouGjJL+brY/xQHO+C/N0SHmMTOGm9zkHLwENLyJLma28bKrSMq+jBS5YfgoUPZZyhc01Cpov3kR7mGd5OVYOSc6nGo+EB3ScFl3yqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfHz9A1EjkSmiPWIWHhNnY5h/JaToGDWRgl4zJ1e234=;
 b=Gbn4h+Wblh+75U0UG44iSoE8mXzNcJB0CjlCTVJrD3/uRwS9dH9od5756oYuveyoHOVm/5KE0BeqbKkMtTLFY2Pl3V/kK5tkKdxoXCinhYQ/eyrxPVVl+YHUllgzdWxpW4TzrxoaCWgpFozZzxVF7HihVDcm/hqhV0TaFu05P0SAxXs4jmTrvXGGXhZn8lVzkax5zsSJHHwH3FoyiwzOUsrBfPu/3Pm7fZFOJqGW0pAzhWDocKld5WvFDho/g/PNlhVZl6oXpFmaeFQe8Sj+FlevjJLLme6s3uAmHwJW/hpXKLDJxrVpN5kxoPvSEsKFCmwjP3uA5d8AIGNU6IfcgQ==
Received: from MN2PR20CA0041.namprd20.prod.outlook.com (2603:10b6:208:235::10)
 by MW3PR12MB4508.namprd12.prod.outlook.com (2603:10b6:303:5b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Mon, 16 Oct
 2023 13:14:02 +0000
Received: from BL6PEPF0001AB71.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::1) by MN2PR20CA0041.outlook.office365.com
 (2603:10b6:208:235::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36 via Frontend
 Transport; Mon, 16 Oct 2023 13:14:01 +0000
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
 15.20.6838.22 via Frontend Transport; Mon, 16 Oct 2023 13:14:01 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 16 Oct
 2023 06:13:43 -0700
Received: from dev-r-vrt-155.mtr.labs.mlnx (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 16 Oct 2023 06:13:40 -0700
To: <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Mon, 16 Oct 2023 16:12:49 +0300
Message-ID: <20231016131259.3302298-4-idosch@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB71:EE_|MW3PR12MB4508:EE_
X-MS-Office365-Filtering-Correlation-Id: f1f9fe99-e2be-4257-bcd0-08dbce49c401
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 17E96HD2OJNKCjcTeJ9fI+WXTuftCIMCWjdQHy066e3GwVxrnn2OeKnf3S5UogXOfJ44YNUTonawiX8jTfuClxW51Y4gmgzJcIc8N/jXBUM1GO2XrOMYKTSMRLlmRVpONtS/H0POcVTjEDlIw8/vSJWu2+qxKTeSED4QEqB4x/4gQmGpNTzcXNhwILarQ3HcQiEIq2/2vWpIpKT2M6OcayPHYSDz3mqUWWXjN3Lfb9MmoKuCW9od/5iBFcNi8PNiwaj5lCaphh/ALNndtzAQutl5k3Ny3nurLdo5RwL7N/ri7S7BkF+i0Ig53SrM/qp4WPYNWrkPzJHSCMXhcy7preSCRAU5ASSuAnFLrgeHHJVI3Y9LetEHpGorwdrnJhMD9RQCRnxPvGHj2Yq63WQgZF1B4545jYS7f+K0Mp2yraaBHwvq+qxAdACNs2jNT3z7zleNHkAAj9rtsgg7KzkqrcEm0sMriEVM3XKy+trIMXdr7rMD9UCVtwyx4kq9Nm9Ca4wDJ7jPVBvb11K7L23yyv62El8KodyzEIKpEBg/TSOJL3/kHOMmsUKRPbDf8TTmgDxWdvPH7fD8RaT2HLcZ2Tc2kmxhfQjHM1zAhmommUOOvdPyNmDPF+Euu2pv7F2XyOZhXnPI7Dh/2Aapd4pnWxc52qqlxhqr6c6CIOfbagRe18gJqyKpmHDIqWAFOdtUh1llBGoJMYjAXFgqNxtx100ibbIe7yU4AM/Yxa+Jt7LS1maa3kXSz3DSROJmSN3Q
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(376002)(346002)(136003)(396003)(39860400002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(82310400011)(40470700004)(46966006)(36840700001)(40480700001)(40460700003)(478600001)(110136005)(70586007)(70206006)(54906003)(356005)(47076005)(83380400001)(36860700001)(82740400003)(316002)(336012)(86362001)(16526019)(26005)(107886003)(1076003)(426003)(2616005)(36756003)(41300700001)(5660300002)(7636003)(8676002)(8936002)(4326008)(2906002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 13:14:01.7408 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f1f9fe99-e2be-4257-bcd0-08dbce49c401
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB71.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4508
Cc: mlxsw@nvidia.com, razor@blackwall.org, Ido Schimmel <idosch@nvidia.com>,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 03/13] bridge: mcast: Factor out a helper
	for PG entry size calculation
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

Currently, netlink notifications are sent for individual port group
entries and not for the entire MDB entry itself.

Subsequent patches are going to add MDB get support which will require
the bridge driver to reply with an entire MDB entry.

Therefore, as a preparation, factor out an helper to calculate the size
of an individual port group entry. When determining the size of the
reply this helper will be invoked for each port group entry in the MDB
entry.

No functional changes intended.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 net/bridge/br_mdb.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 08de94bffc12..42983f6a0abd 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -450,18 +450,13 @@ static int nlmsg_populate_mdb_fill(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
+static size_t rtnl_mdb_nlmsg_pg_size(const struct net_bridge_port_group *pg)
 {
 	struct net_bridge_group_src *ent;
 	size_t nlmsg_size, addr_size = 0;
 
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
 
@@ -511,6 +506,17 @@ static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 	return nlmsg_size;
 }
 
+static size_t rtnl_mdb_nlmsg_size(const struct net_bridge_port_group *pg)
+{
+	return NLMSG_ALIGN(sizeof(struct br_port_msg)) +
+	       /* MDBA_MDB */
+	       nla_total_size(0) +
+	       /* MDBA_MDB_ENTRY */
+	       nla_total_size(0) +
+	       /* Port group entry */
+	       rtnl_mdb_nlmsg_pg_size(pg);
+}
+
 void br_mdb_notify(struct net_device *dev,
 		   struct net_bridge_mdb_entry *mp,
 		   struct net_bridge_port_group *pg,
-- 
2.40.1


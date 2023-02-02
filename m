Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A98D66885D6
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 432E641CEA;
	Thu,  2 Feb 2023 18:00:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 432E641CEA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=t5sAU/xZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8w9cGHBuMyQy; Thu,  2 Feb 2023 18:00:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4B0E841CE9;
	Thu,  2 Feb 2023 18:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B0E841CE9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDB98C0078;
	Thu,  2 Feb 2023 18:00:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB922C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B726741014
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B726741014
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=t5sAU/xZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBcXWjFoBdSp for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:00:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AE9D40C63
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::61b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AE9D40C63
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:00:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuXijf5NJOKwu7kFj7D8YDpW0lBYNt+YDKXyTB1BFj8MH84i/5/qKjY/E6YTXbBteN+r+OOsMhw6yVTxC1FReOBgsADXyJMqW8r1tgJB89Czb6N4rtm//v9Gp+FyQb6H81YDE7SR+FwVfcUPIgljcp4Kda+isb27Xk5NeVnpzHCwfrobKF+MaPGfTjkUN+yRTHisvurOQ+yXfp96eotF+crFP+pyZlzHfo4VfjkXAXpNsly0fkvZlVcaxzH4NOIWchK2hueFCk1vrfx/uv+LJVkWL2z3aVOCBMKB/YU4ieSMfPynK+TplJpbUktYnmzFWoLAul/pvkKzQ+LcaY/MKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N+NJeWcOmij5psAkJAqdrH2P6nPDnqGi6LDk27x/pKI=;
 b=oFCKHoffICc7fZApfv4RyUnczNe/SM+Ks8ZBsyRgpds2jKMBARONZ8nbVxlqW7o7S6fyWe9mOpFrf9cadW6mr3nh7cqh7lgM2PS/xHF1renW4Zu+ZVt+a4MU6pzWKgxOU2u1Tc4ABFQ7EIIO0Fta1LZxo6NMxPflpfT7Ilc7KfR//aSIG/J2OIZbkZ+ygziCIXLS/WhPhd3FYEfDhnzwYKcaBMwt//eL6PzonYIgJU3ZHkYPlPxrkmurnxXrtwAk7KuS0EVSeSUvEY4dbbYpjUfbBIx7QTD/WkVve15YYIf6PSk2Rskjjy5ljViqoqXW4ZxCZEpxeCi1B1VKtVfuKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N+NJeWcOmij5psAkJAqdrH2P6nPDnqGi6LDk27x/pKI=;
 b=t5sAU/xZDCVQP/Ln1WMFb8IkKmstnvPapAozGBLofwS//PHQRqCLaf8+tvvWx3yQS2XIYGEOxBDfzxVAq52u6t1h36GcWg9ktIprfMb0x9C7bsrCHyeZrUzl3Lw/6k3RlWUguxhf6IgR2LWdnZdN6zw8GBzyXICTpCq5VIhmmP3jt2Zux+69OqDqI32GD8TGJv19eYSB5pWzIPIL0KgusVUTnSJ4iC/IFltIOLD7vTYINvUedMZL0+gyZsH7UXQOsCzBlDr4kqg4hC7mC8L2g7WvRT6/Ooopb+WslZXI1skRuzcgCRqkpiNKJ9uF/KuI1PvzwmwG0UAqzttVlvvUDA==
Received: from MW4P222CA0024.NAMP222.PROD.OUTLOOK.COM (2603:10b6:303:114::29)
 by DM6PR12MB4577.namprd12.prod.outlook.com (2603:10b6:5:2aa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 18:00:43 +0000
Received: from CO1NAM11FT082.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:114:cafe::3e) by MW4P222CA0024.outlook.office365.com
 (2603:10b6:303:114::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Thu, 2 Feb 2023 18:00:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT082.mail.protection.outlook.com (10.13.175.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:00:43 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:24 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:22 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:22 +0100
Message-ID: <29092300b63495d45cdee68f3c59f5477ca6be12.1675359453.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675359453.git.petrm@nvidia.com>
References: <cover.1675359453.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT082:EE_|DM6PR12MB4577:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d5e04eb-81db-43ff-b8e4-08db05476715
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lrynEv/WQbT3p7EPBknEiKqAzPhLz7cHejyC6cRPX6RcyagVuhw3EC+OGQslLfoJYU2E9ck/IJr5JSROJGZTsvkRiAB/YsiL2eiSQ0U+f3DdIxUgmVIp2N2qYLM6YYq76xvd6O8IL7I/IV7+6sjdmRg0i80/v9iFO53mymKRiNweELDnz9K2sxKhqubxc5Vrt1KavsSC0TN7YyEUd0iiJOs/Qx/OOvEFwHEPoUD/2BjMkNps4XrhcGWuUPgc5HEOfflyg7sIOiNhOVYDu2788z41D8APUUXN0Z91zmBN5yfzHQlhtOjIuyEEsE/RRoOQU5Fe5I6C8in29jMqZKe9rS58QlKI9AsAp2LEW70udhoX/eitYQf3HZj9oSAuNV6B/zfuRMl+K0gRTaUjsJMLlXYVGPa2Q0n2m97imfRfB20E0i1liqrJ4ZdFiaCAyQ1/58FfboxrNHr34lOqYvLfmcV6TtY4tu8iCv/wNSv9s534Or9HwP88yyFbVnFQRDNcJ6PRHNJlwyzxcbfU8V1Ft8LqCOS/YOV8uVZ+oDUD95ML9wPAhflrF3qnrOeTUjMnHNlw+ykTv9lq2QxEkrM6ahOuvm2zAot5WP0E2Ed1JEJX3hDfbWXjTJy+f5RYofuLuYg10cJZhJlpDZJHVr1Eiy1ZSW6B6IKm4AbQn7CEs8VqXQEs/X5YiF5MDiTNTvQcr3ka/ZY8ZVCfJkwoWi7Jew==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(376002)(39860400002)(396003)(346002)(451199018)(40470700004)(36840700001)(46966006)(47076005)(26005)(82310400005)(86362001)(107886003)(478600001)(2616005)(186003)(16526019)(336012)(40460700003)(4326008)(70206006)(70586007)(36860700001)(41300700001)(82740400003)(8936002)(426003)(40480700001)(83380400001)(36756003)(8676002)(316002)(7636003)(2906002)(356005)(54906003)(110136005)(5660300002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:00:43.1163 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5e04eb-81db-43ff-b8e4-08db05476715
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT082.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4577
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 04/16] net: bridge: Add
	br_multicast_del_port_group()
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

Since cleaning up the effects of br_multicast_new_port_group() just
consists of delisting and freeing the memory, the function
br_mdb_add_group_star_g() inlines the corresponding code. In the following
patches, number of per-port and per-port-VLAN MDB entries is going to be
maintained, and that counter will have to be updated. Because that logic
is going to be hidden in the br_multicast module, introduce a new hook
intended to again remove a newly-created group.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c       |  3 +--
 net/bridge/br_multicast.c | 11 +++++++++++
 net/bridge/br_private.h   |  1 +
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 139de8ac532c..9f22ebfdc518 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -1099,8 +1099,7 @@ static int br_mdb_add_group_star_g(const struct br_mdb_config *cfg,
 	return 0;
 
 err_del_port_group:
-	hlist_del_init(&p->mglist);
-	kfree(p);
+	br_multicast_del_port_group(p);
 	return err;
 }
 
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f9f4d54226fd..08da724ebfdd 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1326,6 +1326,17 @@ struct net_bridge_port_group *br_multicast_new_port_group(
 	return p;
 }
 
+void br_multicast_del_port_group(struct net_bridge_port_group *p)
+{
+	struct net_bridge_port *port = p->key.port;
+
+	hlist_del_init(&p->mglist);
+	if (!br_multicast_is_star_g(&p->key.addr))
+		rhashtable_remove_fast(&port->br->sg_port_tbl, &p->rhnode,
+				       br_sg_port_rht_params);
+	kfree(p);
+}
+
 void br_multicast_host_join(const struct net_bridge_mcast *brmctx,
 			    struct net_bridge_mdb_entry *mp, bool notify)
 {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1805c468ae03..e4069e27b5c6 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -958,6 +958,7 @@ br_multicast_new_port_group(struct net_bridge_port *port,
 			    unsigned char flags, const unsigned char *src,
 			    u8 filter_mode, u8 rt_protocol,
 			    struct netlink_ext_ack *extack);
+void br_multicast_del_port_group(struct net_bridge_port_group *p);
 int br_mdb_hash_init(struct net_bridge *br);
 void br_mdb_hash_fini(struct net_bridge *br);
 void br_mdb_notify(struct net_device *dev, struct net_bridge_mdb_entry *mp,
-- 
2.39.0


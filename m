Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FB1620D9C
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 11:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EEDC401C9;
	Tue,  8 Nov 2022 10:48:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EEDC401C9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Dt/WQJLs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odOhemhkTG9M; Tue,  8 Nov 2022 10:48:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AEFDE402DC;
	Tue,  8 Nov 2022 10:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEFDE402DC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CAF6C0080;
	Tue,  8 Nov 2022 10:48:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8E15C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BFD7240919
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFD7240919
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Dt/WQJLs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nB9X3g-7ikrc for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 10:48:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B15D2410A0
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2042.outbound.protection.outlook.com [40.107.101.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B15D2410A0
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 10:48:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K74hUc62GKaAWrecC/mAq1abyMYS2CJ804jLOmWeFjPYysYRsbnA3tJHEl4lkzLEE8EoLx6FjkSKB/Hq0UGyxXqh8/a5+g5vqJdRcE91jC0uWRmWzlcRCrZI0V+1Fjwc8AQQoQZBXAyLUViHu24STPimaIfWJinTn7h17gA+tbRrNteVrMqGZ5vwXz/FGPp1R1noZPq+d9j3taSsJsq8VKc1d62Q7eWq1mWwKaRLc1GUKaCIGsnhCwjJTnkQWjQIvpjAZwVih3YgdGmtOnTA6tPfu9Lfq4oMR2YCOCotsyztOKallgiW/r9U966ccYhhvr0nMpG1iF3tokpD9AWcyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kq5Oq8fcOFcPYTjwT1aMU/D8S+XTSuUQicYnQIZzCLM=;
 b=YgrFQG3y3uLr4YSVtXArzlPAVPF7+bYvcxxXM/6dhXSJj/CfGM25MhloT2r+fqEWB2y0MejPvhBqBqviEllxuHKYPMDNsKsWnZwraHpgYocrr4TcehYeRxketRk6yfNYXMHZQRfd7JAY5sjssVefcaBbRtUGpp25oxgV2jV3iHqMHV/4xDolgNB+gGCkvRJB7CQvE0ulmudoVAv9Ri8JBiPDASyORP8HQLGnAjGE6NuZCcNrb1xrWM/3D9HxZod/9eXRcEZzxlcxhN6dskjv+Ug5/7W5KVRafsDJ7xRf6o4iDRtibmiS8bqIsF8vn5ZvtRoO9eA2k3ovaqzN5es7rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kq5Oq8fcOFcPYTjwT1aMU/D8S+XTSuUQicYnQIZzCLM=;
 b=Dt/WQJLsQ+YLhwVM37poPiMS2c0uuzOLo2dCUDxKSMTILKxmFO8sbhsABykuHF75U9wd9gaO4LxvNOtS/9F4ljRkbphpseQGKn9WFu1o01TW2Oz3tcYVxlmu86rdKM6LXfKMyHN/Iq0nqZZhOU0u/llAh/yCNKkGNGaxLSO0NJWXNw1x3AFILixxHIQ9AHHIoUw0xKnBmemGSbbgTUARXvD0dN7BxYOmxGs8BBPWSZs/IgQG7G3VyDn3VOCuzLQKvBOrgTI4mWdwT3b9A54zIB7SZYs9MD+oGfsGqB286Ugg3bRE2DpAm9LAKjp6awom9tEHd2MjraKWzZwJ6kU6ww==
Received: from BN1PR12CA0008.namprd12.prod.outlook.com (2603:10b6:408:e1::13)
 by DM4PR12MB6086.namprd12.prod.outlook.com (2603:10b6:8:b2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Tue, 8 Nov
 2022 10:48:14 +0000
Received: from BN8NAM11FT020.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e1:cafe::f6) by BN1PR12CA0008.outlook.office365.com
 (2603:10b6:408:e1::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27 via Frontend
 Transport; Tue, 8 Nov 2022 10:48:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT020.mail.protection.outlook.com (10.13.176.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Tue, 8 Nov 2022 10:48:14 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 8 Nov 2022
 02:48:00 -0800
Received: from yaviefel.vdiclient.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Tue, 8 Nov 2022 02:47:56 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 <netdev@vger.kernel.org>
Date: Tue, 8 Nov 2022 11:47:12 +0100
Message-ID: <acba123f510d401a7eda4536caa33218767b75d9.1667902754.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: BN8NAM11FT020:EE_|DM4PR12MB6086:EE_
X-MS-Office365-Filtering-Correlation-Id: 5387c680-7158-4207-c2db-08dac176bcc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4Bl7TFQHr+UhCW0IZeAEgdSkVqn//Wh6uyBQcSwHsJchtQLSf9WHXrejwRnVoPiayzlG4/eKjz7c22LPOwRM2FL9lupb1wasjPJBEopbgzZpg53nAg0NTSDWQiSCzu/YMcGqc4oDCBNX2hb/xkXbYgZ+GENDk8nuxvuRyZMIJmtUjtl0x2uDJ9vW8X1l3njdQw5yWFyuE1WsoLGtMunFR/J5lnvwpDA91wzkRWQ2qMk2XwVCtdB26MXICxUZdjGblgQe+PFfdO8B8v1rnEmwmU/O1WFKKA1bL+TjTCgPzWy4RPqYWHxLkbWQ9w7Jqw6Gm3g46pFCv3HZXRqqZeQ8U0TPWeVMBODzRjXcLf5H2He9QBZ09Z5GD7duQb/vtYbfBZn90IeaVP3uGUb+0lqQ1znGWUSrKnPAlb/MOG5hNs8uHAcFzOMfFllyn4hZwAbWNkyUqM/9mmgIxL6d7DkZiLUlsW+foOcqTm3scoYnxS4DKsp741RP+X4anYAvW/oTN+iVbhNDcBgMGrno8CYWe4x/PJfFcNGB/0FbWYRwfM52heNu8ZxJ37j6fmmof/D2yW+54Lxy95Qx3RnQsmFAmB91L2lM8Byt/9omatWgeyE6hjR9kIuRIX5LkenK6n+RJiofz6Z+INkrPuCsiazdGouCuaAmu7/Td4fb3Km43H92aqAlzzjX/QncGkSz4ufpEMqmfc/hULzdhh3mBSF15OwD+2BfcmRz37Ili5gaFiedEGhp1u4IZsDYAXQQVNkrq8Bmj1SxUJO660vKGpbnEg==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(136003)(396003)(39860400002)(346002)(451199015)(46966006)(40470700004)(36840700001)(86362001)(186003)(2616005)(54906003)(6666004)(426003)(107886003)(110136005)(26005)(36756003)(316002)(47076005)(336012)(7696005)(82740400003)(8936002)(2906002)(356005)(40460700003)(7636003)(15650500001)(70206006)(5660300002)(70586007)(16526019)(36860700001)(8676002)(83380400001)(41300700001)(4326008)(82310400005)(40480700001)(478600001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 10:48:14.1275 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5387c680-7158-4207-c2db-08dac176bcc1
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT020.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6086
Cc: Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: [Bridge] [PATCH net-next 06/15] mlxsw: reg: Add Switch Port FDB
	Security Register
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Ido Schimmel <idosch@nvidia.com>

Add the Switch Port FDB Security Register (SPFSR) that allows enabling
and disabling security checks on a given local port. In Linux terms, it
allows locking / unlocking a port.

Signed-off-by: Ido Schimmel <idosch@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Petr Machata <petrm@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlxsw/reg.h | 34 +++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/reg.h b/drivers/net/ethernet/mellanox/mlxsw/reg.h
index 7240af45ade5..f2d6f8654e04 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/reg.h
+++ b/drivers/net/ethernet/mellanox/mlxsw/reg.h
@@ -2046,6 +2046,39 @@ static inline void mlxsw_reg_spvmlr_pack(char *payload, u16 local_port,
 	}
 }
 
+/* SPFSR - Switch Port FDB Security Register
+ * -----------------------------------------
+ * Configures the security mode per port.
+ */
+#define MLXSW_REG_SPFSR_ID 0x2023
+#define MLXSW_REG_SPFSR_LEN 0x08
+
+MLXSW_REG_DEFINE(spfsr, MLXSW_REG_SPFSR_ID, MLXSW_REG_SPFSR_LEN);
+
+/* reg_spfsr_local_port
+ * Local port.
+ * Access: Index
+ *
+ * Note: not supported for CPU port.
+ */
+MLXSW_ITEM32_LP(reg, spfsr, 0x00, 16, 0x00, 12);
+
+/* reg_spfsr_security
+ * Security checks.
+ * 0: disabled (default)
+ * 1: enabled
+ * Access: RW
+ */
+MLXSW_ITEM32(reg, spfsr, security, 0x04, 31, 1);
+
+static inline void mlxsw_reg_spfsr_pack(char *payload, u16 local_port,
+					bool security)
+{
+	MLXSW_REG_ZERO(spfsr, payload);
+	mlxsw_reg_spfsr_local_port_set(payload, local_port);
+	mlxsw_reg_spfsr_security_set(payload, security);
+}
+
 /* SPVC - Switch Port VLAN Classification Register
  * -----------------------------------------------
  * Configures the port to identify packets as untagged / single tagged /
@@ -12762,6 +12795,7 @@ static const struct mlxsw_reg_info *mlxsw_reg_infos[] = {
 	MLXSW_REG(svpe),
 	MLXSW_REG(sfmr),
 	MLXSW_REG(spvmlr),
+	MLXSW_REG(spfsr),
 	MLXSW_REG(spvc),
 	MLXSW_REG(spevet),
 	MLXSW_REG(smpe),
-- 
2.35.3


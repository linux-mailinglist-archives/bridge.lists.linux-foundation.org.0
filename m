Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D686885DE
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 19:01:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 146D041CF5;
	Thu,  2 Feb 2023 18:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 146D041CF5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=mEh4ukTQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ul8wKOb1VZOe; Thu,  2 Feb 2023 18:01:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4F43941CFD;
	Thu,  2 Feb 2023 18:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F43941CFD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3A54C0078;
	Thu,  2 Feb 2023 18:01:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3CF6AC002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AB53813B6
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AB53813B6
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=mEh4ukTQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CYZbiksRwK1D for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 18:01:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 382568132F
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::600])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 382568132F
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 18:01:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JpqIN+Gj52QZBpM5WKttvN+hEC83ynA6DQBcqW9yK0cBWDZLK6v4HwfMecqooS16oO6JEI00Ee7+sFNdSqczFZIhEYigsMZmg2jqOoqvRtFXdxWLlqJxEKJYz9+cO7cl4dvaK7MvXUFt7CcPW2VAYLO8P6liqA5vV/hNIkD/qE+klc60r4H2lI0eE4IqgYFSi0uKgCMiZjaAWBhjf5FCS0kE/6Mhv7UmtNFm3kN40tb1PTOl5jKWunbl9y4ON//+YBlCQk2esUM4nRwCskToMIAaY0juyD0KTk4s3PsFJKRNAk3iKVGNmK4gbBT/NXmrjx07H7NfeuGOUYGLZjzftg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wala80QlVvUe+kGD829okTyjeaN7hjQ1PvUoebul3c8=;
 b=j5219A7Hdc3df2Bhiba2o/YxNB8JISoC07g7xMxmlO5YfBmuTcfEGj8+tuA1aqNA4o8+qrevVNxH6FOo3k+qXC9AtXIxw+9c28H+eKz6gd6SyQP/zdmY4ZN1RuqrX8EVj+VC5dDopeDRzj2FPd46IOsHNIf/rm3ybKtIlLV241kCT/+gyZTzMwp8sItIl15dlBl9ME9MkmRUdbaQMWxgDIZnUAc5GKLdvHIP9dC3mJAEoSeY4Ay8Ki3DGQPKS0uQ1sp2MS3N8qMum2/ByYSnG74NPQ3dzgQBWSjKr9aImIRXLhPQD0Sk0krXbTEzsDjgGoPP3h4wB4Yx9kiguvylsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wala80QlVvUe+kGD829okTyjeaN7hjQ1PvUoebul3c8=;
 b=mEh4ukTQfGcBxCAZEA4bQ1cR4LU5xWQ1jgPmcrK199CP2FY9HGCwiSbNfcmz0yewQVI7Nfa86bOy/crPUzr2+ojv6MXqRNoHIyLMp1QoMjVwciiih93bNI7FL2WMGGbMVlv2Dpw4NdPLVVZdv4Pui17kETg8kQ8JNNR0sMeguuicXarlhKd1PMXI6MrzjYBfB+mVw0zGQY0PtES4NV0X8YUQRSQrnGEh5BJRJBkZFCLvrzMJdPXxx8XIQ5rI3bJbCTGrAVJAARIy2CN1FDJwZ8HH1CLQepjlgBmIURwDwX7M8zSqJEJfZK6qcBiqyByIDF7mxj+HBg7CxWisx4SRXg==
Received: from MW4PR04CA0268.namprd04.prod.outlook.com (2603:10b6:303:88::33)
 by MW4PR12MB7166.namprd12.prod.outlook.com (2603:10b6:303:224::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.23; Thu, 2 Feb
 2023 18:00:58 +0000
Received: from CO1NAM11FT006.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:88:cafe::bc) by MW4PR04CA0268.outlook.office365.com
 (2603:10b6:303:88::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Thu, 2 Feb 2023 18:00:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1NAM11FT006.mail.protection.outlook.com (10.13.174.246) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 18:00:57 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:45 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 10:00:42 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Thu, 2 Feb 2023 18:59:29 +0100
Message-ID: <b730b89ff698683c8ab176176b95c7d393f67511.1675359453.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: CO1NAM11FT006:EE_|MW4PR12MB7166:EE_
X-MS-Office365-Filtering-Correlation-Id: f3899410-7baa-42e5-e75d-08db05476fc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4VlFTyY1+vhgQau5nOVZgi2EWl8ZXIxdYNotqNOyv6DieoyVv4iLy+YDLa6afbeIR0Y4/Y8yIJ1FgAlDImd8WGsVLNADgQNGrsYbXFc+GcrLZivrCuhvZBMixEsGixQ/Tvfsg7moIMSq7g2pXV89CsoekPfzcUDAjxXqId568VNQZ4XB0FyUIWED3+n4Df0FfUp6Mx7TEGh+RG0e1PQUl+jJKAsT0ff/W3pcXbcqXJVwGeYFRZsy48s9Sp+dRK/YvOn0b8wB9mF8pER0COzvgJB7nhwcakvM5uppOsiaI9vSin5AjSz2UheRCUr8G2SnqhkKOQklhYzgL6YKr3MeyNp2GFBanLcIq5V1FU98WslU/0jiIhLV8KeLo3mRFblNhQ8tY6/ldJ3iLb0MWND5baRDBr/Myuy5Vj5THVa4gFO2yC+244j9ta0dtIX45HceHzisdegKNce31nAVJAKzmnkXLIPjV0uAs2f4Jzx5dXtpSXKR1z2cKinQj90ci4l4/U9KyfmlwB9GANDrwEs1VgFxD/xIyodflyHhKuFm1d0GMc40wVADb/r5adpHYnjnp0n3rw8CtmOszBfKJyC7nqf54bS0Ml/zppd/Do6CaFkFian9YqQ4faSIVFyOPhtDqfL5d1/E9xYadmClJYDrLFdxSYwbefdijDxAuf2QpjHLfkjvRGaZNKJjDCN/J5o5lMjgIv2ZnLlmb6WVBe7Wag==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199018)(36840700001)(46966006)(40470700004)(6666004)(7636003)(426003)(107886003)(83380400001)(47076005)(82310400005)(2616005)(36860700001)(2906002)(16526019)(186003)(26005)(82740400003)(316002)(54906003)(5660300002)(110136005)(478600001)(336012)(41300700001)(8936002)(70586007)(70206006)(8676002)(40460700003)(4326008)(356005)(40480700001)(86362001)(36756003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 18:00:57.7980 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3899410-7baa-42e5-e75d-08db05476fc2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT006.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7166
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v3 11/16] selftests: forwarding: lib: Add
	helpers for IP address handling
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

In order to generate IGMPv3 and MLDv2 packets on the fly, we will need
helpers to expand IPv4 and IPv6 addresses given as parameters in
mausezahn payload notation. Add helpers that do it.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 tools/testing/selftests/net/forwarding/lib.sh | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index 0cfa0b699803..409ff3799b55 100755
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1693,6 +1693,43 @@ hw_stats_monitor_test()
 	log_test "${type}_stats notifications"
 }
 
+ipv4_to_bytes()
+{
+	local IP=$1; shift
+
+	printf '%02x:' ${IP//./ } |
+	    sed 's/:$//'
+}
+
+# Convert a given IPv6 address, `IP' such that the :: token, if present, is
+# expanded, and each 16-bit group is padded with zeroes to be 4 hexadecimal
+# digits. An optional `BYTESEP' parameter can be given to further separate
+# individual bytes of each 16-bit group.
+expand_ipv6()
+{
+	local IP=$1; shift
+	local bytesep=$1; shift
+
+	local cvt_ip=${IP/::/_}
+	local colons=${cvt_ip//[^:]/}
+	local allcol=:::::::
+	# IP where :: -> the appropriate number of colons:
+	local allcol_ip=${cvt_ip/_/${allcol:${#colons}}}
+
+	echo $allcol_ip | tr : '\n' |
+	    sed s/^/0000/ |
+	    sed 's/.*\(..\)\(..\)/\1'"$bytesep"'\2/' |
+	    tr '\n' : |
+	    sed 's/:$//'
+}
+
+ipv6_to_bytes()
+{
+	local IP=$1; shift
+
+	expand_ipv6 "$IP" :
+}
+
 igmpv3_is_in_get()
 {
 	local igmpv3
-- 
2.39.0


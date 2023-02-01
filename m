Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DEA686CEF
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:30:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69D5240B63;
	Wed,  1 Feb 2023 17:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69D5240B63
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=oEJ6t2Oo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1wVbmc1BPfJ; Wed,  1 Feb 2023 17:29:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D6C8940B79;
	Wed,  1 Feb 2023 17:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6C8940B79
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBFFFC007C;
	Wed,  1 Feb 2023 17:29:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE04FC002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A62B741A15
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A62B741A15
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=oEJ6t2Oo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NAZSQ-SxGrpx for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:29:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3E44419AE
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20611.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::611])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3E44419AE
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKkQc4KAXtPTYRovmm4sQEd8krtUoeh7G4D4FTT465Z82hexBMJ82C72kc2R9ZWlD7sz9SfmfHJQhX+fUNcpmhn3kSa2Qb5D/lmWhFhJlt0y9T82wWxU3N93rV9Tmcx3rPI3n3NV6DwY0Z5SjRNHupcD9DD9sIp0zX58Tzq9sMOlQZZWyLIX3kA1ZMduN91EAjLtxjIoFL2SWFGNdrk80qWupZieRQaeBzDaFeoQ7I33+/oWBqO2p/fg2mmm38sHnxgFQbC94FOiNoEWWWn/lMJi+eGIZP8nwuSCjYw4kgC3PkJ0VVeNmrPU8s/zqs/NKaBALYCsjuSkNNzKt9fbDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wala80QlVvUe+kGD829okTyjeaN7hjQ1PvUoebul3c8=;
 b=UrPI8RKYpldsHTGrjKpHskd5sM+aaxVnkwyqOVzs7J20RPh2kRFOrbGwQP2hm0PwQ5V4c1foocsiFvWW4ONl7tDGPScz8DYVzTIm3luMoqwM8cab/g6flBQL7OK7QrQiplc4kRzNv1MzIzODtYG4MuV0xGwkdxzWA+ighc+zYhNM2gq3YbZz4wyR6FmeBD0OBoZy+WnL9NFZOxVZCfeveDpHJ0rbiKz9NIBG5uLWmalZrVUnHCT6QFpr9z1XS/KyrzQwz1GvaVJKXFM86zVM4cY/1/lAxGBPk7O9bXjqn5VcP1te8nq0R3U6KBKA2x0DQWT26tTTR23jhvWfQYNJFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wala80QlVvUe+kGD829okTyjeaN7hjQ1PvUoebul3c8=;
 b=oEJ6t2Ool+GxuzSyQNvFqj5MdwCF1JLl8f0MpFHJ1oZscQrYnvz48fVPlPx2rKqZlUXeFN+E0FthyjwUu1zIxVgjZK6N0xKuvxtux3b/hpmDWQgpWfSuBL+U6z7Ceabb4w/xmmdKXaQ8nOv00DM1Qj8bIPX/RTndwdsmfcwIf9cOmW9Z2Bxw9o+xbqJqQb28qTx/3S6lDwbiGPnKNIwShKkNfUEgbj1AHzNSXWNAnK4hp6Iu/NpSITkXVNNmugIwXnB2KgNeUKqHJdXhlhxQgjtKQ7nk18KO4s83MRE8/dUti0aPU1awPC/582oJjtfrn9YfvDzOM/j1/axi61qK7w==
Received: from DM6PR13CA0020.namprd13.prod.outlook.com (2603:10b6:5:bc::33) by
 SJ0PR12MB6736.namprd12.prod.outlook.com (2603:10b6:a03:47a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:29:50 +0000
Received: from DS1PEPF0000E632.namprd02.prod.outlook.com
 (2603:10b6:5:bc:cafe::7e) by DM6PR13CA0020.outlook.office365.com
 (2603:10b6:5:bc::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Wed, 1 Feb 2023 17:29:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DS1PEPF0000E632.mail.protection.outlook.com (10.167.17.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.21 via Frontend Transport; Wed, 1 Feb 2023 17:29:50 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:39 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:36 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:44 +0100
Message-ID: <b3ea6cacbd5368e0e9f9495902730c3c6ae44dc3.1675271084.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675271084.git.petrm@nvidia.com>
References: <cover.1675271084.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0000E632:EE_|SJ0PR12MB6736:EE_
X-MS-Office365-Filtering-Correlation-Id: 76b9f91c-d684-4f8b-2227-08db0479ec18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 70dZvyQvEwsxjIpeiiiJYb1up0xMOWKo2/V3yXP4DcNq8qNmij9b9cjmu+Ii11hMf4tyjllLLIsXCEJ30vs1RgokIW034XhoxQPQlYR1nFvIdUo8j6kZNEW1XpaBh1MmHjCWLlraOdbZAN+Ik//JeBhExok6nkVizXsbYqagR7tVGHxQV3IYqFCo5SxVCH2Nt1Ui+T+iw0dYeAMBF2TD6SdAPNp1/7AYUsd22Ru1tpUxDuVnOB6M8kPJvr/4p7Zx7VJ3fpUFrvJiuHe2b2zo6XiBX+IDs69C3V5J+uIrNjBinNJQW4DGHaTdjr71pj+47f2/AEhOZ0CEQDxu8XAgUvwErk/y345pJ1penFtAg/l08CGy3rwNqJbjOvanF++RWZmS8OJi9kWDOzmRLaxI2r3aSV10i0MF+tssrRCHNB/MBz31FI0j1ILbXDQ8bMvC9nAZg43VMe/rLv697TGQztGjiSKKV/38JY1BSwxWu365MqKr2iJKrTBWSe8ZjY2HZhzJuA3zW866sVZvoiQFtBzS4jJRCNL/ivb3vBHuxvjtVW6Y/GAAZhC+gXZt7P7t0YrOzZHSkWUdsvTEcnf7oT8TgRW4D+OAedKn/AaDL87Secgq2UKf+fUn/hfm+dotyDz93IZj4hXyir5rxCPY95Xmi4sflffPEQ0Mgl7jU5AeNOZqlBO3TW3D0XTZgCgLTwyHjwgAHwOJSiNnywsjDg==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(39860400002)(376002)(396003)(346002)(451199018)(36840700001)(40470700004)(46966006)(36756003)(110136005)(107886003)(6666004)(47076005)(54906003)(83380400001)(82310400005)(426003)(2906002)(2616005)(7636003)(316002)(82740400003)(478600001)(70206006)(8676002)(70586007)(26005)(336012)(40460700003)(186003)(16526019)(36860700001)(356005)(41300700001)(86362001)(8936002)(4326008)(5660300002)(40480700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:29:50.0053 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 76b9f91c-d684-4f8b-2227-08db0479ec18
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0000E632.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6736
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 11/16] selftests: forwarding:
	lib: Add helpers for IP address handling
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


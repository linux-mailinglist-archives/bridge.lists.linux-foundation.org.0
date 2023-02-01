Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A533D686CEB
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 18:29:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39AA440B7B;
	Wed,  1 Feb 2023 17:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39AA440B7B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=BurUQIx/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qy9iYiKdWuX2; Wed,  1 Feb 2023 17:29:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AA94840B25;
	Wed,  1 Feb 2023 17:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA94840B25
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A8A4C007C;
	Wed,  1 Feb 2023 17:29:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AD9B2C002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87E6081F2D
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87E6081F2D
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=BurUQIx/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VH8RiyPfO6Rv for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 17:29:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD7E281F26
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::600])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD7E281F26
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 17:29:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQ/sYW6g9f69mSVwACRoRXepnkj4i9kXIrWm0sAyIWcJTQ87QvjQN5SprAu3RQ4YkYb/u/h5wFyDcxAvTO63TTF9xMmKP+/SwD0IV1Jn6T8eJWEdfHqVT4816PUYIJFHNHdZSS0B8ldulsXdrRcHPT0BwkmD9m8pgvJqm5kvaOSNz1ySOqq7JTH5PsCaOI57xwZ+6amn5N7izFGx+JwWAOsxFobMGJ8CRzQrv1nhIkOu8UkSniqkVlzkTc/u4gRjXCiLJ+rP07cpuElO4onJZFvH+rA1X6XUIPevvAXsrY5A5Ci+hqhNf10HprBKKEFyigRpKU0vrXtMmz2yJB1QYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QfwDjRcqFxkcs4B67gJfwkJ/lZDxYu654RNOFOi9rw=;
 b=Pg1xGlKTO1/DfLKxQslCULXsfpgqqNeZSDDbP5Cd9b6d8QgUe90g8LZD0EhNW5BoHaYfEWxEbJuFwqQXZ5AC7R67xiGl2MfalYGojsijgauaSOuIDoWrvm1AyFMAuoidwmLJ4okVYbH3ANdqk5TRm3/Ar0vr+daE+7IIE+uJrqDX8wDLiy4dB5NsnrxcBD1xxe2v31tCufavOF0ZwK8sg5SuNY90lbv7+s5IgbllEe6SbneHjOT9FF+yOAhgC62w272NCY6OerkDfyAoh1AGW0VsnCaK1dY1oDAJYoi304XD+QArufeauPUehl7IvxbI/xBNCQkts9YfHLABK1YX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QfwDjRcqFxkcs4B67gJfwkJ/lZDxYu654RNOFOi9rw=;
 b=BurUQIx/z78d/zozfSe6Oc0ZOTkt5bUkbolGS5SgtMAEYy2eVi6VdZXU5IIyRKFdUcJwlVOPcyaa6diNaV0QoVpMjPAx81CnEZhCFn9GzgctK0CSDCZR2lD605ml1b9GLSD1JFvtc0PVZExNrtm6uCT2sOG7B6a9gGXV8fCMvdwGiLkzjgeZHBHqBF+AxPX2lRqxTMU5pdfJxLU/HiwTB7iCbPuCF5Jvz0jVW0PErK2lTtHYzKxDJd5r9l9Cmqk3T7oZVkd/iComeDiESR/yIvoEqH08aQaymF0A9vFHbv2bdlU4/arV7fLukZNro6QiZG/Z1NtT3UhxI87c3d/P4w==
Received: from DM6PR13CA0014.namprd13.prod.outlook.com (2603:10b6:5:bc::27) by
 SA3PR12MB8021.namprd12.prod.outlook.com (2603:10b6:806:305::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:29:47 +0000
Received: from DS1PEPF0000E632.namprd02.prod.outlook.com
 (2603:10b6:5:bc:cafe::21) by DM6PR13CA0014.outlook.office365.com
 (2603:10b6:5:bc::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25 via Frontend
 Transport; Wed, 1 Feb 2023 17:29:47 +0000
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
 15.20.6064.21 via Frontend Transport; Wed, 1 Feb 2023 17:29:47 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:36 -0800
Received: from localhost.localdomain (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 1 Feb 2023
 09:29:33 -0800
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, <netdev@vger.kernel.org>
Date: Wed, 1 Feb 2023 18:28:43 +0100
Message-ID: <aad4cf4f3f59aa652a2aae0033df95af91dba055.1675271084.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DS1PEPF0000E632:EE_|SA3PR12MB8021:EE_
X-MS-Office365-Filtering-Correlation-Id: 243c5c71-0b21-42ee-0db3-08db0479ea7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oOS1thWwsRqWXs5keHjMJPP6bVnYmeicr1OCn33kTPN5FebkCtG8o9mP9b0+LoFvQmZHqCKSCKFvP2GE8uUC7sPjliEopxnY46aoP0E5BVavXmHAv5L2XPPKXVMbnSr6EOHrNf/8sEkr2bUwjHOUI/M7RdA4Btd8sC+3TGnojshKyNSv1E/K8ic8UimEdxVQtZgxnkoIC/uyBc5dMUeosY2DAkMs9LqewyvZAIlLPfNJU45ATSTZa9GmAzIOje11o6hCGflyVf47IUDV2z9SKuzMTrbhBZWE8KzHuwmyF3t0UHp3f/c0W5gsr3x6rXuh6gwSjQO0CXD6xAeId8nFqRv8L0WBBdgZmKYJtXZeOop62iK50YytBXLXcAyONk73rL6DziUWT1a4AKA49NTEOhfNZKyKDs8u+5RwDqnItk3oL7qOWIvXxcMIqiXOqhKDByuW79NmKNyuPQZ2NpnQNFAlsX1Ngg2K01s/UTmaWjMWq6KT++NJ0Gcm/wThuU+rCzlmDCpAQoi450KNM+QJKcIkBovWCQSWLG849jhtR3ZzE0ER5ScfaCgfcl//JoRa7zH0Q558yjaDNDdGlclbmFNtkuUcZ9jiXfpmsjW1mmsVfVY5n5azl/7Uz2POlFWJ3DhRsf6Mdkm4lhGiwGNbL3SWR6Z7bWbtU3JK3ViYluXIllDWSar0inxyrFCbfdlMoVAlJqqSLibaWLL6pEZSVw==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199018)(46966006)(36840700001)(40470700004)(2906002)(36756003)(5660300002)(4744005)(40480700001)(36860700001)(82740400003)(40460700003)(2616005)(426003)(336012)(47076005)(478600001)(16526019)(26005)(186003)(356005)(7636003)(8676002)(70586007)(82310400005)(86362001)(4326008)(110136005)(54906003)(83380400001)(70206006)(316002)(107886003)(8936002)(6666004)(41300700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:29:47.3178 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 243c5c71-0b21-42ee-0db3-08db0479ea7e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0000E632.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8021
Cc: Petr Machata <petrm@nvidia.com>, Ido
 Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next mlxsw v2 10/16] selftests: forwarding:
	bridge_mdb: Fix a typo
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
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
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


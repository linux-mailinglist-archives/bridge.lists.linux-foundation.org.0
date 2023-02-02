Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E553E6879C9
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 11:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D581610EB;
	Thu,  2 Feb 2023 10:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D581610EB
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=dMNp/hQe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFkOjnzSxIgd; Thu,  2 Feb 2023 10:09:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 166C26101F;
	Thu,  2 Feb 2023 10:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 166C26101F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2956C0078;
	Thu,  2 Feb 2023 10:09:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB070C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 10:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AC826101F
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 10:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AC826101F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u8dorRpEjj8f for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 10:09:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFF2A60E89
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on20607.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::607])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFF2A60E89
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 10:09:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkqrN2n5AueGX6Yild0fm54e3EDnotkKvw5zMjxZ3KdUVmmT5NZ9QKB6z70bkgwpcbckFxwcTkfaGEUvXCHMiDDTXXIeRHXBG9rTvg0OWnM9VdyLyFGaEZOcAQcd31oYhEq7zhn1U1hciXQLko5gLb86eAevK5q7FTdhh7AP8rKQEHWBpUdRabz0E5znYDMp9mItizcDp9ehvca2qK0zivG7VRIxNfdmo+zzX6AsohheqZ+g2y+14RQKW8F3MiCYfWnGpWC3zsCsmNw7cpJ0u2CIaHF0r0V+7WMGn+J4Uk7veIrHN8/kT2R3fU/2jiJbkGg7l/sMZwDiEbeafvY8tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CwQ1N3im10iQazwDr1bRs5UHQ4d4kNZidTz1eauJXQo=;
 b=GjNOSfEGIraZZ66FNM8s2NyWSH/lrwVjaC86PvAzQDRN8/31KVIofhgzD5I52FHZnpHMpKSBkWStoTS4LzSQgowXhSadvrjQfLOKNzTlbaQCeysprTHcshDhM1bcGiUBs6S3DKK9p69MhXAmEY8PxD/f2CxSfelX7NXK9RCNQFxvJE13kAVunH406UK+CqqyXXwoGScE+2dSAhYT1wbbY19wFxLtkfD+x5kdJ6vyERNNSkEzihbJayae6TdfZ3rdduKqQP5lgQusaGxa/x/6nvKwqEh6+zreI1h3Z2n7BPeCLyTA6BqdKRffS/ECbp87nZzEB8ImJHQRi0MxWm0Btg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CwQ1N3im10iQazwDr1bRs5UHQ4d4kNZidTz1eauJXQo=;
 b=dMNp/hQepaoE9lhAgHWRol1nUi8luY4ESuEQmkoGm82vdOxRoJaDQC3ICFn2bRclfg9VpzswtQcKI9WeTg3Ogokgcz3t9GWgk2KbXbFV2kbFGBxcRzSNkEkkcr2px/fZHpaxTPJbDLN90LMV90kr33L4CYSiisoqSb94PwD8iaZtY3fJiWfWD0qTOzxvW2EL1gNNVG4MAI3/V0gCmLQ9DiYQr5DnVyomrDrlkv5O8425wHl9OgrN29ij/ak6Dl86b3mg7K9EWTn1ZKneuGqMmzS0Mjc+zFIVKzb/ruiz1Y+7o0OcDCKzyJ+P/ZJ7hYGuxSvDZcPrrVok/aXuWTzc0Q==
Received: from BN1PR12CA0010.namprd12.prod.outlook.com (2603:10b6:408:e1::15)
 by MW4PR12MB7030.namprd12.prod.outlook.com (2603:10b6:303:20a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 10:09:19 +0000
Received: from BN8NAM11FT106.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e1:cafe::50) by BN1PR12CA0010.outlook.office365.com
 (2603:10b6:408:e1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.28 via Frontend
 Transport; Thu, 2 Feb 2023 10:09:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT106.mail.protection.outlook.com (10.13.177.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27 via Frontend Transport; Thu, 2 Feb 2023 10:09:18 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 02:09:03 -0800
Received: from yaviefel (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 2 Feb 2023
 02:09:00 -0800
References: <cover.1675271084.git.petrm@nvidia.com>
 <20230201102546.1d1722ae@kernel.org>
User-agent: mu4e 1.6.6; emacs 28.1
To: Jakub Kicinski <kuba@kernel.org>
Date: Thu, 2 Feb 2023 11:07:10 +0100
In-Reply-To: <20230201102546.1d1722ae@kernel.org>
Message-ID: <87zg9we5vp.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT106:EE_|MW4PR12MB7030:EE_
X-MS-Office365-Filtering-Correlation-Id: 33951e04-0f08-413d-bb92-08db05058c2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Waqw5hE2Ry4Y899S2CeBrxLsX+8FLpIGt7h01hDi3L3BJT6xGUqK0K/UwDtEOhznSn9tN4MbOhIhbhYAmskZ5nNOUuM34y50UG64OGRDpmfH0egz3rH0HfhRn2sgWnyv3gaySjuIkLMBXRsuIDDWTuT8ob5X39OLERzU7UCm9+2zl0Kb3tPdHVsmrxtq1R/dxxrzZQ0V9eX4bYfBysE+AZ9207zHZU7nkrQ+n3tTHyV/PRQJ6HXInJqsJFCo36WEt/htIqiANlx34jXzrxjiRFfRiPRzT06TkkTjt1LtOBGXjWriLYPt2oAoZXY0dd4tEPrHKsF/J/lvpATn41v/2OMZH64AJJxuwUOh2d2n5CKSY/U4/rDD7y28v+EIPn1Lm0wcFHg4XkTGENQhhdgSkrSUHnknQ2gyiOmMBHhy7Li+8d+VXZUeYSrYn0Eny70/4Gy51+ZclqQgxp21lFIUHxAjJVWhwcynte9es8gvlpBpwZIDv4x60tS9f43sMiVIpepOERdt2oa0NlzTUOWGfJudkMJL5ajMJuAZtHjvechv5gWrDcjFrW7IsW+8C+4qPifTbjZdgyx/JvEPdDj8AFICtLKFFniVCR8239auULrgVoJUZp0/13duza29z4aQwY4MkdIGwfICP4K6TeHDnMkbwacOr3fY/l4kfaLlG2VojjX9pnTEsQkP3YCVaEyATlvtIjGZIORBoIssiXMTig==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230025)(4636009)(396003)(39860400002)(346002)(136003)(376002)(451199018)(36840700001)(40470700004)(46966006)(36756003)(70586007)(47076005)(70206006)(4326008)(82310400005)(83380400001)(8676002)(36860700001)(6916009)(54906003)(7636003)(316002)(82740400003)(478600001)(26005)(186003)(16526019)(107886003)(40460700003)(4744005)(6666004)(5660300002)(86362001)(41300700001)(356005)(426003)(40480700001)(2616005)(8936002)(336012)(2906002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 10:09:18.5521 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33951e04-0f08-413d-bb92-08db05058c2b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT106.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7030
Cc: Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Eric Dumazet <edumazet@google.com>, Roopa
 Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next mlxsw v2 00/16] bridge: Limit number
 of MDB entries per port, port-vlan
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


Jakub Kicinski <kuba@kernel.org> writes:

> On Wed, 1 Feb 2023 18:28:33 +0100 Petr Machata wrote:
>> Subject: [PATCH net-next mlxsw v2 00/16] bridge: Limit number of MDB entries per port, port-vlan
>
> What do you mean by "net-next mlxsw"?
> Is there a tree called "net-next mlxsw" somewhere?

Sorry about this. "mlxsw" is our internal tree, the tag slipped in by
mistake. Can you simply ignore it, or should I resend?

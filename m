Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDD9793A66
	for <lists.bridge@lfdr.de>; Wed,  6 Sep 2023 12:52:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F70A60E36;
	Wed,  6 Sep 2023 10:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F70A60E36
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=odCclGV8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgeHgCZKNaV0; Wed,  6 Sep 2023 10:52:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E668460B70;
	Wed,  6 Sep 2023 10:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E668460B70
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 75B50C0DD3;
	Wed,  6 Sep 2023 10:52:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 326AEC0032
 for <bridge@lists.linux-foundation.org>; Wed,  6 Sep 2023 10:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE8608176B
 for <bridge@lists.linux-foundation.org>; Wed,  6 Sep 2023 10:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE8608176B
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=odCclGV8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aj2KiOqkYJE8 for <bridge@lists.linux-foundation.org>;
 Wed,  6 Sep 2023 10:52:11 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::601])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4770E813EF
 for <bridge@lists.linux-foundation.org>; Wed,  6 Sep 2023 10:52:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4770E813EF
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5WTkUZp4PRxnQCtxWvkQI7iRXHhDYWnarGnvDGkxWuZLDB0stj15C3IesnrYztio4AYLysyGPbDBaYp12DKsvfmxtOJ+X6D2598L17NMhc8bzLDbz9WtKPpPvaqTv4IVspuILEJPfkcLZwZXbLJK8bQj6uDOrRnIp4ZOm+noC6xD2BNBQ0XFW1ATUZWYEUEyJfadHz2FFyqhkQ2MZmMBxzkLxRp5H3SKkITnMR3ybw5pBYRSSwFvr/W6DHjzxfOf7D2j9ZpMbA5d+LrY+KZ+74dyUyLvTb0A9imfpl8H/BJ3rpTYH/KbdfvbfeioCPU0m2ek6NMw0b1EX2hrEtYHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6h3CdCR32rD2K1EUffRq6loThkZ3P48GIGqQxAcE8I=;
 b=NYHSgUCzTRmFsHbPAAXIxlZw6zhgnKI01PaQiISkdTYtwEsyOMbnbH7kYXLrjSGUrbnjX8dQWBG+eV9Wx9Ll3+/7ivOAvCdyWSnD+1rC5Oe0kmbN4IJOIQ1bm+xyANAncZQkKN4y1MbQYvvqIPlsHmq+NJPsDfa0BsxMGH7/Buy7kY1ba66kzHToNEvnzLaghBqPiRiIME9to3h8irqHSS/BBTg4PJXWSU52fSIW2wEUoUDQGwbhyJ2hSRFrLu32vs0YfYRBUwH/nd+lHZCN/DWwwXZa5ufPlOHPyEhQS3EhcyBzZJ6ri+ZDzeAkHbOZEHmmVBRnVm+84zwcfRMtFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F6h3CdCR32rD2K1EUffRq6loThkZ3P48GIGqQxAcE8I=;
 b=odCclGV8JYi3Hnt/Qw9engq9DD0UyAjDMplkqpTToBbyysdSH3vQJC4Ignx3cnbG09KWP/MuC8JHhcTNcEVR/N/EN5bLZa0Ov24I8vFzGcRun4RtqfFqDL9plvQins2bWxxJNn3rZ+ADc8h/EzvxkX9E8a5UUygvSyWhlikAzL5i1NOBRLDVirzYPse2Juw3cJIAN8L027fgwRRIFESP6zSESOhADBS7ZynEiPHxf09ySUiqRYcveUSD4UzUnQD5vJpdJO1Bui1LpHsc2uokh9Qtp5+O+YfvLaKap11YA3t4f99s+28vZR82ykQtX3HvxxCUNPwJdVVMwnsywMP4jg==
Received: from CH3P221CA0029.NAMP221.PROD.OUTLOOK.COM (2603:10b6:610:1e7::24)
 by DM6PR12MB4251.namprd12.prod.outlook.com (2603:10b6:5:21e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 6 Sep
 2023 10:52:07 +0000
Received: from DS3PEPF000099DC.namprd04.prod.outlook.com
 (2603:10b6:610:1e7:cafe::be) by CH3P221CA0029.outlook.office365.com
 (2603:10b6:610:1e7::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36 via Frontend
 Transport; Wed, 6 Sep 2023 10:52:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS3PEPF000099DC.mail.protection.outlook.com (10.167.17.198) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.25 via Frontend Transport; Wed, 6 Sep 2023 10:52:06 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Wed, 6 Sep 2023
 03:51:50 -0700
Received: from yaviefel (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Wed, 6 Sep 2023
 03:51:48 -0700
References: <20230905-fdb_limit-v3-1-34bb124556d8@avm.de>
User-agent: mu4e 1.8.11; emacs 28.2
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Date: Wed, 6 Sep 2023 12:32:32 +0200
In-Reply-To: <20230905-fdb_limit-v3-1-34bb124556d8@avm.de>
Message-ID: <87msxzmv5q.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF000099DC:EE_|DM6PR12MB4251:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c5b5027-a657-439f-1b87-08dbaec74fe4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IsMw+WUNdS+bmas8xUiQSQWND0Uktq9urE8vgs0fDjxLV3AiH2uVaanxcL/JUrIcgCNN3lBDMRmsu5IMu+z8tuvtO0HI1ps9uggOTpjC8BZKlmneL6+DFsOI8fTIslfGebkIa63hQFl6g+Ge7DThrchL9NJRVM85r3c87xwwaj9kKExpChEGeN0bF+7kGup605I88uiEiZGfskcAS9JrUSFbRkOzayBk+lUeHDFEKnKHhTRCIvA4mE5ZEPoBUXOQ47dD0OvZvJmxfVhaL2qOkbtByuSXrPkWOSn8DP5vgKoBeIPCgF5nNVrIbwIoBGVcyvvvcGQPKomTb5S6M6Lu6u4ndsHJ7KfLz6U+b3ZlPWSHs4zNHn4VrtNl6tZrt+QrV4RLDWENqCCi86zYwr0H5L++Ii9iO82paWy9Pfqf62bhXjhCPc7dcpjxm5MtSddcAyq289FAwneiOZqbRFmvEAmPqCvaaeVTmosrGn/anJRqkSwi9kAh4lkLjLmrBkC+Opy4Ang8NqGDo4nDF1zSwi9xXBW58sN2rwDj5vUfKFJqL5Cn6jz//B4c+uY9gkntxwKRKf5yjwGNxby5dkgfKOIG5kj4kK5TaFQ3BikS/MxqhHDpFbMwmoKYxGWfJHalMb6EREwyUTiENBgaiFUf+ZHNbK5JPqhi9zohT58SUAjTOtpcdEYrInPbTsbNHJgIo5JFpmirujT3Rv/FyjexrIUnyv0ueknsZtzEk3TE6Ue7p7Nh3EStCbml8xU5YKs6
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(4636009)(396003)(376002)(136003)(346002)(39860400002)(451199024)(82310400011)(1800799009)(186009)(36840700001)(46966006)(40470700004)(36756003)(86362001)(40480700001)(6666004)(478600001)(5660300002)(26005)(16526019)(336012)(70206006)(316002)(426003)(6916009)(70586007)(54906003)(41300700001)(2616005)(8936002)(4326008)(8676002)(40460700003)(2906002)(47076005)(356005)(82740400003)(7636003)(83380400001)(36860700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 10:52:06.3568 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c5b5027-a657-439f-1b87-08dbaec74fe4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS3PEPF000099DC.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4251
Cc: David Ahern <dsahern@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH iproute2-next v3] iplink: bridge: Add support
 for bridge FDB learning limits
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

(I pruned the CC list, hopefully I didn't leave out anybody who cares.)

Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org> writes:

> Support setting the FDB limit through ip link. The arguments is:
>  - fdb_max_learned_entries: A 32-bit unsigned integer specifying the
>                             maximum number of learned FDB entries, with 0
>                             disabling the limit.

...

> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>

Code looks good to me. A couple points though:

- The corresponding kernel changes have not yet been merged, have they?
  This patch should obviously only be merged after that happens.

- The UAPI changes should not be part of the patch, the maintainers will
  update themselves.

- The names fdb_n_learned_entries, fdb_max_learned_entries... they are
  somewhat unwieldy IMHO. Just for consideration, I don't feel strongly
  about this:

  Your kconfig option is named BRIDGE_DEFAULT_FDB_MAX_LEARNED, and that
  makes sense to me, because yeah, given the word "learned" in context
  of FDB, "entries" is the obvious continuation, so why mention it
  explicitly. Consider following suit with the other source artifacts --
  the attribute names, struct fields, keywords in this patch.
  "fdb_n_learned", "fdb_max_learned" is IMHO just as understandable and
  will be easier to type.

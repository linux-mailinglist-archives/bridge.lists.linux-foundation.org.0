Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581C35F2B5F
	for <lists.bridge@lfdr.de>; Mon,  3 Oct 2022 10:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A4F740441;
	Mon,  3 Oct 2022 08:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A4F740441
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=KZAyk0en
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FS55kUds_SBY; Mon,  3 Oct 2022 08:04:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0156D403F7;
	Mon,  3 Oct 2022 08:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0156D403F7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C1B7C002D;
	Mon,  3 Oct 2022 08:04:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D791C002D
 for <bridge@lists.linux-foundation.org>; Tue, 27 Sep 2022 15:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DECA5817ED
 for <bridge@lists.linux-foundation.org>; Tue, 27 Sep 2022 15:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DECA5817ED
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=KZAyk0en
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6d0srtAEW1Q4 for <bridge@lists.linux-foundation.org>;
 Tue, 27 Sep 2022 15:21:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCF738194C
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2045.outbound.protection.outlook.com [40.107.244.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCF738194C
 for <bridge@lists.linux-foundation.org>; Tue, 27 Sep 2022 15:21:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLubIFMzgPA8lVL+AmLKldcV/ItDtbvQqoR7ILuB3+LlyIxiT3jSkfYbFJRXuOUINa1Iop2RnOh+HbehMYibl7gOp+LNXi+I3+MT18mSlYIkEiStBoDPitv7+0d9fteCzR2LDLxpRnXmJDaVrnXXXQtnuq6m04Updau1LfAR/9ETHNO1EZLTliitjt/amK8IMvivSgtSdsxRXgtk1/U1ahOlA6PzEU3Mw9cGAHUZ5ruj2aM4jFHPCQCNakRZvqud/xFxJVO0T1zgwShd03Cwrqhpbu2FVw25WdFOhmsShQ0fkuBCCLPIAyJuwJTDtFbmdjlPH17hOsjQXphS35TsFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPIEZNk08XXFrQmWW3ATki8MZAqw1XX37c8AH/JEm8I=;
 b=ZzMLo9A77X/oKs4FjHB0b+uT836PY/up7s1I7BHj9AjzDBNAH6kYFKzrvWHSilWteT5/fzMFKmAhrrK3vvCU9Heva0TyA8ZD43vq6+GsQpDV6McJDRS8//fxMKSBuMvaJ1kQwIwfG4OA8x+E8OysH9RHTcL5RqDUgDbd/sXC+IRUznBpfr7UWU5MnlJ1w4ZusQbEC4zAhiBGZweCRiCVZB9ktxU9Y4mGY0HV12JfLh4Umz6TqWwPq12Ywr/V2RkrhJpro58YwYvN/PS6hi7i9r9gWxxD0H8iK8ZyHPSqvIV17eB62BUIpSeGbYZMxk+jWOCHqJP1CcyEjSf33UOOTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LPIEZNk08XXFrQmWW3ATki8MZAqw1XX37c8AH/JEm8I=;
 b=KZAyk0engENwoT3cERPwJnv53FekWcQnxWt2ZyghkSWohJvVso3wRWzlCRtE1t+oyiA44bLcZbaexRdCGHkjd31G5IplaY9nj0KmjYJGvLEWDOhJ2RJUZ1L/cj40WUkqdp7V7iGlz9aQAZm9lyXsYToRoghyVadYGRuuk3vpF/GJkY4ZJenmMlgzitFT8GGrhISocTNRedEMFuhdDWO38DKtwJGB4XgcJfuJHRx+feBbF864IVUDV9bIhLBcuMPEJSrOL5lu9ujYLeWPk7A3w+cUvwQu3CW2JAIXg/4x3kwL2sT9wDhBgfQSZ88RdGcu7TwcsXfbSY6KCAo/T3Xsqg==
Received: from DM6PR13CA0004.namprd13.prod.outlook.com (2603:10b6:5:bc::17) by
 BY5PR12MB4324.namprd12.prod.outlook.com (2603:10b6:a03:209::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 15:21:10 +0000
Received: from DM6NAM11FT093.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:bc:cafe::c4) by DM6PR13CA0004.outlook.office365.com
 (2603:10b6:5:bc::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17 via Frontend
 Transport; Tue, 27 Sep 2022 15:21:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT093.mail.protection.outlook.com (10.13.172.235) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Tue, 27 Sep 2022 15:21:10 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 27 Sep
 2022 08:21:00 -0700
Received: from yaviefel (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 27 Sep
 2022 08:20:51 -0700
References: <YxNo/0+/Sbg9svid@shredder>
 <5cee059b65f6f7671e099150f9da79c1@kapio-technology.com>
 <Yxmgs7Du62V1zyjK@shredder>
 <8dfc9b525f084fa5ad55019f4418a35e@kapio-technology.com>
 <20220908112044.czjh3xkzb4r27ohq@skbuf>
 <152c0ceadefbd742331c340bec2f50c0@kapio-technology.com>
 <20220911001346.qno33l47i6nvgiwy@skbuf>
 <15ee472a68beca4a151118179da5e663@kapio-technology.com>
 <Yx73FOpN5uhPQhFl@shredder>
 <086704ce7f323cc1b3cca78670b42095@kapio-technology.com>
 <Yyq6BnUfctLeerqE@shredder>
 <d559df70d75b3f5db2815f3038be3e3a@kapio-technology.com>
User-agent: mu4e 1.6.6; emacs 28.1
To: <netdev@kapio-technology.com>
Date: Tue, 27 Sep 2022 17:19:49 +0200
In-Reply-To: <d559df70d75b3f5db2815f3038be3e3a@kapio-technology.com>
Message-ID: <87k05ox2r2.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT093:EE_|BY5PR12MB4324:EE_
X-MS-Office365-Filtering-Correlation-Id: b86d6557-186d-4971-df81-08daa09be829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q3LssFMFpny2q61kO7vhgtb1vsG9YTw2JLd+qGpLMY2gkMb1Ezh+V1j06qtm/t4umXTKoccIqr7o9OuA83rQpo3Kej016g2C+nEF7f8WawJ2RT1ZVwjiR0QNEJ3k4VhlSmgFFLT53Nmn9mwpcb7HfPY4tDWbvkK/Bi6xDWs93ZInh6RC0ztg4Xfv9nea64fbi8LbKDi36SxkkdFWCHk+tOqwpsTgOWyeC/uvhbOhh9gTNOXLS87/FuR/KtR6JrOu1M03n029k/j708gWhXl/BkteMz25yC4HpJUcf/R0apvSxipDdbnO5yoYQSoKesSwuBjJq3CXkEO80Rh+pEib0AqonJ4ZfpL442IFKg+MQl+i45y2Z0JBF9laBNuhdM8kjMHu2tQQXK6DKDhXtMfPAwzzRbpuxO5su4Exw6sGcyi0OCwl5kFHfkL9W3h5mxA4zdJ0Xkl+5i9pVjrwBzpHSnnTLN8mPnNl/r+dsP3/sE4U52agbpQlvy6g4en+QCpoO2Rk0Q8B2Zkr4rG7wPxj4FFkds5fzmuco+pwzw24PlQQYWSc/nhDV2xlCx4IAA9lpUdvxr4Kd9wLEHwz4UqCFRFVtkL217okEEFoAZ5fPpUhg0VYtEuKbzC0XUbl7q5KQwvSqR4t6nLL5sc4LGDuw2E1PfD0t9j90wgnPrMYTXtPN3B3/oOaLeqUQEoysb7uhHwFaseyDQ/7c1CLx1LSSE/bFxvL249I2YjrQ9HyH3J9Cqs+icyfmbvsTN8Ul6/dAYgG26QQfzaZCxzYQWUP1Q==
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230022)(4636009)(376002)(136003)(39860400002)(396003)(346002)(451199015)(36840700001)(46966006)(40470700004)(5660300002)(16526019)(426003)(336012)(7636003)(82310400005)(82740400003)(40460700003)(36756003)(40480700001)(36860700001)(86362001)(47076005)(316002)(356005)(70206006)(186003)(41300700001)(478600001)(6916009)(54906003)(8936002)(26005)(2616005)(2906002)(4744005)(70586007)(7416002)(4326008)(7406005)(8676002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 15:21:10.0373 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b86d6557-186d-4971-df81-08daa09be829
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT093.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4324
X-Mailman-Approved-At: Mon, 03 Oct 2022 08:04:16 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Yuwei Wang <wangyuweihx@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>, Christian
 Marangi <ansuelsmth@gmail.com>, Woojung Huh <woojung.huh@microchip.com>, Landen
 Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 6/6] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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


netdev@kapio-technology.com writes:

> Thx, looks good.
> I have tried to run the test as far as I can manually, but I don't seem to have 'busywait' in the
> system, which tc_check_packets() depends on, and I couldn't find any 'busywait' in Buildroot.

It's a helper defined in tools/testing/selftests/net/forwarding/lib.sh

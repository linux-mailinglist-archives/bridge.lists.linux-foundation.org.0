Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A7F690119
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 08:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F9481EC2;
	Thu,  9 Feb 2023 07:19:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8F9481EC2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=Dt2/QRjR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5H10w-6pcsX; Thu,  9 Feb 2023 07:19:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0ABD181ED9;
	Thu,  9 Feb 2023 07:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ABD181ED9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C627C007C;
	Thu,  9 Feb 2023 07:19:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B2746C002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F7CB40883
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F7CB40883
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Dt2/QRjR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxhWGg0hwa8L for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 07:19:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C166E40881
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eae::601])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C166E40881
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 07:19:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNruzSn4NBi4LRYvMt6CLfgvUGiRCUJZ3tr5OMlHeR+OZ2wWrHIWuyTwj99rr0sa3sKTAakze2ZzR+tCv74iJt4PSIrhm84lJAx0Ap/8wAZjTGQMpiIatGsw2IM0kUQmt/Z/TifaZKRqJ2eiNnATvJ/8EbJV13qoP5DqjTjcEqE86YGcHgNff362rneGxKei4X3hzdlUPMsMQ0UN0OtRAGqKjAepq963hiKEXzF1ppbASpZ87/nSr7vf2MDJSqJOSrnrV6qjXtgZ2r8UQ+6bt3BkJgFOJish6yw35rLUPZTX/GXXpKE6V7CaU6kwsL6v1AAhHFFULjndDLWfhdeohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/QRSh7zayDiVWVnBLdQsy9cF/0w0ZylzDkjTo837pQ=;
 b=PoLs7uke80mOgxo9o54vcUWWlaKYXXfwx+tY1EL2cfVzuBvtOxF+CbmoYsoYcpQ1ZAlG412TicFdVMt/tfYJYKyjpcPc3cT/C0FRdTi3YGfspHC86kKduQNGXshMDUFthwZGtMcOX4uKyNPOkyIr4Cul4QqOfAYpIsZaDLY6FxZ9JdCbxScwG5sA8qhRCwL1Rx0Q5mOSaaXmEdJjDZnrMmlOCKcDW1Mw4bGkijlpRlmxcV36CneWuDCqawM8KqWINbIwlwBHd+cT7uwarh+ot91g25qMnjX7nrfEZGyqmg0njaxRIAzdOfHN54GmdE7A8Xql8xiOeZm/E9KaBSwnhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/QRSh7zayDiVWVnBLdQsy9cF/0w0ZylzDkjTo837pQ=;
 b=Dt2/QRjRqJZiZPjxrWiW7Ll0BPIqByaEjmSJ6Q3/Dckh7YkQMzjp2XfWOsgekYN/Nwx0SA2z+VvUdWxcwCDIsE/mUiwSPOsTVMwLRF5n8OPktUI69MOHjMItchMFPYu5bSn9tAcu6G274qr7aCEXh5OgVmkAYNymIO/GdZ/e7ie7f1iZaxJa6P0BgCiDE44LvQPxYkzSLbaTupuG8wd/rUPyBb2LXgddZ4/OavpLdGDaTgegPEkR1IycR58AH0MMFvR7Za9idtfSiLOi1iIyueVsccPbmVMlaZ+yQ7qqUTJRHrSaK/KnoDQyVl/RvisU2XLY4wAf0tPctLntVD0Y4w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY8PR12MB7755.namprd12.prod.outlook.com (2603:10b6:930:87::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Thu, 9 Feb
 2023 07:19:25 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::7d2c:828f:5cae:7eab%9]) with mapi id 15.20.6064.035; Thu, 9 Feb 2023
 07:19:25 +0000
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu,  9 Feb 2023 09:18:48 +0200
Message-Id: <20230209071852.613102-1-idosch@nvidia.com>
X-Mailer: git-send-email 2.37.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P191CA0001.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::11) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY8PR12MB7755:EE_
X-MS-Office365-Filtering-Correlation-Id: f540cb07-8e0c-4631-ceaf-08db0a6df970
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: He96C3seYKDxg72DBR10Z4nRaSC4v96MX2GAglJyRbCAQJ7SwsmyEmgyKNACNvaImFEwChkEBOdnVJfVwypwClMe95HAtriZ92UmrZ+cdna7yi6qpHQavAu2IE9qa9iWNmXgNe+Quhw/grCfUwqMNdqp/I61CdD2um5M/Pzn1lmh3SwYzXbETL7tKXIMuUIiLfFWph0JvFFFUpkie2cRxXaepyPxi3LAYFy0RfAi4bA3Rdk4RFtkN+v/TGWY3YHDLtHz0M0PIVT2qmzBUrvL5+NzTcxCrOy8C0n0qUU2vpptph9aGKc6EsvOEKmmcT7WYtcPYI+Zz3/xRf1ln/e8IPRWaj3vH6BmL48hQn8C8NMFK4J34W6MYOaLxOThFhpNHBO7xf+m9rE948F5OBS4gGydbFMWq4VT31Bx45is+z8R6LfqEqx0fMRfGMIBgieb97QakPIQpjIU8galqidoFvsUmT4Z1cJx+L4wOyhbNCdREqwTaZY3BzM0S9c2NyQezTvWhwYHkMCtbuuJoJ2u9kvfhilOmluc9eeMPki0B78LUSGoU49cFhrYl1Q8FWKyj35pwEkeHY48pEV0xShTPbkjDOdHTOHrbFf50AdQ7fWUQPnUrlYvE3tyvnaYtZ3BBHp0u94xM1sWLl/PmKvyGP8sQ0VsR4gBFhlOGkyu73IqIXViQs2vZZwGMhs+rY8I5nwumQaTZTBv8/UbvOBFRsWtf+jHUZ+6jUZK0grUgD4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199018)(6512007)(2906002)(186003)(6506007)(1076003)(26005)(36756003)(107886003)(6666004)(966005)(5660300002)(478600001)(6486002)(8936002)(41300700001)(2616005)(4744005)(8676002)(66946007)(4326008)(66476007)(83380400001)(66556008)(86362001)(38100700002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3+jDzAOIWhKa+e5KEsT3e5n7lHMsezMX8PcYS88C76FMLEc3b14HqmR+u++/?=
 =?us-ascii?Q?Te/PECu8aMhrLAeIsRbDvPkCXT7xsu75jttwMfhACwLRgkR9WvqiSumST7nY?=
 =?us-ascii?Q?bvQWWCIVv1b59e+FmIOZYAprfuB+ZFgQNalVK91k6FOhWL3gdtwDBXDmZlNb?=
 =?us-ascii?Q?vTu+M9g5/KYSzgrukVx+F4YHuGXNIb9lJyzXi7hCNtIiK8JgP0FsTPB8Mmyl?=
 =?us-ascii?Q?jbWn2tNYdh7Ak54vizd6H8p01HTrzfs1Q98HW/GxlXTd0PZL66skdyuEbNuM?=
 =?us-ascii?Q?DfapyvRXS72qKyOlRQnhJfJJ3g6VNOOIcg83eeT+QyZ+R01IoHqz+cO+71y4?=
 =?us-ascii?Q?tT/Yyzx2W98udzQXw+nod102rtfJ0jSla1AsLFUlkeDNJjCUv7dZDrxoTQ/R?=
 =?us-ascii?Q?eXA7amZLnQjFjeCA1lBd8ZKmuvEMnv2nr7LxsBG+VnwC3SqsXypS7rC7jUZJ?=
 =?us-ascii?Q?Z3w4ccRR/PpVfqYBrha6kNzGIQP0JDIUw5zEAZxJPNAOQ2bs5JMx18Z+35FC?=
 =?us-ascii?Q?2ZEx36KnUYs1NM/ElhZEelP98OePqMqN5SaG2S8kn43MbFPmM8clF1DWzSw8?=
 =?us-ascii?Q?5nPhN+C1QUHOjntagx/D5pvZAPcXb+NSZRrmXlre4HrwyEl3AD39ojkPXHbC?=
 =?us-ascii?Q?ot66zzzqG9c8Z44yrRlO8CcFIv67n2gELaT57qwbMttU5gO70KTLjhrw6y0a?=
 =?us-ascii?Q?WyNFNFUL6XRB26Z3tTuxAnJSBKjf0R9O+J4CEKfnYp9X99fy5B8QNcLANj47?=
 =?us-ascii?Q?uBsVDTKoTX8jMjF1k5H6tO0PLMN8TEbKAURNmm4AXhCCv0l2hBHlkikR+I+C?=
 =?us-ascii?Q?BY7aol26g026MfKR2spuO3ttXnaHzdV8S0BdqOxgxHwTK/Kplunz0agK4KQF?=
 =?us-ascii?Q?TwL8cnEifsEN9nVaQLpqIOWecj7b2HP/nwD/EuoroWy5aRLhaFSB+nLqY4rz?=
 =?us-ascii?Q?X/DhZOgXiLIW2gXjvqx2jIEIJYhFSmrKUdZ0Yu3wEUyBWmS5jvclbH+TyV75?=
 =?us-ascii?Q?zCD4zRR/6HJ9EYD+DR5n7CshvEc5wwz1onU0ucQwk5KyHlj6YKY0q2Rlvnah?=
 =?us-ascii?Q?3AzyMs9l/5QV0B2AGP5pvomsn22k6R9utgANKELendeIr4FryOjMHC6rOhOk?=
 =?us-ascii?Q?8PCfF79TbDNNx6u1lH+PC6yzYy+EfEiSMwbu//IjhWMZtqprPx4vEx1+acXJ?=
 =?us-ascii?Q?18tJzkZk+v/7F0K8UyzPJMroKrItdjZXPFhnuHYfAQ2BMLHDGoOvgRDneZ0C?=
 =?us-ascii?Q?g/ksy0RB5gqWeamYUN4bGqVkazZYHI1hJ9IeROuiqkLDxP1CEzaMOyQpQAlb?=
 =?us-ascii?Q?3VoNJQlM+Sd81hFLW+H4NlbJRZl1qhXd/XoVBBKvZYLp3GYjOkdR8E0HHByM?=
 =?us-ascii?Q?kytvI5HYRpupz8hVXuqCrUKXbUyrVt/p0tN6xh0Qk9p0Hst8qj3TWqDW392y?=
 =?us-ascii?Q?mt8blrgj8hf5+NYBToeLUDnCFJZ14XU6Mwai3XvK73wYjVKaiBuI+VYZz3ii?=
 =?us-ascii?Q?WSU3N83rf1z6JJWoWasqMJUmW5B6EcZ0+uU/tD1/1agdRStMZbeOWaG/yjDa?=
 =?us-ascii?Q?wk2/GETDFPVzfRe6zlsAmeQDcFKoCaScIq+H+wcZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f540cb07-8e0c-4631-ceaf-08db0a6df970
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 07:19:25.7096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFR4vX6HCwMfjbDy4M5ClM5ArKudnPL5B/ts0oD8+/V5RUU/GAJ/4c0BOrB2FCbhfjoZuOijw7+eouzrRZP06Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7755
Cc: petrm@nvidia.com, mlxsw@nvidia.com, razor@blackwall.org,
 Ido Schimmel <idosch@nvidia.com>, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/4] bridge: mcast: Preparations for VXLAN
	MDB
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

This patchset contains small preparations for VXLAN MDB that were split
from this RFC [1]. Tested using existing bridge MDB forwarding
selftests.

[1] https://lore.kernel.org/netdev/20230204170801.3897900-1-idosch@nvidia.com/

Ido Schimmel (4):
  bridge: mcast: Use correct define in MDB dump
  bridge: mcast: Remove pointless sequence generation counter assignment
  bridge: mcast: Move validation to a policy
  selftests: forwarding: Add MDB dump test cases

 net/bridge/br_mdb.c                           | 49 +++++----
 .../selftests/net/forwarding/bridge_mdb.sh    | 99 +++++++++++++++++++
 2 files changed, 127 insertions(+), 21 deletions(-)

-- 
2.37.3


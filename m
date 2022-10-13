Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B88605FDC62
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 16:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C678F813E2;
	Thu, 13 Oct 2022 14:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C678F813E2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=g3seb9VI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6xTAw6ATqqA; Thu, 13 Oct 2022 14:29:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 212AA8143F;
	Thu, 13 Oct 2022 14:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 212AA8143F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C580FC0078;
	Thu, 13 Oct 2022 14:28:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC93AC002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 898D240461
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 898D240461
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=g3seb9VI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b72pCoBSBTwP for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 14:28:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F3FF40154
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2047.outbound.protection.outlook.com [40.107.237.47])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F3FF40154
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:28:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AibJTzcZZiC+TxuS5jJlCXu1FWf1NpO6I9XzeMPIZpxRu0vTkBwyksjHWTU1I+RT15iXh3/8QczZ4nh4E1Gja79krHIEj63kFyeguYX2779SJ2p78yRiNZ/edRBnXpGQNaiqQeiYZO5zSxAl9AoGQVvyBq0pX9M89arfnnVFVFi4gPpY2fkEZBMuB8JV939rrqYSrbXRQylFjEE210s10AEKcVR9AfVjG9Kxci5XqWnxktfTGXN9JoPOe2+5XoNY/SqpDp5/OJIEO1A2NjGIcNaay4OxbXCjeDH+/nicAyHNKpvudez7NhVI1mAePxYAreEFLyTKclLxy51MfIBDmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MIXQvwJJFko1U7G4y756veRno+JNEMjMBv70kE44UMc=;
 b=IKfjnpJIT/T8fpNyappnDXNijNWOwMkeb47u/6/i8DAqruv5I1iGhR36YE0M3dW2GxakIJAjYLeXEmmxczzBAZDBhsI8P8BOdd0sd0NOrktf5lR/MoMNeomP8Kj6DitZ8ioOO8juk6y4rD5QWJRG9M+Xd16gMkoJGQFtv/deAmUU5rWBmkTi1W5nS1fEx0c3gDRy3NoWnefcaVkuu+/LTtXJtYoOSmgmsWsm2DaCulv5ty40ZHcX1wJ5/HldlCWed+JLr+EeshyawLj4yk0L0YQ4jn0AofrvFWmgm5INFYBdfo/LKRJt+xQu9Z86QyPEkCTdF+dzDafZoubEnc0nCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MIXQvwJJFko1U7G4y756veRno+JNEMjMBv70kE44UMc=;
 b=g3seb9VIi43/u7sftABt7ojQTG3YhTCWJ5WU3FAg58TkqIOyBnC3chPnQVVFxy8D4UXfnMMlReaLlY6wgPMN4kdPJrSfiO0kPcyuBEVAU5eURm/oRRKRY2uGP8Aj+h3zJ8IEKpVqY4awqs6rBHwDwX/4sQZ0blv/7ihTfqtX283uATf3Z4F3uBnYHMfhBftXn9pFHV+Y2AN31bV4xpRrg7O06tQx/DUeKzsO9X9HwIUXg/EvlER4U4YquOtyDCqfOLZRYiSFwxyWV7XFmyncn4nr1cusqFqXLvnSSv/j7NpTjumzvTEFmrMK43frPV2tU+PEED76Y4ZoC2IMPeTZKA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by CY8PR12MB7561.namprd12.prod.outlook.com (2603:10b6:930:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Thu, 13 Oct
 2022 14:28:53 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 14:28:52 +0000
Date: Thu, 13 Oct 2022 17:28:47 +0300
To: netdev@kapio-technology.com
Message-ID: <Y0ggn5SZnw+4SGLC@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-10-netdev@kapio-technology.com>
 <21f799c5a7a79e2e4b111a95fff6fe3d@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21f799c5a7a79e2e4b111a95fff6fe3d@kapio-technology.com>
X-ClientProxiedBy: VI1PR06CA0092.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::21) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|CY8PR12MB7561:EE_
X-MS-Office365-Filtering-Correlation-Id: f1110a4d-6e17-4920-c342-08daad2740a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9J3v1MFlWnpidjaEtl87s5j6+cJWF0Oz+AXeVAYGdETnUAgoj2cVPez7uVjF+NYBZFxaa3pLTxZEn2yJUiGf1MXzudz9fF1mKTHSJa6OG2Q0SHc4i+HmmAru7fKRuBxLxhwBv+vA6KFhT8s3800PXH3MXwjGVVxc83uunv6VMst7LuQ0T4jiK2KihnF5bmqRV4Z+Db/CgHhvBz45AGrtLrEu3bFPBMCzodeDvZsBpiuN/NG0fZQKxwN7Q7g39SNQREflx1XE58WYs/LiqPpvuCJ4O6W/A0AIY0vYZZ0ygJeb/px0H6ojwR4OzEoY/zSqMFgvFlZvZzCLGGo7Ga2RGSXpL5fy6yToUTu5zYL9I64U2T1Sh5LYiqD0wfo5I1XkL+rCFlWiaGj+82afvYa+viej+U19G5hnki/e+pheL7BX5E1Utndzj5I39kXiZkADOS0ANvkjAVbHXpQrB/fLISw6GKchGmVzUAufY5I8BLSoQA61njnjnL9kTpg2N2FET0Ear52SeawRgw66g0Ywl07vkpe1KX83dj+p1rTRVFsAxIGfHRskwTvEL75ML7B1jpqrGCx0zfSaijhxvOm9vj7hpWGxsFM9cDizoUcDdMNDH8iM56qTVcVZpSC18LhFB461zTsaOaMAuJ2boGbnHUR+IrsiC67B/8bad6aGE89XEKwhICsEd6J8zxcNtvXssOLuUtv9R7TklwjZ/M7pwZq6A2uiq7ToBprXhM/PMVOhC52qsN5yBNLEsB7MAJ6DGz6jdV8XFBuhbHj+blK6CKotLyxks3oXTdEZhn8EeFs52etdva5dZ1o9EX5SrVU4iotFODvRGx7iqQzU+kx5ZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199015)(26005)(8936002)(2906002)(7416002)(9686003)(6916009)(86362001)(66556008)(4744005)(7406005)(83380400001)(316002)(4326008)(8676002)(38100700002)(6512007)(66946007)(6666004)(186003)(66476007)(54906003)(966005)(33716001)(5660300002)(41300700001)(478600001)(6506007)(6486002)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?arz+DRnAT0QVMgOtJuDAuZX4//5J8jaklgcBbDqm1NxKEySG4PDm7LXTs7qG?=
 =?us-ascii?Q?HKLNFpbzegRt6kH0agr9zYEdY5qw2STNyHhug2PqudJBsH2RDmnDAAfl7YjJ?=
 =?us-ascii?Q?c1Y8IO8zzfvnFFzXmkNT5nZIybrbGtghs+jycaSI2u1d2YAaA8MtKHVqnpZ4?=
 =?us-ascii?Q?cd++TysybcLRkJQiXPvmasRPxOBTvvlf1cXbCsrDYRWD7vRfrgCwphL2JNnO?=
 =?us-ascii?Q?ORW6MSAR8DaRAvtDmaLOXeL3eYp/cMrk+/2wH/P8uqiHMahM3RXZ/7PbtD4L?=
 =?us-ascii?Q?jO7WkYKqCMFCuAOg/3Atz6vNRS/QVcUWFVROI73VLa+u/2iA/Tlk6lNCO2dh?=
 =?us-ascii?Q?GVaGdkKxlXeEq5Cbib4X5i6PIppnFZJzhWrOUD0DGKlvld3znRYE/cD6Fcj3?=
 =?us-ascii?Q?ig5K3fSPpJKEUw/MTUx904nXWtDCnCKeEt8hnbQrCSMTUNl7yMtRyVNdrNl4?=
 =?us-ascii?Q?hyYr22V1KJxm+qGcijmakQOqAyj/Gj1m4doO9qjQn5PFXqto2vIreKqkgFX7?=
 =?us-ascii?Q?5lvbzqTbCkbCU7WfkVHbj2XwS2ZaUsK8lvA2aKPjpK8IsHhXfbNBG9Pg38cm?=
 =?us-ascii?Q?gOgKPWZGBn1swKeLmsLIvO9ZXKG+3z7nix0sLfrWz6e3RzsCRuCH6Jo4DkYx?=
 =?us-ascii?Q?HeVb2wPDmVYucll5zPbEce5MabHEaZ/ukzmTyyOZdwgYG3iA5zuYNQDX8v6x?=
 =?us-ascii?Q?9ajfFkBWjPGkgKtd3haeWv5qsEyjQ1+6fwnCmn2toQfVapke86BiJ8duxexz?=
 =?us-ascii?Q?yYrtPStz/ERamqzbx38z0wfaWODVeOvp+HNXosdmrGPI7elmXiL5RV9Jpuvv?=
 =?us-ascii?Q?nkXnsmSawpPBwO7gSAgPh8WDT0trn1S4uGZShN6XYPNq9BwDYf14iyM5arIw?=
 =?us-ascii?Q?8knbvsfmDS35q9F7Yxr7PQBJsCrvBrEQ9kAt6I1j0iAPRvANaY5BnoQlzwxd?=
 =?us-ascii?Q?DxIEoJ3cbw/UHndBmajxS7aFCH+OqTEhMqXpSbktStb0L6nSoPRkM79lIScC?=
 =?us-ascii?Q?Gp9Sb/GKpviZKo4IIFVqrVOlzuo325imQrWQ84HIOrYmf1oMF1g/l8X7kJp5?=
 =?us-ascii?Q?rK40aY37KVocqIlTLuGE+b+RN+hcC20CVJftYC2uDsof7nVGzsNxactvSAex?=
 =?us-ascii?Q?hfjPJgB+kDHEeJ+KXPH/uf1AQEyHzEYhwKJgOZ3eKW7rzAlQe/oAYJBcRlBK?=
 =?us-ascii?Q?7wJ3p2kYew/AptOvvx0dBAcetgNgLiS0QB8KMJMGWoqi0GPNlezmBYHcN3DL?=
 =?us-ascii?Q?227ahY7ZvsrVXF7GrzqxzGon4xFJCDaTk6KaQof0Cxp0PT/ZSvlISAnkM7dL?=
 =?us-ascii?Q?2hKIioI0j8IT5aiGmYdkzjCCTJAqfde5UnRfWT7atFs1wo3580M5JyvwLh49?=
 =?us-ascii?Q?FuZ+LAvLWVpRon1jDLH99TfnJ5a384qz+dpGAh0qt0azpBJb3KlK5u9yS+Pz?=
 =?us-ascii?Q?BhlyM/MRPjM36FdZCayy6ob82QskQ1YIxURxTGIiZBJ2HSZFFlLYrcgrAYvE?=
 =?us-ascii?Q?lqIVuLYDWCIH2efSHTSmI11Z1H7nvQxYemA3D0pukW2rB418Sz+WhPBKRQmq?=
 =?us-ascii?Q?fQ55SAfu8h5imjGjqBmwPOnSVwn5jOCQbLW5SUsd?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1110a4d-6e17-4920-c342-08daad2740a4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 14:28:52.8573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GX7ok2hcZKcLTyDY0N4AmXb2oIi4VFHUG7UNPhGTetj73hvY/qiBLaGC5+/DQGbcnwH0WMIxb6F3R27wI4zZpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7561
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v7 net-next 9/9] selftests: forwarding: add
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
From: Ido Schimmel via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ido Schimmel <idosch@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, Oct 12, 2022 at 11:46:55AM +0200, netdev@kapio-technology.com wrote:
> Ido, have you had time to look at this patch set, and do I need to release a
> v8 to fix those two forgotten statics and maybe also this new switchcore
> driver that was not there when I posted this patch set?

I don't know which changes you are referring to, but v8 should
incorporate all the changes requested so far. Do not post it as long as
net-next is closed (unless marked as RFC):

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#how-often-do-changes-from-these-trees-make-it-to-the-mainline-linus-tree

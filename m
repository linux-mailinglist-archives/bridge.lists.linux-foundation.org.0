Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8F95FDC57
	for <lists.bridge@lfdr.de>; Thu, 13 Oct 2022 16:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F038240463;
	Thu, 13 Oct 2022 14:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F038240463
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=R+kTzf7Q
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFZVFlM7brj7; Thu, 13 Oct 2022 14:21:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 69B0940467;
	Thu, 13 Oct 2022 14:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69B0940467
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0AC0FC0078;
	Thu, 13 Oct 2022 14:21:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA9EEC002D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B547A4010E
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B547A4010E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30LMZGlXJ5Bk for <bridge@lists.linux-foundation.org>;
 Thu, 13 Oct 2022 14:21:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D08E340461
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2087.outbound.protection.outlook.com [40.107.237.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D08E340461
 for <bridge@lists.linux-foundation.org>; Thu, 13 Oct 2022 14:21:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7hYEsixNNkLyA2hq84nEgtfBWxguyIXB1swFmxhAh6BU2N68DWDFkxLjkkARyNllJwdOg1TlN6nNaML6onPnKexfOFAlgksSa3TWQsxWZhgufcFwBYbJx6qst2trv0uXPxsvtlTXp9bxtjYDHhAjw/z0n1ndUG3ttNd8xg9pCAB0Fcx3G1n9N0p3yLajnx8DPBCdR8HstxArFRxcvhRQAKkzUMzIqMfS784i4o9ReBCYV8ljjQsfTg4Lc9wnLOo5nF1e60gDrK3DWgQPqTQsZbHzFodjHfC5haKyr1I1Urf+m0vHHy18oGX95Twza99Fe5ksAlG7Mhg0nGxXp9Kdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/5ROoTKcst6zjne8g3KvrWeyt5TDJH93dI6IBjClJg=;
 b=ec7JQRT7R/mLm6Brhw3UIIxbamEWobBFA0Q+hvlKUj4bdFA9OFKSL9wdRzXSZi/vdljihSvnegDps+grDadLb3k55vXclQFNkeiHwV+L04gUWDkeJ6DnhuqMOlCBgni7za7uZSFBNiF2VKJ9cz2qRGK+Stz6vSVqkDtOan6To0Qnz9rTRo1nqYJfEBAj2rtkTOPC1RZlj112K/PktVl17qwfPQ8r1ldm1ZJrJ8waSXoVfrPo0yVIwGmIFn+7KuEQVxAXmI16IKItdJcOzAYQd6S93ArY4B67X6BSGXbwT1vZ/9txRZnEuBNwqDEcRlOUJ0slKG+6V8fcYun/NECAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/5ROoTKcst6zjne8g3KvrWeyt5TDJH93dI6IBjClJg=;
 b=R+kTzf7QBbme8S9SaJY0fTOAYQTranVwu3kn0aCdEVHqdZrFwKUY6G+Sje/V4l32ohXKbmZgTE/+hzxEN+a1d5buu9NmPA0UnEHJM+odXsQS13U1gI3V+m2KK1o+NBjNMTjLfM+02zjyUZUuaN8hgSbZn0M5PkVED4L4O8ro4tidajIN0ePyP0pIfVcSA6E4Ghs1+Q+mEfabLekGCD+dnV52Vmkv/zgZpquZKBXT7F+60TalFYLaMR5oafbAEHSEKPGIWuLka1awr5F1uZfBcx0NYeJ0tU+9d7ozNV4S0gKNfsaBgcqXwC158ET+n0cZDM6GxUYqRedAub0Krf45Hw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BL3PR12MB6404.namprd12.prod.outlook.com (2603:10b6:208:3b4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 14:21:42 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::4ff2:d93e:d200:227e%6]) with mapi id 15.20.5676.031; Thu, 13 Oct 2022
 14:21:42 +0000
Date: Thu, 13 Oct 2022 17:21:35 +0300
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y0ge76Afxpc2DOsn@shredder>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
 <20221009174052.1927483-5-netdev@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221009174052.1927483-5-netdev@kapio-technology.com>
X-ClientProxiedBy: VI1PR03CA0046.eurprd03.prod.outlook.com
 (2603:10a6:803:50::17) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BL3PR12MB6404:EE_
X-MS-Office365-Filtering-Correlation-Id: dc7d6b04-4adf-40f9-e514-08daad263fcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CQjX/bWtnOmlN5cdCUb3ysnii5uHXFv6gga5kKMhh48ybu+bD+ilut+TK6vaOTYbAHRFMZqt+vVG7ZO4PXoQpT8Bti10+qmvHSN/JaQ60ebc1L1jzJ8h4VA/3fNapMWAWo7e6VEzbAI+x5Cu2+DMjf6fcPNkFSJpEpIPC5dMx4xsC+xZWqJI1LaWSdrIlxyZ2ZowqJ+Xj936KppjInV5Bz0UdQOv8cLUZ7VlTZ72ug2xM6FnfcjmYnReAxy5/i6+cnaRFMfsiMzmO3hrT5mXiLSYn+kYoLY0dzidw1hQ1RcTyXc07EgCdoCj/lqJGYwDiKulURQdXQy9+NdcEB/qgzVZkx8avyIsiw92gBtuAlSknN12f+5gPMq/CWxxTVlDt9quRar9OxB3IzKGwSNl/oPhD8cnwJKUbaCN4qcpTE3QUk03eEtenzdoYQVRkdhkUE5wRyfyA+SvbhRVZXO1LuRUbA6mFcS1y/3+BBhENeG1UkQv4aJLUMMc0yeXWb8aRNOv1x7IVfpbNxVgSYleK9JJT3I20chxRx+lC4UY5cp+IrczspF+1YUH8kypC91kbUtatWcQ5M/dNCplHkc957N3OVhC6gz4xobmdYIvobhwiZ6uZREjeDJYhmKX3j7t6hF5KQefGh7vlfa1ZSU2LD5YwZNECLyhc+GnctUVMgDbDgOZgCxhOLd5PPjmb2C/Mr9YbT9y67EoI+ID7zG57A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199015)(316002)(54906003)(6916009)(6486002)(86362001)(478600001)(8936002)(66556008)(5660300002)(7416002)(7406005)(4744005)(66946007)(66476007)(8676002)(33716001)(38100700002)(41300700001)(4326008)(83380400001)(26005)(6506007)(9686003)(6512007)(6666004)(186003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rxO86z92rEW3mUyW4AO06LsSIT9JG4j/rTqQfvWsG/DNsIdjsiYJyPqaTpRK?=
 =?us-ascii?Q?b52YoIwMT2Tf7gJ5e/mJHsKdBYEjGjqWDrnxNfYnYsL7Rnl0SLl1cOLWaRWG?=
 =?us-ascii?Q?z7R4IEmZT0ZBOoLq5XZ1N5V4417abmC6P44AJmco6PHTpKJhQV1P7PzcoTcD?=
 =?us-ascii?Q?xb0wdkInju92jmZfneF/IDWQa9kSC6Yg4jtg2kgNeDXcTw2VPBd8mZ/6tpRH?=
 =?us-ascii?Q?RSILD6RdJDjGAwiTFzPe1zUwfk40flNEjemCyuVkFVbhVBphpGztbKF8Sr36?=
 =?us-ascii?Q?IETjPfTbWeTZ3wKv5XHBPtRElWd8LFvPG730UBBBTu2n+rx0OBYaJ8dEw6ON?=
 =?us-ascii?Q?CDGSzwtu91CAZr8v0QWSY0D8mdxUDmrIu+YhKA+kFbNOBqMjRncIRUjRp44I?=
 =?us-ascii?Q?7biyewxFxUf0ZcZTlGWbXhk+srF/Buj0VwoBKPy60Q+YgCPimx+K7IOuoiP3?=
 =?us-ascii?Q?St0PhJbcWjC7AO1vTsM9c0cIfGaPHaMdRkNAhXAyGQ5kgJiO1qKoo52eyAH/?=
 =?us-ascii?Q?pWFHgwZhrolHdDmtzJdYv0MF6IDGpR0hYoxKx3rmnCiyoyZWIL6PZVIUPhM1?=
 =?us-ascii?Q?WqQooSyB7atWzm+NKFqYsmeLAg+QU6kZI4IbAWlYoEYx86vi4Q4xLi76nsrU?=
 =?us-ascii?Q?iouGrPrU9YjnKXg3T0ywVoiIQqI1BmE8vCxG7xH/GiPP2qM4TegSXSUcNdjS?=
 =?us-ascii?Q?mzSzbGejdL31vNQ1QU+P2cZiJuO0Cbdsj4Gvyx0aPn8xv9mvQ4iPxiYnIWUO?=
 =?us-ascii?Q?QFaJH7S5Sc/9f+xHtNciueZBe93SeacoZJOqrZet7vc4ESBpYEHNLv9wcFyO?=
 =?us-ascii?Q?4K5YNWG3mIRaDI+Z2ozSRlFzgXCuCp40k9jlnrzRCdsLYA8/XE2e2+R8ln2M?=
 =?us-ascii?Q?xRCtXZJt01sBMTqV7zdiHXFrcRlXMQWHmxjgH94q0q3TUZe3DyEyq0MBP3w6?=
 =?us-ascii?Q?BFDJEyt7GeMpnoBWnIPQbhNSoQTF7+jLM5oH81lg4kP5Vv5/zr5aBOhFTT+c?=
 =?us-ascii?Q?2sANcGsz80rgGu0tCo+Ebur5hTW+OIFj0xUpdw3XjutNURfOVAVubjhaYuVY?=
 =?us-ascii?Q?4Z75ZtebI9yrK5HjqWfKfwrK02BKkl8IYqOgLn/Mxv0ACGp4zNrdrWTgCmzl?=
 =?us-ascii?Q?GGW22AfJ2ORxMgx75a5iyLAxW99jS/Xv+PC/gwdFJ4chJqHiGoq6J9MOOF5V?=
 =?us-ascii?Q?BPQ9yQPHWfD96w19Ln0MXnweM71XpG2fq4czhqQOCUeQ9U2exFrQ5W4Udij0?=
 =?us-ascii?Q?3tZYa0nSHCE2yH8yqisyRaPR33GunsPNwwsv9O3CV/v/2f/OgLceSBGbX3aY?=
 =?us-ascii?Q?eKD60XLSfr8jF8O/QvVxTlA1ZwMBNVwVGCfijgJdUfy+tR9hahgIn2VLsr1z?=
 =?us-ascii?Q?NNINtt0QeMu3itUwWUUPf8WFDvdYBWmv5ZZmnShGDyL5BxwCrFq/XIYLD6UI?=
 =?us-ascii?Q?eZOcFRHQ2+QTCG1OIzV75E04k7hvYFK1xyQqHiuQuHBymexCM1PV7rdajMcG?=
 =?us-ascii?Q?3G0iILO4KkR5fwurkRPtfxZyWE95EsN1cwmdyY88rPZz2ery4gMDTjeg0oP3?=
 =?us-ascii?Q?cUUcfY1IJupPZZA0uuwpzGuqA9B/ltPU6Q0bZYFo?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7d6b04-4adf-40f9-e514-08daad263fcc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 14:21:41.8819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vUTbullLmGFQJknm9jDYGS7QREePCZMxGb5zYKU8xMm0tCF+NaexkAKjn8Xdaklh2J+l/x2BWUExL+5kVMsR/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6404
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
Subject: Re: [Bridge] [PATCH v7 net-next 4/9] net: switchdev: support
 offloading of the FDB blackhole flag
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

On Sun, Oct 09, 2022 at 07:40:47PM +0200, Hans J. Schultz wrote:
> Add support for offloading of the FDB blackhole flag.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  include/net/dsa.h         |  1 +
>  include/net/switchdev.h   |  1 +
>  net/bridge/br.c           |  3 ++-
>  net/bridge/br_fdb.c       | 19 ++++++++++++++++---
>  net/bridge/br_private.h   |  3 ++-
>  net/bridge/br_switchdev.c |  1 +
>  net/dsa/dsa_priv.h        |  4 ++--
>  net/dsa/port.c            | 22 ++++++++++++----------
>  net/dsa/slave.c           |  6 ++++--
>  9 files changed, 41 insertions(+), 19 deletions(-)

Too many changes at once. I suggest to split into:

1. A patch that allows the bridge driver to be notified about blackhole
entries from device drivers and also notifying it to drivers when added
from user space. These changes:

include/net/switchdev.h   |  1 +
net/bridge/br.c           |  3 ++-
net/bridge/br_fdb.c       | 19 ++++++++++++++++---
net/bridge/br_private.h   |  3 ++-
net/bridge/br_switchdev.c |  1 +

2. The DSA changes

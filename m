Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F546E8A55
	for <lists.bridge@lfdr.de>; Thu, 20 Apr 2023 08:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94E7A60B10;
	Thu, 20 Apr 2023 06:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94E7A60B10
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=gdBxf9qV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFmDxKHwikrs; Thu, 20 Apr 2023 06:23:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0534460AAD;
	Thu, 20 Apr 2023 06:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0534460AAD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7CC90C008C;
	Thu, 20 Apr 2023 06:23:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38848C002A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 06:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB95B4021C
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 06:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB95B4021C
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=gdBxf9qV
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7B1bEywtk53N for <bridge@lists.linux-foundation.org>;
 Thu, 20 Apr 2023 06:23:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE445400D1
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::615])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE445400D1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 06:23:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXRpRES/ctZRZyDYzk9KU/zwqGusLNrrHWNNlTCLrxOgwDWsiyAtH36J6HThagAbKB8LtYrZVXwvnoH5/SZJk/fdkLLdu3tmjG6W9nakUFeTLVnO38edMG9LC8g41Xp2jUofMTbuwphbQ49v8HfOTmkWnyT+9O6qFAHiBdt/daKWTWg07LRqZOeQRNTKYcZ6uxspmVnkvDVXnYQRd2R3vw+sxQraJTXMcrBAC6X7JDlsUfPTlUwp20WPQrCnwthKBlwG1IFoJAioyITfJtQwZu+sXvkVoEYprfrwSX6mJD29va6dtVMwcOa6JAwYEXwzz4ypdGcMhF4Gq0R5kTHAdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IjBVh9FjHVYSSz8aul7WM9OpX6cO86Kmf8GjigMIvBg=;
 b=l/LEZ7jvKX+LqHT7eoER/EYr0VVZJXU0fqHvkRdB8853MGNnEIqFy3cTKUYw8eAFbrfJ7qgvg+wv0TqMJPsr9s6YADNwVDruVh6jwxulAhvde2+7l9CCR1k5U1SN/S7xrnT+LZ2SfZS+mUiWfnukAAdVb1mWooioNlUYjxatMoHEsKrz3PgZHckBK3TVRMsmCpxvfKhEc160vhWEX53v7ql7FVMCk9PKRQxGC9DOUeXfjiw7J86NA/p6Kx5k7Bmvob24MJ38st2qKt7SDdyMKPG3OjdIJZDCFdILPmYJuRu/VCAGFv3MaP5mwfKZX7gvzTfeyoibzYE9gWpkZjVIbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IjBVh9FjHVYSSz8aul7WM9OpX6cO86Kmf8GjigMIvBg=;
 b=gdBxf9qVukuSHhACZ+V+XqErmKpmBHrbD7mca5722mRhcVW6b0l1TnOQ0uxfGqTI5BkAQDaaecV1+xVuv9KRPPlSneAswJRUJY2AgbpVoywrqQqP/rHJn7VafW/U+KWxAQpy8/qOsCAZKLKdbTQiHP/lb3wqQcHGN6VNzIwoiLnpadQlc1vW6+1MZ2/OX87A71MR/o7ehd2W+8KBH7XXuCOZjbzgoeL0rYZbrf1HQec8huwhA9kLwCmzfuZhhd6Ddm6s/8AqPUYB/z/jR1XoExyUpZLRHBJ0tOZ+LbnAGT1Z+S/Q993af1PZdxcyxE4LWr+wISKQYl9XPlwKIBaaeQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH8PR12MB6865.namprd12.prod.outlook.com (2603:10b6:510:1c8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 20 Apr
 2023 06:23:19 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 06:23:19 +0000
Date: Thu, 20 Apr 2023 09:23:12 +0300
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <ZEDaUOBZL05fIFp8@shredder>
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418155902.898627-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR04CA0067.eurprd04.prod.outlook.com
 (2603:10a6:802:2::38) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH8PR12MB6865:EE_
X-MS-Office365-Filtering-Correlation-Id: 46254599-6327-4454-59ef-08db4167bbed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6HUQ/4stwyuupBiyiic6i/6lfeopGptdcTiQjmsxGFLtbBAXnxHflfhu6isYo4Z76l2lrhSWxbNyF//dV1icgFM7aZnbdb4aPqdEUN/jloGR+lncPz6eVpgVHm3NNvbfiRuF0tviiAV12AXOGTfWwo6r/yg38o6N63uDeyC1co79p0c9VuEye/mjCIvAGUp5m19TwPRvANkJWJgOTZ4QHO/vtfqeqe8Aunix5/7Gi2T6b/DJ16CxyQ/tya1gHOjdaH+9sQi1JWLIP14oR/ugXCuWNItG6kOr9GONwlJZeVFpMeNbW5W88T2bowaxH7f6jZr1HCwKuFeDisYQEyI36RFdrks1k+WCisib2Zn5qv4qp5C8w71N8aswy50y5bg4g6cBUse6r0+aGvaRRafeu8u+B2BY0DVABZy7c25mkmcamr8WtInwzHae1LO8Qa6mjvhBXrPLQa/CiBSmTxKXS5yKL6DWE4Av6n9fO8p9QNO780rfpm3MXvJf56nnqIiZ9Gk4sp8XKRGbUsP8+eAqDOiTGpKLdGqL29aG0pi3SlKTBON0FcbFKICMH0SF9PKAtlGG0ajPFJwBsKCtonDgWNi7GEI26x4cjXqatP1qHH4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(316002)(54906003)(6506007)(9686003)(6512007)(26005)(478600001)(41300700001)(186003)(966005)(4326008)(6486002)(6666004)(66476007)(6916009)(66946007)(66556008)(38100700002)(5660300002)(7416002)(8676002)(8936002)(2906002)(33716001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Vy4BHc1532HisbyFSQcYIJJ2rAJ1K82nfffgLT4Gykt3k5WE3jNBzZ1TmDs?=
 =?us-ascii?Q?UhLHp+By/2xPmj4wqMK3Ay3njtr3X+O3R2jJ81ER/RKpl5gw4uWG8uY0at/n?=
 =?us-ascii?Q?Cw4/bjtNs/Gq2ZAt4v2ZC5Ac7rtx9nCyCCqqZDnakMS5PediyU5KubGjqURg?=
 =?us-ascii?Q?KyUGBn5uhBg3/kGLzdlnReNNjEFcjKygV2k1nZDa3y7EDUDDB4IrKscZ1V6F?=
 =?us-ascii?Q?y3d+OK/ApKwN8AY5wp84+BdOYfdupXNAsFTvo2CZ+ikqEFmiX+QvntrrlwFk?=
 =?us-ascii?Q?i0NdlGFPtOwh6+K5txSpyLSWtgfy5Fme18QRMj8QhfhPam+lQjrW/xQYnkLK?=
 =?us-ascii?Q?sH+wstuaatUoavZW2DvrFTQ2FBr+mWVD40J5ul8ag3QTaNkRX93wrrQHNfAs?=
 =?us-ascii?Q?FdB5M6eoDQbQgIT33JVzLBk7vfbFC2EnlEHREWAWLSL7sGW1WojRyJDvaxOG?=
 =?us-ascii?Q?cMweiadhViRUetaBgrWHbC5ta1AiDQsOT2lpfzBZ86D9TTJ+/Enax4dt8zjx?=
 =?us-ascii?Q?aM20u8sXif/IZGcxPoQHEG9ikb2M0xFCebVdcsQj2ZTWGiUfILs2pMNkSAzb?=
 =?us-ascii?Q?ZlGT3ZAf6kYFtTNnmTbIlBM21d4iJw6I50mVeNMLKhvyPaLQOqrwmEW1zKlD?=
 =?us-ascii?Q?CdJXunMmwOyE3luO7HTDeyec3bSSrLdv1Lda0aYj/WQNqCJyaarfDZVcRNen?=
 =?us-ascii?Q?U/CCbs1bPnEwMbwV4UIm5x5y6QUzOHRwrd7JI5jvQ0kNGvLtdaTFOzHKhGiy?=
 =?us-ascii?Q?XhXl17ZCt/JdiUOT7re+pd9wFJNm0MsV9RCIyiVw0FdCHrOxDwfL86qIzS1z?=
 =?us-ascii?Q?dmFUsPM5Xxvu7jNfXani2cUnWz7Oe6psh2gXYsa5OIrJrj5gAIKYdpFP8w7y?=
 =?us-ascii?Q?qdyT4F+U0h9VWhXFWq2dAT/WYKHDItjD/LZSj2Nugl9It2fFe/C1X3b0Tuh6?=
 =?us-ascii?Q?qPvKqzAmajjYkgM1r75dH0ndI2JTFDui7usvAr4xSFtUKw7llocV9M+Hc9fe?=
 =?us-ascii?Q?PfiU1bIyAcDoMrCpQ7ETLAh9d1GETQpaIuOl6vNBeMxlf+IdtyMvv4tSx4Vk?=
 =?us-ascii?Q?ErHuV6PyZblIvDWbguta/E2r2v86WHrpx2EGr5wRjYSD0Vu4zNMfK9dWQ9ln?=
 =?us-ascii?Q?kyYq/ee6wcUuzkQGUv3YPAgE7tJ039x3ofBK31kjHYbPlr4Lyt1DzZKyfOea?=
 =?us-ascii?Q?A5Xk7opeutnC7Xlqrle8v8KOXINqBY+s7n2bUtXDZ0CDU45k/P3XXftMTWjt?=
 =?us-ascii?Q?Uhb3E70h39qvOpN+dgKCBEQlQh7tKLx5fTpHeuKQWUBTb+o+EyHj6Bl45Jqd?=
 =?us-ascii?Q?4J7/UuImMczETd4LHLP5eIfIQd3hpIkSUIjoOv8E6YBDRRTCFFVQa1p74XjL?=
 =?us-ascii?Q?xjER18TnkzYHpsADahz5OGfR7ExK+svLVRB7T2f/BiiQBzHgx2SfnnxQ1XZA?=
 =?us-ascii?Q?Aec2QnDzCITz2hyTJckE//PYMUSGQh1K1rVVErgqGY9gGRh3VUHF+5J3c1kB?=
 =?us-ascii?Q?xdQwRrrBe9KxLbQ+XkXU4jm11tY1u4PVoXSfmWc48BMhIJGHYMDw/l6USELL?=
 =?us-ascii?Q?W+AaZFMxxfrJzqkLB4l2hlgv6tYwCITzBkf+L6uq?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46254599-6327-4454-59ef-08db4167bbed
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 06:23:19.5747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Am+OlPJTfPTPIg7pquXi+x3xDjYgHHpUnWVXjeMXTdfqcvTHKrwjCdE6+aS8eLV6mQNAlRRYYPJaJFF+TB7R2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6865
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: switchdev: don't notify
 FDB entries with "master dynamic"
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

On Tue, Apr 18, 2023 at 06:59:02PM +0300, Vladimir Oltean wrote:
> There is a structural problem in switchdev, where the flag bits in
> struct switchdev_notifier_fdb_info (added_by_user, is_local etc) only
> represent a simplified / denatured view of what's in struct
> net_bridge_fdb_entry :: flags (BR_FDB_ADDED_BY_USER, BR_FDB_LOCAL etc).
> Each time we want to pass more information about struct
> net_bridge_fdb_entry :: flags to struct switchdev_notifier_fdb_info
> (here, BR_FDB_STATIC), we find that FDB entries were already notified to
> switchdev with no regard to this flag, and thus, switchdev drivers had
> no indication whether the notified entries were static or not.

[...]

> Fixes: 6b26b51b1d13 ("net: bridge: Add support for notifying devices about FDB add/del")
> Link: https://lore.kernel.org/netdev/20230327115206.jk5q5l753aoelwus@skbuf/
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Tested-by: Ido Schimmel <idosch@nvidia.com>

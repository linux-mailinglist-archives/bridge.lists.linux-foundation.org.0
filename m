Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 828E06DF86B
	for <lists.bridge@lfdr.de>; Wed, 12 Apr 2023 16:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2695861590;
	Wed, 12 Apr 2023 14:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2695861590
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=jeLDIukD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id veqxSe5Cicnf; Wed, 12 Apr 2023 14:27:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 921DB6158F;
	Wed, 12 Apr 2023 14:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 921DB6158F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37DADC0089;
	Wed, 12 Apr 2023 14:27:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7BA1C002A
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 14:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B132F41DB2
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 14:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B132F41DB2
Authentication-Results: smtp2.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=jeLDIukD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoVUUwGpYo2r for <bridge@lists.linux-foundation.org>;
 Wed, 12 Apr 2023 14:27:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78784400C1
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on20630.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaf::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78784400C1
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 14:27:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Krg5VPx/z1+Y+ihxrCtGjMUx7eNhJ85FSJwg1OLaiW40lszJ4WGnQdEKAA6r6DSW3p+dL08OrKmOMdl7P1bDZ5lhianN+hbql8e8XoBQ/zm37smtVO0HEMvwCFoWgPMKx0l8qUNRwIT1LH9yKsT1FgdbrJ3ZglSeFXwdQH1MV9THZsCniO71iqk8pmS8dRuc2Aj1CpVpTomaPQm3x9EbAEet5ZCta2J3bPo+/VhmArc2ikX5Lh2wrO3s5o1PY/VVW6z0lAuh9MhgbtyrzCCYpEUVq9PbuCUmpJMgScuNB3h+KCNtyCQ+oeAbI+y3h6S6oMDMAfLPEiVQnRnwrXxahQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmTQCkNjgjvKNMAok8QbskQl2zPgwu/kwkIaeW4J8xE=;
 b=lTFVQlfU38euYLgTZC4SQhble0vlYfdaCLS+9FDLAzAKWSwzQimWZGGCh4b3WSeZ/KQXHSW8zHl5ulOllPDbHGWXMIFBfE/BOHbVBFGTYk50DIoRHWPVVp4pQSjsjFek5ppjHjgdOIGGpOOcspmbitWeMn6hXZ/+wNh80zbWTxWEAwOCG2tkKBkt89N8uo3872AsBO4gK0LqvU8jyx5minTz1TBdQWtYXMHQFj6iNxFWlc805sNEnOxR4BuLZlsjuZ4o22nO6aqKMe4zeILq3oGakhZC8aPJ31Omu3lLlbfLRflAK6sateqM22ZLSejRbvX3z8n7w1WGVGaKZDUuGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmTQCkNjgjvKNMAok8QbskQl2zPgwu/kwkIaeW4J8xE=;
 b=jeLDIukDI96l8gmpBQE41kYFt68AySq+l+gSYTxVhKylbPJdqfe4rCH0IA5+zRUI9REm2MsL9b9LWY9k5KKwhwAzd3NkE4mgj7Yv/mLtnfAawNcjwA45mb3MpOGWR9RE8RFyDI3OIoG99ZzcVMlvV0JQv8FqlvCzfKpJ2EpzCGw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS1PR04MB9240.eurprd04.prod.outlook.com (2603:10a6:20b:4c4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Wed, 12 Apr
 2023 14:27:37 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b%5]) with mapi id 15.20.6298.028; Wed, 12 Apr 2023
 14:27:36 +0000
Date: Wed, 12 Apr 2023 17:27:33 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230412142733.6jhxt7kjf3nwqzsy@skbuf>
References: <20230410204951.1359485-1-vladimir.oltean@nxp.com>
 <ZDa856x2rhzNrrXa@shredder>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDa856x2rhzNrrXa@shredder>
X-ClientProxiedBy: VI1PR0901CA0101.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::27) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS1PR04MB9240:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a236b2b-df91-4247-9ca8-08db3b62102e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qLwCPGrj2bm2PbJCxrZHsDvmHa3WpMK7fVk2f1s0rucKdPr7Ykobgh0Shy1wysrlDBW7Gr9thFz4Xn5mPKGWGgNnKnfccQSSgM/6N5VIVU5bMPwF7276lBw9z+dF1SGNqOyYAcHYLSr4+8GiB9TD047mgLCqUjML9ZcYHLcegmOuspTNGq8WMHkIToK8Ydd/fRaV95cGOxgCY+I2bag2xn8h8C1eXxPbhcDEusZt4KF2uQSxoLWDc738kr+9CDL+Q119VEtlaY11uY20j9VaFj4dIaWcnkpQhVjiqfuUh+UupBMqtDQes744Np/GxAO5OSKEk9JA5idpwD/JBs2BGloNWkxHkt816M6Rc7Q1aRWBl8JMKXGYUg4bc69oF/T8/uQqMn5dWXdZv5E/Sd70SDQ5v8cALCb8ZudAiZYtHhQ664PRwP58mr+uhk/jx2V6vNQAhk1H7TBTm6VVsrWRX3xO6/Eio1so5Ao+e9JOT2Lms4Imf2e+GQuyiHAgugZo/2KgqNTURl0CDsmj8ekbq0KyONQlfClsEoswtvmYn466Wx+2sPqQsGlSRomNJ1XB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199021)(86362001)(6486002)(83380400001)(41300700001)(316002)(478600001)(66556008)(54906003)(66476007)(8676002)(4326008)(66946007)(6916009)(33716001)(7416002)(44832011)(2906002)(4744005)(38100700002)(5660300002)(186003)(8936002)(6512007)(9686003)(6506007)(1076003)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XV8Q48Xu3Jsfkq08jp2BsJPy8tZywIi6gG7P4hTFCKXFwrKnWmftQe7FoUBL?=
 =?us-ascii?Q?aQTZvwPG7JXVx7yfTralIYgC+wFMT61xNwdFK/PCc5lix43A0skfkuCFvfqR?=
 =?us-ascii?Q?HdC3EANdiqlBybj2LB1CEfOG+gADh41J5yHyma/j5F/GScVQROu2HFt2oA8h?=
 =?us-ascii?Q?KydzV//AisufPgPw2OPP/QgN2VbysYJpfyukNpabcEN3tORCSPiEzsMzLpT4?=
 =?us-ascii?Q?sAELfzQ0qklYEiHU7HbfFfrvSCyJ4EaJNQ9ms7m8wDdpwcz9H19Jk/2JigoC?=
 =?us-ascii?Q?peb2ZaGIVAParOakISHNZ4lmz8/YqTKt7jte8qY32W6HdKOb/xM2Hh+XCVOc?=
 =?us-ascii?Q?vo0m+abqLhRZXAMoLu5y3gd0rrzMnHUAm+p2e80F5n8zbpMQGu0P7tz4O87Y?=
 =?us-ascii?Q?fWy/QHP3lRK6EM9KSfAgl66ZAQ021IuNIODM6+UVJV5Unki4rUFCi168iB/S?=
 =?us-ascii?Q?mvtPJ3IYRsIA02WctxF2aclAhhGz2G9sU0tGTV/8/omz3ESP1glkQmNrzHF9?=
 =?us-ascii?Q?J03u0UrmDi+ZnIK2dcAPsNe5B7B1rOJy1cux1JZGl52oCid59gzoBdF02E1o?=
 =?us-ascii?Q?wSQoyHoFMqQclq2QM+cdWeAgpc4Aa18fLr6pGn9h8saKLq0PfP7UufASMqWe?=
 =?us-ascii?Q?u96TP4vQ6NCei3LuzyOZf/zbLjbYDvydhiYG3gEV9L9Sfo2iVy+opm7Ysd/V?=
 =?us-ascii?Q?rU/70WeGWsvWBGvLqfMdpBjIGxPATvQaC3sND1b9x3liZyO4moXQt0d8rhHH?=
 =?us-ascii?Q?nFKnNRwLFF7vItaGMjQrIMJqdACRYqRV20p6SYey0wBTucv3NgN0wQS8uQ0d?=
 =?us-ascii?Q?JK8jPXFxPT+aoiS0VGLj7Pp65henbhlYG8RIgN8oMG2/yVokq6H9z+jbNPng?=
 =?us-ascii?Q?YyLmHsFBv6AQY2RzTY+FwJTlyhNkzCzRk3eF3ymWsUMQ8z8/igaiMdHfpBSG?=
 =?us-ascii?Q?oXtQSOm4C2AzWKqyazjY73mw/7JfVn9U/RID3L4sjDHJfTNrQ91iaRnz1ByZ?=
 =?us-ascii?Q?2BhD4NIPdDQ4yEgzGqzcZKAorlWtStP7gUG8Hf/dY92xSkibMLbQCMxvzL/R?=
 =?us-ascii?Q?vUT14gsQORTFmLcNuYPo8m44bG2ic6QJ2qAKBTxlJc9sFqx4QoxNGVWoUsgI?=
 =?us-ascii?Q?xsVpIqOSIZKhvVd1N6cUG1OMuYMRreMaHzM5R4wms9vbEyqCWQNOZ1Mc6yg2?=
 =?us-ascii?Q?NaPPYmf6Blh6e3Uc8tkQd/XuqTeK0vT6d/J2u3X9zxzDGMEnq0/LLIlap6++?=
 =?us-ascii?Q?Awaixd4d7nNrTCQAMH7wu9cOI61POnUpXMr6hykeHjf1D256OWDMQCYZ8naJ?=
 =?us-ascii?Q?G7xF6wG/5wxQvr8BECVEuaZwNhmIHqAbNtuWQdW2SE3CZmgoMEat9pxbwNkn?=
 =?us-ascii?Q?6VZGOynKm+exDqRV2Tt4pxS5XGOxuFGt1lk4g1Whztu1zpQKfVWDsaa9lVLF?=
 =?us-ascii?Q?c13JdG/fVO9TUcC/2/DYyuF2Jpv3FITDwTQTB/CWeGRsuuOpAdykNfJz/Vfh?=
 =?us-ascii?Q?gpkMhHtqP0dKkXrk32IVSKfhMo5SwrekDX4Lbylck24KQyT3q5fVBBhSDCCe?=
 =?us-ascii?Q?5b/BFhT4czLKd//anSli6cmjdSSZRvQDmH4jq723ghZsu/Yv7tLlvSC+pbWg?=
 =?us-ascii?Q?PQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a236b2b-df91-4247-9ca8-08db3b62102e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 14:27:36.9015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wyRd5Gk6bC067NsXwmWXDuZS8KmNJ7WbSuYBBkj3QrK1FipCh5n078kVzEEEhvNsI3JHiyiHiH1VA25Q1CIhKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9240
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 Arkadi Sharshevsky <arkadis@mellanox.com>, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@mellanox.com>, Eric Dumazet <edumazet@google.com>,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: switchdev: don't notify FDB
 entries with "master dynamic"
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

On Wed, Apr 12, 2023 at 05:15:03PM +0300, Ido Schimmel wrote:
> > Looking at tools/testing/selftests/net/forwarding/, there is no valid
> > use of the "bridge fdb add ... master dynamic" command there, so I am
> > fairly confident that no one used to rely on this behavior.
> 
> Yes, but there are tests that use "extern_learn". If you post a v2 that
> takes "BR_FDB_ADDED_BY_EXT_LEARN" into account, then I can ask Petr to
> run it through our regression and report back (not sure we will make it
> to this week's PR though).
> 
> Thanks

How are extern_learn FDB entries processed by spectrum's
SWITCHDEV_FDB_ADD_TO_DEVICE handler?

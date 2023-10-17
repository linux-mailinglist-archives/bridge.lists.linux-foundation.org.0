Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CCA7CC14B
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 12:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A36D41B81;
	Tue, 17 Oct 2023 10:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A36D41B81
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=fTeTwMLP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyX53IkRm9pf; Tue, 17 Oct 2023 10:58:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 639DB41B72;
	Tue, 17 Oct 2023 10:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 639DB41B72
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05691C0DD3;
	Tue, 17 Oct 2023 10:58:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 580CDC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 10:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CA79403C9
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 10:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CA79403C9
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=fTeTwMLP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TbnDuijK7Oac for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 10:58:55 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20600.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::600])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 915D1402A7
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 10:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 915D1402A7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gh9YrFRJHfsOp6cXdgcyKY7uw9lIWtO4p3T7rvuzSdYpgKOUTy1vpK1/r/5ziXb9xxiSikMH71Di+RsyBfYueFi1CFHqovxVyhpgGn5FuS84A61kS80lgLIJUOsl+vZcbecGNhV7qWOvlrzLifrQ8g0CClbJ1SnV+PwLYIWTaYoQ7HovWXm0p3VAiY7HZhLIyCFXNAaC6xa5UafhUDJXJb/cNGy2TDSO2URrbQQRF/Q/cT/MW1ryjl77vndtidGZvNIYDblTcikV2odLv7BFKSsy/z8g1lAxrkL45npUZ5XJadMn1GPtrORddlgqmNDxPUeeqpUsp+dbxkPh7KavtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UmLdHhpXrFuKOvT1IcIni34J/fCWB9xKWA93NHpp+dI=;
 b=GdD3jIJZxIUWUp48BeMh4ZaYomwHHw0aulMVYVI5OQGfTufc4mJw6PaXwPilZcYP/6BH0KFMpf2S4DiVgAjVROKVo8ISuTi7oMA8WRr1QnxHaa29+3ZsJAFP0VE9UXVTVPzHWa9cddUDMcvLEePlCjBsQDH0Q5j8CDbefINwffcspVMRL7BWi634qduS0VsH9IrKfIUk0a5V4GNbJSQ8MZbvhd1o0iC1Wunx/m2+MLJ7hlfAbTfZjzL8LYl2bk5p3Mgliv0OzEFIJrVmnDSke1bWhd1nBW12dCzRvIv0aNMLIYwSNe035MGiTITAbsW+OdErJHxovvWaYMTTiEazsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UmLdHhpXrFuKOvT1IcIni34J/fCWB9xKWA93NHpp+dI=;
 b=fTeTwMLPxex7X1dpVWnHV73m4UhdaeSXVaYJ8nQJgsBGigXAP5pcp01ktifXsTPmceimVZjJiCIucMlrur/MTQU8NQmp3rK3JoMYbhE2FyAdxBV2XZG77OT6NXt5COWqvHV0BouT5EitnD909lsf76VmgozoyfGiw8C+ak+bOV6txI911QxWzuuc4lZbMPUml1ENHoEQiXYzU+5a1o6cTDuOhpaXuCwFySb7aQtvkJnmPYRFwtG1JYrLPpIKD3ocUYCpmxcxnW6hCObBjUC0dw2YK0w2Lf7A93HTjWi6huCr7igMSoi3L9shNsbW2hSpDAbJ/swSDv/zJdE9wKUjkg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by SJ1PR12MB6289.namprd12.prod.outlook.com (2603:10b6:a03:458::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Tue, 17 Oct
 2023 10:58:52 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::628c:5cf4:ebb2:77f]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::628c:5cf4:ebb2:77f%6]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 10:58:52 +0000
Date: Tue, 17 Oct 2023 13:58:39 +0300
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZS5o337prUOKspUL@shredder>
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-8-idosch@nvidia.com>
 <b3e0d656-cb25-3ac8-6391-8fb27217470b@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3e0d656-cb25-3ac8-6391-8fb27217470b@blackwall.org>
X-ClientProxiedBy: DO0P289CA0001.QATP289.PROD.OUTLOOK.COM
 (2603:1096:790:20::8) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|SJ1PR12MB6289:EE_
X-MS-Office365-Filtering-Correlation-Id: babd30a8-4741-46b1-4701-08dbcf000cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VVSq6wDcqFUdHHO45l5fOGx2pAo59Vx+clLLQ0bt9omXZiBsjgJ9Bc/c7xwFeISkHgm8u6AKcu+ME1wR0kTU68MvdBJ4gMgxD4sJTACZS0+Q9FuL+meG69Nwi9jE4L4YTd9X7K5rl8PEkHomvmHKan0vRpgyJw+kxA5+Z5UCgojQffRaCp0hdflLbd0oARrGH9LPA3xUBxtmZL9hdEGkcJD+ZN21QEo/EUOLbML28tpdJNDGcfQc6dCG24hU7R+3v1mjdeDvEoSb289WikZf2R/5e/KHxrg+wFt4RRNkT4GBnu7rVHFjTHc+tEd1AgRtYEKdGnefz0RS2b3gyltF6wd8fW383itRTOkzie85IM9fa493sGyeL4/BmNZE4X3SCzPaForpcLCDUSbdZxSgWi1lDkRSRSY93ESzft6mgkuXItXj58fwA0xqn6SEmiuHVuKHth7rhX4ytRm8iXrJAgEECjvVH9SzC8wmb34uaZk3Qyv8Zk5PKRKY6ex9nmEe83Z987j7Afk7TEB2Gud/Kw0zybm154ZbapA5iryTmu/gTX1KisJExl/wDixT/Xfk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(366004)(136003)(39860400002)(376002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(53546011)(6486002)(38100700002)(83380400001)(6666004)(6512007)(26005)(6506007)(2906002)(66476007)(6916009)(316002)(478600001)(66946007)(107886003)(66556008)(4744005)(86362001)(41300700001)(9686003)(8936002)(8676002)(4326008)(5660300002)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I+L7tCb/0LDHPk2z/y0B+cFIiRb1wjXUYQK3lj4HF802lGQEM5S91sPhd7/O?=
 =?us-ascii?Q?nGdKYGYVT8n1pN86QlQs2J+sjEKU2pwTEwPyAhIW15/USFYu7tU93MadQ8QD?=
 =?us-ascii?Q?udTmqSJCfiOpguEfIUZDQYlEtQGJJP6EmMpgQcYxh4usMYmhHiN1DQ7dcGwf?=
 =?us-ascii?Q?W5oqAC6DbKvttbfqg9aAC7vIsTdBa0OPd5JcPnWu8b/Bsg1AyFCfycYLLFce?=
 =?us-ascii?Q?xRHN3hSC5WT4YNfjUbXUX1eNwlPku4N3NULy2Io4Yxy3qytdSwWEhyJFL8ue?=
 =?us-ascii?Q?SsNfI2Of9iZSZmYqYvGaJABLqUaALFtVEnyYYKS6OLc1jBQUTbGZF45tBEtj?=
 =?us-ascii?Q?gfW97I9r2mC0RgZ6gl6EN6mXAOMCkrjGA3EVZJrQ2hZoGmF6cZpu6DOr/b4P?=
 =?us-ascii?Q?OsOMeubk99tSaIPxbo/NZO2z9HCjQAroYv+G/K/xfYiF663S/ywl5ymU2G2+?=
 =?us-ascii?Q?XUgxa3RF1ZWU/Ig+hCM4fy/C9E2Gwkn5ASXcuY/e+AaoY7rFxnDCHEoRddvi?=
 =?us-ascii?Q?EcI7ZLo7JW55Ba9+hc8SlKsGGjZBWMEriJ6z0EZwOAVMSIGx83F8n6uerEE3?=
 =?us-ascii?Q?TcsS+sowHNRSbJiXgwZt/0fKQe8eIKrftFtM0CP4YswFx9XFvxtykIV3FLgf?=
 =?us-ascii?Q?V+5TG2L9L2/o3O/dhXQPJdpvGc/b0vZqbGTQpdkqguVpRjwdJhTaTzD3NT4x?=
 =?us-ascii?Q?rXXrsVN8PUJR7dUw/I0reJQ3EbdkQlg5HqqMa6eBXCrQ5HrvbJKejmyPsBxX?=
 =?us-ascii?Q?GY7psmU2L4Gql4d5fm1ida2rOBhO+Rc+KOjfNA97OSVmApU4FA/vq8L1TbIN?=
 =?us-ascii?Q?Uloe5ecVVCZ6RD9rgqnBXPkXjbv17GHBJd8pucfZsCwfYL796031zrMlzKwI?=
 =?us-ascii?Q?T+ZhNdH4k2zhijdkFleJiKUkkzKjYiVA9x1OIwsb57WH4RWeGjv/hY1cJ6Up?=
 =?us-ascii?Q?z2J63UCTk5DfxqdEX2eo8NG7dWaGG/X70KM858AY6cfwqetmXhyIKfNiING3?=
 =?us-ascii?Q?VtXRJ+nLx6q+qrR3cMyqP2BHnkNw45e1XWnnWNgW/mdOK3nDL/Bm1iVsFutl?=
 =?us-ascii?Q?h0FDq97Y6bhuLzObDLKYidAXLql1iZ4JeWTT5zsKy1tUhLgMnsDNUkzxWq51?=
 =?us-ascii?Q?P08CUltszGuNH7uXi9mFlv16+pLUA0wdqCSIkW7Qrn4iW+0U7dryGoUenk4+?=
 =?us-ascii?Q?MIlYX9UFqdkMvOSx9A9CLV+WGEz2wgiESx2CykFV1x4xWbSGheGHddZzHVJW?=
 =?us-ascii?Q?aMHA5cHZ7j9BiYvypsR22fjNP2JsRqWZhVjagJdI9zKtI1G47U+9nx+ffMjO?=
 =?us-ascii?Q?Z/OfPvFhS1SmuxDcgWSJww29WkNabA/n+VowlRUImYSxUGzpBiGatXuFoA1L?=
 =?us-ascii?Q?eAYwDVywEVO7HlxEzjoipmklFFywkv9PGZJbTiAf6oISlzciAIe6hVfxlZJy?=
 =?us-ascii?Q?5JyAB4tOTlCo2vM0VaZbtDaLQ5HiLFHJah9Z/IWgfd0mNL5y02ji9liYlkxf?=
 =?us-ascii?Q?UylT1Wq1CL+VZ3tepxODbMwNRKd4N1LKbepGEGjX9zsfLDhv+f9rgqNcfAHO?=
 =?us-ascii?Q?JeX+8hhBj82Auiba3bUFUH1FHwBr8PSiYbZzPpmD?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: babd30a8-4741-46b1-4701-08dbcf000cd5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 10:58:52.6364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ATYbDfmT2eVRB65ghrKx/o9f+3c0OlkkscDj4nDaP0BKRSUTZfinsX9Y/ZRP4ZsYc+Iu4TJWQ6xCebQ1Hr71VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6289
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 07/13] bridge: add MDB get uAPI
	attributes
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

On Tue, Oct 17, 2023 at 12:08:30PM +0300, Nikolay Aleksandrov wrote:
> On 10/16/23 16:12, Ido Schimmel wrote:
> > Add MDB get attributes that correspond to the MDB set attributes used in
> > RTM_NEWMDB messages. Specifically, add 'MDBA_GET_ENTRY' which will hold
> > a 'struct br_mdb_entry' and 'MDBA_GET_ENTRY_ATTRS' which will hold
> > 'MDBE_ATTR_*' attributes that are used as indexes (source IP and source
> > VNI).
> > 
> > An example request will look as follows:
> > 
> > [ struct nlmsghdr ]
> > [ struct br_port_msg ]
> > [ MDBA_GET_ENTRY ]
> > 	struct br_mdb_entry
> > [ MDBA_GET_ENTRY_ATTRS ]
> > 	[ MDBE_ATTR_SOURCE ]
> > 		struct in_addr / struct in6_addr
> > 	[ MDBE_ATTR_SRC_VNI ]
> > 		u32
> > 
> 
> Could you please add this info as a comment above the enum?
> Similar to the enum below it. It'd be nice to have an example
> of what's expected.

Yes, will add in v2

Thanks

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F65735A0E
	for <lists.bridge@lfdr.de>; Mon, 19 Jun 2023 16:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2C7481DFD;
	Mon, 19 Jun 2023 14:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2C7481DFD
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=oAy+oTto
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UInoffVPtEzg; Mon, 19 Jun 2023 14:51:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 172E281E14;
	Mon, 19 Jun 2023 14:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 172E281E14
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B445C0089;
	Mon, 19 Jun 2023 14:50:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45772C0029
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jun 2023 14:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10AF740CB9
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jun 2023 14:50:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10AF740CB9
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=oAy+oTto
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5bOk0E44gLYG for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jun 2023 14:50:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 093114014E
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20628.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::628])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 093114014E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jun 2023 14:50:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5NYnERBpxfsctnF/M8G1jALCJMaH2uTmM9631db3zDNgKmvIN8oZNSHLMdGf/CrcVaX6NoqBZ+PhPYIcNE5Hv11ltcoBVwhcvBax6R2sWtnfHo0vIS5m14B8r3G6/2PlfGlfKcR8YJMgv983DyyfRegbzBS5ZmrpOjLDN4Vb4EOAPHRAABKSS8bu3esYxcPc0TwxPmTjnOYn+r8cn3Dl9JXmQOwQyGmxdm3oxFD1R6fJAIyddbqUJhoW/MEGpRumXYLVHZatazeLhjxzutRV348o8G7WzKJw6jxHAEFcF7A0dRgulgAaUkpWzCzBAgly3IhB9rpS8FME50bZnr/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3UzyzaT10w+xbRr2SX1Kym5fmfV7tJ8gI/eKNZ0Jf0=;
 b=W4AcqkuaJC4kHvvV1PXSyPBIJpfmcwvihZNTDAq53GWESfljAkfK/Ja0FC+bj2oxG5v+ipDKDzKVTO1TuoI65HShB23cwLRZB9JMbGWuDJCRzU9lF9+vg7ehu7gVDQut533FLcZKJ0iPn99Mww9+rAx640nz6dWG3AEKZDBgPtAIp4DpW0EPlgCExNgguGMCoaZQk7YXcFk6/cJHqcpO/BbD0S9fjWWf6VcZDo3e1Xs3wW2lQjXpVP+fYOjqfpZVUeCD+gz7ECRvRTS8v7NvzKuQgth4z/yHRgf/be77twAJKCKid92iNmabPRbrFCeOVzRPKUpHptqIzA36Yoa74w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3UzyzaT10w+xbRr2SX1Kym5fmfV7tJ8gI/eKNZ0Jf0=;
 b=oAy+oTtoALe8My8z+YmHx5BEv+CtBTOFO17JROH+KdzhKQbOBGoFutOXIpOquXWR9/81ZN/xGIUmzvNQU7YUIOjTviGvZV07MDI29YR1KLLDT3q25fZf/gNkrBJvcIvCkfvXnYPy6RjrZCVhm+SxrutNahNzf4bX2Z8KY5+RXETaqy1gPYgfXPbsIWmZ7jEm/BTkPxztCDJ9wGH/0WXI98goznnwMe1K+XOe4QnsGmnMEpfpF4dc6zNXfqlSF3NMthD2c1psxHSZ9Yp3CKo8Ka66sMQLtmzMFV48gzYAglAU8u00400th8OJCzZYiy4tkPsNM3DOd/ofW/YpYmPXEw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BL1PR12MB5948.namprd12.prod.outlook.com (2603:10b6:208:39b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 14:50:52 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::66d8:40d2:14ed:7697%5]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 14:50:52 +0000
Date: Mon, 19 Jun 2023 17:50:47 +0300
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <ZJBrR/ZqZ4AX5Kat@shredder>
References: <20230619071444.14625-1-jnixdorf-oss@avm.de>
 <20230619071444.14625-2-jnixdorf-oss@avm.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619071444.14625-2-jnixdorf-oss@avm.de>
X-ClientProxiedBy: LO2P265CA0283.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::31) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BL1PR12MB5948:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a80280a-e649-4b62-2b02-08db70d4943a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PZ5wS12hLRxP4EWbAPG/nOfLwF8q7HzNDqYcuFoyvGmR0hLn1wXQ3raKaS0hWHFFI6thB6bUQnczVG2pYkmtY8vTqZJ2E2ObHFBA6BjL6TivuGB2rlIeVFFpB64kpR+sz+mzB0gNakMpccy6ZuWB6Ur5QJ8l99NIIq1HjriOr/dcf+/HJEsNE1qK5EBvV89BIRPPsoKUJuZQs7D5TEB8HyirOmavnW/lyGL6QYXNwoq7AFGB+gQtQaYXKQ6KGQipubIOn+DaHRvAFzkFPDSuMkZfvdrRcTcLtuu6oJi/RSo0M5GYSgxRNYBoaGTPETBb0w7j9r5/veuxx4u+4l5+19SSqPs6WqLmv16TnXVi/F4O1mGuCXvNLDtkdc3fqqwKsz+mHRfpopSxsvU8soUtNI+16RBar6xgmOhSmrJkomxongVdP+jf2/S56qfqKp4OzAyzpr8daF/EyuLn8PGHq7gyz3QVJusHZb9JXv4vwbYbfeMhcEHfNflS9GE2vbTnrhdJfP/ou8TqIQEjMXuaQo4q0Q35IbMF9TGmx0TOQoohvwELoMHGkLB9EROEK/W1LvamAaJ9BIfIDjEaUmMvCFHOSoJJS+zTvjvR65Nf1yQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199021)(7416002)(33716001)(83380400001)(38100700002)(86362001)(41300700001)(8936002)(8676002)(5660300002)(66556008)(66476007)(66946007)(6916009)(316002)(107886003)(6506007)(6512007)(9686003)(26005)(966005)(6666004)(186003)(6486002)(478600001)(4326008)(54906003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QmP12gHJSwcZiNVtosn5cGCerbtxzta/SLY6lsOZkJNZHC0r6vPSJP9/iG1b?=
 =?us-ascii?Q?8N62ziiCRMPEt6iNBFkHfUY6d/+mbtzQLrqLlaKQ+EEyo6RVIEZnb1pbR++/?=
 =?us-ascii?Q?bP2/VQam4EdIfbzfCqEufncKVcSk8qacy/yRHHxvIBubsb9c1jX7tSlVPJB6?=
 =?us-ascii?Q?qY2lBmUMXf+aqfzHNYYX0QoS/CwvTucbr6Apy0YYY1sY7H2mma+tIXIulrUv?=
 =?us-ascii?Q?AwAf6gNOwArt1pIz4dYlerv8IfmTgPWDkP3BZ+0VrVdLjuVaAQ+RZMa+18ql?=
 =?us-ascii?Q?q9ektzsfLaZFlvGTZc21GJ68zuAyehwyLx8mroJxshM6uwCLKaqwelQwmvrw?=
 =?us-ascii?Q?VdhTrh0NPR757PEiPdlblIFNoixttuJg9KOtGr0UKnwexdQKcs+JgQ8sOl0w?=
 =?us-ascii?Q?Ldo7oyh1ttLj/DMBTr64dkGpeW4Bf0/QDpg7TQyBVRgF9vI1CjLEO3QOMTkZ?=
 =?us-ascii?Q?qUr+3Vp0wjE8u1k4UT0mvaEmIwGhV7tU6q+zGuXYjODKyXbGu0RZyjk/AwJH?=
 =?us-ascii?Q?9MQLMc2sC1lSMX9lUT8tJE/Sf1FNyMofDahuhhgCfNBdYst1YFq/bbDC9qpQ?=
 =?us-ascii?Q?FCtJl7LI4Gg0jLQoCzJBAsVz3W1zv/hi1ByPEOIH/hJiPriAjGFp1mnoI22H?=
 =?us-ascii?Q?ZoSqSsqQmMpitONJDdfDDP6CFCqV/IvRDDH8KYl+FJMVkOLF03RnXHcfHjZY?=
 =?us-ascii?Q?18mRoRWgJFMgcvdXJukZ9w1nU3eObQYTJClELlNxrRnbWiAzirM1nSjat2Tg?=
 =?us-ascii?Q?OxQdkslIjzIo3VdgRWbmO53j+AksVyjsDPIHEC5n+mMIs9REoUHjAkwftTF1?=
 =?us-ascii?Q?eRZ7gNewYjXajrTgH4UQupfatT51MV8TGivTzB+e5k9qtWk7ksr16lmNOcDD?=
 =?us-ascii?Q?jorqO7vde8JQJDwtKw2yA7Ev7GOVukb5ZVffUG6r+e71dxUhNn6WQK5R9AHk?=
 =?us-ascii?Q?cAIRmCorFPoE7sM19eyEuBoODU1J7fOppxd0vmDM+F7qmF3S6ZQriQIfoTi0?=
 =?us-ascii?Q?05gfKSjHK+0+dIU/TWMpuve3CQWuHisN/Y1YbD5uRPrTEEJP81tgnr8Fz83y?=
 =?us-ascii?Q?Y9JCGeuSroJeUJKxE46vB8toNCqIvJxDgEWnKd+y2rrTiicGYSlHpBSg9nUk?=
 =?us-ascii?Q?6DDdQKjJpgduhv3qBqQtdo467XPWoKi3jVHBWsy8vwm7yO7lAAzpbj4kxeZW?=
 =?us-ascii?Q?Y0VNNvnoEcVJH2+TSAdc6Z/9+8YsRe0LyvMtvNTdLvT7PPtOKQE8j0hrftK/?=
 =?us-ascii?Q?8IWFwg4+zizdJThwjdy9Y0W0PhutiiuUQ5S2RfuS+CO+rA8GCuuySzuuDsbq?=
 =?us-ascii?Q?iO9bAcN4+/zh45EhCBuzh8gegIb83jGp8OA/zwRmupwHLDpdfd95CIg3XZk6?=
 =?us-ascii?Q?DGH7jxWIkMCAl/UMkl00Fe9wQl+LnIYDoh/FayAVX/5n0CmDaVHqqLGJ8ar5?=
 =?us-ascii?Q?OetcPPzUzYxKllRAURq60umQC3Hs24mProZO+kjc12/pDowYYWmM0py6GXiE?=
 =?us-ascii?Q?czwDXoNjZibTTGMJvSgLS75XZLQYF7zRp/PESrs0XVxVdoc4hV95+BO+cppS?=
 =?us-ascii?Q?JqRiYMW5MtQaIBUuApMsHbPfhendnYjD1AKhzVju?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a80280a-e649-4b62-2b02-08db70d4943a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2023 14:50:52.7032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8vbAnM2Uq6+/K4rYKRlwyf5mBeb6h9qHjuT5reZnqJWOgNq9Nt/chB4ASl8aX1zX3GW0LFWZzt3jFD3S9VlT1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5948
Cc: Andrew Lunn <andrew@lunn.ch>, David Ahern <dsahern@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Eric Dumazet <edumazet@google.com>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2 1/3] bridge: Set
 BR_FDB_ADDED_BY_USER early in fdb_add_entry
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

On Mon, Jun 19, 2023 at 09:14:41AM +0200, Johannes Nixdorf wrote:
> This allows the called fdb_create to detect that the entry was added by
> the user early in the process. This is in preparation to adding limits
> in fdb_create that should not apply to user created fdb entries.

Use imperative mood:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> 

Remove the blank line

> ---
> 
> Changes since v1:
>  - Added this change to ensure user added entries are not limited.
> 
>  net/bridge/br_fdb.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e69a872bfc1d..ac1dc8723b9c 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -1056,7 +1056,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  		if (!(flags & NLM_F_CREATE))
>  			return -ENOENT;
>  
> -		fdb = fdb_create(br, source, addr, vid, 0);
> +		fdb = fdb_create(br, source, addr, vid, BR_FDB_ADDED_BY_USER);

BIT(BR_FDB_ADDED_BY_USER)

>  		if (!fdb)
>  			return -ENOMEM;
>  
> @@ -1069,6 +1069,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  			WRITE_ONCE(fdb->dst, source);
>  			modified = true;
>  		}
> +
> +		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  	}
>  
>  	if (fdb_to_nud(br, fdb) != state) {
> @@ -1100,8 +1102,6 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  	if (fdb_handle_notify(fdb, notify))
>  		modified = true;
>  
> -	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> -
>  	fdb->used = jiffies;
>  	if (modified) {
>  		if (refresh)
> -- 
> 2.40.1
> 

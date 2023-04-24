Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6DC6ECBF8
	for <lists.bridge@lfdr.de>; Mon, 24 Apr 2023 14:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DA0681F24;
	Mon, 24 Apr 2023 12:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DA0681F24
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=FdFeaLFb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7sWj23uA3OLt; Mon, 24 Apr 2023 12:26:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8F32581F26;
	Mon, 24 Apr 2023 12:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F32581F26
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24A56C008A;
	Mon, 24 Apr 2023 12:26:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6884C002A
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 12:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5260B404A1
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 12:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5260B404A1
Authentication-Results: smtp2.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=FdFeaLFb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34INIXD9HYUt for <bridge@lists.linux-foundation.org>;
 Mon, 24 Apr 2023 12:26:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30A6C40131
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04on0626.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe0e::626])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30A6C40131
 for <bridge@lists.linux-foundation.org>; Mon, 24 Apr 2023 12:26:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vw4pidcMSYGiNgU8AsBaQOlVUo3CIFyDcefzg+GwQpEs2ivmyYyO1P8ndZ5YrV/xomeM4s/6WXClIEU1WQE3lM9c54Vszx+89AIRgavxg8yi53QsqMf3htPnJ+FqJC7dircXckUZOsjqOiHmMIx8zamiM3bR3NVuw9iiH2Kk7GS13O33nwhoXIsO/VQoX1Ljzii9lzPG9FNNRliD2xeQteBPjZa5HtjoCxIF1WkqbGoeg6PWsJDUTAvfDmVKwQLajxvMyD3qNnAuUsg1L2VxZqdqYDMadR/k8ITHtf/0Wi6Lzb5858v7E2QItcANpz4FCtsOSVy8lX2UL0C570GdDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=orsDDOKKh9G4ZqtA+JbrZ/6al1+u8m6mVsti6x2RSZ0=;
 b=mXIuQEBGM9ggQGDVhcm1lRE1HNYLGhebyj5TohJ66hd74ZRwsr9fz0xUJeL6bpllpqHw/awugkJJ8vnOvpWQ8LMxGQXz/g1GMAzKavGgdQFxzCf/cY8/yAR0YbWm5D2IsyU3jQVjdR3neZbHYRFBC7koVr3St1oeUQWiqBKR0MlhTr83zK8oESreE1PcikQEUMaCh61+7g2NnB+q5V1fYLZ3Sf9mECFzgx4GSvNygimIFS8HjARDeKGr0Ci+HfTP3Z/AXx9luQ/RQE64UDTLU4LsqZ1+D4+ZF+S1acA+ROZeEpdttHVAlvH43zzlRDjn7hDeOJGZZVVmAXn6GVNKlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=orsDDOKKh9G4ZqtA+JbrZ/6al1+u8m6mVsti6x2RSZ0=;
 b=FdFeaLFbWNRS344QZX/4ayM8HEiU/IlgU2qNeF500NUHQrGDDXJY7bVd0fCzp58zaAdf4tsDDigANHDgqJFCugNHXu1KVFzQPfm9du/U0lsnK5Zx7Gp7qkbr+4ZnkNWLWd4a4UQr2N1UE7tfmVVziJ6gDF4ROscU5gwTE6PhGZ0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6454.eurprd04.prod.outlook.com (2603:10a6:20b:f4::20)
 by DBBPR04MB7898.eurprd04.prod.outlook.com (2603:10a6:10:1ed::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 12:26:39 +0000
Received: from AM6PR04MB6454.eurprd04.prod.outlook.com
 ([fe80::fb31:f749:38c8:4e87]) by AM6PR04MB6454.eurprd04.prod.outlook.com
 ([fe80::fb31:f749:38c8:4e87%6]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 12:26:39 +0000
Date: Mon, 24 Apr 2023 15:26:31 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230424122631.d7kwfwmlwvqjo3pz@skbuf>
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
 <875y9nt27g.fsf@kapio-technology.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875y9nt27g.fsf@kapio-technology.com>
X-ClientProxiedBy: VI1PR0902CA0026.eurprd09.prod.outlook.com
 (2603:10a6:802:1::15) To AM6PR04MB6454.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6454:EE_|DBBPR04MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: 882edc58-a67d-46d9-fc10-08db44bf2488
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QxrnpEAmxjBvprUjd9nSQpHayeBXAEX84trlBiLqsSOZUydfWVND6EH2e1cDjYUCsfL/wNL7Y3xFCgKKjt2E+pJTd3Suz2dkcXYR/YQFrMZBn69hYgeJyMsCn0yMArh0XQz3k/hDCjkXSRvWIB/+xYcXr/MRjlJSKZP/vYlhJqAzAlDVY/o3QoO6cgsJl5rGBQYRwGLqQLURFxEbw6bhN8Rhz3iOpbWkqhoRIwcvjOWAeG3eekeLq2f8+KL2L1U7aw4Q+yNg/ltbe7RSW9wI6iYRW3VeAJ9saeBg/S6xFgBUgA/Ov3ui0GxeVIGNAjBig6GRNDDb/rQR33UI+8+s0tUenPKyNjKKZn4Q+6eoiA9EPW7QTjT/OxP8KOiahbVuMJLusgI/QGBgmyHaKRR89xe3y++j3HSi/k47KRECl//iCJPbDikQdw6t0Xy5U1znb+mlTYU6ShGaB27aU8ixZam0C6i4gu/ePTmhaSY9nUxva1xab2wYqxUFtHCxOaqo4AGnL5Y0GSdxBUw2Y4E+wLKV8TX28j+Rjpd/19OO8Fo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6454.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(38100700002)(966005)(6506007)(6512007)(9686003)(1076003)(26005)(186003)(83380400001)(44832011)(2906002)(8676002)(8936002)(7416002)(5660300002)(54906003)(478600001)(6486002)(6666004)(316002)(4326008)(6916009)(41300700001)(66556008)(66946007)(86362001)(66476007)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f2HCd5LTtF/4xvyics0tUIkRscaNrCS9Ho4dVsKCsvmDwWXGMRZOzo1gVKkB?=
 =?us-ascii?Q?ZS+Np347MLAI0s1ZLNJ0mSA7UqFkhk9Lg9x4C0bczwe7MhhhnaIWJ2eNgAbW?=
 =?us-ascii?Q?FUi/CoBjOVFil30VAo2aCGm6EeyjqXDcaKcDT+ZtKyUW9upPqlxRwYNFpxCF?=
 =?us-ascii?Q?6SFGx/grpcul3HTS1sUGa9R+ex90PO/U/o7oQQtuF4Jmr5neawvMMytmzSSw?=
 =?us-ascii?Q?RkWLXas8UZbxgB5QTDS4mMpPqMLwYxQnRpjhoYusTvZwsLxdHEJtJOZUfFJZ?=
 =?us-ascii?Q?zgTNC3G/NbEQMmFtpBTEkqvOP/2x//kyNLQuZoRMlINLlzzqo6XdwmhGTDqY?=
 =?us-ascii?Q?ozQcTzU16iI9Kc7KtNwc4NrvhddeDR5HuXqzhajCIV0HUCnK4YOprpgO7h2Q?=
 =?us-ascii?Q?5KhD5CaoRCLXYIH8aMjEsLza2gesKyFwOOO7AC9b5Njek9M7vJ6hhEy2qLh5?=
 =?us-ascii?Q?zsHEXMZV3EkOdULoaUWpEyLwcvImbB2okFDCUqAKQAhujdjLqxSIz9zWANfu?=
 =?us-ascii?Q?vrygS88vPsiIs986V7PLlAs6o40yETcGaK5tfcQ8x9Ujr6MJYxuMmPOIoQC3?=
 =?us-ascii?Q?sMvSyGnwp4vWUnoj+PGVOLRRwVc+VDGbdchzdBKw799oD1YUvCTbBOdLb33H?=
 =?us-ascii?Q?+K3fdyigdEYbgbmxTKsWB80sXqWq0s5V3QMYGDLYirWC7XT8KNFheX89i4tC?=
 =?us-ascii?Q?+xxkea855PKZsIaJJeVCA015JPHBqozXBA3j6WSUU5d6s/kUw16dvsBmk2mq?=
 =?us-ascii?Q?9yZkDYL96iPURYNiTPduYwfrQsTkbD1zfn9fZBvdbUXGApZUx97HJqgkRHhJ?=
 =?us-ascii?Q?0jvCdrtFShOCbppiaQVvcWIwgW/mw+wfMj7dwUz1DApm/qSufTvPBfMjk7J3?=
 =?us-ascii?Q?Lqpz56qv3TrI8KQL8yyP6gfIBpKE9mY3uXCS2els/CgdcJjuMCNL8nNJ2jME?=
 =?us-ascii?Q?VeAW/vEJocOApUmSLzusPOFxV9XW4RRAI8LaYrUPL/a/LdJmzf1qojJUB7Re?=
 =?us-ascii?Q?gfy9GbY/vcMUlg0GuxofcUI2laJPza+Mm9eQfOw8ejX5kE0m012k8KYUhIDr?=
 =?us-ascii?Q?lI2IP241Gth7wr6UFbOVwvrwD7Cm+awH3xFHfADDdBGjln/pbccP0DP9/Cci?=
 =?us-ascii?Q?PeUGWJW/DLhcmRUG23LgYOQWR3gpUCqj+2e/YKfpDICa6SuPGMS3MALHRm7U?=
 =?us-ascii?Q?nIcSdfOvUAYDSyLnexm7gKVCEnuLA7CYQ+es4wUZQLjqgOqdc6lCwiamCjOe?=
 =?us-ascii?Q?Vd0QM/rZBu3Kdl8rTBS051/PXpYHmcADkXd011C+mM/JnwIAJeoAg9WrTfua?=
 =?us-ascii?Q?hiqTtfgYQabRJFWu7BLLPswEVlmmQFcNPMGph7jifKSXs4HLR7pVAZ6Hl6B0?=
 =?us-ascii?Q?K+I0d/fZtPGZqcC/ZrFuOHQ5Z0Mpi0NtwGPDVoJkrfTy7+A9ddj/DdOLTs+B?=
 =?us-ascii?Q?Of7RL2VsVxfQ6F6zpbxaGSX4itZgxUtr7O+4fhby2BH6cPcunC95Bwnl+SvK?=
 =?us-ascii?Q?qaiipKLs3OgWWSXxNO1rF51CntH/qZ25c37vlKwyTpzhE46H0FO1Dta3YORz?=
 =?us-ascii?Q?35uQi49wtMj3foyr38Fyh84z3srPdj/0OBd26c02x2lCEDpKj32JrytY181s?=
 =?us-ascii?Q?6A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 882edc58-a67d-46d9-fc10-08db44bf2488
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6454.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 12:26:39.7461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ywN5bp9fgALwm0jowJLPHoqNBdfgN7r6Dnb07UO5jgd0q8NEpHSq0brmmhUwhzOB/7cMqM33BJu790AZMA+ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7898
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sun, Apr 23, 2023 at 10:47:15AM +0200, Hans Schultz wrote:
> I do not understand this patch. It seems to me that it basically blocks
> any future use of dynamic fdb entries from userspace towards drivers.
> 
> I would have expected that something would be done in the DSA layer,
> where (switchcore) drivers would be able to set some flags to indicate
> which features are supported by the driver, including non-static
> fdb entries. But as the placement here is earlier in the datapath from
> userspace towards drivers it's not possible to do any such thing in the
> DSA layer wrt non-static fdb entries.

As explained too many times already in the thread here:
https://patchwork.kernel.org/project/netdevbpf/patch/20230318141010.513424-3-netdev@kapio-technology.com/
the plan is:

| Just like commit 6ab4c3117aec ("net: bridge: don't notify switchdev for
| local FDB addresses"), we could deny that for stable kernels, and add
| the correct interpretation of the flag in net-next.

Obviously we have not reached the end of that plan, and net-next is closed now.

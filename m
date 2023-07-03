Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 830FB746067
	for <lists.bridge@lfdr.de>; Mon,  3 Jul 2023 18:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E156E81186;
	Mon,  3 Jul 2023 16:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E156E81186
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=YwGu4JMI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZDVpIJHEVW38; Mon,  3 Jul 2023 16:08:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7808180FAB;
	Mon,  3 Jul 2023 16:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7808180FAB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14631C008C;
	Mon,  3 Jul 2023 16:08:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23F61C0032
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 16:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E38FC80F55
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 16:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E38FC80F55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_JepJ1Id4Ky for <bridge@lists.linux-foundation.org>;
 Mon,  3 Jul 2023 16:08:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E05580C60
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e1b::615])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E05580C60
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 16:08:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFM7xywMGOGvaPlHQu3beB5jXn4NC0rRkRor0bFfTaahqfx4lci0Cu1NdW/zbR1bbvuAkJDRL9btnlF37Gnq8jtgJ6Jp+UTZ0S6yci1qU6/XbSPqv4OVUczNVjId4gTQ3RrB5f7A2q0MJ2SHv231dCidDYvDsEk7egna5+0ar7TerQ8Z0mommwVFtTIpTdG5iCrMFRqmBxd01eZ3p+7bG4g1nZack6yqZTVFbKhCyjTZ+Vp3df+qnT2k+n3HqCTliwzJTwR110HqUx0oCuZwjWEUDbg6+Z4ZZJ/11DeNVGv+ufMKwQnyGDVn2WAViYfP9DHGU9ZfCSZ4rGnygHhoFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfMmwAPMTE2TepUyRH88vBdeIw/bsMvnWZOks/nHhqk=;
 b=DYI2Ye6IgJK4uiikHJwNRbxE+OxIfAbt5c+bk8HIAN/jhKuv/RLHraumrPgt9G2ASApCngspXyHRCSdQqg68m1MctX1QRC2epJ8GFJq+FisxgijcUGq+j1DphZ13t5bct8kmr7wWp9X2QONVpMWZ0+3kcP9EVEBiBNAzZ84Wvw+02PAgk9RpyeSoBRrGfdb4VgLLF5n1zLy6jWQez56aZcyhBdmMnrsP+rK17kC6cu2u6A2B64Eo6HG92LYCNDA25zO6n7ORouihr/kfp+JExN9kUlmqSqaVa6SyxE+4Rd+NDCZouPpCmZibLCXJtRSewFP3le353sEUn7IQU5qlnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfMmwAPMTE2TepUyRH88vBdeIw/bsMvnWZOks/nHhqk=;
 b=YwGu4JMIsTZKViZOYpGPngMHa+L8ONa14MKFyKAHQc3sYHLUC73nlrhE0J4IlQWUbLTwYsKUeOzCnx6zo/ct9NVrGTxkTssXHkJ4XhiTr7kZs1rHjK6F40UKlDDv+3w6ODqpLka5XD7+X+456PkM+lzSPAIGYop8aD3vD5pvcfA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS5PR04MB9999.eurprd04.prod.outlook.com (2603:10a6:20b:67f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 16:08:30 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%5]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 16:08:30 +0000
Date: Mon, 3 Jul 2023 19:08:26 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230703160826.5wx5mmszr67hvjmw@skbuf>
References: <20230630164118.1526679-1-vladimir.oltean@nxp.com>
 <ZKKADtxlXyPmBvbr@shredder>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZKKADtxlXyPmBvbr@shredder>
X-ClientProxiedBy: AS4P190CA0058.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:656::7) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS5PR04MB9999:EE_
X-MS-Office365-Filtering-Correlation-Id: e54b0bc9-92ac-452d-b804-08db7bdfbde6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g5JOsN5yefTutISe/i/8ltEdMRRPLm5Alrf4rztGT2S3qVmcddyMusa6iWUaGUzZ5x4ObvauW3icd43K0nmpoUVgdyZlR8n/U6KLmppPPsT0q3OfeznqQojp5Uy0kF1Mbhzu+zf3fADtmHiCo5wtNJq4KbstAR/flISYISl1ifzZO0EFL4LXvkjSlTnW5RbskYrQeN8Hv/Y9ma2Xa2KCYJuxDBaQvq25FYWKq7EV+jOJ0FONq9DeG8bJBiRSzPE6vQI/Cz75IyPYUAnVNLoOZ75eIKFQqcWycZPlax44zvo04gUcghaTefFSC3S1Yl9TXrMoKcVlo7erkMvamsYqk26eTzSng7ZDioxRupZp7sg6WuPsdbytlEMIPaMMbs3tfqfW6XdEoOeXgFucTggsWnUEVpe/812IBHD/vZZe1EJbSMpiNMVaiM7RmrQtN76ZZqvGALNyT3zlWzZ6riGfwEkzL/9VR7t0GRGbqtRJEvDapLCB0pU7KtQb15f5FaJcAGmeuOXPwf6Zm6RD3bCcorQfXrNiN96n2Pob5CZ++TWg+W4HpiyC0kxl2l3hyQv4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(396003)(346002)(136003)(39860400002)(376002)(366004)(451199021)(2906002)(41300700001)(7416002)(5660300002)(44832011)(8936002)(8676002)(33716001)(86362001)(6512007)(6486002)(478600001)(6666004)(186003)(26005)(9686003)(54906003)(1076003)(66556008)(4326008)(6916009)(66476007)(66946007)(6506007)(316002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tQCIspRyyP1BPh1tNZ6uATXzgPsd1QNiRPmBjeSDhBqyB61/NqwM/xJOiEtZ?=
 =?us-ascii?Q?li01loeIfJYcvlorWUIBFy84cRZci9iP0tD6Bv8P2A3mWExyIcM9ZTzmfs7a?=
 =?us-ascii?Q?iVeY5T92kJFcDkOfOcGGrZZcmFVWP6tQJdSF3r/JL5qG/BGI9mMU0vkhNruE?=
 =?us-ascii?Q?SjlCwrrIoKVo5Jmob8U8NLVNIfDvjv8jM+p5b4DxsoZQwPx/UrIZSSVZVELg?=
 =?us-ascii?Q?Z8tf5WC8Zg4BDCDAyXOf9V+IDMpmrQuoPuqFW4qhOHRwGm4UxgujGRW7i2E4?=
 =?us-ascii?Q?WmTDmUG9mVjtAtvqULhUdS4Leq/UHX3P8DXE4zVp/JpSiCXFxeQAOANZt0Yt?=
 =?us-ascii?Q?H6/1Duv7yx2aY0PeDeuZrZhTCZfRdPJ8s5sEvnvg/uqudqnsC+MfjI8qBNaL?=
 =?us-ascii?Q?T2Q8DN1N8YHExRZULTcy1/x9qRHdMSmqqQfNtpkMfxGtkGVDaYo0My9NK/3Z?=
 =?us-ascii?Q?oxP3T8Y4fGBzYUroAcFL/rpkj1wwQk3Btjkh2CJ52PXrQ2vCH93avuqW2AL6?=
 =?us-ascii?Q?8DT7CYmN51ivSf/gE7nnu3YsVGBWqUaxoe1G+9Z8RVXG3tWz+BsdZ+ye93PU?=
 =?us-ascii?Q?eaFbylhsAN/1ro4PSvYyCXvCOOn6f7tmCKO8m4H1IqXJqSWDSbSC9KsVItZp?=
 =?us-ascii?Q?29TckytFyZ1R8uGITC9PT+ME6J9n6RVta6VMDPn6bUOe/RC/hg8cgLZfxXi/?=
 =?us-ascii?Q?TQxmVVTi+5ufgo9rFfjWBulYMQ7J649LImBLFKqBnw+v7s6JQEG1UOulP743?=
 =?us-ascii?Q?zl52/JUxrqGwzUIH8jRT9clDrXfz7HzNbwCJFJHyY92nwkFYCzUviZmpRJIz?=
 =?us-ascii?Q?vOvg/BzBaT3NiR+doZau6NMYJNhdoceMcAuD5JyY6ab8tq+fvj4nAOUEO8Ps?=
 =?us-ascii?Q?blyQX8oS0aj2kfUHUjNQfgDnjIZ/dvHey9I/fz0f9uNIxvVdmllQ7fqnbWUU?=
 =?us-ascii?Q?ZT5WZ/3t1FzcBmrQHlIGthkui7Ey395Y7guQ2KwP0JLrAgCcirDxzyERq3m5?=
 =?us-ascii?Q?Bkn/90MhR0ysuuEaUAjNY0gMVIIN01qOfak8p1R4K4hcqd3dkDXZMoB5Mp+m?=
 =?us-ascii?Q?oeQvgC1cpcZlbFImyubjlRhtWC6NL4FmSPXWxpS1P+rxvghH1CfpQIEHBEj9?=
 =?us-ascii?Q?vp1vxMVPNW8jYzu192pDNffIyxqa+PF3GvTbfEIU5b9uImIXJqMLhx8wsYpN?=
 =?us-ascii?Q?4GxlcSCr1TD6uI4Pvs+P4Yurcday5lnDrMQfUj/9R/uoJEGhIVi5smSTNuuQ?=
 =?us-ascii?Q?HCClqnMNl+laf/jt7omqsbqYQL9oov9atSakSP/+T0/ztBVpv9ZppV3r3r2/?=
 =?us-ascii?Q?NYKG0WYDNYpN21HXM/ewryXu3QdG16ASRBJqzXbBkuc3DJJAQiLuEfVA9hTv?=
 =?us-ascii?Q?P14NfedhE99IjJQp+rGeR5+0ecSorKFEdEY4CQhLU8cEhXMwfw388CeS7aeY?=
 =?us-ascii?Q?4BPBkbnzcSuASgTvXRo6ex5ANxJ6jAx4Cw2qrFOpFAvMlgvz6D6KCaA33Vtz?=
 =?us-ascii?Q?x+aVFNhk3jScQ5PWL6E9/Z5DSpwdDVSRiPsujuFK0esmUY2CbJlgiCXVg45X?=
 =?us-ascii?Q?RmVQ2KtxT1p5jsEt6mht1Twfs1FaAA3ceittW2qTRAt1ZoDjnukhOfJuEvZm?=
 =?us-ascii?Q?qg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e54b0bc9-92ac-452d-b804-08db7bdfbde6
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 16:08:30.0003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4O4YqjCnci9dPd21VA0IOg8QupqpFmX75r68325T7tVzAsIwGFavF2eX3vKhqO8goCz7E8is5qXIS1AlOF/wmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9999
Cc: Vlad Yasevich <vyasevic@redhat.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: keep ports without
 IFF_UNICAST_FLT in BR_PROMISC mode
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

On Mon, Jul 03, 2023 at 11:00:14AM +0300, Ido Schimmel wrote:
> On Fri, Jun 30, 2023 at 07:41:18PM +0300, Vladimir Oltean wrote:
> > diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> > index 3f04b40f6056..2450690f98cf 100644
> > --- a/net/bridge/br_if.c
> > +++ b/net/bridge/br_if.c
> > @@ -166,8 +166,9 @@ void br_manage_promisc(struct net_bridge *br)
> >  			 * This lets us disable promiscuous mode and write
> >  			 * this config to hw.
> >  			 */
> > -			if (br->auto_cnt == 0 ||
> > -			    (br->auto_cnt == 1 && br_auto_port(p)))
> > +			if ((p->dev->priv_flags & IFF_UNICAST_FLT) &&
> > +			    (br->auto_cnt == 0 ||
> > +			     (br->auto_cnt == 1 && br_auto_port(p))))
> >  				br_port_clear_promisc(p);
> >  			else
> >  				br_port_set_promisc(p);
> 
> IIUC, you are basically saying "If the port does not support unicast
> filtering, then set it to promiscuous mode right away instead of waiting
> for the addition of the first FDB entry to trigger it."

Correct.

> If so, LGTM.
> 
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> 
> Tested using [1].
> 
> Before:
> 
> # ~/tmp/promisc_repo.sh 
> 0
> 
> After:
> 
> # ~/tmp/promisc_repo.sh 
> 1
> 
> [1]
> #!/bin/bash
> 
> ip link add name swp1 type dummy
> ip link add name br1 type bridge vlan_filtering 1
> ip link set dev swp1 master br1
> ip -d -j -p link show dev swp1 | jq '.[]["promiscuity"]'

Thanks for testing.

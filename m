Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F180704BE4
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 13:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9EAB41723;
	Tue, 16 May 2023 11:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9EAB41723
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=B+NOCTSQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-dJzcnnoBV0; Tue, 16 May 2023 11:10:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EDE0341688;
	Tue, 16 May 2023 11:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE0341688
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0A5FC008A;
	Tue, 16 May 2023 11:10:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14BC5C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D44FC41740
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D44FC41740
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-boBKAO4r-g for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 11:10:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D82C7418E3
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on061e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe0d::61e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D82C7418E3
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 11:10:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j88UOm11cbOITwWDr6aMVhvSj6oS6WTgjDhTKMUvB0tkNpQBI04gLl9wQhj3l3fPr0jhx+c0HuPmn75ncJBWYop1BTJKxvxe8sXPAWfWLDaPES0Nrx3cLIHjjpXGNZgZ2DaxSxqMx4WdAjqCV6wwTRJv5mK0ZHkyn9qkDDfijXTV7JeU0lrJOPdoq6poLJKTShyvZSayhcMaAy+MrZNyhslGBuwTdSUBNkZ6gUolqVaZHuhulud1WMpn5ZSgiHNLu7AFTT4HZ2mcJEaSwhdU51+aw9olzeY5Ot3SVJnIVzA5et4sBKwtDjfWqh5KX0s5r+bXNhMSi0Wm9R/361m55A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kSpYoJC8JtTsGNmeF2rMLk9B6x2zRqpIoGmw53g7rkY=;
 b=L2s/UBQ69IIE4PnSuvoFiQ8kk3GOx610ZnzJkp8ojq0udRbpJ38rHrfVmslZQ/OQP+r5TPNxS99G5tTTPTyorKZvB515XvVril49HA2EiE8fOjapC33pxhWfyf196mo1Hn3e1FYKe2cJHqn1YlWcNJzqMUB+Nsl+gHLaolLlvRxmf1rTN+R3On/livCaCZSldbjc3+nUrWshk8/ElnFsQMVjb0vvwKlczBF0Eb/y0BibZlbpORFBxHF6o0BfwY3HQaPt+vSaBosqQcx4LrE6BgiaDG8yBz6AnzHmvIBYlstbfpUdChnM9AdRUuXvmNJchF7LgPoXfGeK5iVscm35EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kSpYoJC8JtTsGNmeF2rMLk9B6x2zRqpIoGmw53g7rkY=;
 b=B+NOCTSQE3AjIKUA/GJh9Iq6C8FhZYsk+JC/gFX5LONznlc6YPRfceWWtzz2TkyX1eJ6U12Q4LEngFY0v2pkBOTWBapV8LBrzS9tyUjgSSurVQLCQKPDREyCqlLkUhTXLr7NfHdYQFpw2bhaUM7RwkkTJgBcb84S2poYAOtmUrk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM0PR04MB7140.eurprd04.prod.outlook.com (2603:10a6:208:192::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 11:10:09 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%5]) with mapi id 15.20.6387.032; Tue, 16 May 2023
 11:10:09 +0000
Date: Tue, 16 May 2023 14:10:05 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20230516111005.ni3jygnnxgygoenh@skbuf>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
 <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
 <20230516102141.w75yh6pdo53ufjur@skbuf>
 <ce3835d9-c093-cfcb-3687-3a375236cb8f@blackwall.org>
 <20230516104428.i5ou4ogx7gt2x6gq@skbuf>
 <c05b5623-c096-162f-3a2d-db19ca760098@blackwall.org>
 <20230516105509.xaalfs77vrlr663u@skbuf>
 <6a688292-a7a0-20c9-03b9-cad11a61144f@blackwall.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a688292-a7a0-20c9-03b9-cad11a61144f@blackwall.org>
X-ClientProxiedBy: VI1PR08CA0263.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::36) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM0PR04MB7140:EE_
X-MS-Office365-Filtering-Correlation-Id: 876c85ab-8f90-42e2-59d6-08db55fe1c9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G0nMeAmaz9jQU4uetFvq12vtlDT09ih0/kdJkVkvgmmtwc+JMeNluuzMj2JcgDx/UR6rzrh1LBcJrJuvvACAeGJWlNIks4ezNQaz5Qg7Tq2/HH+pI+dqUiRc1rZWxfp4G7gwnFTVCFvKSQxGbjQ498ZJpNjeGPcej4cUxiYuZsXJQ6QR5jUrhe2p4YlynU/w82PiDOc4+Ry/MqvZOF8+ao4EoDp2r0UfhiQ6s/EC2HRvQ7a+cUFQlF5dAHuro+DH0PEPM2He1i7aHRtKBnhEjBvmJ6PC35R1NQe6QNyFQHGSZ2+YQe5a0ZvXvEecwNcIozUNww+fBslsJ/hC9HPMhh+UmbTImvygfXWodnfB15k88yoFOpH4XGa4WsPZqi5Ln5PsczeRCE96XWzC7I1M9lHflUEm5LPNIpjzIxBmfPDtkw47E8PraTneyHcxzhJXO15E8dOCin8xfY7b78YO+2qbIJf9ySsCVNRftkvjRuq8jIfGFJ/alUsGFXZ6LAPEGQ/W4deZFYUqQGUQ04K8J1ImG7d8KyL3hftpBhV24PeF1Zu27XDTpI5OCsDmr03X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(346002)(136003)(376002)(366004)(396003)(451199021)(26005)(6512007)(6506007)(9686003)(1076003)(83380400001)(38100700002)(33716001)(86362001)(186003)(54906003)(7416002)(44832011)(4744005)(2906002)(316002)(41300700001)(478600001)(5660300002)(66556008)(4326008)(6916009)(66476007)(8676002)(66946007)(8936002)(6666004)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RgbOBTx8VRt7FpiuLa8SC4zr+/bxthy1ooC7KUj8BSfSwm9wwqoewRsp4F9I?=
 =?us-ascii?Q?z4mC9Sg1qc34ZZHIvbs8c6RZ+mjaPBZuAK9hPFRyrCeTwInpbHoZMAgyUH8u?=
 =?us-ascii?Q?N/Q3fIVHZQtJluF3tAwzQM0Z1Y2fy3Sm/XebU3CbPwO0dAZ92GDsRdbdJjcb?=
 =?us-ascii?Q?6b+2CSMMcWYNrKtjOl51P/rnH4qoojQrqp6kcdKxj2rtCXmUg/t81rKfzHEm?=
 =?us-ascii?Q?s121cpgK5vdOAvcf8V5XgILTrmT5ZD39RNsu1xCw9XPeFZNw3Iz7py6/tdf2?=
 =?us-ascii?Q?8E60q3JWx7aemZGBB91BzHAOfLhs/o/oZXgAkd79Icahiiscln8+w2sFNidT?=
 =?us-ascii?Q?WaymhburinR67z9gUl//YR2eWAx8op35Iqu0cHEjJSJt1qhyZMjWrlosMQvn?=
 =?us-ascii?Q?00ShTU8V+zcpswZNXXkGQB2hW3wDSwawMKii9ZkQmohUfDp3TArZwgwYiVXE?=
 =?us-ascii?Q?OoK5YpShr1Uz9XTvFwaUkOe4QxVeRcmkhiWwFC4unAC7tL/OCKvG9+2UN7hl?=
 =?us-ascii?Q?j8FAURS2t43XsTjT7nBef23GFhZGzfKFHbZ3XHnfvMackNkzpNdLoUkbUMTk?=
 =?us-ascii?Q?mAbwSadLrY6Rwmg6hy6WC1fN9ClZnI/Z/hOOknDHB1PftmwkUl+KkBSw7Ntr?=
 =?us-ascii?Q?J+GXRQ4XjyPswts7cA2KmCTq75c6+jRuLsdIf4VMxQWvhoGL1MD32g2qvDxz?=
 =?us-ascii?Q?Pp18Oz12GJm5TugPMM32T5sLV+35q41v+qfFE0klvA4pTR/7+gw08RjfP51S?=
 =?us-ascii?Q?/E/9r9un1LgPJ701ioclGmnP40UWknFhfngfdbKMHAedPGa5KfI518c2rFa0?=
 =?us-ascii?Q?PqKZx5Emvh9sOV26mfhZ5lHd9H82VRiXviQcLhLRyfrwtK21X0Nk7KnYUDzd?=
 =?us-ascii?Q?AkVtDOIAWoydyhCSvATlJpLJ2uYW885mzSvIuanIP8jYjKwoCuOuGOE0hLq7?=
 =?us-ascii?Q?czPMupbfIdL00Jr+VOZSp/oXjmCOvftaGaXcs5wERe+DkvQndg+/rOmvvFjk?=
 =?us-ascii?Q?k0cLTCOy2M0IrYz0Ddj+CcZGItoi15jsq9lM4pu8kmk00D8VdT2Z4Eco6VAL?=
 =?us-ascii?Q?K8GxGpkr0LrNaOjzIBik3u56z78ocvNy+NisNBWMu3vdQRSYzsplVYLr7csy?=
 =?us-ascii?Q?8TmeYVZORPuV65k6Nb76eeT/OYIgN8PJYnCCkfXWLo5z7BgRHpZirmhRVkZc?=
 =?us-ascii?Q?ZF8h7u3j0ezvdtQjCDOfQGq6PbE8SVkK4ilHHyJh5/EZWrf/WFNOqL92kF6T?=
 =?us-ascii?Q?EmFLrxsiRgwoMxaePwqPAApEmAEd12AtH7+KHQMGAPNoFnasxWI89kn8m888?=
 =?us-ascii?Q?1ZpBgONvdWLjiHtEhJDHndhjTtADxNFYjUDQbR56s7T2HaiWWrNgfpzsfHxe?=
 =?us-ascii?Q?zZB7ZFHbsdcQjs/K6GV7UhNZfKI9JGOuMYiOHTIRfDWWEcynfpjxTRDONIfC?=
 =?us-ascii?Q?FR94utdcL8uH3IbDrvN+zjkFRR7n9IQIwlDALuGwvMu1TxcGSaMwoS01Sqem?=
 =?us-ascii?Q?HSOPgWMXujV62nd0ABwJ5q4G2yCf8aL26g465PfkV6B9sGTmBSijCs6UY2N+?=
 =?us-ascii?Q?iTqjQSx8OXhGHrM8GstCF4HrQm77Lc4jvNatm8CLWksyaSqJteDbg2uJD7ik?=
 =?us-ascii?Q?9w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 876c85ab-8f90-42e2-59d6-08db55fe1c9e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 11:10:09.5674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0pTGI8ImYB6mJDqRTt4MQIOm9U10Kj7iqm5oDiJ4TFCe4/e05JsuWK6yFdiHj5sJc0I0gMlNC9Eiplot3vZXYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7140
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On Tue, May 16, 2023 at 02:04:30PM +0300, Nikolay Aleksandrov wrote:
> That was one of the questions actually. More that I'm thinking about this, the more
> I want to break it apart by type because we discussed being able to specify a flag
> mask for the limit (all, dynamic, dynamic+static etc). If we embed these stats into a
> bridge fdb count attribute, it can be easily extended later if anything new comes along.
> If switchdev doesn't support some of these global limit configs, we can pass the option
> and it can deny setting it later. I think this should be more than enough as a first step.

Ok, and by "type" you actually mean the impossibly hard to understand
neighbor discovery states used by the bridge UAPI? Like having
(overlapping) limits per NUD_REACHABLE, NUD_NOARP etc flags set in
ndm->ndm_state? Or how should the UAPI look like?

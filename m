Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58146DFC37
	for <lists.bridge@lfdr.de>; Wed, 12 Apr 2023 19:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E74F540227;
	Wed, 12 Apr 2023 17:04:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E74F540227
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=SO3qfNbL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5HwwNKm36Vl; Wed, 12 Apr 2023 17:04:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 75FD14044F;
	Wed, 12 Apr 2023 17:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75FD14044F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06850C0089;
	Wed, 12 Apr 2023 17:04:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 10B45C002A
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 17:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF3CA4044F
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 17:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF3CA4044F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T57ZCKkEo9Lk for <bridge@lists.linux-foundation.org>;
 Wed, 12 Apr 2023 17:04:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1658840227
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e1a::615])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1658840227
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 17:04:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MAdFk4WJzfyrFuNfVDsX2+AnJvDbl5RuavAGijJZLwJwtuSvp3XBO4Wh2OHwNzxTtTSOf0slNaTiQJSJ9bE7O63VQTiUzqOFznw84ZOiLs4b1NJTyY+ILWwcpaV9fJBMklokQ0BpTun00vnwjMfFKUbmO/c+I19LUvxDnfg/Sbq3oehRswIgudrMnh+XqyhaKM8eRumWIK84VsUQrE4G0owtLoVChJQy78fX0PAcVe5eKa1vf2hP2/W3EoKWxYmDa+j+Iqjogws8xukmbb5jG+YNMsaFxUA5dNdCheJOmKLx9QnKruaju6KxGyfT1wEM0ZmKi1uEAn6MPzpFovcG1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJss1pujW8B+EqfyELKn/tjqPHKDdI33NPirliESpc8=;
 b=f8LmJJU2CWn9BA+3IafAqUZi0ycegiFHDu1dJg1mNxaHgUwmAri7ADpTXs95kaBccGkr54+KMz78tWrDKqc52yb8WS2MAz1Ulv0pNUHa1/S1KBp6kijflkgHEZXfREFC63qwbXNBdVpEETXbXL6YUJoWAB08Hik4343B+7eAIG2TcQycX8YoYETimaE021V1vm03nbeXtYV+XT6r/5TTxquleypzw2LEvhaceLwpQP6y6vf3Afr8y8sAfhaGJi/b1BejWv52XS1gFr1FNOMmNxZpBL+o4tOnOM14b+zawm1WBirj4zjmloVPZq+PJe5vmh64Gh/hJVDtEiKxEaRzuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJss1pujW8B+EqfyELKn/tjqPHKDdI33NPirliESpc8=;
 b=SO3qfNbLk+dN0CflObNaLiZm7yaZCUm4cj+sC7zAIIPA3vorNZACpti/T5315nmJyx2jbhX7+hQ9A4vimw97daYtZBPBD/haMKen0f1pq3j0KQpWZsalxsh/7DhhiLmYJsW5b5qFVrDH3wjSWm1+1GB68YPWpcwmBOvjXY7aCJU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PAXPR04MB9489.eurprd04.prod.outlook.com (2603:10a6:102:2c1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Wed, 12 Apr
 2023 17:04:41 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b%5]) with mapi id 15.20.6298.028; Wed, 12 Apr 2023
 17:04:41 +0000
Date: Wed, 12 Apr 2023 20:04:37 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230412170437.26nwldbxydm7lgxm@skbuf>
References: <20230410204951.1359485-1-vladimir.oltean@nxp.com>
 <ZDa856x2rhzNrrXa@shredder> <20230412142733.6jhxt7kjf3nwqzsy@skbuf>
 <ZDbVgqV9JT7Ru96j@shredder> <20230412162407.xk3okeiedylv6sqp@skbuf>
 <ZDbhDUDs0RUWVZ4B@shredder>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDbhDUDs0RUWVZ4B@shredder>
X-ClientProxiedBy: FR3P281CA0063.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::13) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PAXPR04MB9489:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d7b701b-f0f2-4718-6d2a-08db3b780167
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HTceV94Yi3/+12ezo9D/I/tPwEXlCh08klh757NofQWtB0O74MfiyjZMEAt+KPSjHeAwe9VK1NBoPpQZ8WEoFFHczB9SCyDDsaN9RodR4QqZAxTpiLJdU38xDYfyOO5Oj6PSn8Pht+g4r0kjJBLN+tug76XXioN/nzb6TQ17oloi+w3EFcEouGWzz7xtoVIzjAjnnNaKUrvnnbi7hFIBaQqT0Fykr+Ua9RdFwjKbXF7ZAoPg1/95nf5m5PfNsLtqL/bl6YNfoUraNLRmJ7zfaJ3jI65Fac8FD5R8j7k5DyXiE3mrWqwRwp0e02tO8zhFNvD/SgRyToPRjhJoFeLLISRCdOpx+W3fxiXJuNSDeGQdr4lNzVWYxmZSIgl+TgrnPL8BxGRDxspukKxYdr/kGPTZWYiE0ZJBbOry+J7WbyUbv9K7XSvTSjrw9UW5/6kZatT3cLHgd04ohjbg9ep10fb/plLaJ4RW0JqaL6+33lhIhaJm5Io4xzuhZhS6h62S/bSLJeSRI/cusS63D7BtyYclyP//0Z3ITKWqy90U+5EaRLknl6FVeptUHjgJacvi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(39860400002)(346002)(136003)(366004)(396003)(376002)(451199021)(7416002)(86362001)(8676002)(8936002)(44832011)(41300700001)(4744005)(66946007)(2906002)(66476007)(66556008)(4326008)(38100700002)(6916009)(33716001)(5660300002)(54906003)(6486002)(478600001)(316002)(83380400001)(6666004)(9686003)(6512007)(1076003)(186003)(6506007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3DSmyK8JZAJrGU/rgoEn3CYOTkGOOWUSwDuIlsS9uJNcPBRvb6+ecwPMebQp?=
 =?us-ascii?Q?zfqO0eIAAxFS9/7+ZiemXRpxGWu3Lodndp/28kr4lHWW6G+3RyB7tUiDWJ9a?=
 =?us-ascii?Q?zjqjoJFcGXSK5rRj2fqSwG+bxwFxVIr5ZUD0HB+MvYZll8oJ54lOMrn6l54u?=
 =?us-ascii?Q?roUi9Z/wc0mwnQNlxE1BW6Is6ejiRpj/V+GWoCX+vCJTECMCziHzw6NdIbse?=
 =?us-ascii?Q?LDPSLtFb1Ekpy0rVd1Jn/Z3HGhDdYktx6k9MkR0ZT2yKXolNn4wuQQUjzGsO?=
 =?us-ascii?Q?LL9i972g02Q6CJHUnKRnV7Hmxc9rBC+lhY/gYhpjob+1Aw7l7dIVSJYZ6FZ+?=
 =?us-ascii?Q?tgzgQvKMx+JgRJJ/N7dQM724toBg7LhLJ7UaiN3x/UV3kwPDl3F/CgZvsku1?=
 =?us-ascii?Q?KcVFAynvvtif1HsFCxZDpSndfDsWWSQPYizArButDssgqRB27JIMGkoE1jTV?=
 =?us-ascii?Q?6A+uRtR/APtzFY571EFT6i0JaFqWuTNn5+OhBzrTpWzJOXGO8ZsWxZBaBuJS?=
 =?us-ascii?Q?A5TM+5L2KOPlhbFdqP3kcQqtGh+vETK55nTxzPW6pFJNEjf7pVLyiQ0dHQAq?=
 =?us-ascii?Q?DWEeOxrqIeilZ2xwK+AyULAs4iLpPnxGiExPWkKyY/QDcmWybolVsTzB2PsS?=
 =?us-ascii?Q?kQHS2qQYYzlYYizLk8da0ABW7eziy4LR84fdFqwNquXm59BZfUpbgizXbZLu?=
 =?us-ascii?Q?ZUHmAyjvjvglOIoykEEN2MlOeFE9a3tuAhNz3t6kv25Wo3vnVDduPwOsYhPp?=
 =?us-ascii?Q?d8gbDL1FfiWjforIjjRvjXAoSJKqwSQkCewZMd/Cxafy51HpaQ+ycK7NgcZ0?=
 =?us-ascii?Q?P31VWUqyCHxPoO8TQR56cfjmCZTv4UMxIHLbGPQJf++VQjZ8RTP59hNlwrl4?=
 =?us-ascii?Q?29LHEVAE9wtCOQsoY0ddzDWdVoLE2r2j/+yHnFYkzMDzlLDL3gDoo9gWembs?=
 =?us-ascii?Q?LzFvLZNzpbzltvdsjbEShcZ825KaTmRXzLiOgcTaaJ9xnTBz+EbzH2vFxzj6?=
 =?us-ascii?Q?i2P4ph3hSxgQDFNXLNQLlUE06smloTdfHsEPjmxzYXJ034bfo6AmTUNp5f0z?=
 =?us-ascii?Q?sjryvbCp+21F1xTmN/f+4MhsbrBxRr9J95QNlUhI/oQNd7BJMmtBgxEU6Hu3?=
 =?us-ascii?Q?4QnWH8fnfGbcF2WEIf2FrfTrs6iOQMYID85NsNDbCdjC56vWspjZME0aLcDC?=
 =?us-ascii?Q?x9If+narAEEgX7cBq2dYm7s2N7dnUEqndsNPPHbjS90VIuvnDdEM23ZZmXP1?=
 =?us-ascii?Q?+lsyehF2VjyxN0/TmQKvUnqaewn2ga6klCgmU7KLDJA2vyY5KV9OQHmqVSqu?=
 =?us-ascii?Q?Q/oBxkBQDDk8GQYWUvpqVATyH9fNoI+18L+158GDEE+GpuRZYW1d9zZRfBQ/?=
 =?us-ascii?Q?jP6MAPKwuUFmzbJ+Pj+zIUh1NxGToeiIf5kuFdli3DfGHkpnGU5EC9C6mwPn?=
 =?us-ascii?Q?lcYVd8Ps63/miAYjHtAGD/ZPupW9ONPar5q7+wJmOU67PLxrD5uxA/VKmbar?=
 =?us-ascii?Q?gUcmT5u1PO5sYB25doKa6+lorRYJ/Cjz9tz0c8xshV7YCJRexPkLeZHNQ8pe?=
 =?us-ascii?Q?PsOKoepdn/4bqo3ggoNx07XzBiIJYZMTwxoLUqGp8tlerySbH1G6CE1TFGX6?=
 =?us-ascii?Q?ng=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d7b701b-f0f2-4718-6d2a-08db3b780167
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 17:04:41.0942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ne9MxSvLhuS2ixu8DXqm2UPwK8IeU6/3qDIneM9SieAJCyJB8SzvlGkQB27o2TBwyqXtUGYvVFV48e5sgghNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9489
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

On Wed, Apr 12, 2023 at 07:49:17PM +0300, Ido Schimmel wrote:
> On Wed, Apr 12, 2023 at 07:24:07PM +0300, Vladimir Oltean wrote:
> > I'll send v2 with BR_FDB_ADDED_BY_EXT_LEARN not prevented from being
> > notified from switchdev.
> > 
> > Unless you have any objection, I won't send v2 like this:
> > 
> > 	if (test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags) &&
> > 	    !test_bit(BR_FDB_STATIC, &fdb->flags) &&
> > 	    !test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
> > 		return;
> > 
> > but like this:
> > 
> > 	/* Entries with just the BR_FDB_ADDED_BY_USER flag set were created
> > 	 * using 'bridge fdb add ... master dynamic'
> > 	 */
> > 	if (fdb->flags == BIT(BR_FDB_ADDED_BY_USER))
> > 		return;
> 
> LGTM. Please copy me on v2 and I will run it through regression. Will
> try to report results before tomorrow's PR.

Sorry, I won't send the v2 early; I need to think more about this and
I don't want to rush things. It's likely that the zero-day bug fix will
miss this week's PR.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CBF6DFB42
	for <lists.bridge@lfdr.de>; Wed, 12 Apr 2023 18:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3B1B414C3;
	Wed, 12 Apr 2023 16:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3B1B414C3
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=MZvMy8Di
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sygezmsHr3he; Wed, 12 Apr 2023 16:24:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0E11A408D4;
	Wed, 12 Apr 2023 16:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E11A408D4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ABB7AC0089;
	Wed, 12 Apr 2023 16:24:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F1147C002A
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 16:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A4FC611B5
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 16:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A4FC611B5
Authentication-Results: smtp3.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=MZvMy8Di
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PVedducklxaj for <bridge@lists.linux-foundation.org>;
 Wed, 12 Apr 2023 16:24:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA8CB61186
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on20615.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e1b::615])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA8CB61186
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 16:24:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X0GMCWUYzu3g5bxMMCxhz8z/ENxu5t8CbEdU3jF97tx16DlcynHqdrwnCJjKSj2hnVZhHg+gMLVgbovU5fTpt7fHFEOl3lpzgFGLkxw/cp9eQRAW/kU7LrVLV80Rb/8ej0YBERHmHQJtd2PWyFfMClB9VtNeWnArJq6onuJLo5Wl8edV+ZEqR60PC63kyqDDfImDDOKAiRj7WOkp+r+rxAaCtcM02h6PkcrYFTymVkC0kuvHhcKYTNrrv1rKGMe/ZW3a58y7Z13nOLK/L502y2Zi8LIJiaATThIMZiUqKR6qGHZJK+8/cgbJvocTAnIp12tcxZoLZ1nEK6gwzyDORA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e4U6qoEfxleUCxl/RZqErz7yrOeHCXjEJoAV2m75F6g=;
 b=KceqdpBfdtzbKNSCXg7fmZhyKAFKdvey8WA+iTqg4HW6JWnlBDS45+rNVkcqRwbjV12OqqTu+D0Z8AjgGfmO1hCH6WPh8PXGbx15SQUc/PhaSaLWJHI6UNR31yJ+79cVpy18NtJcDr9tAfkaASE7brAt7i/k/Q7/pqX2Kx++7JY3gFGDyAh5jbJUyxlOIMrEli1GaFiztFLtVWZvTYnLB6o1aIji+HwpI6vUy23In1eOMlzTsnxbsLAK2KpxPLzGaJJfEDxTTd8LrNCNFxLaY2xAio0J1kVJ8CSRVm8Kxmvu9yB2jIeuNT2zzMC/q3eCo6NYPsrhtO6pBRBG2co+Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e4U6qoEfxleUCxl/RZqErz7yrOeHCXjEJoAV2m75F6g=;
 b=MZvMy8DiBNbBRZDOKv++EempcPvp3DnDXG9oFhodc/b1acyTx2V1+qOl7LXAl4NtAk3DOzjWU8enFFNOHX4sDf0taAWdXLyLcTZeDTg/Etrs5dfY2oo4HEjCjoI2T3N5hjsOFF4yE40Y24aDP0xO//80hnIko1Lfg2nAw2zMI84=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB8PR04MB7147.eurprd04.prod.outlook.com (2603:10a6:10:126::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Wed, 12 Apr
 2023 16:24:11 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::55b1:d2dd:4327:912b%5]) with mapi id 15.20.6298.028; Wed, 12 Apr 2023
 16:24:11 +0000
Date: Wed, 12 Apr 2023 19:24:07 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230412162407.xk3okeiedylv6sqp@skbuf>
References: <20230410204951.1359485-1-vladimir.oltean@nxp.com>
 <ZDa856x2rhzNrrXa@shredder> <20230412142733.6jhxt7kjf3nwqzsy@skbuf>
 <ZDbVgqV9JT7Ru96j@shredder>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDbVgqV9JT7Ru96j@shredder>
X-ClientProxiedBy: FR3P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::23) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB8PR04MB7147:EE_
X-MS-Office365-Filtering-Correlation-Id: bfc43276-0e5d-4dc5-fecd-08db3b725959
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Evrm/ZqjQltqhneYnbvlpeSyzKn2dA6wkjUT9Jfoa4PVSXm+Zi3FG2j4yebC1nj47Q6r67MKsNksDmnFfZ+G2PTNknt1rKlWHXRYQSRU84T5A1siIHINA/QNXTxKN77L9MANsdP6M1IMPgNuYA8qmKwLForCoLffpvGFMXCC68ZfArC7QGLpe7OCqDyw2C5J0qSYkF3lDTAgXGBNON/vWafTcQxAP7eD7w8sO+ETz4zgGP1lib4xuO/vquCU3OkcUgY+Q/vG73Z4yt7HzlEt5aaqtJBM4jqFF+ESIeHjzDcVBA/7OeuXCQehUqOCQBu6JAJgWBFLwWwq7zubc59FU3psiAMOZtg/eONeuzyYPZ8Cu+Y9VCxxa59itKLBgS9XW0noDqchuMth5w6cYhD9sjG4gxghuGFN+CzUkhFuHj31hbhtrckg+4p55b9tNW1a0OLrA5gWHW6AN8Y2qVE3TsJGR6jcPtJBq4ZHIoPmfOtO4IkQb/vJmUlUynXTxz7xpwop+7bsfmZRZaW7FzMvLXsrecAOeyeFJmFV1xvjVLOPMSADod04bgBq9NLnNeR6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199021)(478600001)(26005)(6506007)(9686003)(44832011)(186003)(5660300002)(54906003)(1076003)(316002)(2906002)(33716001)(66946007)(4326008)(6666004)(6916009)(6486002)(66476007)(8676002)(7416002)(66556008)(8936002)(41300700001)(83380400001)(6512007)(38100700002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MZe5W+/SCjUu5wpzJOswxkj7pcb9sNVAzuwZKgjNszBtM86Px+hx1tffjmfa?=
 =?us-ascii?Q?O6vLWXXCPfXH20jWexfFAkB+12UQaUxJsrp02Jbl7Mr4zKl2fgjsARoE1TtX?=
 =?us-ascii?Q?eMPHuvbbsFmYS8YFS3rvDeLYH9NeIl8BRSAbt9I4ID+Q46RJkKra3ZDw3Uu5?=
 =?us-ascii?Q?kHrgvKkswiEcBQna3nmeL7DP/EgrBEZKCjgxeSvlQNCOajzo8VrCZiAjceI+?=
 =?us-ascii?Q?jvllT0T1NaV5c4WTDXDGA8GM9lMnByvYdbSzY5CDCOgzrhwsXk8m3peq/Ksc?=
 =?us-ascii?Q?iL09lamgLPaJK62F9BdLMfu+5wDiDOWH7DPjnvnOqtpvVLuIG5kz6ijpshY/?=
 =?us-ascii?Q?gMrUsntLE3roymSYYP27fPNbzD19eD63MG1wJJGw8EOucDICcelgOtDr9DDM?=
 =?us-ascii?Q?gPV8ZuPuydtKBNIqMGPYDRO1zCydj9fa7+tTAy4IhYojTC9+87K2KpQAYkTk?=
 =?us-ascii?Q?qHXztwioz3ZP+mw2tlGzmc4kIYY1JRw/+AGBtPAWQMDA71l6WLHPixUYFUpp?=
 =?us-ascii?Q?5azgyxZ7x9E0EW/zKfh0flbjtyzdtzz23U8G25KZnfs6owxu56raCHQfTyzh?=
 =?us-ascii?Q?7Zkxlu4disYKxKggkJDWXAZWkueHhb4F2B3HeXJGlRRdoZYeWyze/ZmtpZvA?=
 =?us-ascii?Q?UR9cH8U211ikT3mMiHtDPtEzKzIJGA2Wuzwvmw1zIyTH5QbGDyXOIjkXqLBG?=
 =?us-ascii?Q?lb0w6lPkR6+damBsamSoPptlXX5TJ1B6QpS17CK48fkRIUSeho70DtClKiRH?=
 =?us-ascii?Q?i+dcSUK6cUWJrrvpidrRDBPOhUDUkAuPUlSQ/hp4+GbN1W+Xvu/ACTfaS14n?=
 =?us-ascii?Q?u7tv/f3ACKKwtTZDZim0oJOvaufvijaiS2Z4kMLK4X7NbTSYRtPwU/OZSFJP?=
 =?us-ascii?Q?2+ZlocgHVFGus/v9mtLbw/2AyBXKoSBFZZCPFZbvXxjeO3BUGxF2w9jd7TSZ?=
 =?us-ascii?Q?RZHkOIcNgAMIfO58mDPXIbXggwmrMDJkg54DyYS/msmJ5+b71CwayQO7O93U?=
 =?us-ascii?Q?KCtCNxvHX+O8qtThiKW18RmfxVjxbE7wzw5LuL+TUjXjNTukrmJP00X8h9/k?=
 =?us-ascii?Q?h4P1RUA+ifHjQMKTSqshNU17yizuOrRewgXSKu7bhYTcTmmGSzpWRbqWLcNL?=
 =?us-ascii?Q?nGPLiIqHNWtdA5OO2eQgTRL8mkNRwJkMGRe4e1Slfdxwqkb+o6WOptVOM5k2?=
 =?us-ascii?Q?ISk+Zx2rH5s2XfEOoy7qicDkWZYRJ1gWYNIVfbakUCb5PSVZM5a7cVgxi5Lr?=
 =?us-ascii?Q?9YnWt5HiV9Zd7yqWgPqw3UDpsfy/ojf773D76G0CV+FZAwphYKrL0+k0GEvF?=
 =?us-ascii?Q?PXJ0jSdlj8dLPJKq/b7qVHN7HrenOaee8VX52+lqHv/YodS1969S+CK+T4kh?=
 =?us-ascii?Q?icr1CumC4zSkLPlG2gsiJ238PeJd2o6ctrD9W/ptdyn1zJloT5ZZF+4sVBuG?=
 =?us-ascii?Q?CA2ymDA242mRr6/0ITUhxVssNfHJSG6fkWqc40xdSwyegas3nYrS3pOG096L?=
 =?us-ascii?Q?+yfC/Dzmy+C0P0sXtW3b7OYUV3WJ1aSkYQ2mcOIY25VTu1a9LtInbT8wXMaP?=
 =?us-ascii?Q?NuGqX1hRlYkiCZXrrvo1pK2KLzgh+0reIVcHOlf5+2LeQgJwrN7ubiKyPvi9?=
 =?us-ascii?Q?CA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc43276-0e5d-4dc5-fecd-08db3b725959
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 16:24:11.6013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rexKwyRL+8/L1D+X6IR2YWLP8Euk5hi1L+murmLDFXw97QzAH0hf1E5Ogv2gZbvGkoKHEg9J931lgkKbqh7T6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7147
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

On Wed, Apr 12, 2023 at 07:00:02PM +0300, Ido Schimmel wrote:
> On Wed, Apr 12, 2023 at 05:27:33PM +0300, Vladimir Oltean wrote:
> > How are extern_learn FDB entries processed by spectrum's
> > SWITCHDEV_FDB_ADD_TO_DEVICE handler?
> 
> No different than "BR_FDB_STATIC", which is a bug I'm aware of and
> intend to fix in net-next when I get the time (together with all the
> other combinations enabled by the bridge). Entry has ageing disabled,
> but can roam in which case it becomes age-able.
> 
> TBH, I think most devices don't handle "BR_FDB_STATIC" correctly. In the
> Linux bridge, "BR_FDB_STATIC" only means ageing disabled. The entry can
> still roam, but remains "static". I believe that in most devices out
> there "static" means no roaming and no ageing which is equivalent to
> "BR_FDB_STATIC | BR_FDB_STICKY". Mentioned in your commit message as
> well: "As for the hardware FDB entry, that's static, it doesn't move
> when the station roams."
> 
> As it stands, the situation is far from perfect, but the patch doesn't
> solve a regression (always broken) and will introduce one. My suggestion
> allows you to move forward and solve the "dynamic" case, so let's
> proceed with that unless there's a better alternative.

I'm not trying to accuse anybody, I just wanted to make sure I'm not
missing something (and surprise, I was).

The comment regarding BR_FDB_STATIC vs BR_FDB_STATIC | BR_FDB_STICKY
is interesting. This whole "hey, did you know you were never using the
bridge fdb flags correctly?" is starting to become a bit of a meme.

I'll send v2 with BR_FDB_ADDED_BY_EXT_LEARN not prevented from being
notified from switchdev.

Unless you have any objection, I won't send v2 like this:

	if (test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags) &&
	    !test_bit(BR_FDB_STATIC, &fdb->flags) &&
	    !test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
		return;

but like this:

	/* Entries with just the BR_FDB_ADDED_BY_USER flag set were created
	 * using 'bridge fdb add ... master dynamic'
	 */
	if (fdb->flags == BIT(BR_FDB_ADDED_BY_USER))
		return;

Thanks for the review and for pointing out the regression early.

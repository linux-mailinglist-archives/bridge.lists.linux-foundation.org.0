Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B6B4FC5B8
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 22:23:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98D7B60DC2;
	Mon, 11 Apr 2022 20:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uK-TEU5AcH4q; Mon, 11 Apr 2022 20:23:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 17EF360D75;
	Mon, 11 Apr 2022 20:23:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7851C0084;
	Mon, 11 Apr 2022 20:23:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2ECE4C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C0AD40273
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZA0-PuR-uw4 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 20:23:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on0609.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe1f::609])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 935644026C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:23:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLMaMaHvoZRFuEMfMNhfIvowcYrEb95xcdyMrlVEY4Xw0H/DDY1r2C4YFagNEKlMbgKsIgbj8eL949sAjxO32NHi1GT9OxZ8dxv3WyzGG0Ia1Jh0+9hfMdCjgMjuTm6C5EGv+V6mz6lFKoDVD7Tw8tgjYbPu5jGFoRLKGx+b5sfjIU/xgx9j14QYVm+e5wCgjRBgp6d/DOF0kwzxkXxbn2Bf50o2tDXP/2PkJqUy2L+yiR0krlGwHATKf/uq2UGDou55Xl+FDcE93iNRssRyy154CXJ1YD7PkvaBiXgoPMN8FQVcqXTV803gCnp7dr7XCFU4A4/tKKQC1S0NSsbxmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m96s0A8yWAc/y2o1wu4C3ADL3df0rGv1s3OLK82OF4o=;
 b=YzZ+aMu5RhECoSFvudJoT/5pOu4RkzEQv+DpWGWb5qgP5T/9BBV0EBL8pxP3x1/xiKQ/rG0vUdXSOSuA/D1HUTjOxpZS50POO+plWvi07yfJNtP1Tsk6bUZb8sRMXFlOUG3a2nk8P7R8Bz/zCjZcoS2g8NBdussFxOhnbYP4QKsZYYeBVjlNJYAYC/6fXauiwpXeW6olZNMq4P7O3q3eHcfpRiOYXlcF4yFMbFd1jO8gO5UV7IrSr9axicBQfG4O3Bxvkn2Lc6IgV2iYr5VaOZSGjW476lp+WLa0FPcapQGO9i883qukmYDEh4TmWy/nCsG1Y8h/Yi2/6/B9PEJTvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m96s0A8yWAc/y2o1wu4C3ADL3df0rGv1s3OLK82OF4o=;
 b=Enr9SUqbIHmEfSPjXK7JYLa4D5crQfBZ7kw3b06R6mSFiRIdbCKB8eEYdgf24FgA2ieuDIlUmZlbgGsvQgAWT++KEM5+FDR2r5LlqNajOHo9iOlEXc/ylQQQaDr8QUmi2UjsgleNSjr3uNDaxt1Z8Ye5XiMMeMZ7V9oo3bekuFQ=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by DB8PR04MB6955.eurprd04.prod.outlook.com (2603:10a6:10:11d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Mon, 11 Apr
 2022 20:23:16 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::8ed:49e7:d2e7:c55e]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::8ed:49e7:d2e7:c55e%3]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 20:23:16 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Joachim Wiberg <troglobit@gmail.com>
Thread-Topic: [PATCH RFC net-next 09/13] selftests: forwarding: rename test
 groups for next bridge mdb tests
Thread-Index: AQHYTamBeOMiezI3Ek68gc0h2Hx4nazrKJ+A
Date: Mon, 11 Apr 2022 20:23:15 +0000
Message-ID: <20220411202315.mxgqmvktodavdmwr@skbuf>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-10-troglobit@gmail.com>
In-Reply-To: <20220411133837.318876-10-troglobit@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2a61628-8c34-452f-4521-08da1bf91c34
x-ms-traffictypediagnostic: DB8PR04MB6955:EE_
x-microsoft-antispam-prvs: <DB8PR04MB695535BCB60052D53B8E01B3E0EA9@DB8PR04MB6955.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7eNN7BtJs9uXkJYJivn8vkLn2UTJoC76KqJT2YIW5MvSX4TlVkOVeEA2FAE602msoZnZMFzlPt4aRweByG3aYABpcfQgL/vAxfIrXGYe8Qhd1iZgmYHBAPjZ1Eeb1p7baO4G25L97i1VV3g+27zLTpUPbuhIqQoyGdwn2tpp2fkJYatuk+BAtlvrm4XCqRdQAtkWU0L/Jc8RYi/19bacpdMTMfhb0SHMkQwa5Sbt+0IRuARyhd2D/sin6dTo9FMcQIxrXQws28FuzueUmBGGpz1qJkPbG1V+ngmshCNiD/nLEdq8NNBrXojYeIGmY8YmJ+NlKNlet9mxtHsOCroIuZkIPtHfSb7hWck16XhFUVGmDPbIK53nKTDVXQS67likWCA5yF/4jODVeSyhIoTp7DVXFVQjSaGEMHLeQ6K4zhR588HlnJxyO7m5S9yJcP69vIYex1/K71pAj9gkpjvcg+ntR89htgCYZaWa/i+hOt6CA+zXdzkpX2J9RWb39zohlDURw+RXlXgA1ZtF1poG3pZyaHQi/7TyYFpuiWxh8+MubyjxWj7G7IwxddhZveYfnpVSGceLo/OlumQ5YS4Lc0l9F6WI9kj7o8YXJGpwMqCmgPikLuGxm1XEI0+gta9CI0X8p+/+EiRjryFwAGN7ZVAgmQiyA8T8EPO7fLXw0zkQL74YrknGFxjjuPp/d2ZBjoi1cAMqIF74FL7+Nmb0zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(6916009)(1076003)(86362001)(64756008)(66946007)(66476007)(66446008)(54906003)(66556008)(8676002)(4326008)(44832011)(508600001)(316002)(76116006)(122000001)(38100700002)(6506007)(9686003)(6512007)(71200400001)(3716004)(38070700005)(6486002)(8936002)(2906002)(33716001)(5660300002)(186003)(26005)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aTLuwwgzKSzwGGinxeP7QZkZqdHkpAkAyLsKHvE+zvK6tsWlLp27g0D2xUB6?=
 =?us-ascii?Q?30rQPAKpp3XKedwJw0jt8PkayR97fedTAus4YBON6il4xD/j0WnF18YG6GzJ?=
 =?us-ascii?Q?Wr+ZAMdjdxf6Vrd37EdjB9JvOOLNN31HcDmsIdY0/d59Uj3v23DZP29UflhJ?=
 =?us-ascii?Q?ex0zgeKL0e+LbSwrpn/aMSO7vfU8nDTIPtQWiOfNcg9RklKCqh46PO6XBPzt?=
 =?us-ascii?Q?MiE51Q/2pwSM6CreGsrSspj5Hxy5bdK7kOZlvZT+9CgwHh6EFuIf+8v7uQTX?=
 =?us-ascii?Q?1AXnR3Fj8/OF+7LrnLShU4R02RyyMvCYwrR82iw/n+kOUd2y6CK7PCXr7uis?=
 =?us-ascii?Q?fyrboWKjAzdpaK3tMH7ZZR8By+gHeyftGNnDYOZmDxw6EkK3ebTUOri4Rjs2?=
 =?us-ascii?Q?jnmLCZNZKOvmft5osDPvkeYkZAeYQpZkHgFTcT3XK/0zr9yMwNbY78j3VI2k?=
 =?us-ascii?Q?s39pVrnYdAxDV+eWagwmJVgxtncpGUaXGxWY4olRbPvLq6RCCG9RlAHkEBTw?=
 =?us-ascii?Q?tfCgwVFyekIO8nPxfLtD3P2Wu3cGQDN0qQsXymLkS0M5ptvgNcuacApJZitb?=
 =?us-ascii?Q?mr+N8SmuxCRK2AZsZWumV+Qvu++vwqBKX9rJ3TwGF4dAkIt2HuKDr+6Yg9Hv?=
 =?us-ascii?Q?AoaowEUr/1h/aYAxh7xiquM062kW+QqdYJpIHMAjfvAe5w0fqTNUdEDz3ZZM?=
 =?us-ascii?Q?y3GfpiVP/tmEYyu2MzHYBLmMTSH/3oHhZ6/vgwFYcXvhqAC1HE28x3GB6UC7?=
 =?us-ascii?Q?wEpTI7cbvW7cHYrm8HFpNaa2AZq/5VokdYzqb+E5RIfIHzgjy9EfmFiGn4JW?=
 =?us-ascii?Q?OVwuGGBmUjxyXRh66EIRhb2r1e1xDrIEC0gtd/TXF8JSfpki872NVWXoi3xa?=
 =?us-ascii?Q?CvuI0ucDlxK6AlsoWxTblxgQSzH4SL3CJdJ2qnjGaYcPX9hrWqYe9bHee/6y?=
 =?us-ascii?Q?uSehhLkZOL7DAB1hPDq4oHvLPpe1vKl3nS2iaQtMEP3g7j5qTvBRRqP5EbvB?=
 =?us-ascii?Q?8BbSLcmtjorq6Y06HQ55XyYnchVIEBL2KYCv1dodvOiWZwSYaiaY9cExE6qU?=
 =?us-ascii?Q?kE7qjsaGfNy1kWIm2vqYZTBe2Sn1DyOhO7QW6WtALx4o4c2BsghZYSqRi/5X?=
 =?us-ascii?Q?SDXiucfVq3Mz5b1MobugWiob2iavEvLUfUIwqASdJiwsTKou4xwjxH3443cZ?=
 =?us-ascii?Q?jxhb6NfK3pwIthiwVDuFkPqAhdBvls4MbZOn0Zc2uvIVQRonjEJV4uxZB5gW?=
 =?us-ascii?Q?vTlaUg9BTrh7TYnVj0OszAZoXkqB9KG8bjb5nLn7rQhXegKjmFVDvx3fNobW?=
 =?us-ascii?Q?8bNww7wvWLgM6xkFWrZabr7VgqukW+YCg3QFclbkSsHVjyhftujI9YQTAa1s?=
 =?us-ascii?Q?eJJVORSyYa6xvu/2ugDOQCxLIq5XCs2nH3cL5fz10+lkegGxupBK14ZYeohE?=
 =?us-ascii?Q?JKgRpyRMNDsGl6GgGV+r4Hpa3MSVA/nGxgLDqcnvD9scA3iP/Py9CkMYm96M?=
 =?us-ascii?Q?Qybq38nnict2YeqS/FdzPO8ix61a1R5o2MPeNhKHq8kQ9A0jd7mEC+kTqJhg?=
 =?us-ascii?Q?YjDuXjr66tgvx6dG6bFa8Zq74U6XSKYf0rLl7rn3C/61pV9jWzsY+t+MlZH6?=
 =?us-ascii?Q?H0frqHMsdUrUbeFIZnul5qEzz9E2iAbAadYrhbjSyZ3IsBfYhTJN0m73hLVC?=
 =?us-ascii?Q?7U7fVhz3pKKci5eXudpXr2/DdxCpde1LxEcDRZCnqHrBB6mjV9BkncxfP2vr?=
 =?us-ascii?Q?R0yDjFo4DSV4VxnIiSNZI34LAH8n5Pc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D35A160572A0034CBD022B8C0B006BAB@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a61628-8c34-452f-4521-08da1bf91c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 20:23:15.9090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0LJHMoncaED1/sk9j1aUk8tEydMdAtIPL7I6LIflZ459QW5WKWjmuqRpmukrH5L/cZDIFF3goWyHWSxfGi84Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6955
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 09/13] selftests: forwarding:
 rename test groups for next bridge mdb tests
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

On Mon, Apr 11, 2022 at 03:38:33PM +0200, Joachim Wiberg wrote:
> Rename test groups to PASS and FAIL, respectively, for upcoming changes
> to test suite.
>=20
> Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
> ---
>  .../selftests/net/forwarding/bridge_mdb.sh     | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>=20
> diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools=
/testing/selftests/net/forwarding/bridge_mdb.sh
> index b1ba6876dd86..c0b84b7d4364 100755
> --- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
> +++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
> @@ -7,9 +7,15 @@
>  ALL_TESTS=3D"mdb_add_del_test"
>  NUM_NETIFS=3D2
> =20
> -TEST_GROUP_IP4=3D"225.1.2.3"
> -TEST_GROUP_IP6=3D"ff02::42"
> -TEST_GROUP_MAC=3D"01:00:01:c0:ff:ee"
> +PASS_GRP_IP4=3D"225.1.2.3"
> +FAIL_GRP_IP4=3D"225.1.2.4"

This is more than just the advertised rename, the fail groups are new
and not used in this change.

> +
> +PASS_GRP_MAC=3D"01:00:01:c0:ff:ee"
> +FAIL_GRP_MAC=3D"01:00:01:c0:ff:ef"
> +
> +PASS_GRP_IP6=3D"ff02::42"
> +FAIL_GRP_IP6=3D"ff02::43"
> +
> =20
>  source lib.sh
> =20
> @@ -88,9 +94,9 @@ do_mdb_add_del()
> =20
>  mdb_add_del_test()
>  {
> -	do_mdb_add_del $TEST_GROUP_MAC permanent
> -	do_mdb_add_del $TEST_GROUP_IP4
> -	do_mdb_add_del $TEST_GROUP_IP6
> +	do_mdb_add_del $PASS_GRP_MAC permanent
> +	do_mdb_add_del $PASS_GRP_IP4
> +	do_mdb_add_del $PASS_GRP_IP6
>  }
> =20
>  trap cleanup EXIT
> --=20
> 2.25.1
>=

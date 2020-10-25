Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB642980CC
	for <lists.bridge@lfdr.de>; Sun, 25 Oct 2020 09:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E31B86B34;
	Sun, 25 Oct 2020 08:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QZYgFvndDj7w; Sun, 25 Oct 2020 08:34:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B38B86B20;
	Sun, 25 Oct 2020 08:34:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B57CC0051;
	Sun, 25 Oct 2020 08:34:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7299EC0051
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 08:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 600B586A8E
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 08:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oyBFk1M+gMSJ for <bridge@lists.linux-foundation.org>;
 Sun, 25 Oct 2020 08:34:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2081.outbound.protection.outlook.com [40.107.22.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B288C86929
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 08:34:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARNG7nEISsaifMmufJcoS1Q80jAPtzazdyPkZRNx8hskG/fet0WT3VGYVdvAwm7x+aHKArKvq6WYfWQfQRtFueoQVVIqphpeeMaYM3JSKSSdAn3arneV0Na08MhSP62nZahGisU7I4FVy7fO9X1HUSKy5e8YMDxEeXzo9Nd9IRlOHFnFU/a97R/fBi74P/xGcPhjwdh8HHH8IZhNrta+gjngx3OBPxNJR4CswrCjOvfycZCVpNbBCY7woQ79TEUYypQd+fAInbzzKJZyG/T9b8pXHvVoZT55DktX/wTt3NtTHOJThN84OCP7D78udxOPhWCg7nIICWPfGLVTaXHjoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ExT1E/vovGjsb2BsWR4V2OkMt2T0WQ4+w3CH5VGk3RQ=;
 b=l8BldvycmeF7x7rWdl09HwdDfOTw3sFqk4NW1KTBB7kf/aroNtdc++T8jMOrTuqc32QJSnyu2EWhOz+JURY6j58ow9/odk1St38yJVsmq3AH56ozMbeSBX7fsL0ghxiqmrLx3o0W/S0NNzVvG/NhVcSfWby7vZEw/Oo0Oca/AEHT+cJBdvKj8UYJ/6KzZlMkLiZBvlKxg/hZtu45yiclYwECcfVS7tOGno5d96hddiI3fDbghmTz9/tr6tYzZQ36kkyHGBm6n8AFv9CEQmjHP/8KrmkQZosDkRtReoqVMjFyxFc2hmfLnfGFu+zsNXXsc2aGP9ZMpzj5LGEjbV4S+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ExT1E/vovGjsb2BsWR4V2OkMt2T0WQ4+w3CH5VGk3RQ=;
 b=ExCPbwoFrf1q1AqHxsOIf1hue3NJlJRjXkHOk4UucqGFtDieZQcJQeqNQlZsCGoOghMbLm7FqIan8iLZMqLcu353MDVrQk135LvR8TY0zFuYvWLdN81eOg6t6ZUytzKfWJDXzWZ8YxsCoMNfqkJb79wWfZImmpmNun62VQUj2bA=
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VE1PR04MB7341.eurprd04.prod.outlook.com (2603:10a6:800:1a6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sun, 25 Oct
 2020 06:59:58 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d%3]) with mapi id 15.20.3499.018; Sun, 25 Oct 2020
 06:59:58 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Thread-Topic: [RFC PATCH] net: bridge: multicast: add support for L2 entries
Thread-Index: AQHWpLUt1nu/YGQhyEC74ZUB+LFl9KmhzHqAgAYjAYA=
Date: Sun, 25 Oct 2020 06:59:58 +0000
Message-ID: <20201025065957.5736elloorffcdif@skbuf>
References: <20201017184139.2331792-1-vladimir.oltean@nxp.com>
 <98ac64d9b048278d2296f5b0ff3320c70ea13c72.camel@nvidia.com>
In-Reply-To: <98ac64d9b048278d2296f5b0ff3320c70ea13c72.camel@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [188.25.2.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0da3ae2d-5769-4ece-3f04-08d878b39608
x-ms-traffictypediagnostic: VE1PR04MB7341:
x-microsoft-antispam-prvs: <VE1PR04MB734143AD48250C66E57F4DFCE0180@VE1PR04MB7341.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XXu4kXExMInXeP7V7JxLzgjGvnDKC/hGEsXb9abGqwhbgGB54fPI9pl5W0WWr8q56IpVQz99Mdy44LYH7AtlvYD0YJguxeI2QYV7w1u7Li9FmCNzlYqPlSgTyK+hupk3++2vQ3OoT7iOoikdgXZIQSdrb4zVaCla76BOnzCjitZtl2xMMEdf8pJTZN6z7rMWV4Saepw1yBB5L3KqzC45lgP1Eh2a4k75gx4eUAzme5nHDSBo/1+8uS0kBG19CszvCWmVnMPQddS86huHL5iJOJiTaT6V0jk3UkmCuOSoMfcVuxuu58l1BAYrqq7MBGWVYdrNtUsmnM+6FexPX7I/Jw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5696.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(376002)(136003)(366004)(346002)(396003)(39850400004)(86362001)(2906002)(478600001)(6486002)(83380400001)(8936002)(6916009)(26005)(8676002)(186003)(316002)(54906003)(33716001)(4326008)(71200400001)(4744005)(1076003)(6506007)(9686003)(66446008)(6512007)(64756008)(44832011)(66476007)(66946007)(66556008)(76116006)(7416002)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DDrC5q1xLWKf7Vva6pbVjser137/jEgyJGb2SwsPDANRh8bxoKyVxEqGhXbshpQJ/Z2bHRS2mp4jPwesOIChHtelsnG5+RNMdatHo3Bf8crJCxHkXZQCyFxntUUtj2+2+aXUMo45XDBH4F8eudy/1ypvNYLhQMvJ6bXUxMSoaAxAcXCosPjKrNGvsNjz5/o6MQTZmOdXYCmH0ufNJOCXub6AcPSutJTBSYdzryaOSunUcgJHD6wrpuP+TTV+alZwuTJb5hHsQ3/jPDEE/KwN+5wcUlObkLdNETOzBi7rFLa2W2Pmo+gTMgQJOlvEKcfebct0UTMD3NpjnXKaLKGfKVTkOoyF6GbVBSB+bqdmVr6eHLIQBK5sfroWSvFzmrUs9Rma/85c8IraB8l0ZJfEZgIAZta1bDjWPj9wbhU+ZJQFX7idXQtc3crphdDJ6Hao3WoODIWbJkdVWOSL+WgZrbL34Bc1bYwYFTVVWrPh09/j0R282S/jx/vLjAfWy5ZWkfY01/lziBOohCgnjrj2nYF5YylYAB2ck1F0KcbSHiemm1hLw5N5gdeAbgUWRnk8PCt4Dn/RxouU4uPlWxzpUvzLfxcdsMhRR2iNLOVMino73eq0W3juwrSEsgGwqi++wKk02IsJkaxNN3lMUV2+/g==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E16C77FF765849479CDE86712DB1ACC8@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5696.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0da3ae2d-5769-4ece-3f04-08d878b39608
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2020 06:59:58.3467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8LgDo4lvMyi2JaQEOkUgma37m2C6I4gEJenmaORX9DoS4bIbll0O/U2x9EozTi/DTuwfcVd2AQ9DEM8TcpCt6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7341
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH] net: bridge: multicast: add support for L2
	entries
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

On Wed, Oct 21, 2020 at 09:17:07AM +0000, Nikolay Aleksandrov wrote:
> > diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bri=
dge.h
> > index 4c687686aa8f..a25f6f9aa8c3 100644
> > --- a/include/uapi/linux/if_bridge.h
> > +++ b/include/uapi/linux/if_bridge.h
> > @@ -520,12 +520,14 @@ struct br_mdb_entry {
> >  #define MDB_FLAGS_FAST_LEAVE	(1 << 1)
> >  #define MDB_FLAGS_STAR_EXCL	(1 << 2)
> >  #define MDB_FLAGS_BLOCKED	(1 << 3)
> > +#define MDB_FLAGS_L2		(1 << 5)
>=20
> I think this should be 4.
>=20

Shouldn't this be in sync with MDB_PG_FLAGS_L2 though? We also have
MDB_PG_FLAGS_BLOCKED which is BIT(4).=

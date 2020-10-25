Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA42980F3
	for <lists.bridge@lfdr.de>; Sun, 25 Oct 2020 10:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AF9220352;
	Sun, 25 Oct 2020 09:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxKp1SqDGRWJ; Sun, 25 Oct 2020 09:16:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3A1C02733D;
	Sun, 25 Oct 2020 09:16:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10FEBC0859;
	Sun, 25 Oct 2020 09:16:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B112EC0859
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 09:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E72486B6D
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 09:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8qommGra91Y for <bridge@lists.linux-foundation.org>;
 Sun, 25 Oct 2020 09:16:07 +0000 (UTC)
X-Greylist: delayed 00:59:44 by SQLgrey-1.7.6
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2075.outbound.protection.outlook.com [40.107.21.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A8AD86B67
 for <bridge@lists.linux-foundation.org>; Sun, 25 Oct 2020 09:16:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MAYrP5QNWA6nNWulgcSsSP9yjvpbcolfWsz+sJ5tcHq+7tLzTmHiH/bqipVF94uCkfoC1TJAzb540I4/nk3TtwE5ceCc1pjSCunUrqvIhg0vEmMtkTAGwd5JnlZTaidMO5AIsD0xF4o/v+bsczoSw3E/RMPV7r0mVaEdYvplgXHm6G3WxEQ+tJCG22pOxvp7ng1xOzo4U3nwkU8up5eJ1cue+5/kOOKjiykPubb8w5mLxglhuX0fLEal/yDwsdUHZThesYaXbiJexZP/v0XPdoX50zLI0V7w9gHjsm71lhfqYP3e9Bp6cK9jhUg2wmnnV5KyzMRJkdTQrGl68PKx3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsH4hT/TBh+k+w8byxsDNwFapYnpkyKqn0RbVImo1TE=;
 b=JWw6QBS/GjiMW6sq4VC88SAul4I4DUZkPf8cJ7krVTF07KaOLXFckNkxWgqa+8WN9uQsh6v37qYdNHHem9REKZQPhScIrxm81CvRpFFSvmWOVCSvfllpkflwnOTp/Yq6Yh0Dbxp71cYIVvOE9c4VVPXPKWvP+YvnGW9UGqoxw8XNfsmS/fccqGOFePIls6wOBKSJizdZTedlQBkgwA/lnXPlk1yefXIzAarlQnEsFzArhKQ/TU7WW9UpqowYvc/FwsJDVqb3xxBVLNSKVkoYH6zJNFZXsGlFK3fC43pOJWmTF4BocerDMjWqg2xowvSug9BlUZXJ9PLLw8TsEjeUEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsH4hT/TBh+k+w8byxsDNwFapYnpkyKqn0RbVImo1TE=;
 b=fQjt0cxIO5TBmWt2+Hd1GmLhtC9oTPcRn6fivdWtuqzKbgs9mJU2/g1TsfzbCsLGzN4zu8wqxg7I1ZoHeQ+xOdPozzT1V9AHNZI1SnrOt+Qna5NlOMdOD+uJZgsMasqFkq8aPsiGavdX/535fcC9yU+UOHVejlqdYuVnPY6Ytnk=
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com (2603:10a6:803:e7::13)
 by VI1PR04MB5856.eurprd04.prod.outlook.com (2603:10a6:803:eb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sun, 25 Oct
 2020 07:42:07 +0000
Received: from VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d]) by VI1PR04MB5696.eurprd04.prod.outlook.com
 ([fe80::983b:73a7:cc93:e63d%3]) with mapi id 15.20.3499.018; Sun, 25 Oct 2020
 07:42:06 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Thread-Topic: [RFC PATCH] net: bridge: multicast: add support for L2 entries
Thread-Index: AQHWpLUt1nu/YGQhyEC74ZUB+LFl9KmhzHqAgAYjAYCAAAvGAA==
Date: Sun, 25 Oct 2020 07:42:06 +0000
Message-ID: <20201025074206.sdtapjy45vqbsjof@skbuf>
References: <20201017184139.2331792-1-vladimir.oltean@nxp.com>
 <98ac64d9b048278d2296f5b0ff3320c70ea13c72.camel@nvidia.com>
 <20201025065957.5736elloorffcdif@skbuf>
In-Reply-To: <20201025065957.5736elloorffcdif@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [188.25.2.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2514f1e2-b132-4e6b-9829-08d878b97921
x-ms-traffictypediagnostic: VI1PR04MB5856:
x-microsoft-antispam-prvs: <VI1PR04MB5856DB16E0EB9803D5B6739EE0180@VI1PR04MB5856.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3iK98/twlTYAJGtAhyI5jmvlHYw/HJNZOdzA17RXixFCI8IVn5vPbNJUJZo8s0cdld0l7+jCVZBJLcvh+JVVEPJS18+2WSr2iT4ULbJ0AxwFliVLmLqugixqjwVvb/AW0syWkQBVXmBanInBhXn2Hw7d14s9690FFdWcMy8PnjRl2ijmgMNRM6h+uH74T8tAaIDbj4tt27oBDw+2dVAEiHP8DQNjg22glmZqWDW1V8Z2qSeyB9gvMD8jBFKEqqqC+wO2KXYec8/ddK+rVPeTZo9yJFP2mRbwfFE/hYLK+MI8DiMg0xuJlciZWcPlBpLcjNan0ynPiApdQDprRJ1hbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5696.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(39850400004)(366004)(136003)(376002)(346002)(33716001)(9686003)(86362001)(71200400001)(66446008)(2906002)(6486002)(76116006)(44832011)(66476007)(64756008)(66556008)(66946007)(4744005)(1076003)(5660300002)(54906003)(6916009)(7416002)(6512007)(316002)(8936002)(26005)(6506007)(478600001)(186003)(8676002)(83380400001)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: m0UqU8Ddi2jtnO4HHluDoTQTxcYg4fIqt2Vk58zmd0XTaQfyUVz3jP78+45qYVwtUeFupzam8Sr2N0cFhzwjbnjLuUTPsHI0HWsEL2gsGV5AYRMOYfqhTf5W3z3wumwv/+Aiy7W1mMoi3z/Zt36+63SVxFOb6R1jY594gBuwniayYmlvcgViTCWktSLNk9ZqPd/GSMc6Tgk1QA70116aYyJbokM+e5zcB9F3p1kxe6XH2767RQRrOSunRSOUbqdoJoujbiOBL3THfogtu3TTKaCOZVMZfvpOdWjFoxllRenrTaLOqeTFWL11ykEMAXXNClZlv4CZncIAeXMQZQcqpjeZh4IMHVkzE+XsJVclplXIerOzqU7pS6xSChdTRFneWrKpWgcMN8HjO1oYuvHGxonkgxGEASdmWN8s0eluoIN3y17+H/uslmcfJrRJWCAL33hfF9nq0llOtCWckgAFBI/nce+VxEUiPpB2xf772gmUgt7cQMgiEH2ZyZjD6ILxBIbKMs4JdeQUAhGzwkFqP0TyX6stMhgY+EO8fWZ+Hh4sP+pIJFixN4c7DasCdhSnRUQXeyAyaEHT9XpyC8yEeFqK+6bw1bC3cSwpbbmn4NdXkETQ6Nxza0EvxKZiAiOdsGN0XSS2tzFCfbzJrp2nhQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AD64E3253E4D9545ACC1B6397B7C6CD3@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5696.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2514f1e2-b132-4e6b-9829-08d878b97921
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2020 07:42:06.8923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K38kmEP4yw7xBMv5V+725HajLxFqJYMM7si9iqVKqvVofoVx1nOBaBK9OXK0kBPwoxmYW8IhcteCNU9e5YpcjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5856
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

On Sun, Oct 25, 2020 at 08:59:57AM +0200, Vladimir Oltean wrote:
> On Wed, Oct 21, 2020 at 09:17:07AM +0000, Nikolay Aleksandrov wrote:
> > > diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_b=
ridge.h
> > > index 4c687686aa8f..a25f6f9aa8c3 100644
> > > --- a/include/uapi/linux/if_bridge.h
> > > +++ b/include/uapi/linux/if_bridge.h
> > > @@ -520,12 +520,14 @@ struct br_mdb_entry {
> > >  #define MDB_FLAGS_FAST_LEAVE	(1 << 1)
> > >  #define MDB_FLAGS_STAR_EXCL	(1 << 2)
> > >  #define MDB_FLAGS_BLOCKED	(1 << 3)
> > > +#define MDB_FLAGS_L2		(1 << 5)
> >=20
> > I think this should be 4.
> >=20
>=20
> Shouldn't this be in sync with MDB_PG_FLAGS_L2 though? We also have
> MDB_PG_FLAGS_BLOCKED which is BIT(4).

Never mind, I'll make it 4.=

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F20608D3D
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 14:55:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 133DD400EA;
	Sat, 22 Oct 2022 12:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 133DD400EA
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=plvision.eu header.i=@plvision.eu header.a=rsa-sha256 header.s=selector2 header.b=rONYCLZ1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3jdwEFa7pyr; Sat, 22 Oct 2022 12:55:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7376340112;
	Sat, 22 Oct 2022 12:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7376340112
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2970C007C;
	Sat, 22 Oct 2022 12:55:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F202CC002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9C3860A81
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9C3860A81
Authentication-Results: smtp3.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=plvision.eu header.i=@plvision.eu header.a=rsa-sha256
 header.s=selector2 header.b=rONYCLZ1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mi1iz5tMQ7Nv for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 12:55:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9186E60A7B
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur03on2113.outbound.protection.outlook.com [40.107.103.113])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9186E60A7B
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 12:55:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USDVVrcwqKqLwPF9cMm71FvAutnblZSBzi8Uv/sD+JRPEvZQGYUA3caf6t6scmxtTuycmJCbVfkAe5fBL4r2sh0fqkNeRQT2pT3c4rUbQJAOzzS+R/nempoNKWPy9WG2gRPYwWnKQY8IAP1W17o3e5nesatp92qQYexaCjldNqZyHom9s56Pd0ALBKRCypi/Ii0rCKDIwkINrXgw6oJUAhrctzjar4xInLio/adEl1i2smXKt/5YA/zlUOEzUxqSER2GAKdaryxmxw7ib30RX+3oIx6IcQUkj6RZlXSYujPaoVHG5JJE5Z+S+56Qb7TTtmTIP5voUMsnUmLS/zB14g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tvmbch68C+3zASsIKbsejJsxYG+EONBUWTShZwaaSFI=;
 b=C4/OHBsGT8yWO/PIhSVfMD2QVkdcjLOG6aU+0cK5H06wO+EzFQGx1CMKFioa7L47SzCubUwngif4fzd+tJTBQ3RZ4t5EPJlD7QV8ovsW9jAZZqpGRaQzImCzGRPSC8JilX66F1cwOoJWleCoweKNAp0oj/NMPCQ7GnONfjiDxxQKX1pSKSyJilekUM4TlKjcnUulSoHl+LY/M9wkx3UaR6OIIjp8PAl13t7b5ZjQGIY37WQ0cJwI2uA2QrckHgSUMt5rb7xZdc//cxjZIUQCEhuO1A4F+D24PDI2Vi5nxZua5gLeVeC2CQqFkPTpLKlkAehV8gitYVekq+jIukzSWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=plvision.eu; dmarc=pass action=none header.from=plvision.eu;
 dkim=pass header.d=plvision.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plvision.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tvmbch68C+3zASsIKbsejJsxYG+EONBUWTShZwaaSFI=;
 b=rONYCLZ107uM1AQG4yw7/06z92HLAObMjDTRoyCJmloEmXIXiNYsRnMPiJuCMYeIMFsfsji1lBq/pJHMSSCLZbsKsWJLPIckmBvgDIinnrqcqK24Fzg7L6s61fSweL+SG6Nor457FplXUmiCa7hCqUjk02zk6FZBQf8J/XfzZR4=
Received: from GV1P190MB2019.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:5b::20)
 by GVXP190MB1944.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Sat, 22 Oct
 2022 12:55:15 +0000
Received: from GV1P190MB2019.EURP190.PROD.OUTLOOK.COM
 ([fe80::ad3f:a290:9b:a47f]) by GV1P190MB2019.EURP190.PROD.OUTLOOK.COM
 ([fe80::ad3f:a290:9b:a47f%9]) with mapi id 15.20.5723.032; Sat, 22 Oct 2022
 12:55:15 +0000
From: Oleksandr Mazur <oleksandr.mazur@plvision.eu>
To: Vladimir Oltean <olteanv@gmail.com>
Thread-Topic: [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
Thread-Index: AQHY5Xjxdu313+3SqEWfDCgfC808Q64aFd2IgAAzKgCAABWK6Q==
Date: Sat, 22 Oct 2022 12:55:14 +0000
Message-ID: <GV1P190MB20196AE55C37EB6B88B54CB6E42C9@GV1P190MB2019.EURP190.PROD.OUTLOOK.COM>
References: <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf>
 <GV1P190MB2019CFA0EB9B5E717F39B621E42C9@GV1P190MB2019.EURP190.PROD.OUTLOOK.COM>
 <20221022113238.beo5zhufl2x645lf@skbuf>
In-Reply-To: <20221022113238.beo5zhufl2x645lf@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=plvision.eu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P190MB2019:EE_|GVXP190MB1944:EE_
x-ms-office365-filtering-correlation-id: ff28b8ed-a489-4385-1558-08dab42ca9fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bWFMFqx2IDasOpaYEy4kgjxCVryhPjQQ4Ob4MkZm1W0gGAUL04z6N4XGK6ujmkIRCt3dYCu0qqqSj595rM7ryK7xMGRh1QRlqJVzjKOdC72iQewgM0VYjnZ0QvW0HXiFWiGNG1GaJhI2ITsGCXF/eq0CwEZoyjLIvq3h1TIcMZ8Q804b4icMMVmjIq3AmVXNaTMHmg4XR8DcS5NcAXWgcY1BKlno1akYW7A03Y0VcpU0AaJYm2NgNRHIteJIrpgr1KYtLuN5jnb9rXkA8ysti6gHNWI3SQlX9tkaO0SsXVt9QsIpwLNIZZuH6/NVye5QLMYk18Uze+3nO4c7q+SELOV+UgMg6Y9V5gu46/Q4Oo9UGwQD3o5DH8EuT32gw/Gb6KBpsIAkcBQ5bNUWuO5/ZZck00rUGAqnpszmXEqUwpxGyYDWPO46/E5weNnPPgiC5S0r8J8gmWuv8qgI+iLLSatNggilfXMFQhtNeycdjncGnFjXL/EiHNpWwwfAf2RaYx2TdNpyqIfpjEzq6euyP6EI9FxVkUbKhII+oUCu+U3C74Q9tWMAdm/c+wJsayqPazr6GUqxAbw9ehR1kxiHnPz1cDss92B8jwH3KrGTv6cbU8LuhIhxM9J+uUSSrM2qSFMtl1mac2pZr286fWTQXm8yocyk6cCOus6XC1zL6K1lwDmxypo8ZmJXR3O30dG7ORv9YDup8JiFa9U1Ap1yFeNRPNLzTPuDFvg89J0+WjPwRK9Sii3QTsVi6A/7pUCp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:GV1P190MB2019.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(34036004)(39840400004)(346002)(136003)(366004)(396003)(376002)(451199015)(41320700001)(316002)(122000001)(38100700002)(54906003)(4744005)(33656002)(52536014)(8936002)(66946007)(6506007)(6916009)(5660300002)(76116006)(7416002)(91956017)(66476007)(7696005)(64756008)(7406005)(71200400001)(66446008)(4326008)(8676002)(66556008)(55016003)(2906002)(38070700005)(83380400001)(86362001)(44832011)(508600001)(41300700001)(9686003)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tThJ/LUjwDtHBn/+LuJn3O7fvkua+qMQxuXlqUHBm6mV5Dk885xhGj9XAA?=
 =?iso-8859-1?Q?sDv3AIl3/dcigB76deFfJyPnXUzVbDUrBC7EyODXU4U2DesQ9H42aqofnY?=
 =?iso-8859-1?Q?90aRKyL1IudQfbMw30A0omtvTKieVfF0GHeHZuxPoe/XIm+wJG5Ux/MB6E?=
 =?iso-8859-1?Q?2IRKXNutpydrgxhNsHCAH5zg5hD2PAXWU5KpdDr+FZp7N3nrnCqJVNPn/J?=
 =?iso-8859-1?Q?/4MbPzjstmVFejfIquE6iT/biclHGSeup5E/vKeWKcIT+UB/LEIDJFXBuJ?=
 =?iso-8859-1?Q?DOkH577BODCcc2NBHncoBLx6FWd3qRCr5aDs1o7Ga5gv0YTWaGtllpmQ5d?=
 =?iso-8859-1?Q?NpuYo2SJprXCqFSO07Ia5EFk5tGqTlNj8boQumDTOTrxryJK0RqMGVW5F4?=
 =?iso-8859-1?Q?gQgtmSbU8BsrPy41JqK1yeId5RNL4+nedvglbNX75JpblOQi/RiDA6M9XA?=
 =?iso-8859-1?Q?M22yqUtAETC8/RyBCjP18DHa/1n6q126BpqFLGzNq0dOZrYUmriLQxw3Ph?=
 =?iso-8859-1?Q?P9Y6CjWlPHDawmhBqDfFBAApkDLH97Ww9zXa+8fc2xJmNh8M+mBxo6fhc8?=
 =?iso-8859-1?Q?PO+M5qoPB4QGXvtz4Wxs2j5sP8mHVZtoRyygmmfjZR/K+wFGdXSde4NQkW?=
 =?iso-8859-1?Q?TGhRSqtOQeSf1X+APPga17bTjmtvMSBMaFAeheNFFEzheA5/XF7g/JK8YU?=
 =?iso-8859-1?Q?iqyuSl5fBkMkwAumKQRIm8+hVUIiA+muaN2adsr9gWjEiVKCkj/I3sGm4K?=
 =?iso-8859-1?Q?7LoP/prGfHPnbOiY7csaAR6syIIDsFvB5xcvYNHRJEZmR9wb0OGqBnEpvg?=
 =?iso-8859-1?Q?8qkx29KaPyUzlm8pfmXBXWcIriTQHFA362PsqGd8RUrIvnJ4t+ieikrA/a?=
 =?iso-8859-1?Q?PpbN2OrBXJOk9cdX3uZXXwKQteahOSavIpTBcbYtZR7c2kWQOWwy4Fnua7?=
 =?iso-8859-1?Q?Vz7Q9FnBrAxyvwwKI004VRjOgYZWH2zOQywlXlpEjXENZB6dEn2YdF7Q8X?=
 =?iso-8859-1?Q?zHRTpakkcW0B1YcZSMYB6YoKkzE2YMffXO25il0n6I9wlM/DVGhYL6/+mH?=
 =?iso-8859-1?Q?pXO50i/Fc8PN8ibd8VGmE5mHrNT1rMaGl0sqWYUAdchtzZ0o6+/C/t2GzR?=
 =?iso-8859-1?Q?FeFxZdTiO4keqGAdu3nUxPHTnUwblKH1UdIb8GUbTsxR+nJuzpzIC1pL3H?=
 =?iso-8859-1?Q?RJG+6EVvdM3hhwd4c5AucMKLHmXljA05zBnisxqlYfa21m/wJLHcQEbzp4?=
 =?iso-8859-1?Q?xHYFfREBmh/VPKZTSQ1NImG/i7lESnUFXX15S3Ub4b7XsDtFoKENXcXtdH?=
 =?iso-8859-1?Q?maZa1Kv9KzcRfhn//hn+SRTPK2hQNZ+u8hx8IzK6+P1a4uashZn87DKOIm?=
 =?iso-8859-1?Q?XLciVcRGyClWrvjU2psCD7W5rlqpBqInS/WiG6ZNpBPrzORuUjXPZ7ThCe?=
 =?iso-8859-1?Q?myD3MH/9Eg/3a/+D525ZALnAJ++m34FKMddGc2RZUIgIidHlsB0FzDTIPk?=
 =?iso-8859-1?Q?zYmWj+sJ1v1ukWq+VzUZERHDv5yIlCXPPkCaHOSIMrDdoZOkSHKCu2r8mK?=
 =?iso-8859-1?Q?dXVJJ3TNe4MfGGCpH7PZYT+Sw36DMMIk5WsKtma4TU0DNHGXkjcWCO8vZp?=
 =?iso-8859-1?Q?dPzPaid4snHhmnDlcpGMs4L2Uq2cT7hifc?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: plvision.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P190MB2019.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ff28b8ed-a489-4385-1558-08dab42ca9fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2022 12:55:14.9439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03707b74-30f3-46b6-a0e0-ff0a7438c9c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CBn5xrgsWetmRL7E3T+dF+OKzOr0LICJMssRZ2PqX6dxLHf0sESEa7XFIdEdH8TOYE+7uf9MHNjn8pNS+i72iBz+S70/4TKxe4+kzT3afiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP190MB1944
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "netdev@kapio-technology.com" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roopa Prabhu <roopa@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

=0A=
> I hope the following script will exemplify what I mean.=0A=
..=0A=
Oh, i get it now.=0A=
=0A=
Frankly speaking we haven't stumbled across such scenario / issue before. B=
ut i can tell it does indeed seems a bit broken;=0A=
=0A=
I think there are 2 options here:=0A=
  1. The setup itself seems insecure, and user should be aware of such beha=
vior / issue;=0A=
  2. Bridge indeed should not learn MACs if BR_PORT_LOCKED is set. E.g. lea=
rning condition should be something like: not BR_PORT_locked and learning i=
s on; =0A=
=0A=
=0A=
> I don't understand the last step. Why is the BR_PORT_LOCKED flag disabled=
?=0A=
> If disabled, the port will receive frames with any unknown MAC SA,=0A=
> not just the authorized ones.=0A=
=0A=
Sorry for the confusion. Basically, what i described what i would expect fr=
om a daemon (e.g. daemon would disable LOCKED); So just ignore that part.=

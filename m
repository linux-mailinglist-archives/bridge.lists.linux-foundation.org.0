Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82AF3CD074
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 11:18:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2774A40250;
	Mon, 19 Jul 2021 09:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XujIXxKo2m1d; Mon, 19 Jul 2021 09:18:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C4BB440254;
	Mon, 19 Jul 2021 09:18:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 84D0BC001F;
	Mon, 19 Jul 2021 09:18:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A260AC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 09:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9033840301
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 09:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UaptsozuhHbS for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 09:18:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60051.outbound.protection.outlook.com [40.107.6.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AD994028E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 09:18:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9khcnKXSVkv7450yqcb7iIFagwaIGDAxWn5fTxkzBtR1EQA8aagTQsWAuOKMNdUP/UdJGwnKQrtXZDVG/GQjp/PYybtvygMnID+75PYsI7PruQyvQExVNWWT1V456VHFv9P21Try7Z+lZ9yH/jKEe18qe0bCOWXgTUMs497u7w4bQEV2CAatQ2eTc6erbrpVq6NCL9/EbSFUDO2IIvkCOvXDfjL2vvZ9NlUIAdbeEOY66uvDq0+0QY2DhT5iDCWuRUhhBsGRxMI2uGhwaIx+FjL8hfemOYOw4TfT/6yTTHipCh+b7ZQSquZBQgXX6x8blrhXv99TN8xTWLlpf63Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pEjT/2fo2QnyQ+APAtTGrsQpk67QJ8XNuYPuVUbdoY=;
 b=ZyG0HVVBsOAiYR64vWfBaa4pQjErGP1MkWDZ54uK/RhftdUtPw7kwrkUqaLZF5dqy8Yk34zJYQZmvK0KeCMf+zh1uN/+E9ehlbzq+JgLJHzt0aKLsTQsynT+n6b34eN40Qdl9B75Ttk6hBwHMPfhEnoOHY+6m+hZsJYT3/P/IiwvexBC/Kr4bHmXoNk4UJc2QX65oCi7WkBM95VlfykEOXFO9/hLafnkvmyy04mhVs0jloMjHmamEbJG9LKNQVNTr9lbHo7cpy2VUJVtxQDng97RftVO+YrRb5KXwL0sogA0rdY7EeAo2itcMIUJToWvvjDRk5SjrmDGIQNwAA+DUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pEjT/2fo2QnyQ+APAtTGrsQpk67QJ8XNuYPuVUbdoY=;
 b=PuT2BKiXh/q7+W+yvtn8bpxmuNEH0XqwjDPBiILzE2sOfttV5rksJeyaDJjMUuKGYJ8NvqyIMh7VekakluRIAPcunDwN3SO2esZd66QRfgaSTgh/8/YrHkUR1ImrFg8p61tlN7ycd9yqpauwRsfdNLmwbptvl/w4L6yk3wz66R4=
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 (2603:10a6:200:4f::13) by AM0PR04MB4019.eurprd04.prod.outlook.com
 (2603:10a6:208:66::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Mon, 19 Jul
 2021 09:18:45 +0000
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601]) by AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601%3]) with mapi id 15.20.4308.027; Mon, 19 Jul 2021
 09:18:45 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH v4 net-next 02/15] net: dpaa2-switch: refactor
 prechangeupper sanity checks
Thread-Index: AQHXfB5TS4tM10KcwkKSHEATn0LmnKtKBecA
Date: Mon, 19 Jul 2021 09:18:45 +0000
Message-ID: <20210719091844.p3sxdudgiahy4cjs@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-3-vladimir.oltean@nxp.com>
In-Reply-To: <20210718214434.3938850-3-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9933aac3-cdc5-412e-bffe-08d94a9635b8
x-ms-traffictypediagnostic: AM0PR04MB4019:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4019A9992708500F0479C588E0E19@AM0PR04MB4019.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XeE7QQis/bLmmrjG9F73FL9x12uxJV3itxzNxRKRqZPKLSCzsGZUVGWI/cYVdOgfEzAQShqbGXIVKmtbYgRbhMFNZ+Xwafh/M/Z/bGwASlSnzphi09X8xYwpSk38Lf3oJElh0S/qO+14YChFaEQMaitNjnkNIw1tSrulSlUqlp/mBwUr+e8riEU5YibKZ2457gJSHiTf+dxeeWCzZIWz3hZGzO9zE0x8hO13zmyr6cFAQuU6kmVo9IiX6LSY/D3OwL341AI1mlh53LUyrOnopUhjYrj08urn+sN+mfLifiuBuvXXbRBUFdiCqZ/JffVrdzvPifO6xTf78XHRRXRh0OrPAe1dTLGRslgi3TIkJKkj3CJlP+bRCSWaLejhnb8wyfClQVxFx/BktyBQz7H/ZKP0DChtqxFC3N+bqBP39XA7owTdt4Uiw8drW7JO4kEYw+VHAlR8TB5rYMYp+A/S/48rx5osYJm8FxgwdQp66TRIn2bDSOS5GSWhieh6doAeFD8Dwt/3b/cuxkhM4ZJer9Ma+z7ic5VFjiPLvV8GEqJiY7pIokFoQV7+qI3A14DOySvmaYmh6GN2sOe9fY5XEomZVfrlsWFqX9OUHEBdfjJ1SCg0KX8siDr5xcUQpbhEnhZrl6lj4e2ZZmxh6pFBoofDOVLuSfzipnsRbPNDIdtlRqdt//VxjwChPX/67tBjYm1FI9xUeFuRzBxwuxDePA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0401MB2308.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(122000001)(6512007)(9686003)(66946007)(26005)(508600001)(66446008)(66476007)(64756008)(66556008)(71200400001)(44832011)(8936002)(38100700002)(4326008)(76116006)(6506007)(6636002)(5660300002)(86362001)(186003)(316002)(7416002)(6862004)(6486002)(1076003)(2906002)(33716001)(54906003)(8676002)(4744005)(38070700004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8UM6ZO3Y8GAipVMieMP4DTN/m/lJ8/4sQbckbBLbnPfXrSPH0UBTGebqRW3a?=
 =?us-ascii?Q?s9rE7FWIZ4zZ1626QDasGV5X0zpPI6NRXuSiyIjXUvE3Ch97qmarcSAXKwbp?=
 =?us-ascii?Q?x+5LKhVrd7cpoXvqBqMduZ+/N2qCUajTVT1jmsvyMxnRrO70h0pE6kkIsyWy?=
 =?us-ascii?Q?MwoMa5oad7/k3FHDPUhJf80lQXnDYkG8oNl7FMrU1v0fbRRhuWgghB5Tcrp3?=
 =?us-ascii?Q?xxON5kvgmIphqg4N8+CsoxzUbbpZpFVBZPRmHkGScIqU3yYaC8iJ1EG7kVLo?=
 =?us-ascii?Q?QCvx5JO+YVehqpntGAfZ3gMFZKLXYSoVr+RItP2qZQEQxcwuXeLVRhH9mu3X?=
 =?us-ascii?Q?drz0QiKzyYJRyhU3NHytjc/Gg3gOui5OHJ/43NgBN2Xm2XkNb3+5XdY3+iIE?=
 =?us-ascii?Q?INd9mY6QrvngdRyy18/G+4syt9DXuO67Y7A1rZzO1xi4elrsJEMyg8k9sSPt?=
 =?us-ascii?Q?rsgPKEdDZWSvXofWb/MVlrCYZDMjx6wLAlHKtEJ2ZLRR9z5xlXbiUVUx6vVk?=
 =?us-ascii?Q?aXqbReWoiwpGTjaCJKPs2ShewURIvugpDtnFl6C7p2t8yA9Qq+tP08tAYDMy?=
 =?us-ascii?Q?CJqWziw6exL1ZkDHBoIydRDzISirMbOe7pNvi/vTbCtpy2lwmXnBId4Wj0cy?=
 =?us-ascii?Q?rB++mLVcWBZADYe5KhnbRfIrapWGuhyZZa7negKTghctJ8sAKHi2KFVt3LU/?=
 =?us-ascii?Q?B7NgUeh4u/xaCTFA9bWItWCYkI4tKWFSUrpgHyAftEvxdr1b2gSi168b5b09?=
 =?us-ascii?Q?OQtLRysASU8fuEtoxdFxU8Rsd8OG64vZdt1T6niA16yCGzJ73SmX6f6kfUPV?=
 =?us-ascii?Q?osNEHAuAGcORu3VUqt2oZb37W3oGPUL8FPQLKzVQeYARoULtyK3IBkfoxP+x?=
 =?us-ascii?Q?5EUObtJL4KGKSu6IDqGiS1OVYGyIV+wy+rbqsiOxSZbeoshJSg4Zz4hWwzIf?=
 =?us-ascii?Q?rHeUCXTfkFe+EGw1MPiwblfw71G7ZZ4sV0dut2pe4/AeJoJjYlIN3eYn54fm?=
 =?us-ascii?Q?WYXkyPgdUWyUHNWYX7R2IQwW2enY4VTOAtQ+v4Kyh2+Up5lyLnghIsdFnk+B?=
 =?us-ascii?Q?SwRfuFkO19wEGPHx+pi2E1ZlIoxJL5bPFw4fte/e1w735Yd5s/gxxKwIZWPD?=
 =?us-ascii?Q?LLU1fz5ICyvmPACmk1M/Hl+VXgTV1s5cuzkCrF44xOZGCvObMh80lePWBPlm?=
 =?us-ascii?Q?RheJKtQNDWacotI8tzhz+CBTWCTTVXyM/bCJlV4VlJGELCI56gl0OvvglTHz?=
 =?us-ascii?Q?YsErskb3DCWryHFyekgyFMYy32OJ+rV5I3AlWV2k7QPWTTGAuv8urm9IzUKp?=
 =?us-ascii?Q?7HyvJKep+786rLVYoXEgG9Wn?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CB453C80B7E28B4AADCBE2B92D46DB0E@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0401MB2308.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9933aac3-cdc5-412e-bffe-08d94a9635b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2021 09:18:45.5676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQygyPruYddrh6n/YMntFd2SfXIPQj9oQVNO2FNiJ/QaVGtran+hZxWfnAdQJn4fILelQTmD+M2YHptsaB9GTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4019
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@idosch.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 02/15] net: dpaa2-switch: refactor
 prechangeupper sanity checks
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

On Mon, Jul 19, 2021 at 12:44:21AM +0300, Vladimir Oltean wrote:
> Make more room for some extra code in the NETDEV_PRECHANGEUPPER handler
> by moving what already exists into a dedicated function.
>=20
> Cc: Ioana Ciornei <ioana.ciornei@nxp.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Acked-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4BA3DD48A
	for <lists.bridge@lfdr.de>; Mon,  2 Aug 2021 13:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95105401CC;
	Mon,  2 Aug 2021 11:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxgdhRJzkhcw; Mon,  2 Aug 2021 11:20:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C5FD9401D0;
	Mon,  2 Aug 2021 11:20:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 853EFC0022;
	Mon,  2 Aug 2021 11:20:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C223C000E
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 11:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E63960818
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 11:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nYP5MPrftreW for <bridge@lists.linux-foundation.org>;
 Mon,  2 Aug 2021 11:20:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2057.outbound.protection.outlook.com [40.107.21.57])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8777360657
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 11:20:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/LCgqwfgtynRpl4Gz1o7Va8YjRI25YvKeC8Z8eapYSM8w2INenduf9zpkmtwwFLFMAPNWLVgf7tToCs5Vb4ea5GE47MW7lq2iVFAceDZh/GpWQIbDNq9AYpWPVJF5AXomr8nQrWL/rnx0opvUU1VfGYh8U88AF975HEDOWfiK4ApUqVJXnC9OnxDJk3Md3GLTGKk1D7EMHXhzhrIPrrgGaX+IKgJBqUSLTQzD49UNA/CHVxy1gO4UAjmZ5fk+mL6iadAQgYJcI0EGseErQl86kj/f4D+3s0E/H8BlFM279FbZGGY2lJfceWFXMyLS+MmjWOz75y+Uiza7mI0VXgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=225VjnI4g/cwcuGDafQ92hHuuafGlFeEaP4Z9jFRABk=;
 b=Q+1JA+Y4jJWDZamX/mGKWDSJcuXvwGA5qpaAC798IJNhQJL3sBCAZM0oX3ZVHpUSIQj2qa2b0nBdTn2ST+e4C1dsG0sm4717eOYDder8rShK8oMTNTfZZytxeliTr+si9gID0VijOBciyn0zM94lbK7OxnqDMHs0VzrQNA101GwRllkU0whPPbSfZvAwSriji1jTNZXPI1k2zjOhtImjdkx7kKgwRXZJqdX6IbAK48nxhvDX60UNhiFylrQXTsEjmEaPS6VyDKwsAsH2ZCSuDHH0Nczc259363ffAWVXRmgcTa7Ygj056BVQZuymPjRroI8advoGlgVdUDOMKp1bbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=225VjnI4g/cwcuGDafQ92hHuuafGlFeEaP4Z9jFRABk=;
 b=jZJFDe09VLZ6R4Hu4wRELDsjwzkQBNSHScE2rxWMR4gOJtaFoaUK+7FePFiSx8ZUObd4/1Nf6f4f83RwpLuYRdqH3vN4nea1TX4Edg1Qc4S40GUlJh5DAZ9EYpm1DxRFyZgk4jwtS0D3THqHSkZ96hM9vYTvLHjbDFttsPrAplY=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Mon, 2 Aug
 2021 11:20:01 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::109:1995:3e6b:5bd0%2]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 11:20:01 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Thread-Topic: [PATCH net] net: bridge: validate the NUD_PERMANENT bit when
 adding an extern_learn FDB entry
Thread-Index: AQHXhyttiQTxBmfp1EqsG/8ivlTylqtf1ZuAgAAbcICAAAX6gIAAE6KAgAACzwCAAATegA==
Date: Mon, 2 Aug 2021 11:20:01 +0000
Message-ID: <20210802112001.rxfajfttl35bnh5s@skbuf>
References: <20210801231730.7493-1-vladimir.oltean@nxp.com>
 <ff6d11a2-2931-714a-7301-f624160a2d48@nvidia.com>
 <20210802092053.qyfkuhhqzxjyqf24@skbuf>
 <451c4538-eb77-2865-af74-777e51cd5c31@nvidia.com>
 <20210802105233.64r23kucu4mjnjsu@skbuf>
 <4d85eacb-152e-8e4e-bb18-ad2814d249c1@nvidia.com>
In-Reply-To: <4d85eacb-152e-8e4e-bb18-ad2814d249c1@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63d8b4e2-b942-44ff-d8ff-08d955a7783e
x-ms-traffictypediagnostic: VI1PR04MB5136:
x-microsoft-antispam-prvs: <VI1PR04MB5136FB36FFA61BD4446B1700E0EF9@VI1PR04MB5136.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9KdIV29D6yk/k1B0roZprLYw6Kl7VBOtuyCOYsgYewG/9z/RXMsc43EZJh/PSUPPefYad66Z4zsZuUf/jcnUVAJIAo4rn2XMKwO+z5QiOWhOPV/evNv4h08t5SeBH2E5XY3Q6S78jve56gFl4mv6XCr5zhNlacmkVjSSxbMPY6jSctmYQ77dmXFY5OmKAE/r/DzegEPNSPpsmLfoDcT1kQ1J/qEyx8Uvzsn1b+X9Qs3fhtnut133QMNYexIRokl5RGbTKmQm7EORVoSNaSK+v68Nv+jnJNUboXfZkHKasBHEMTHB5SlMBmayMNDSbN6BUFWSdMkWCp000oq8BP38AvHlHMyKCVzrmtk8xCXpP0IK9YRsPmXZbbc5sh6eHbEVHFv0fjt+Vjt4Ss1dH9LtJ+Z4GiYZHIoWV0pbhn/KeF02reLmaoNkcecoATIceyyiuuYqRkPbcmsFudKyO+ntxWyD4Wt+gfHCIyB6Us1BWi9Iitrr738mJSfnWOdO39enGuXH3ZQrZfIsSdZH+8xb0eGSIIbNGmIIDXMN00r/0n5ulTl30qyYc+fNlNvIKx1bnKfOop+xfL1I6puuK/AouUHer9duUK4sijvjMFUoZdPucCQiaYZiLKkiaMxEQj7o5E784UD2OEnJ8Madjc7OudcuSdWWT2eYPxRqo5S7KqrZv7pEhc2Wz5rz288svhun3pHrq+RJ4Lugn0QMUfC3Mg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(346002)(396003)(376002)(39860400002)(366004)(478600001)(71200400001)(66446008)(6916009)(76116006)(38070700005)(64756008)(66476007)(6486002)(66946007)(66556008)(38100700002)(122000001)(33716001)(6512007)(9686003)(83380400001)(15650500001)(86362001)(7416002)(44832011)(6506007)(26005)(1076003)(5660300002)(8676002)(4326008)(316002)(186003)(2906002)(8936002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ij/nvNHSsN/0diktQKICFV9XSctZ5ZpNehLRh/IPFJ5ohT1U0nYATV/Ua7zQ?=
 =?us-ascii?Q?RSc7vvEIfWo51LQuyaFSjl6R3PCu49kjiY8tmUn3DIJAkPXFEsvcURLAC6s1?=
 =?us-ascii?Q?Nc1ibVeaq64j0FNXgmIn8BtdsV5ne9yfLlU/7rjTGdbM6+Vv+LrbpWftn45L?=
 =?us-ascii?Q?HxM7sqMqvFqhNrfG7IPJo21yqPvi7mlvYuxllEnUo6HTQti8XUWSeFz9P8/4?=
 =?us-ascii?Q?OOh6OjBzZ/YOsHFPamA3F8fssTclczhSKIXMNgcWqkf8eW3G6pCFTE94OggE?=
 =?us-ascii?Q?CXbvWPZ6kOdbdZEyhHEKpoYHX4WrCZzalcin47+VWNhqTisii7TaZpxzc91D?=
 =?us-ascii?Q?BEoZzPXKJqnKNxtg/fn+ZTIoygOipmisa7SpOBAFsR83Ayomez11odGYAADh?=
 =?us-ascii?Q?oZ6yeMS4e8h14xVzz+lkJt6ReVJWrwm4Wn/Qb+R8ncMJvnGUQmHCf8vIQ91k?=
 =?us-ascii?Q?932zwo2c6lzDK4l801X7PW9+BaAYwAupTQysFIq8GuyChYRK6Ah5eXs/+e98?=
 =?us-ascii?Q?A73FEVskCAnkHSfmp60fTmPUwZ04ZkLyQi4/zwIe0+9BtLuZ6gcbe1WXHVmH?=
 =?us-ascii?Q?dHuVtYr+UWKoHrYOLsJr/kmYnbr6KhzdZuCC/HahPhd1bOx4fcSJc7ATlPpX?=
 =?us-ascii?Q?qLlVXY7MVWCHh8J3BqB/Y9YC6OoghVHOWap1387mIpUNiaKx0sQSTZilzfva?=
 =?us-ascii?Q?ERci9giLCybuPtOj1jxJ8c7Vi69+Sbx3kq83k7gMTdIxRVV4LDRy2mDGvmMA?=
 =?us-ascii?Q?nvu0zfR2blBCX9krghU0vKZsIhK8Dl9YKtg1MfQJmQGa6gfgr4tU2lMi8A1h?=
 =?us-ascii?Q?TDPm09wOxs15CXu7jSVxXpislSKjhttW+mHrE+ssRMDYwkEprM4fVR1RzhcL?=
 =?us-ascii?Q?XJg1zZQjUhtxm/5HokZpMFe1NJt30AFufYS6KNqHtl6B4CeBgFdKLk7lmva4?=
 =?us-ascii?Q?ccFrxB3TU/kTsSe5NigLTgUYSkAm5YT1lZybvKHRD/F3im1A6ReH87fGMmNw?=
 =?us-ascii?Q?LPvB2AyUw67/F+D2DJHlzB5Xg/kT7+HHlR8wY/ZsZRLggh2kjMjd5+sNH3Tm?=
 =?us-ascii?Q?RG/1WALltnR/50jSvLD3sK13A1lruk7EMk2xKMIJugyxWirg7XaLcuW1BrYo?=
 =?us-ascii?Q?6iSnImQ6Jqhc6FdDaNQra6ib9PMD8nIHjkMuWfGqhbPMFztvBb82GXo8GRJ7?=
 =?us-ascii?Q?ALm8En+CXfLYMP3xNEc/bhrVwcAn9oVM3brP6HsBQP3Hrv3n7loEQ5scN4pS?=
 =?us-ascii?Q?3DWAQvbCVMzdsDUZca8avZsWIvd0kO2yvctufxZm9rX0GabuXqrqsxdiQj8t?=
 =?us-ascii?Q?hNFbVGvXPq7ISNxXFSUoPUE5?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <73DBDAD1B048D546BFAC0CFC0F9CA141@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63d8b4e2-b942-44ff-d8ff-08d955a7783e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 11:20:01.4580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jJVl7YDePEbPtb29AZl50BpnVQaC0nsm0wGVeaBqV0fQLmjNSXDWVGo1vXVhjQfVR6Wi0EnXTUuJOYqRXdeHCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5136
Cc: "syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com"
 <syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Ido Schimmel <idosch@idosch.org>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: validate the NUD_PERMANENT
 bit when adding an extern_learn FDB entry
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

On Mon, Aug 02, 2021 at 02:02:36PM +0300, Nikolay Aleksandrov wrote:
> >> Actually I believe there is still a bug in 52e4bec15546 even with this=
 fix.
> >> The flag can change after the dst has been read in br_switchdev_fdb_no=
tify()
> >> so in theory you could still do a null pointer dereference. fdb_notify=
()
> >> can be called from a few places without locking. The code shouldn't de=
reference
> >> the dst based on the flag.
> >
> > Are you thinking of a specific code path that triggers a race between
> > (a) a writer side doing WRITE_ONCE(fdb->dst, NULL) and then
> >     set_bit(BR_FDB_LOCAL, &fdb->flags), exactly in this order, and
>
> Visible order is not guaranteed, there are no barriers neither at writer =
nor reader
> sides, especially when used without locking. So we cannot make any assump=
tions
> about the order visibility of these writes.
>
> > (b) a reader side catching that fdb exactly in between the above 2
> >     statements, through fdb_notify or otherwise (br_fdb_replay)?
> >
> > Because I don't see any.
> >
> > Plus, I am a bit nervous about protecting against theoretical/unproven
> > races in a way that masks real bugs, as we would be doing if I add an
> > extra check in br_fdb_replay_one and br_switchdev_fdb_notify against th=
e
> > case where an entry has fdb->dst =3D=3D NULL but not BR_FDB_LOCAL.
> >
>
> The bits are _not_ visible atomically with the setting of ->dst. It is ob=
vious
> you must not dereference anything based on them, they are only indication=
s when used
> outside of locked regions and code must be able to deal with inconsistenc=
ies as that
> is implied by the way they're used. It is a clear and obvious bug derefer=
encing based
> on a bit that can change in parallel without any memory ordering guarante=
es.

Ok, I will send a separate patch for that.

> You are not "masking" anything, but fixing what is currently buggy use of=
 fdb bits.

I am "masking" in the sense that the bug I am fixing here was not
obvious to me until it triggered a NPD. That would stop happening with
the patch I'm about to send, but maybe there are still bridge UAPI
functions that do not validate the 'permanent' flag from FDB entries.

> As I already said - this doesn't fix the null deref bug completely, in fa=
ct it fixes a different
> inconsistency, before at worst you'd get blackholed traffic for such entr=
ies now
> you get a null pointer dereference.=

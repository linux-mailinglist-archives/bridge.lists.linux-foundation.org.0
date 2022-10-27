Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4EF610678
	for <lists.bridge@lfdr.de>; Fri, 28 Oct 2022 01:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4653081493;
	Thu, 27 Oct 2022 23:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4653081493
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector2 header.b=iUk5hio3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qz9s0ap2eghz; Thu, 27 Oct 2022 23:39:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BCA538149D;
	Thu, 27 Oct 2022 23:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCA538149D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 522BFC0077;
	Thu, 27 Oct 2022 23:39:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 453D6C002D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 23:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19B478149D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 23:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19B478149D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xePxUSbvnsik for <bridge@lists.linux-foundation.org>;
 Thu, 27 Oct 2022 23:39:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 431CE81493
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2050.outbound.protection.outlook.com [40.107.20.50])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 431CE81493
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 23:39:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZ6t87qm0e+EL17ZF9bjYKiMqNSAjTYCnBc5hbsRIe6URbfXNGQlgRFOoISmOh701N6T4EPBptYKKfQTT3FcBMR8KqrJD9SRmZyVMhMcsQNZKv33ASWB2NV60qB23Jtkkuzx6T+GgNDG14sXpyEQhzBKAnzieQfxyeXlR9X3VTPoyNsadIm+Ne8YEj2VVTHwiXHLJPHAZ79ZsHj2IX9A+ph3pGkLOzo1MOWoMb+MYTgGszJ2SOzuiWaoXrUI7wy0O7rynnrNFDpjlcWf5dRCvezyshOqr3+piNq45IJpa3c69SQAKVY49ZUKG0axTLv21B/1kamM7t4pzoLeJC/cPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VBN3ioozJdloKVqUthzT5PrhF9aJ0DkVvhthx4l7/qw=;
 b=QL1U3HRCgh3jWa2uzwam2tLgTljr68a6Uw/gu4qqfbYxJ6bjRAP2k220CVEWUc4u1FQdIaZpRr8he9Nr90/E9XFMFyWefGSqQTJIYKNN6lh9KinSw+DvNU1ZA1v/MxHfQiDRhGm+8RuvETlXnno0CiXkSja+vd9nuhzAIgw8RTCoKwLgJosWWImjk5Tth+DNykyecdYiTQHShveuGKDfPLuE9MPk3pLAECVbS8QBUX0FHDqqPhdItztPAbOpBeQwMO072mf00L/PitY0GhgXeByQ2GzDNuaYFCw7sb+puf+RfpHiWM39NveiCx/8PKdJ4AJGhD5FPiSORKSntsiq0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VBN3ioozJdloKVqUthzT5PrhF9aJ0DkVvhthx4l7/qw=;
 b=iUk5hio3JAzvBsKzUVzcd9RoW2iuLENjqCm5zOBz/ZRMR70RWPCJzAodNPOotduvI0Isja0vgxZ/lS5WXGN89tHjcnJTzgEfx1jj/wnfubM5Bdxqv64zBgJpFL42kUoOwU9nxzO2JBZaKyMi2fyvzzngfbJ5L4nZRh0RwzaJWAg=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB6864.eurprd04.prod.outlook.com (2603:10a6:803:138::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14; Thu, 27 Oct
 2022 23:39:40 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::6710:c5fd:bc88:2035]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::6710:c5fd:bc88:2035%6]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 23:39:40 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ido Schimmel <idosch@nvidia.com>
Thread-Topic: [RFC PATCH net-next 10/16] mlxsw: spectrum_switchdev: Add
 support for locked FDB notifications
Thread-Index: AQHY6FjUVuDB5/kMGkqgz4g+zKbN+A==
Date: Thu, 27 Oct 2022 23:39:40 +0000
Message-ID: <20221027233939.x5jtqwiic2kmwonk@skbuf>
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-11-idosch@nvidia.com>
 <20221025100024.1287157-11-idosch@nvidia.com>
In-Reply-To: <20221025100024.1287157-11-idosch@nvidia.com>
 <20221025100024.1287157-11-idosch@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5136:EE_|VI1PR04MB6864:EE_
x-ms-office365-filtering-correlation-id: aa5f3206-5da7-44c3-b88d-08dab8748448
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8HCH4k1RdX7la+ck3MCsbaOezIMU6U7Uuu2CX6bfpUDKEvJZDh4wYHJn8H4y7J4WRnh8POxZmHhlINIlp9WYrwH4ekbpA71+Qgd+LXxyvc+hIWC/aUn+4RCeYVAEbU4VX+CntI76Oo7MHLBoNYF7nBWkTqa7Xwry6YphHsvfj5blqGwaFbgTFwvwncwe3CUk7ylyjZir3I9oBivhZpPtbZaHvoOfQaWuTrpgEg7F8w2j0m8Jc04y6Sr/8AlQYJfPjbB6fh+50jxUhkv/hMAUS7Bwuiu5i6UL7YhUvDdhrcBXOkFuGvs7m7GJPbCyLmh4EirNf68YxUrQL/BENldgawo+o0THAmJh1MNSclhihpbfxXUYE5mNL6TE3UecQystlBjAiQYxpd9Z5pMdjA6CsStLQ9AEjNsEM6ocQ0vn5YStMyG7RFX0sfiAEoVdvrmONxQW5blhms12G0wKkCHz12ZH8VBexLx4n+VasBURUgYZ10Z2houTfLtH73c5Hjuvjzbm60Z5IlE3MYr5rjGCfYeTiiDmohurSRL1kN8cQgdHd9pF8V5MFL4+YkFD+1kkjflw/lUix0UyO3UPU9yMzoaF8Qof/igBL3Ntt35KhpTy4SFj5CkcmCsll9qcgISGAEOTNqM0WmV63uFUsELi7T86XdKRSZsCwdgyuWAmwivgSHdeC1unlVF9DdESOXFPrTBN/Mxb5ixSDMXDrzrg0QmrFKqK+w6gJZfCoIp0i1RCTyYVYI+rYW1EX4NjeamYHwCqMLboOKgjM6+kSYX93w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(346002)(136003)(39860400002)(366004)(376002)(396003)(451199015)(122000001)(38100700002)(8676002)(1076003)(6916009)(6486002)(7416002)(5660300002)(2906002)(38070700005)(66946007)(91956017)(4326008)(76116006)(478600001)(186003)(64756008)(66446008)(44832011)(66556008)(54906003)(316002)(83380400001)(71200400001)(26005)(6512007)(33716001)(6506007)(15650500001)(8936002)(66476007)(9686003)(86362001)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sJILLBicZ61JhA0j9L9GSrMBUzL+DTMGBFDX3XSBrRli8cXlV+zCxHUNVuHC?=
 =?us-ascii?Q?a9M4amnyuBnfXpUJH1KC6eplMxnAYpUi2k++X8KnDBldRGwQx/b48fpKrQkY?=
 =?us-ascii?Q?nqRjnXTQ0GtdWh5vRv4Gg0jdj3zAb37hxkp3ClW6bmi+7kjOpA+e2+ClRqAK?=
 =?us-ascii?Q?LDGPlPzwmPI159MCHcNVg3Kzgaa63Mdf00nPDWbqaHNJ6MOnlcidIr0c0lqA?=
 =?us-ascii?Q?1p+IJvkzNdaeEMn3reVoS5zLzvbONogNBcpQSyjYWSa/sx16Oe87iAjrawVd?=
 =?us-ascii?Q?LZjY0L84QtZXEBc5xEGT3VlHdEwUoxJjxtU6XmIzrG++iZhGdvWmJzLx/NZK?=
 =?us-ascii?Q?PIqjBq0eiXkQr8mOWaDdjs6NVEe2f1YG4pAas005QFc2pce9ZqhvElVzW/R8?=
 =?us-ascii?Q?UjpCBlnZpRaBYl3sJ7C8e7aG3IVgaeOdhSEmqFb/JplN7qoQp5ddcAg1al6t?=
 =?us-ascii?Q?3kLyCS4H3aJbCy02dvcHuWCLGSEcYzRaw9WIdh9Q+uWwxuacJIkHRozDO65U?=
 =?us-ascii?Q?L1LMOMC03hxl8zr7iYHdXieEo9p9WtQazKum9bMoVOOxGOnqYE90bw0f1Dox?=
 =?us-ascii?Q?ZP46HPt8OEBnp6F55hZf9J1KsIGuCQ3091HewM4nYeXmT+v3JHC5wGt0pCmD?=
 =?us-ascii?Q?ChebMr7yPBp9qO7KuJosDnqsp35g5mzkyaOKDkjYBaKXxDSYueEN9FAlqvb/?=
 =?us-ascii?Q?XfXJuNYAVqy96rYoIqmHTKEQLSeo9GR58CBK9JWaMwtH/PodjWglzcuKBPA7?=
 =?us-ascii?Q?jhgjV44E44n15MwUkkbVbrU3rLVFJc1yjiqiOUx5UaIjt2klUXBiDbCotvOx?=
 =?us-ascii?Q?7PbIzmY6JZbHndN4VLie74W23LYDsFIwsNW+ucSd8oHtgvDMhBYoceka3kFz?=
 =?us-ascii?Q?GfrHBonTj70m61Ux08lr45BjTETV0nkqNTJxvNqCcsQ8biYCXpa9CzPNxxb1?=
 =?us-ascii?Q?5OLIagxQqWbS7KlKcrY0CuIzTBx94hNENNOEd9YLiwPIZNcgh3IDaVM5nLYH?=
 =?us-ascii?Q?61TbmPF+BF2SPfxUIpfewVsZAsJM2mujc5yB8pBGs7C5JYonXq/Q3wblFQIL?=
 =?us-ascii?Q?l60hRyQhTmmruFSCr1B5NALVsWDL32EpYeReplO+1/HETIVcjK0JsjIE97vI?=
 =?us-ascii?Q?XRQ/eCdF7dmQbVEX14FKllFbCb291ZwqSq+GFmMkVbH0odVEhSfvLGnwIQIb?=
 =?us-ascii?Q?s0klBDFMbihhyHSfFTDwj/w1G7WvB7JnMIZxdmPmntxar52altde66kBX8tG?=
 =?us-ascii?Q?BKMLrlSWu/BhCbOm5/egXt0BNb8ZByzgkh+9kzSQ0OnmuGBwEpuf4G0kgoEq?=
 =?us-ascii?Q?2nf8EM9UnmgyMDYuGSLIt7REd8CvArKJyhJjrM90eu+/bmNyj9C0YbAvG4qY?=
 =?us-ascii?Q?D+FxmrZGiGK2RfRkcPp/KleQgcDdz5sQwfErEzcigHwctAEBo/41nUv5QWBE?=
 =?us-ascii?Q?ffo9NoPIMIGho+GiFgPQ8Cavs3YLIf5Fv1cSFydJjqtCz41mXPhgJ2DoGplp?=
 =?us-ascii?Q?mVO6SVh0h35OJY6ENtQcnLL7SRzEgEAHl5mtYaIyUowHqvo5r+G0pe9zvf8G?=
 =?us-ascii?Q?nbYCWudrtZwdNqTkXxHeIkokPMNXUWezyrRi8kOGyujiOJw8CB9Is7GfT+2o?=
 =?us-ascii?Q?Nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8C07B525E266EB4C9C4CD3BD0107336F@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5f3206-5da7-44c3-b88d-08dab8748448
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 23:39:40.0797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sDKc/ONj97bP3HjbI0UmDUoZ0lRX5BZUb+w+Nsu6svWy+4x2lcIzmsFcG0bYd0QTRNd6zGIVcIpzcEerDURJKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6864
Cc: "petrm@nvidia.com" <petrm@nvidia.com>,
 "ivecera@redhat.com" <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "razor@blackwall.org" <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "roopa@nvidia.com" <roopa@nvidia.com>,
 "netdev@kapio-technology.com" <netdev@kapio-technology.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "mlxsw@nvidia.com" <mlxsw@nvidia.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH net-next 10/16] mlxsw: spectrum_switchdev:
 Add support for locked FDB notifications
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

On Tue, Oct 25, 2022 at 01:00:18PM +0300, Ido Schimmel wrote:
> In Spectrum, learning happens in parallel to the security checks.
> Therefore, regardless of the result of the security checks, a learning
> notification will be generated by the device and polled later on by the
> driver.
>=20
> Currently, the driver reacts to learning notifications by programming
> corresponding FDB entries to the device. When a port is locked (i.e.,
> has security checks enabled), this can no longer happen, as otherwise
> any host will blindly gain authorization.
>=20
> Instead, notify the learned entry as a locked entry to the bridge driver
> that will in turn notify it to user space, in case MAB is enabled. User
> space can then decide to authorize the host by clearing the "locked"
> flag, which will cause the entry to be programmed to the device.
>=20
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---

So for mlxsw, the hardware/driver always gets learning notifications
if learning is enabled (and regardless of MAB being enabled; with the
mention that BR_PORT_MAB implies BR_LEARNING and so, with MAB, these
notifications always come), and the driver always calls SWITCHDEV_FDB_ADD_T=
O_BRIDGE,
letting the bridge figure out if it should create a BR_FDB_LOCKED entry
or to throw the notification away?

Hans' case is different; he needs to configure the HW differently
(MAB is more resource intensive). I suppose at some point, in his patch
series, he will need to also offload BR_PORT_MAB, something which you
didn't need. Ok.

The thing is that it will become tricky to know, when adding BR_PORT_MAB
to BR_PORT_FLAGS_HW_OFFLOAD, which drivers can offload MAB and which
can't, without some prior knowledge. For example, Hans will need to
patch mlxsw_sp_port_attr_br_pre_flags_set() to not reject BR_PORT_MAB,
even if mlxsw will need to do nothing based on the flag, right?=

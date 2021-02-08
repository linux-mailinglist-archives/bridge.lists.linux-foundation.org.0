Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 083E7316173
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 09:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A66448588C;
	Wed, 10 Feb 2021 08:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 220QIH5qMAli; Wed, 10 Feb 2021 08:49:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71690856ED;
	Wed, 10 Feb 2021 08:49:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5E56FC013A;
	Wed, 10 Feb 2021 08:49:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7BBA6C013A
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 19:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6113A214EC
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 19:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMlsFE7GmKbv for <bridge@lists.linux-foundation.org>;
 Mon,  8 Feb 2021 19:37:15 +0000 (UTC)
X-Greylist: delayed 02:00:23 by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60063.outbound.protection.outlook.com [40.107.6.63])
 by silver.osuosl.org (Postfix) with ESMTPS id E903820BF9
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 19:37:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBvod/9gXoQY7tEAkkanvr947Xg8u6IgEzBmQyZUsWH4QAdPxT0AvBrjPnM+4txhPJsutNXBwz86RzCsfreJMSFUoqk6c0Rr2/X+p+plifkQrtT8rE0jZCoGl3o6Gg/hFLMlR/0ztIxRB3r+t/UeeC1SlzBNJbap5Rl4RZUmhxngnkrN519jwkSSqOnIDrkuokddYg9Kry8YDqbzqynkxDtabP2+GIBinmTDjl0g7Pi3fn9XTba7DdCJMsMihalVGkOKa2zzaqorEq9FE8suQOxTdb8VAz3J/Zd/fNNEu3YxZPFIu/ilw2aSt5gvY+CjIbBOJ6qqf9/bt/HWlc2Fig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exkoNkB4sKnYOGWCAq/KbIKLo3oZIEKBU8fvAi6+BCY=;
 b=E3duo/rDAm2kHgfG9474gn6w94KBJybv5DL6AgdcV+JhPlIIbWl4cqTOyr6F55Ebut1/QnRe/dGF0H0RdntEEgP5G98xWaUwWy+u927hRDC5tZynziu4VIo7w4eyi0AqiOhnNwM1vQqwVTuj9OEnZr/oIfBoiOHqMBJ0K3TXXQqKaz0DQjwC+YNCArLnd9QRs2+1IM36ZTXcdRsTZvbmAIswaH0vOZYyVtPerbp/g2fXlwWFW8CeP0HVs0iSTyIz906kTtX/N6xkq59eio04HShpPFMXyz01RmBrw/2XWNnYCAivC/dt+HKIadyMMdR+2pmGj07MiDakxNMPAsyqZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exkoNkB4sKnYOGWCAq/KbIKLo3oZIEKBU8fvAi6+BCY=;
 b=ZcosWDECG0AWYnXOaSvHD4PxxeWXgN7gqd1wwfQRufp1aFxSWN75mNao95M5cSDsdZr/A1QPvcOhxFYzxEnu//YNSEgFZ46eUwsbReUVbVgK/1vzDJCcRzmmodTLm47tnV1r5HZcxvs0Lspb9oDoccDQWtEiriYKi0rSj7Zvu94=
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 (2603:10a6:803:16::14) by VI1PR0402MB3326.eurprd04.prod.outlook.com
 (2603:10a6:803:8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.21; Mon, 8 Feb
 2021 16:04:20 +0000
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::b0d0:3a81:c999:e88]) by VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::b0d0:3a81:c999:e88%3]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 16:04:20 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <olteanv@gmail.com>
Thread-Topic: [PATCH net-next 5/9] net: squash switchdev attributes
 PRE_BRIDGE_FLAGS and BRIDGE_FLAGS
Thread-Index: AQHW/ag09t/cx1zZKkyxRCLhvjkPzapObMsA
Date: Mon, 8 Feb 2021 16:04:20 +0000
Message-ID: <20210208160418.pen47yf3xhtzuwkb@skbuf>
References: <20210207232141.2142678-1-olteanv@gmail.com>
 <20210207232141.2142678-6-olteanv@gmail.com>
In-Reply-To: <20210207232141.2142678-6-olteanv@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [5.12.227.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ae0942a4-3a6d-4c9c-0c85-08d8cc4b31ee
x-ms-traffictypediagnostic: VI1PR0402MB3326:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3326DAB80FDBE4550D2F60C2E08F9@VI1PR0402MB3326.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /15fAKReoxUjXEUIeOCRJGJvOOpKY7yxjgaf61YS3nW/XbjLc4EVrGcwMd2xM88dgXG/aOCGHzdXTuXfaf50CtE92xzT7fqyexL5hage24uOTfkCDhWPVtryT5M2dEqshOTkUe2yYplg12xn7QDPOjEoPM1eI/wrSMkts0bpPwt21vj/wKnU4i/0jgp+TrrBSMFsRz4l6qQhPViJSPweUYeBDnpnomVtHsXjfE38XgRDszYOWZYgh5qpTaCbvBOLH2e4vpC3OVAdefpPgqCqUkDpT+lYJ9W+Zs/PNdOElYDpg2DOFgCfopBVn9M5M4gQ8UfnRgdJE6Rh5/lNcpUZnV85RjFFRdBn0QyZfuFCqFJuXHkLYIHqVUmCkgib5M+7ZAYdK9dALxqMDcgvRmIAbSDKUZopTzKZKPt70ea8ZrOUSO3G3/B29cBEMZvUBoAZH/NxHiwtSIuhZDgR7Kt4dcu5dhw2Oq3m08cgGdWhSvARJgcGo/srAeqpxAXh5UyIN1/5//Kh8v25lXizT48M0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3871.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(396003)(346002)(366004)(376002)(136003)(39860400002)(91956017)(6486002)(64756008)(66946007)(7416002)(186003)(33716001)(5660300002)(71200400001)(316002)(6916009)(66556008)(54906003)(1076003)(8676002)(76116006)(4326008)(86362001)(6512007)(8936002)(66476007)(44832011)(478600001)(2906002)(9686003)(6506007)(83380400001)(66446008)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Ypv+LbwzSC35YeoKC4O5eWroDCIJcipEmwOGnbSdm/ii5qQT0D/388qPAakm?=
 =?us-ascii?Q?yZZ75Rli3+fcZTnPrbZMDsgaZ/nauigzZSh5hBzNovShhgjZ/1XCF7bhWkPs?=
 =?us-ascii?Q?FMG6ggI/5+aJGppGidYSx8L7QXLj3JAHNr/0FpKwdPIpo/2NZsZOYdhZsfAy?=
 =?us-ascii?Q?0ViBAd6QDM6t/hlIpOfXyg1pWLNXiIVRCav2pOS7RJosVxwiU44aOGIDYMSO?=
 =?us-ascii?Q?GWVvC7wNtiqDiwEnv8Z77E0eLOVKSUnsxMDBUwMi6/zXFyw7RhhTvl0BFCvy?=
 =?us-ascii?Q?/jW46OM7op6S4Y0KS/BiKDu/M1ZkwyHGuY4sOXkIpj83YQhrXxRHfoOUtcjT?=
 =?us-ascii?Q?qZxIX5tWDd/hp+zfNrdQxt7vCAo2GtxOCO9UW4ynUYOwk7jFp4OizcRSNNlN?=
 =?us-ascii?Q?l+eIO6KXr7qlkDclaUtNK2kBsQS3dE3f2WRQW8/C9RNlcLCr77JDRLL2baKM?=
 =?us-ascii?Q?BzxbMiIt+/3i+KDHYCF2lvBN6KQPQxJDD1tlrWOSCHkdBH/Rg5DOU+c4gWRA?=
 =?us-ascii?Q?svNl+ITEQwdHgmjEZqLuwolTCF/8+504SOdym+Zt0RI9Q3eJg40791lR1U5K?=
 =?us-ascii?Q?+09Z0QyUmg4dNcukLyyOhju/WmWyGtdD25nm63nVarS5NL3d/nA4ReHsNPKj?=
 =?us-ascii?Q?Yjnp0WKRsRzj8SqC/9HfSBrGzeuPIZa/Ru/usQsY4Iw+eL8ztZaMiHjrmlA5?=
 =?us-ascii?Q?vtudk91C9mEsBWO03YD+ucwhshfd8f9XnUQOpLXvNw/3h8lASaYCxH05yNW6?=
 =?us-ascii?Q?ku8vJYemoF17AHNBj7RPyWviGqTyFkUvwW9PUFZO+krBwG0HVy9+9LwM4P+d?=
 =?us-ascii?Q?YxfWf9SOcAkq7FfUkFJEDmyP8L5kXR7CM/Man1qc1a8AaUnW7pePl1jE29C1?=
 =?us-ascii?Q?5TijXJSSVO+SRaI1vIy1ck04h2dXzraKZND4+X8NdCjjLzewxofVBZvxgdJa?=
 =?us-ascii?Q?RLYaGn9mm0hXOm2cOft9U861ZzfSB69cGZ+Q6yKJbA8a8EvlhDLoRrlhtFVG?=
 =?us-ascii?Q?HW4NYcfz/8q1IkyZT7/0EU4Y6PvxlQqcNSHJLQhGRpMY9ZrgLAOz4jxD8niW?=
 =?us-ascii?Q?GUO59Ek1+xF0SVZ5CZOsdaatNWvbeIy+q+7Vj1dBhxX0Tp5FsAU/5xEyff4w?=
 =?us-ascii?Q?AaIkpbqdxkmDXpFG6BMAl8GcE/kqdjDrDiqv3bgMiEEFTHfOQdw8BF92pRG/?=
 =?us-ascii?Q?ajuFxp45EwrLpPzVYvyPKkuGSUWf9ZdXVyrGhhkOsGKv/JZ7U7qL0DDrJLpN?=
 =?us-ascii?Q?Rt0rHRDtHXvp+EIDvFXXPMZURI8N9VbBK5B5ItcaCYeBtCi7EVErBXj33sau?=
 =?us-ascii?Q?PdHlge5+cB6BsJxIcs5Hgeey?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EBBD033502BAE849A5733453869BC577@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3871.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0942a4-3a6d-4c9c-0c85-08d8cc4b31ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2021 16:04:20.4093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PjuF+LhwS14xExlxmO6YIlouOWRnQfdrqXoihsN69VHtFvKvN0QE51zxpnph8j/7ce+QEppmKltZsuTpEROtAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3326
X-Mailman-Approved-At: Wed, 10 Feb 2021 08:49:23 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 5/9] net: squash switchdev attributes
 PRE_BRIDGE_FLAGS and BRIDGE_FLAGS
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

On Mon, Feb 08, 2021 at 01:21:37AM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
>=20
> There does not appear to be any strong reason why
> br_switchdev_set_port_flag issues a separate notification for checking
> the supported brport flags rather than just attempting to apply them and
> propagating the error if that fails.
>=20
> However, there is a reason why this switchdev API is counterproductive
> for a driver writer, and that is because although br_switchdev_set_port_f=
lag
> gets passed a "flags" and a "mask", those are passed piecemeal to the
> driver, so while the PRE_BRIDGE_FLAGS listener knows what changed
> because it has the "mask", the BRIDGE_FLAGS listener doesn't, because it
> only has the final value. This means that "edge detection" needs to be
> done by each individual BRIDGE_FLAGS listener by XOR-ing the old and the
> new flags, which in turn means that copying the flags into a driver
> private variable is strictly necessary.
>=20
> This can be solved by passing the "flags" and the "value" together into
> a single switchdev attribute, and it also reduces some boilerplate in
> the drivers that offload this.
>=20
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/net/dsa/b53/b53_common.c              | 16 ++++-------
>  drivers/net/dsa/mv88e6xxx/chip.c              | 17 ++++-------
>  .../marvell/prestera/prestera_switchdev.c     | 16 +++++------
>  .../mellanox/mlxsw/spectrum_switchdev.c       | 28 ++++++-------------
>  drivers/net/ethernet/rocker/rocker_main.c     | 24 +++-------------
>  drivers/net/ethernet/ti/cpsw_switchdev.c      | 20 ++++---------
>  drivers/staging/fsl-dpaa2/ethsw/ethsw.c       | 22 ++++-----------
>  include/net/dsa.h                             |  4 +--
>  include/net/switchdev.h                       |  8 ++++--
>  net/bridge/br_switchdev.c                     | 19 ++++---------
>  net/dsa/dsa_priv.h                            |  4 +--
>  net/dsa/port.c                                | 15 ++--------
>  net/dsa/slave.c                               |  3 --
>  13 files changed, 58 insertions(+), 138 deletions(-)
>=20

(..)

> --- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> +++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> @@ -908,28 +908,22 @@ static int dpaa2_switch_port_attr_stp_state_set(str=
uct net_device *netdev,
>  	return dpaa2_switch_port_set_stp_state(port_priv, state);
>  }
> =20
> -static int dpaa2_switch_port_attr_br_flags_pre_set(struct net_device *ne=
tdev,
> -						   unsigned long flags)
> -{
> -	if (flags & ~(BR_LEARNING | BR_FLOOD))
> -		return -EINVAL;
> -
> -	return 0;
> -}
> -
>  static int dpaa2_switch_port_attr_br_flags_set(struct net_device *netdev=
,
> -					       unsigned long flags)
> +					       struct switchdev_brport_flags val)
>  {
>  	struct ethsw_port_priv *port_priv =3D netdev_priv(netdev);
>  	int err =3D 0;
> =20
> +	if (val.mask & ~(BR_LEARNING | BR_FLOOD))
> +		return -EINVAL;
> +
>  	/* Learning is enabled per switch */
>  	err =3D dpaa2_switch_set_learning(port_priv->ethsw_data,
> -					!!(flags & BR_LEARNING));
> +					!!(val.flags & BR_LEARNING));
>  	if (err)
>  		goto exit;
> =20
> -	err =3D dpaa2_switch_port_set_flood(port_priv, !!(flags & BR_FLOOD));
> +	err =3D dpaa2_switch_port_set_flood(port_priv, !!(val.flags & BR_FLOOD)=
);


Could you also check the mask to see if the flag needs to be actually chang=
ed?

> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -621,10 +621,8 @@ struct dsa_switch_ops {
>  	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
>  				      u8 state);
>  	void	(*port_fast_age)(struct dsa_switch *ds, int port);
> -	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
> -					 unsigned long mask);
>  	int	(*port_bridge_flags)(struct dsa_switch *ds, int port,
> -				     unsigned long flags);
> +				     struct switchdev_brport_flags val);
>  	int	(*port_set_mrouter)(struct dsa_switch *ds, int port,
>  				    bool mrouter);
> =20

In the previous patch you add the .port_pre_bridge_flags()
dsa_switch_ops only to remove it here. Couldn't these two patches be in
reverse order so that there is no need to actually add the callback in
the first place?

Ioana=

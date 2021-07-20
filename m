Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 453CB3CFCA6
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 16:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84C99834B9;
	Tue, 20 Jul 2021 14:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pkTUgssCBc8F; Tue, 20 Jul 2021 14:51:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 379B083415;
	Tue, 20 Jul 2021 14:51:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA3C2C0022;
	Tue, 20 Jul 2021 14:51:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78192C000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B5E6402E7
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ydHgKhLZ1Ih for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 14:51:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF001400BA
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:51:30 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id B59175816B8;
 Tue, 20 Jul 2021 10:51:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 20 Jul 2021 10:51:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=rr7CeS
 p57r9ki00p083nmHdZkD08g6VJi3ri00zZGDg=; b=TJMJ1jHafr/rpl5PIceP9q
 syX1rFXmkISdPiVMX9dqujREkYRULEbmsqU90X3Bbq7qxLzzn4f1qDUJE140/4fe
 MK76iEmixKYC8bFbdT1tXWA+Z9np2r9A3KBdivaCe4cRNjx7347E+6JDn7jiira5
 jrNAEImAAyM+5YY/Il14GIOhSthVusUg4TP/6nfUDSsBwxvkSzX9i1W6/C925LUe
 H796xg1O0+s0TM7bulf5cafrAuKHwopqbiK8AXSEJ56tJs3ohc03akO3ODRqa6c8
 0hbs03IdDwF325+Qwvrc7v8XxDRA5Ey+UxBC9ugdyy/9odCvHGPGcMkdBmgzeY4A
 ==
X-ME-Sender: <xms:7-L2YDl4W3vv1MGiedWJbQlKi3J0E78-lhPWwBJ_4ooF800RLwolOw>
 <xme:7-L2YG2Cdz5N51jyHy00mv_HPICd8FdhB7e12jlZzb312752BSC4pyXOQ5SOet9DM
 bHwRpDfu_g3kb8>
X-ME-Received: <xmr:7-L2YJrO7LGvTHgxU1Dau-gcwZxQ69l5R1ukdQifXrNhYYVUZI6jSOWFJk7tTHvaeqlnF9Y1h1BcK_cCyzScvObY4DVlLg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfedvgdektdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:7-L2YLm_Tcrk2cw2GIJ5CGY9OQ6jnJPIoLMMNUc73GFrv5qOyywx-Q>
 <xmx:7-L2YB2cKmbLQeHD-Y5yYDs-iCfnBehmxsp59Bsde7LFrY3ndwUsEw>
 <xmx:7-L2YKsiCVpGYtiDD4XVgiKy48xF9-CzbHSyYTV4xTmdsgi9ZZw0rw>
 <xmx:8eL2YA3GtU0KYYBW5n5G3g8MvrkfxVjCeVNQi6ddXd1MMNQrCueo3A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 10:51:26 -0400 (EDT)
Date: Tue, 20 Jul 2021 17:51:24 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YPbi7NSsdDEdvmcA@shredder>
References: <20210720134655.892334-1-vladimir.oltean@nxp.com>
 <YPbXTKj4teQZ1QRi@shredder> <20210720141200.xgk3mlipp2mzerjl@skbuf>
 <YPbcxPKjbDxChnlK@shredder> <20210720144617.ptqt5mqlw5stidep@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210720144617.ptqt5mqlw5stidep@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, DENG Qingfang <dqfext@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 00/10] Let switchdev drivers
 offload and unoffload bridge ports at their own convenience
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

On Tue, Jul 20, 2021 at 02:46:18PM +0000, Vladimir Oltean wrote:
> On Tue, Jul 20, 2021 at 05:25:08PM +0300, Ido Schimmel wrote:
> > If you don't want to change the order, then at least make the
> > replay/cleanup optional and set it to 'false' for mlxsw. This should
> > mean that the only change in mlxsw should be adding calls to
> > switchdev_bridge_port_offload() / switchdev_bridge_port_unoffload() in
> > mlxsw_sp_bridge_port_create() / mlxsw_sp_bridge_port_destroy(),
> > respectively.
> 
> I mean, I could guard br_{vlan,mdb,fdb}_replay() against NULL notifier
> block pointers, and then make mlxsw pass NULL for both the atomic_nb and
> blocking_nb.
> 
> But why? How do you deal with a host-joined mdb that was auto-installed
> while there was no port under the bridge?

mlxsw does not currently support such entries. It's on my TODO list.
When we add support for that, we will also take care of the replay.

> How does anyone deal with that? What's optional about it? Why would
> driver X opt out of it but Y not (apart for the case where driver X
> does not offload MDBs at all, that I can understand).

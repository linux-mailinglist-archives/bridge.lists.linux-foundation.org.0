Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B9A3CF8DC
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 13:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86BBE400FC;
	Tue, 20 Jul 2021 11:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55QCEzZBHs2N; Tue, 20 Jul 2021 11:31:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 15E75401AE;
	Tue, 20 Jul 2021 11:31:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CFED9C0022;
	Tue, 20 Jul 2021 11:31:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC4AEC000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AD1B60648
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKJ1_uHD4z9R for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 11:31:01 +0000 (UTC)
X-Greylist: delayed 00:06:21 by SQLgrey-1.8.0
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C13F6061B
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 11:31:01 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id F394C58177F;
 Tue, 20 Jul 2021 07:24:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 20 Jul 2021 07:24:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Y7C6JE
 GT0y2KLvuEwR+z81yYhgYip/+jR2ruzBG6+28=; b=g7o+wqGRbCUg1AX7xvQyNz
 sI+51AF00UcGODm7HpXn5pa14Zl9BwgG9IaCAI6labY44Jmil0jR5XZgFh8g6Afw
 M48ikwQV78Cuh3Aj+uB0YG82TuWwYZHOPacajczhXi19KDyAZyukuiF7iLcG/uuE
 csYrNG/IkbXehROVzZeAiJvjBRQmsl4C48MlzXPRk1jNme7+IAtgJ6S2pkUb4qDx
 Sy2HVhakAgomhJY/4ZZ1z2Yq2s6G+bVbyrR2GFTh6QHmCTw+kp6fO3xBByx9PVM/
 JGjvb8+ntBtnnPhtKTwSe2lu1uvSUthu+1A9ectDi35WNpnc0ykCpXXbsKUnEGsQ
 ==
X-ME-Sender: <xms:cbL2YJESzCx1XGoptdK4-s0UiTNUq-wMQQu3VZOyThVvBl1Ad90PIA>
 <xme:cbL2YOVJNI_9e8Mf_fIfRbBdYJ30GH4xrblMrQfp2Tp3E-Yb34NcVPEux71hNauI3
 dIlINeqAcir2is>
X-ME-Received: <xmr:cbL2YLKMI6ASzK-srRirImDPLJ_EKHRv18olK7dr8ko3QOPNRP_GNUS9tqU9R0OpEWotXyn85H-hzSIdDqvcv77aqc5b9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfedvgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:cbL2YPE_hnTMlN0W24Bt-AdPYiwm-ejQtERSHHEEaCugjo-n26QgAw>
 <xmx:cbL2YPWDC2cL_1kJXJqpRW-rmqlr8Ohu4C0sgcy-hN-d9W1VUhjKeg>
 <xmx:cbL2YKPpN9Wcy08sz4MBa7AaCWWb3zmJhAAgCqp8QbH-HXiKzgwQoQ>
 <xmx:c7L2YMdU15SQWjNRpcisKY_XdHBvUvomWYSfU63yRueLVhW5-Rm_ww>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 07:24:33 -0400 (EDT)
Date: Tue, 20 Jul 2021 14:24:29 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YPaybQZE8l6mRE2l@shredder>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Marek Behun <kabel@blackhole.sk>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 00/15] Allow forwarding for the
 software bridge data path to be offloaded to capable devices
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

On Mon, Jul 19, 2021 at 12:44:19AM +0300, Vladimir Oltean wrote:
>  drivers/net/dsa/mv88e6xxx/chip.c              |  78 +++-
>  .../ethernet/freescale/dpaa2/dpaa2-switch.c   |  69 +++-
>  .../ethernet/marvell/prestera/prestera_main.c |  99 +++--
>  .../marvell/prestera/prestera_switchdev.c     |  42 ++-
>  .../marvell/prestera/prestera_switchdev.h     |   7 +-
>  .../net/ethernet/mellanox/mlxsw/spectrum.c    | 347 ++++++++++++------
>  .../net/ethernet/mellanox/mlxsw/spectrum.h    |   4 +
>  .../mellanox/mlxsw/spectrum_switchdev.c       |  28 +-
>  .../microchip/sparx5/sparx5_switchdev.c       |  48 ++-
>  drivers/net/ethernet/mscc/ocelot_net.c        | 115 ++++--
>  drivers/net/ethernet/rocker/rocker.h          |   9 +-
>  drivers/net/ethernet/rocker/rocker_main.c     |  34 +-
>  drivers/net/ethernet/rocker/rocker_ofdpa.c    |  42 ++-
>  drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  34 +-
>  drivers/net/ethernet/ti/am65-cpsw-switchdev.c |  14 +-
>  drivers/net/ethernet/ti/am65-cpsw-switchdev.h |   3 +
>  drivers/net/ethernet/ti/cpsw_new.c            |  32 +-
>  drivers/net/ethernet/ti/cpsw_switchdev.c      |   4 +-
>  drivers/net/ethernet/ti/cpsw_switchdev.h      |   3 +
>  include/linux/if_bridge.h                     |  63 ++--
>  include/net/dsa.h                             |  21 ++
>  net/bridge/br_fdb.c                           |   1 -
>  net/bridge/br_forward.c                       |   9 +
>  net/bridge/br_if.c                            |  11 +-
>  net/bridge/br_mdb.c                           |   1 -
>  net/bridge/br_private.h                       |  84 ++++-
>  net/bridge/br_switchdev.c                     | 287 +++++++++++++--
>  net/bridge/br_vlan.c                          |  11 +-
>  net/dsa/dsa2.c                                |   4 +
>  net/dsa/dsa_priv.h                            |   6 +
>  net/dsa/port.c                                | 192 +++++++---
>  net/dsa/tag_dsa.c                             |  52 ++-
>  32 files changed, 1406 insertions(+), 348 deletions(-)

Too many things are squashed into this one patchset. It needs to be
split. According to the title, the patchset is focused on improving
performance, but there are no performance numbers that I could see and
most of the patches deal with the replay stuff instead.

The TX forwarding offload in mv88e6xxx is not related to the replay
stuff and should be added in a separate patchset. This can be done by
first adding the switchdev_bridge_port_offload() /
switchdev_bridge_port_unoffload() APIs that only take care of setting /
unsetting the hardware domain for the bridge port. Then, in a different
patchset, these APIs can be augmented with a parameter for the replay
stuff. It should be easier to review that way and require less
unnecessary surgeries in drivers that do not require the added
functionality.

Thanks

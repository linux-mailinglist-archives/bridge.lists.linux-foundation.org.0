Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB5C316360
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 11:13:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1814487252;
	Wed, 10 Feb 2021 10:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vgDMazf9lNgI; Wed, 10 Feb 2021 10:13:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85FBA8728B;
	Wed, 10 Feb 2021 10:13:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6897BC1DA9;
	Wed, 10 Feb 2021 10:13:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2734C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D571858B3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDan74-FBmCc for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 10:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1C5F857CB
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:13:03 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D48B858011C;
 Wed, 10 Feb 2021 05:13:02 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 10 Feb 2021 05:13:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wXYUm5
 sqPqEmEMkn7WH/JtpvQmsaYI2cjrart5PSwqI=; b=AMefiAdY+GroMjfPiYxXzS
 TAUtIPzaM5CiXWePeYtd0vK2JCl9YVzCJ3h0t1XndvC1GOHB0CWjjNgMla7aD0J2
 v+Qx0nVTDlZEjOAGzFLSimljOht1MGVGC1UEGM6mIoG8ya+gj1jreMeZGu9xjOOn
 oP71xyDwP6N/Kpt20CPl+pMOWdk4N3phhDZebdC5zLWQoxZzaeIISboAXCDPVD3F
 wBH4x0UNNtL5ftSWE55HIMkeaPSgOOGPK0riRgW0VY6bfm35sN5cc8pHGGDbPgRk
 BFsjIevyaLl9Yzy6zxIAc8Lg2x/JP6kaKVwlCgc/AvkeXQBfAcf2yZscFXmPA3jw
 ==
X-ME-Sender: <xms:rbEjYPi-HYjd3iUoj71UkfibwsySmfsYLEqcvsvYOh8aJVP5VeS_tg>
 <xme:rbEjYMA70xJij1GeZMeiBctctBBVbKEOjOkMSeixDZNFYzNI6Oe91H6fV17cNCO8_
 11bLctvMroLtPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheejgdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeekgedrvddvledrudehfedrgeegnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:rbEjYPFI_1edpq2dCFbuv25QE_iAp0XHJjDGZUReg8hkdWwObi4M-w>
 <xmx:rbEjYMQASlSBXTlYP4Tg5F86T3k6b5h_23IfO4kjNj0PajVuv_qTTA>
 <xmx:rbEjYMwvJkme3sjKkQQ9Ez-Xu4OndwgXc1naMMBO1cPHTH0GkGvstw>
 <xmx:rrEjYAlgG2lEGgN2To2OCc9DP_n3ismsVIiI1ZEOIUwwzWmgyr9aRQ>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id B6CFC1080059;
 Wed, 10 Feb 2021 05:13:00 -0500 (EST)
Date: Wed, 10 Feb 2021 12:12:57 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210210101257.GA287766@shredder.lan>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-8-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210091445.741269-8-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 net-next 07/11] net: prep switchdev drivers
 for concurrent SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
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

On Wed, Feb 10, 2021 at 11:14:41AM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> Because the bridge will start offloading SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
> while not serialized by any lock such as the br->lock spinlock, existing
> drivers that treat that attribute and cache the brport flags might no
> longer work correctly.

Can you explain the race? This notification is sent from sysfs/netlink
call path, both of which take rtnl.

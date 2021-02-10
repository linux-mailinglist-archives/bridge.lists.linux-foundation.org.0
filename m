Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 578CF31748F
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 00:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF7F56F6F3
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 23:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tavn3lc8c4h6 for <lists.bridge@lfdr.de>;
	Wed, 10 Feb 2021 23:41:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id F35F36F620; Wed, 10 Feb 2021 23:41:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A8E6F4CD;
	Wed, 10 Feb 2021 23:40:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91C23C013A;
	Wed, 10 Feb 2021 23:40:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B10D5C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CAA96F486
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKCYMACCT2ml for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 23:40:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id ECE8B6F511; Wed, 10 Feb 2021 23:40:56 +0000 (UTC)
X-Greylist: delayed 00:06:46 by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 071EF6F486
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:40:54 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 7D8694D25BDAF;
 Wed, 10 Feb 2021 15:34:07 -0800 (PST)
Date: Wed, 10 Feb 2021 15:34:06 -0800 (PST)
Message-Id: <20210210.153406.1774734837784815987.davem@davemloft.net>
To: olteanv@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20210210091445.741269-8-olteanv@gmail.com>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-8-olteanv@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Wed, 10 Feb 2021 15:34:08 -0800 (PST)
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, vkochan@marvell.com,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 ioana.ciornei@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, tchornyi@marvell.com, idosch@idosch.org,
 claudiu.manoil@nxp.com, grygorii.strashko@ti.com, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, linux-omap@vger.kernel.org,
 vivien.didelot@gmail.com
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

From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 10 Feb 2021 11:14:41 +0200

> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> Because the bridge will start offloading SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
> while not serialized by any lock such as the br->lock spinlock, existing
> drivers that treat that attribute and cache the brport flags might no
> longer work correctly.
> 
> The issue is that the brport flags are a single unsigned long bitmask,
> and the bridge only guarantees the validity of the changed bits, not the
> full state. So when offloading two concurrent switchdev attributes, such
> as one for BR_LEARNING and another for BR_FLOOD, it might happen that
> the flags having BR_FLOOD are written into the cached value, and this in
> turn disables the BR_LEARNING bit which was set previously.
> 
> We can fix this across the board by keeping individual boolean variables
> for each brport flag. Note that mlxsw and prestera were setting the
> BR_LEARNING_SYNC flag too, but that appears to be just dead code, so I
> removed it.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>


This needs updating because, as discussed, there is no race.

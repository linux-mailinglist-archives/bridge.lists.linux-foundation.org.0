Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 969222DC347
	for <lists.bridge@lfdr.de>; Wed, 16 Dec 2020 16:40:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E89FA861A1;
	Wed, 16 Dec 2020 15:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKi-lyKNGvh0; Wed, 16 Dec 2020 15:40:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B9DE861A3;
	Wed, 16 Dec 2020 15:40:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38EE9C013B;
	Wed, 16 Dec 2020 15:40:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7972EC013B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Dec 2020 15:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 67C27868AB
 for <bridge@lists.linux-foundation.org>; Wed, 16 Dec 2020 15:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9R6hhNeHzeR for <bridge@lists.linux-foundation.org>;
 Wed, 16 Dec 2020 15:39:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB522868A3
 for <bridge@lists.linux-foundation.org>; Wed, 16 Dec 2020 15:39:59 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kpYuA-00CJEL-6Y; Wed, 16 Dec 2020 16:39:54 +0100
Date: Wed, 16 Dec 2020 16:39:54 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201216153954.GD2901580@lunn.ch>
References: <20201213140710.1198050-1-vladimir.oltean@nxp.com>
 <20201213140710.1198050-6-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201213140710.1198050-6-vladimir.oltean@nxp.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Alexandra Winter <wintera@linux.ibm.com>, Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <marek.behun@nic.cz>,
 Vivien Didelot <vivien.didelot@gmail.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v3 net-next 5/7] net: dsa: exit early in
 dsa_slave_switchdev_event if we can't program the FDB
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

On Sun, Dec 13, 2020 at 04:07:08PM +0200, Vladimir Oltean wrote:
> Right now, the following would happen for a switch driver that does not
> implement .port_fdb_add or .port_fdb_del.
> 
> dsa_slave_switchdev_event returns NOTIFY_OK and schedules:
> -> dsa_slave_switchdev_event_work
>    -> dsa_port_fdb_add
>       -> dsa_port_notify(DSA_NOTIFIER_FDB_ADD)
>          -> dsa_switch_fdb_add
>             -> if (!ds->ops->port_fdb_add) return -EOPNOTSUPP;
>    -> an error is printed with dev_dbg, and
>       dsa_fdb_offload_notify(switchdev_work) is not called.
> 
> We can avoid scheduling the worker for nothing and say NOTIFY_DONE.
> Because we don't call dsa_fdb_offload_notify, the static FDB entry will
> remain just in the software bridge.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

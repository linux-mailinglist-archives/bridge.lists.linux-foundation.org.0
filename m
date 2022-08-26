Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4171C5A27C2
	for <lists.bridge@lfdr.de>; Fri, 26 Aug 2022 14:25:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80EDD40D93;
	Fri, 26 Aug 2022 12:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80EDD40D93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lo_bNy4A-RPj; Fri, 26 Aug 2022 12:25:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D0C1440FCA;
	Fri, 26 Aug 2022 12:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0C1440FCA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 782B3C0078;
	Fri, 26 Aug 2022 12:25:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8F40C002D
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94EA6419ED
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94EA6419ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gziFP_UVA6SA for <bridge@lists.linux-foundation.org>;
 Fri, 26 Aug 2022 12:25:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5018A4192E
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5018A4192E
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:25:23 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 9CEDD188A411;
 Fri, 26 Aug 2022 12:25:21 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 7296725032BA;
 Fri, 26 Aug 2022 12:25:21 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 50A509EC00AD; Fri, 26 Aug 2022 11:45:51 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from wse-c0127.beijerelectronics.com (unknown [208.127.141.28])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 3836A9EC0008;
 Fri, 26 Aug 2022 11:45:49 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 26 Aug 2022 13:45:32 +0200
Message-Id: <20220826114538.705433-1-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Hans Schultz <netdev@kapio-technology.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 0/6] Extend locked port feature with
	FDB locked flag (MAC-Auth/MAB)
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

This patch set extends the locked port feature for devices
that are behind a locked port, but do not have the ability to
authorize themselves as a supplicant using IEEE 802.1X.
Such devices can be printers, meters or anything related to
fixed installations. Instead of 802.1X authorization, devices
can get access based on their MAC addresses being whitelisted.

For an authorization daemon to detect that a device is trying
to get access through a locked port, the bridge will add the
MAC address of the device to the FDB with a locked flag to it.
Thus the authorization daemon can catch the FDB add event and
check if the MAC address is in the whitelist and if so replace
the FDB entry without the locked flag enabled, and thus open
the port for the device.

This feature is known as MAC-Auth or MAC Authentication Bypass
(MAB) in Cisco terminology, where the full MAB concept involves
additional Cisco infrastructure for authorization. There is no
real authentication process, as the MAC address of the device
is the only input the authorization daemon, in the general
case, has to base the decision if to unlock the port or not.

With this patch set, an implementation of the offloaded case is
supplied for the mv88e6xxx driver. When a packet ingresses on
a locked port, an ATU miss violation event will occur. When
handling such ATU miss violation interrupts, the MAC address of
the device is added to the FDB with a zero destination port
vector (DPV) and the MAC address is communicated through the
switchdev layer to the bridge, so that a FDB entry with the
locked flag enabled can be added.

Log:
        v3:     Added timers and lists in the driver (mv88e6xxx)
                to keep track of and remove locked entries.

        v4:     Leave out enforcing a limit to the number of
                locked entries in the bridge.
                Removed the timers in the driver and use the
                worker only. Add locked FDB flag to all drivers
                using port_fdb_add() from the dsa api and let
                all drivers ignore entries with this flag set.
                Change how to get the ageing timeout of locked
                entries. See global1_atu.c and switchdev.c.
                Use struct mv88e6xxx_port for locked entries
                variables instead of struct dsa_port.

	v5:	Added 'mab' flag to enable MAB/MacAuth feature,
		in a similar way to the locked feature flag.

		In these implementations for the mv88e6xxx, the
		switchport must be configured with learning on.

		To tell userspace about the behavior of the
		locked entries in the driver, a 'blackhole'
		FDB flag has been added, which locked FDB
		entries coming from the driver gets. Also the
		'sticky' flag comes with those locked entries,
		as the drivers locked entries cannot roam.

		Fixed issues with taking mutex locks, and added
		a function to read the fid, that supports all
		versions of the chipset family.
		

Hans Schultz (6):
  net: bridge: add locked entry fdb flag to extend locked port feature
  net: switchdev: add support for offloading of fdb locked flag
  drivers: net: dsa: add locked fdb entry flag to drivers
  net: dsa: mv88e6xxx: allow reading FID when handling ATU violations
  net: dsa: mv88e6xxx: MacAuth/MAB implementation
  selftests: forwarding: add test of MAC-Auth Bypass to locked port
    tests

 drivers/net/dsa/b53/b53_common.c              |   5 +
 drivers/net/dsa/b53/b53_priv.h                |   1 +
 drivers/net/dsa/hirschmann/hellcreek.c        |   5 +
 drivers/net/dsa/lan9303-core.c                |   5 +
 drivers/net/dsa/lantiq_gswip.c                |   5 +
 drivers/net/dsa/microchip/ksz_common.c        |   5 +
 drivers/net/dsa/mt7530.c                      |   5 +
 drivers/net/dsa/mv88e6xxx/Makefile            |   1 +
 drivers/net/dsa/mv88e6xxx/chip.c              |  81 ++++-
 drivers/net/dsa/mv88e6xxx/chip.h              |  19 ++
 drivers/net/dsa/mv88e6xxx/global1.h           |   1 +
 drivers/net/dsa/mv88e6xxx/global1_atu.c       |  76 ++++-
 drivers/net/dsa/mv88e6xxx/port.c              |  15 +-
 drivers/net/dsa/mv88e6xxx/port.h              |   6 +
 drivers/net/dsa/mv88e6xxx/switchdev.c         | 285 ++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/switchdev.h         |  37 +++
 drivers/net/dsa/ocelot/felix.c                |   5 +
 drivers/net/dsa/qca/qca8k-common.c            |   5 +
 drivers/net/dsa/qca/qca8k.h                   |   1 +
 drivers/net/dsa/sja1105/sja1105_main.c        |   7 +-
 include/linux/if_bridge.h                     |   1 +
 include/net/dsa.h                             |   1 +
 include/net/switchdev.h                       |   3 +
 include/uapi/linux/if_link.h                  |   1 +
 include/uapi/linux/neighbour.h                |   4 +-
 net/bridge/br.c                               |   5 +-
 net/bridge/br_fdb.c                           |  43 ++-
 net/bridge/br_input.c                         |  16 +-
 net/bridge/br_netlink.c                       |   9 +-
 net/bridge/br_private.h                       |   7 +-
 net/bridge/br_switchdev.c                     |   5 +-
 net/dsa/dsa_priv.h                            |   4 +-
 net/dsa/port.c                                |   7 +-
 net/dsa/slave.c                               |   4 +-
 net/dsa/switch.c                              |  10 +-
 .../net/forwarding/bridge_locked_port.sh      | 107 ++++++-
 .../net/forwarding/bridge_sticky_fdb.sh       |  21 +-
 37 files changed, 768 insertions(+), 50 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/switchdev.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/switchdev.h

-- 
2.30.2


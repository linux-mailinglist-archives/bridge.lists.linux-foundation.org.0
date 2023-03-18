Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C86A6BFAB5
	for <lists.bridge@lfdr.de>; Sat, 18 Mar 2023 15:12:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6866460B04;
	Sat, 18 Mar 2023 14:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6866460B04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMz9fm9KUS7d; Sat, 18 Mar 2023 14:12:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CA09460899;
	Sat, 18 Mar 2023 14:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA09460899
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2568EC0035;
	Sat, 18 Mar 2023 14:12:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59936C0032
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A5A960899
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A5A960899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0eCFEj629XI for <bridge@lists.linux-foundation.org>;
 Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D5E760A6F
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D5E760A6F
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id B7F2918838A8;
 Sat, 18 Mar 2023 14:12:42 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 9E47E25002BC;
 Sat, 18 Mar 2023 14:12:42 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 929E49B403E4; Sat, 18 Mar 2023 14:12:42 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id D42DE91201E3;
 Sat, 18 Mar 2023 14:12:41 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Sat, 18 Mar 2023 15:10:04 +0100
Message-Id: <20230318141010.513424-1-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Hans J. Schultz" <netdev@kapio-technology.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 0/6] ATU and FDB synchronization on
	locked ports
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

This patch set makes it possible to have synchronized dynamic ATU and FDB
entries on locked ports. As locked ports are not able to automatically
learn, they depend on userspace added entries, where userspace can add
static or dynamic entries. The lifetime of static entries are completely
dependent on userspace intervention, and thus not of interest here. We
are only concerned with dynamic entries, which can be added with a
command like:

bridge fdb replace ADDR dev <DEV> master dynamic

We choose only to support this feature on locked ports, as it involves
utilizing the CPU to handle ATU related switchcore events (typically
interrupts) and thus can result in significant performance loss if
exposed to heavy traffic.

On locked ports it is important for userspace to know when an authorized
station has become silent, hence not breaking the communication of a
station that has been authorized based on the MAC-Authentication Bypass
(MAB) scheme. Thus if the station keeps being active after authorization,
it will continue to have an open port as long as it is active. Only after
a silent period will it have to be reauthorized. As the ageing process in
the ATU is dependent on incoming traffic to the switchcore port, it is
necessary for the ATU to signal that an entry has aged out, so that the
FDB can be updated at the correct time.

This patch set includes a solution for the Marvell mv88e6xxx driver, where
for this driver we use the Hold-At-One feature so that an age-out
violation interrupt occurs when a station has been silent for the
system-set age time. The age out violation interrupt allows the switchcore
driver to remove both the ATU and the FDB entry at the same time.

It is up to the maintainers of other switchcore drivers to implement the
feature for their specific driver.

LOG:
	V2:	Ensure the port is locked when using the feature as we
		must ensure that learning is enabled at all times for
		the interrupts to occur. This was missed in the previous
		version.

		Instead of ignoring unsupported flags, ensure that
		drivers are only called when supporting the feature.
		As 'dynamic' flag is legacy, all drivers support it at
		least by their previous handling.

Hans J. Schultz (6):
  net: bridge: add dynamic flag to switchdev notifier
  net: dsa: propagate flags down towards drivers
  drivers: net: dsa: add fdb entry flags incoming to switchcore drivers
  net: bridge: ensure FDB offloaded flag is handled as needed
  net: dsa: mv88e6xxx: implementation of dynamic ATU entries
  selftests: forwarding: add dynamic FDB test

 drivers/net/dsa/b53/b53_common.c              |  4 +-
 drivers/net/dsa/b53/b53_priv.h                |  4 +-
 drivers/net/dsa/hirschmann/hellcreek.c        |  4 +-
 drivers/net/dsa/lan9303-core.c                |  4 +-
 drivers/net/dsa/lantiq_gswip.c                |  4 +-
 drivers/net/dsa/microchip/ksz_common.c        |  6 +-
 drivers/net/dsa/mt7530.c                      |  4 +-
 drivers/net/dsa/mv88e6xxx/chip.c              | 20 ++++--
 drivers/net/dsa/mv88e6xxx/chip.h              |  9 ++-
 drivers/net/dsa/mv88e6xxx/global1_atu.c       | 21 +++++++
 drivers/net/dsa/mv88e6xxx/port.c              |  6 +-
 drivers/net/dsa/mv88e6xxx/switchdev.c         | 61 +++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/switchdev.h         |  5 ++
 drivers/net/dsa/mv88e6xxx/trace.h             |  5 ++
 drivers/net/dsa/ocelot/felix.c                |  4 +-
 drivers/net/dsa/qca/qca8k-common.c            |  4 +-
 drivers/net/dsa/qca/qca8k.h                   |  4 +-
 drivers/net/dsa/rzn1_a5psw.c                  |  4 +-
 drivers/net/dsa/sja1105/sja1105_main.c        | 11 ++--
 include/net/dsa.h                             |  9 ++-
 include/net/switchdev.h                       |  1 +
 net/bridge/br_fdb.c                           |  5 +-
 net/bridge/br_switchdev.c                     |  1 +
 net/dsa/dsa.c                                 |  6 ++
 net/dsa/port.c                                | 28 +++++----
 net/dsa/port.h                                |  8 +--
 net/dsa/slave.c                               | 20 ++++--
 net/dsa/switch.c                              | 26 +++++---
 net/dsa/switch.h                              |  1 +
 .../net/forwarding/bridge_locked_port.sh      | 36 +++++++++++
 30 files changed, 258 insertions(+), 67 deletions(-)

-- 
2.34.1


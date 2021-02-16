Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6539131D23F
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 22:43:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B215C6F617
	for <lists.bridge@lfdr.de>; Tue, 16 Feb 2021 21:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTWpBEF58cEb for <lists.bridge@lfdr.de>;
	Tue, 16 Feb 2021 21:43:22 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 62D346F60F; Tue, 16 Feb 2021 21:43:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id D923D6F488;
	Tue, 16 Feb 2021 21:43:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD07FC1DA9;
	Tue, 16 Feb 2021 21:43:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C4684C013A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AED6887165
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43zYFjGx6Dx6 for <bridge@lists.linux-foundation.org>;
 Tue, 16 Feb 2021 21:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3D6186F8E
 for <bridge@lists.linux-foundation.org>; Tue, 16 Feb 2021 21:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613511791; x=1645047791;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=70pTgPudqkcV6r9RtS3PrcUAeOt0oFNkyIhOREHyv0A=;
 b=wiwE4OxAE+k0FLdsPJwwsWssZrU9pBru1Cflmv+z3ZtYS4pgy60wpBFO
 2DtXQCXWl0D+CzrrFjhMsxYxTn7xpwg6ts1DwNACCiU+TcMcORoGVFrcR
 AJz0tZz8TSvrlslGcEFLJ/7UcpnV8bJ626CHhXSCnr/qcFI4U4WrlsibW
 1KhZTMMQTJtJ7NNlhgD6mnE+96XisG5TYyRiFxZOlnXr3YvUY5g0xgbrR
 BiUlJFKSUMqqskuFyxNbzL0ngyefaW9s0ZXIi4TiysSRsBa2D+lWdLQLS
 faTv7YUXCorj/7GbcOctqbAEn/zhbq/hCYYvIUdsneEl9SY46T62HNPyt A==;
IronPort-SDR: 7NuJzLrqylyvYIcRPLEixoDxGt5s+bSguWUioaqKmiFz4PRjuZssg/kfphbCVZQ/1zOejNuA0c
 r73148osYRqkoeKe0KOfukNKaNMmvG0fkD5tAaryrvjvnOFXcltqUTLjm6sZV83UhMLMyKOfkh
 FuXJL71aqkkHW8Kvh+I/s1MSTuD1RaDY/O25KErr0GYnGYd8OIqC7cqlkxj+vvkJCKzx3A/JHq
 KIvVahZxynPiQDN1lQVPl1hX+D1OCx/mD7rc8WQEPZ1YxpO4/oSQUICAKCf9XJqWyFNpCVH5Jx
 1Rs=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="44324912"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Feb 2021 14:43:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Feb 2021 14:42:59 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Feb 2021 14:42:56 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 16 Feb 2021 22:41:57 +0100
Message-ID: <20210216214205.32385-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 f.fainelli@gmail.com, jiri@resnulli.us, rasmus.villemoes@prevas.dk,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 claudiu.manoil@nxp.com, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH net-next v4 0/8] bridge: mrp: Extend
	br_mrp_switchdev_*
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This patch series extends MRP switchdev to allow the SW to have a better
understanding if the HW can implement the MRP functionality or it needs
to help the HW to run it. There are 3 cases:
- when HW can't implement at all the functionality.
- when HW can implement a part of the functionality but needs the SW
  implement the rest. For example if it can't detect when it stops
  receiving MRP Test frames but it can copy the MRP frames to CPU to
  allow the SW to determine this.  Another example is generating the MRP
  Test frames. If HW can't do that then the SW is used as backup.
- when HW can implement completely the functionality.

So, initially the SW tries to offload the entire functionality in HW, if
that fails it tries offload parts of the functionality in HW and use the
SW as helper and if also this fails then MRP can't run on this HW.

Based on these new calls, implement the switchdev for Ocelot driver. This
is an example where the HW can't run completely the functionality but it
can help the SW to run it, by trapping all MRP frames to CPU.

Also this patch series adds MRP support to DSA and implements the Felix
driver which just reuse the Ocelot functions. This part was just compiled
tested because I don't have any HW on which to do the actual tests.

v4:
 - remove ifdef MRP from include/net/switchdev.h
 - move MRP implementation for Ocelot in a different file such that
   Felix driver can use it.
 - extend DSA with MRP support
 - implement MRP support for Felix.
v3:
 - implement the switchdev calls needed by Ocelot driver.
v2:
 - fix typos in comments and in commit messages
 - remove some of the comments
 - move repeated code in helper function
 - fix issue when deleting a node when sw_backup was true

Horatiu Vultur (8):
  switchdev: mrp: Remove CONFIG_BRIDGE_MRP
  switchdev: mrp: Extend ring_role_mrp and in_role_mrp
  bridge: mrp: Add 'enum br_mrp_hw_support'
  bridge: mrp: Extend br_mrp_switchdev to detect better the errors
  bridge: mrp: Update br_mrp to use new return values of
    br_mrp_switchdev
  net: mscc: ocelot: Add support for MRP
  net: dsa: add MRP support
  net: dsa: felix: Add support for MRP

 drivers/net/dsa/ocelot/felix.c         |  38 ++++++
 drivers/net/ethernet/mscc/Makefile     |   1 +
 drivers/net/ethernet/mscc/ocelot.c     |  10 +-
 drivers/net/ethernet/mscc/ocelot_mrp.c | 175 +++++++++++++++++++++++++
 drivers/net/ethernet/mscc/ocelot_net.c |  60 +++++++++
 include/linux/dsa/ocelot.h             |   5 +
 include/net/dsa.h                      |  12 ++
 include/net/switchdev.h                |  12 +-
 include/soc/mscc/ocelot.h              |  45 +++++++
 net/bridge/br_mrp.c                    |  43 +++---
 net/bridge/br_mrp_switchdev.c          | 171 ++++++++++++++----------
 net/bridge/br_private_mrp.h            |  38 ++++--
 net/dsa/dsa_priv.h                     |  26 ++++
 net/dsa/port.c                         |  48 +++++++
 net/dsa/slave.c                        |  22 ++++
 net/dsa/switch.c                       | 105 +++++++++++++++
 net/dsa/tag_ocelot.c                   |   8 ++
 17 files changed, 715 insertions(+), 104 deletions(-)
 create mode 100644 drivers/net/ethernet/mscc/ocelot_mrp.c

-- 
2.27.0


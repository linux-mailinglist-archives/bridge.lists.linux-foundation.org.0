Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB064215477
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 11:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A79AF2381E;
	Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nX3BI9dXLTps; Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 40FD420021;
	Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17D64C016F;
	Mon,  6 Jul 2020 09:20:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53691C016F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 335E422812
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id puP1oJGmXgiN for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 09:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id A41DB20021
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 09:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594027240; x=1625563240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=geAAVdtwO9Bz84BCA+quZKFfwpYizDUN5bzgDqOE4NM=;
 b=1AKPGoBlxBDES05s/4m52Msn700vKW+JNLzm3nIPpGIeNp+bBa/wpqlS
 msdeI5rUgSRK37X9w7LpZ9NuQd70Ub/oKUhq7FZFbTotZXeofyRgp1G27
 T6L8xZwdjXbKgdSAMDo2Z5boU5ohyEHRk2kUFppA7iz6R0FBjDtUGqY16
 oxu4CRskNUgc43eGgvL7vB9gOY7EZgwgvr8yerzfncNIKH1YPe04ouU2P
 26OL8j5HxZvskqh2M3iyonZJEsbxsnUHWDMgT+682ij78uoEPE/SJxIVz
 i7HBhbdgHVubwo+GZ/G0MdQ9ARE1Ha5Qo7Kenk2F7opGqAG3MjqnrkVxO g==;
IronPort-SDR: a4wiyh8ZLodXlPZofkiDLjAxKkw4XNbH6tGjpYtQgZWkvtn6952TmkjZRVIBBqFoIuVIcZuVHg
 CkOtL99zqsZ/0BnvjPHamwLaK8mzoGDNz6EDOdcDCvvS5+9v45JiGnDkVJQewMm2bNU2OhWwCS
 xatBqm1DNK71T9MQ2DFNWkPYrPyVNSIvVH4TYiD8fF00Cfk3+hIRP1riDgLPGkBzV3LEIDYz3L
 F/ASHhMyT4fWJha0VSo4+TLguYPrSdDnGdVUM3HYPs9Phw6xdctj1psdaLhU0FvbcI8kVFFlGU
 bw0=
X-IronPort-AV: E=Sophos;i="5.75,318,1589266800"; d="scan'208";a="18108960"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jul 2020 02:20:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 6 Jul 2020 02:20:39 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 6 Jul 2020 02:20:12 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Mon, 6 Jul 2020 11:18:30 +0200
Message-ID: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next 00/12] bridge: mrp: Add support for
	interconnect ring
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

This patch series extends existing MRP to add support for interconnect ring.  An
interconnect ring is a ring that connects 2 rings. In this way is possible to
connect multiple rings. Each interconnect ring is form of 4 nodes, in which 3
have the role MIC(Media Redundancy Interconnect Client) and one has the role
MIM(Media Redundancy Interconnect Manager). All these nodes need to have the
same ID and the ID needs to be unique between multiple interconnect rings. And 2
nodes needs to be part of one ring and the other 2 nodes needs to be part of the
other ring that is connected.

                 +---------+
                 |         |
      +----------|   MRM   |---------------+
      |          |         |               |
      |          +---------+               |
      |                                    |
      |                                    |
      |                                    |
+--------------+                  +-----------------+
|              |                  |                 |
|  MRC/MIC     |------------------|    MRC/MIM      |
|              |                  |                 |
+--------------+                  +-----------------+
      |                                     |
      |Interconnect port                    |Interconnect port
      |                                     |
      |                                     |
+--------------+                  +-----------------+
|              |                  |                 |
|  MRC/MIC     |----------------- |   MRC/MIC       |
|              |                  |                 |
+--------------+                  +-----------------+
      |                                     |
      |                                     |
      |          +---------+                |
      |          |         |                |
      +----------|  MRM    |----------------+
                 |         |
                 +---------+

Each node in a ring needs to have one of the following ring roles, MRM or MRC.
And it can also have an interconnect role like MIM or MIC if it is part of an
interconnect ring. In the figure above the MRM doesn't have any interconnect
role but the MRC from the top ring have the interconnect roles MIC respectively
MIM. Therefore it is not possible for a node to have only an interconnect role.

There are 2 ways for interconnect ring to detect when is open or closed:
1. To use CCM frames on the interconnect port to detect when the interconnect
   link goes down/up. This mode is called LC-mode.
2. To send InTest frames on all 3 ports(2 ring ports and 1 interconnect port)
   and detect when these frames are received back. This mode is called RC-mode.

This patch series adds support only for RC-mode. Where MIM sends InTest frames
on all 3 ports and detects when it receives back the InTest. When it receives
the InTest it means that the ring is closed so it would set the interconnect
port in blocking state. If it stops receiving the InTest frames then it would
set the port in forwarding state and it would send InTopo frames. These InTopo
frames will be received by MRM nodes and process them. And then the MRM will
send Topo frames in the rings so each client will clear its FDB.

Horatiu Vultur (12):
  switchdev: mrp: Extend switchdev API for MRP Interconnect
  bridge: uapi: mrp: Extend MRP attributes for MRP interconnect
  bridge: mrp: Extend bridge interface
  bridge: mrp: Extend br_mrp for MRP interconnect
  bridge: mrp: Rename br_mrp_port_open to br_mrp_ring_port_open
  bridge: mrp: Add br_mrp_in_port_open function
  bridge: switchdev: mrp: Extend MRP API for switchdev for MRP
    Interconnect
  bridge: mrp: Implement the MRP Interconnect API
  bridge: mrp: Extend MRP netlink interface for configuring MRP
    interconnect
  bridge: uapi: mrp: Extend MRP_INFO attributes for interconnect status
  bridge: mrp: Extend br_mrp_fill_info
  net: bridge: Add port attribute IFLA_BRPORT_MRP_IN_OPEN

 include/linux/if_bridge.h          |   1 +
 include/net/switchdev.h            |  38 +++
 include/uapi/linux/if_bridge.h     |  58 ++++
 include/uapi/linux/if_link.h       |   1 +
 include/uapi/linux/mrp_bridge.h    |  38 +++
 net/bridge/br_mrp.c                | 531 +++++++++++++++++++++++++++--
 net/bridge/br_mrp_netlink.c        | 182 +++++++++-
 net/bridge/br_mrp_switchdev.c      |  62 ++++
 net/bridge/br_netlink.c            |   3 +
 net/bridge/br_private_mrp.h        |  27 +-
 tools/include/uapi/linux/if_link.h |   1 +
 11 files changed, 906 insertions(+), 36 deletions(-)

-- 
2.27.0


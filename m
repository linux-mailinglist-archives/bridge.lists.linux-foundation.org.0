Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ACF21C9B3
	for <lists.bridge@lfdr.de>; Sun, 12 Jul 2020 16:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46890875EA;
	Sun, 12 Jul 2020 14:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_jL-Xhd_uqN; Sun, 12 Jul 2020 14:09:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1509B87215;
	Sun, 12 Jul 2020 14:09:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6F07C08A9;
	Sun, 12 Jul 2020 14:09:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BD80C0733
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 646FE893E7
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIHRJFNB3iUe for <bridge@lists.linux-foundation.org>;
 Sun, 12 Jul 2020 14:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6616893E4
 for <bridge@lists.linux-foundation.org>; Sun, 12 Jul 2020 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594562962; x=1626098962;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jKQWssojGNpf3v9/XhCwIGPfiBR7HMKOrKVBM5flxbg=;
 b=zoqZyODDoigjPbgtXLIKvBaqz7SWRIyZP863uujyw9BroiGFaa8f0JIt
 cIVN7jpimtDx66Ovgtc7mOU0Lsx+lWTB9lmUvzO7BnUtpb39ApSf3ihgh
 P/bUb7P8cieLr3usPWWne9AX9f/foPa/EzgT5jOQA/SNboxIDlTZZsHgr
 mX4uabvOmbn8Q+/R9f42SgzDcjtWU0ad5FdqKg3tygvVi1kcA/UGkaR2+
 Lo4elHqoqi7cCu9FFDg5AbdDrR3ZM2QFA/uh6rlss2CWYv4C6NYrcFeLU
 erHqov7STVtlQBM8wrD4gBCh5FtGejfN+L0Y+oNMtZYgTgOy4OkLZwqz8 A==;
IronPort-SDR: tAfUfXD1d1u+B3KLw9zGtuXdf7nybxPWdt/3dTx8MBl1iNZbr4h9Yg0Cc1C8psOu2vLtCJyyP8
 6ceOUr6Ki1PvANYgUrz1jwxojCWqiRbV/OpXlueJCNlUHC+jiPpHWbpzvAB8zX9O4fGUVX7uLC
 GzwUSGJAVmy+Wxp6AR6nDRPAJreWWWlOYNdOlproTh/RD+CPW7OVX5cTq6ryQv8EoOF9BnzEHv
 lx3MA3wFDHtqk/Rs8Ijrzzb3ZW6AdnUyWjsiUEvgiaj+getn2O8Em5vEIZAt4EJa5ywCd91r+p
 pq0=
X-IronPort-AV: E=Sophos;i="5.75,343,1589266800"; d="scan'208";a="81541610"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jul 2020 07:09:22 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 12 Jul 2020 07:08:52 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Sun, 12 Jul 2020 07:08:50 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Sun, 12 Jul 2020 16:05:44 +0200
Message-ID: <20200712140556.1758725-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 00/12] bridge: mrp: Add support for
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

v3:
  - update 'br_mrp_set_in_role' to stop sending test if the role is disabled
    and don't allow to set a different interconnect port if there is already
    one.

v2:
  - rearrange structures not to contain holes
  - stop sending MRP_InTest frames when the MRP instance is deleted


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
 include/net/switchdev.h            |  38 ++
 include/uapi/linux/if_bridge.h     |  58 +++
 include/uapi/linux/if_link.h       |   1 +
 include/uapi/linux/mrp_bridge.h    |  38 ++
 net/bridge/br_mrp.c                | 576 +++++++++++++++++++++++++++--
 net/bridge/br_mrp_netlink.c        | 182 ++++++++-
 net/bridge/br_mrp_switchdev.c      |  62 ++++
 net/bridge/br_netlink.c            |   3 +
 net/bridge/br_private_mrp.h        |  27 +-
 tools/include/uapi/linux/if_link.h |   1 +
 11 files changed, 951 insertions(+), 36 deletions(-)

-- 
2.27.0


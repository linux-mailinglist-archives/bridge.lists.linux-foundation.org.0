Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E2A135C42
	for <lists.bridge@lfdr.de>; Thu,  9 Jan 2020 16:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 422BF845D5;
	Thu,  9 Jan 2020 15:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8XDhRI8dwqF; Thu,  9 Jan 2020 15:09:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6D0F841AC;
	Thu,  9 Jan 2020 15:09:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BE894C0881;
	Thu,  9 Jan 2020 15:09:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67D53C0881
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FCE0214E9
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgTQjUL1aGEb for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jan 2020 15:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 06C5820133
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 15:09:22 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: nM/GDVUI9M/QJqpveaGTobj09Tc5FBpJ9fB6v/xLNkQ/vmVLUMI1+4tAoy0VyU/uUN7ul/0yj4
 MpK1MT0vIGAmlTGcVPaZXxcMXql78AJ+55Amn1bEqsZ/Uv7lMOgurZsBDzOEcFmuJfE5VCXVbM
 b8WOPLdywmOBDqFrRRup7fp79yMTpoXpuzmO+M/av2zvmTIhwtmbjyOteR+mzIkEGdB/O3NkdO
 RtOj0of/HXvFW9fGcX7GqQam4c81J3lhuFNfxA0+LzMFqcGNVoRmfw/X3uFltL1w2mIEzja7UJ
 oZ4=
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="61363790"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 08:09:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 08:09:18 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 9 Jan 2020 08:09:16 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Thu, 9 Jan 2020 16:06:37 +0100
Message-ID: <20200109150640.532-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Cc: andrew@lunn.ch, jakub.kicinski@netronome.com, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, jiri@mellanox.com, vivien.didelot@gmail.com,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, dsahern@gmail.com, olteanv@gmail.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support for
	Media Redundancy Protocol(MRP)
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

Media Redundancy Protocol is a data network protocol standardized by
International Electrotechnical Commission as IEC 62439-2. It allows rings of
Ethernet switches to overcome any single failure with recovery time faster than
STP. It is primarily used in Industrial Ethernet applications.

This is the first proposal of implementing a subset of the standard. It supports
only 2 roles of an MRP node. It supports only Media Redundancy Manager(MRM) and
Media Redundancy Client(MRC). In a MRP ring, each node needs to support MRP and
in a ring can be only one MRM and multiple MRC. It is possible to have multiple
instances of MRP on a single node. But a port can be part of only one MRP
instance.

The MRM is responsible for detecting when there is a loop in the ring. It is
sending the frame MRP_Test to detect the loops. It would send MRP_Test on both
ports in the ring and if the frame is received at the other end, then the ring
is closed. Meaning that there is a loop. In this case it sets the port state to
BLOCKED, not allowing traffic to pass through except MRP frames. In case it
stops receiving MRP_Test frames from itself then the MRM will detect that the
ring is open, therefor it would notify the other nodes of this change and will
set the state of the port to be FORWARDING.

The MRC is responsible for forwarding MRP_Test frames between the ring ports
(and not to flood on other ports) and to listen when there is a change in the
network to clear the FDB.

Similar with STP, MRP is implemented on top of the bridge and they can't be
enable at the same time. While STP runs on all ports of the bridge, MRP needs to
run only on 2 ports.

The bridge needs to:
- notify when the link of one of the ports goes down or up, because MRP instance
  needs to react to link changes by sending MRP_LinkChange frames.
- notify when one of the ports are removed from the bridge or when the bridge
  is destroyed, because if the port is part of the MRP ring then MRP state
  machine should be stopped.
- add a handler to allow MRP instance to process MRP frames, if MRP is enabled.
  This is similar with STP design.
- add logic for MRP frames inside the bridge. The bridge will just detect MRP
  frames and it would forward them to the upper layer to allow to process it.
- update the logic to update non-MRP frames. If MRP is enabled, then look also
  at the state of the port to decide to forward or not.

To create a MRP instance on the bridge:
$ bridge mrp add dev br0 p_port eth0 s_port eth1 ring_role 2 ring_id 1

Where:
p_port, s_port: can be any port under the bridge
ring_role: can have the value 1(MRC - Media Redundancy Client) or
           2(MRM - Media Redundancy Manager). In a ring can be only one MRM.
ring_id: unique id for each MRP instance.

It is possible to create multiple instances. Each instance has to have it's own
ring_id and a port can't be part of multiple instances:
$ bridge mrp add dev br0 p_port eth2 s_port eth3 ring_role 1 ring_id 2

To see current MRP instances and their status:
$ bridge mrp show
dev br0 p_port eth2 s_port eth3 ring_role 1 ring_id 2 ring_state 3
dev br0 p_port eth0 s_port eth1 ring_role 2 ring_id 1 ring_state 4

If this patch series is well received, the in the future it could be extended
with the following:
- add support for Media Redundancy Automanager. This role allows a node to
  detect if needs to behave as a MRM or MRC. The advantage of this role is that
  the user doesn't need to configure the nodes each time they are added/removed
  from a ring and it adds redundancy to the manager.
- add support for Interconnect rings. This allow to connect multiple rings.
- add HW offloading. The standard defines 4 recovery times (500, 200, 30 and 10
  ms). To be able to achieve 30 and 10 it is required by the HW to generate the
  MRP_Test frames and detect when the ring is open/closed.

Horatiu Vultur (3):
  net: bridge: mrp: Add support for Media Redundancy Protocol
  net: bridge: mrp: Integrate MRP into the bridge
  net: bridge: mrp: Add netlink support to configure MRP

 include/uapi/linux/if_bridge.h |   27 +
 include/uapi/linux/if_ether.h  |    1 +
 include/uapi/linux/rtnetlink.h |    7 +
 net/bridge/Kconfig             |   12 +
 net/bridge/Makefile            |    2 +
 net/bridge/br.c                |   19 +
 net/bridge/br_device.c         |    3 +
 net/bridge/br_forward.c        |    1 +
 net/bridge/br_if.c             |   10 +
 net/bridge/br_input.c          |   22 +
 net/bridge/br_mrp.c            | 1517 ++++++++++++++++++++++++++++++++
 net/bridge/br_mrp_timer.c      |  227 +++++
 net/bridge/br_netlink.c        |    9 +
 net/bridge/br_private.h        |   30 +
 net/bridge/br_private_mrp.h    |  208 +++++
 security/selinux/nlmsgtab.c    |    5 +-
 16 files changed, 2099 insertions(+), 1 deletion(-)
 create mode 100644 net/bridge/br_mrp.c
 create mode 100644 net/bridge/br_mrp_timer.c
 create mode 100644 net/bridge/br_private_mrp.h

-- 
2.17.1


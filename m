Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 530B6148BC3
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 17:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AB9D228A0;
	Fri, 24 Jan 2020 16:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C8SFWkxHq4Ch; Fri, 24 Jan 2020 16:19:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9D262228A7;
	Fri, 24 Jan 2020 16:19:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74AE8C0174;
	Fri, 24 Jan 2020 16:19:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3BF70C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 29F3F22889
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWK9Ji+mhuUV for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 16:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 00AFF22859
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 16:19:29 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: l8CyMfs9VCFSVcsvvQzBglwOP4WuxccVIKygyaKACruS/fEFc6/ZHLzLuWRZcj3hOx+JQvqLM7
 FGTuaME6+iwR1EPmOlVkp76SZlCSVz44V8wi9u3fRuXGuHBdlORxGoCNtKx/ZTVbUzPybz10+f
 0vgzt4VyNZfIT/IhCT10ycWei3Su4l+odEsg0CzviTbKAayKNu9nKxkYEXxFTugIJgjGan9uyS
 9RKPtWYt9Or+NEfZ3WBshrw2X9u0dVbR8rAs+iQy/FYY1KMI2UPs8fvnHP9lfB6GynNx4JGwl3
 78w=
X-IronPort-AV: E=Sophos;i="5.70,358,1574146800"; 
   d="scan'208";a="19285"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 09:19:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 09:19:28 -0700
Received: from soft-dev3.microsemi.net (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Jan 2020 09:19:26 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <jiri@resnulli.us>,
 <ivecera@redhat.com>, <davem@davemloft.net>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <anirudh.venkataramanan@intel.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <jeffrey.t.kirsher@intel.com>,
 <UNGLinuxDriver@microchip.com>
Date: Fri, 24 Jan 2020 17:18:18 +0100
Message-ID: <20200124161828.12206-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v3 00/10] net: bridge: mrp: Add support for
	Media Redundancy Protocol (MRP)
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

Based on the previous RFC[1][2], the MRP state machine and all the
timers were moved to userspace. A generic netlink interface is added to
allow configuring the HW, and logic added to to implement the MRP
specific forwarding rules.

The userspace application that is using the new netlink can be found here[3].

The current implementation both in kernel and userspace supports only 2 roles:

  MRM - this one is responsible to send MRP_Test and MRP_Topo frames on both
  ring ports. It needs to process MRP_Test to know if the ring is open or
  closed. This operation is desired to be offloaded to the HW because it
  requires to generate and process up to 4000 frames per second. Whenever it
  detects that the ring open it sends MRP_Topo frames to notify all MRC about
  changes in the topology. MRM needs also to process MRP_LinkChange frames,
  these frames are generated by the MRC. When the ring is open the the state
  of both ports is to forward frames and when the ring is closed then the
  secondary port is blocked.

  MRC - this one is responsible to forward MRP frames between the ring ports.
  In case one of the ring ports gets a link down or up, then MRC will generate
  a MRP_LinkChange frames. This node should also process MRP_Topo frames and to
  clear its FDB when it receives this frame.

 Userspace
               Deamon +----------+ Client
                +
                |
 +--------------|-----------------------------------------+
  Kernel        |
                + Netlink

                |                              + Interrupt
                |                              |
 +--------------|------------------------------|----------+
  HW            | Switchdev                    |
                +                              |

The user interacts using the client (called 'mrp'), the client talks to the
deamon (called 'mrp_server'), which talks with the kernel using netlink. The
kernel will try to offload the requests to the HW via switchdev API. For this a
new generic netlink interface was added to the bridge.

If the kernel cannot offload MRP to HW (maybe it does not have a switchdev
driver, or it is just not supported), then all the netlink calls will return
-EOPNOTSUPP. In this case the user-space deamon fallback to SW only
implementation.

There are required changes to the SW bridge to be able to run the MRP. First the
bridge needs to initialize the netlink interface. And second it needs to know if
a MRP frame was received on a MRP ring port. In case it was received the SW
bridge should not forward the frame it needs to redirected to upper layes. In
case it was not received on a ring port then it just forwards it as usual.

To be able to offload this to the HW, it was required to extend the switchdev
API.

If this will be accepted then in the future the netlink interface can be
expended with multiple attributes which are required by different roles of the
MRP. Like Media Redundancy Automanager(MRA), Media Interconnect Manager(MIM) and
Media Interconnect Client(MIC).

[1] https://www.spinics.net/lists/netdev/msg623647.html
[2] https://www.spinics.net/lists/netdev/msg624378.html
[3] https://github.com/microchip-ung/mrp/tree/patch-v3

Horatiu Vultur (10):
  net: bridge: mrp: Expose mrp attributes.
  net: bridge: mrp: Expose function br_mrp_port_open
  net: bridge: mrp: Add MRP interface used by netlink
  net: bridge: mrp: Add generic netlink interface to configure MRP
  net: bridge: mrp: Update MRP interface to add switchdev support
  net: bridge: mrp: switchdev: Extend switchdev API to offload MRP
  net: bridge: mrp: switchdev: Implement MRP API for switchdev
  net: bridge: mrp: Connect MRP api with the switchev API
  net: bridge: mrp: Integrate MRP into the bridge
  net: bridge: mrp: Update Kconfig and Makefile

 include/linux/mrp_bridge.h      |  25 ++
 include/net/switchdev.h         |  51 +++
 include/uapi/linux/if_ether.h   |   1 +
 include/uapi/linux/mrp_bridge.h | 118 ++++++
 net/bridge/Kconfig              |  12 +
 net/bridge/Makefile             |   2 +
 net/bridge/br.c                 |  11 +
 net/bridge/br_device.c          |   3 +
 net/bridge/br_if.c              |   6 +
 net/bridge/br_input.c           |  14 +
 net/bridge/br_mrp.c             | 193 ++++++++++
 net/bridge/br_mrp_netlink.c     | 655 ++++++++++++++++++++++++++++++++
 net/bridge/br_mrp_switchdev.c   | 147 +++++++
 net/bridge/br_private.h         |  14 +
 net/bridge/br_private_mrp.h     |  58 +++
 15 files changed, 1310 insertions(+)
 create mode 100644 include/linux/mrp_bridge.h
 create mode 100644 include/uapi/linux/mrp_bridge.h
 create mode 100644 net/bridge/br_mrp.c
 create mode 100644 net/bridge/br_mrp_netlink.c
 create mode 100644 net/bridge/br_mrp_switchdev.c
 create mode 100644 net/bridge/br_private_mrp.h

-- 
2.17.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C22271953BF
	for <lists.bridge@lfdr.de>; Fri, 27 Mar 2020 10:22:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 022DE20410;
	Fri, 27 Mar 2020 09:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0agzEYQDZ0ku; Fri, 27 Mar 2020 09:22:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 662A820422;
	Fri, 27 Mar 2020 09:22:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38473C0177;
	Fri, 27 Mar 2020 09:22:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A8D74C0177
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2115893F9
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ye2yz-C+i9b3 for <bridge@lists.linux-foundation.org>;
 Fri, 27 Mar 2020 09:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D3B1A893F5
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:18 +0000 (UTC)
IronPort-SDR: e2ZmeRMDbZsA90/bG03CZ2fiOLxCd6/0Is+WTM6N2Evf468u8fOlXTNXjKOORpS1ykA75afUYA
 yUPpIjqYEFPnWV+SU6RnRERi6tmfeai2YLT75/dPCtd34QFrNH5pPonw/baM8Osu72i/TTAFZI
 XKEchyh+GFLFfFv2HBMAtS5chmr4YxLC9DFx8/xtAZxVDlg58gnnZKxDLpdr7Onie2+9Rsgo+T
 E4/WX3IUE8tS5mRhGK/CcN+pth6vHLMR2p/6YwAEGY+sCW4TeDxSbytybvsCyercgEXhqd1ezv
 r6k=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="73728093"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Mar 2020 02:22:18 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Mar 2020 02:22:18 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 27 Mar 2020 02:22:15 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <jiri@resnulli.us>, <ivecera@redhat.com>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <olteanv@gmail.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 27 Mar 2020 10:21:17 +0100
Message-ID: <20200327092126.15407-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v4 0/9] net: bridge: mrp: Add support for
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

Based on the previous RFC[1][2][3], the MRP state machine and all the timers
were moved to userspace, except for the timers used to generate MRP Test frames.
In this way the userspace doesn't know and should not know if the HW or the
kernel will generate the MRP Test frames. The following changes were added to
the bridge to support the MRP:
- the existing netlink interface was extended with MRP support,
- allow to detect when a MRP frame was received on a MRP ring port
- allow MRP instance to forward/terminate MRP frames
- generate MRP Test frames in case the HW doesn't have support for this

To be able to offload MRP support to HW, the switchdev API  was extend.

With these changes the userspace doesn't do the following because already the
kernel/HW will do:
- doesn't need to forward/terminate MRP frames
- doesn't need to generate MRP Test frames
- doesn't need to detect when the ring is open/closed.

The userspace application that is using the new netlink can be found here[4].

The current implementation both in kernel and userspace supports only 2 roles:
  MRM - this one is responsible to send MRP_Test and MRP_Topo frames on both
  ring ports. It needs to process MRP_Test to know if the ring is open or
  closed. This operation is desired to be offloaded to the HW because it
  requires to generate and process up to 4000 frames per second. Whenever it
  detects that the ring is open it sends MRP_Topo frames to notify all MRC about
  changes in the topology. MRM needs also to process MRP_LinkChange frames,
  these frames are generated by the MRC. When the ring is open then the state
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
kernel will try to offload the requests to the HW via switchdev API.

If this will be accepted then in the future the netlink interface can be
expended with multiple attributes which are required by different roles of the
MRP. Like Media Redundancy Automanager(MRA), Media Interconnect Manager(MIM) and
Media Interconnect Client(MIC).

[1] https://www.spinics.net/lists/netdev/msg623647.html
[2] https://www.spinics.net/lists/netdev/msg624378.html
[3] https://www.spinics.net/lists/netdev/msg627500.html
[4] https://github.com/microchip-ung/mrp/tree/patch-v4

-v3:
  - move MRP state machine in userspace
  - create generic netlink interface for configuring the HW using switchdev API

-v2:
  - extend switchdev API to offload to HW



Horatiu Vultur (9):
  bridge: uapi: mrp: Add mrp attributes.
  bridge: mrp: Expose function br_mrp_port_open
  bridge: mrp: Add MRP interface.
  bridge: mrp: Implement netlink interface to configure MRP
  switchdev: mrp: Extend switchdev API to offload MRP
  bridge: switchdev: mrp Implement MRP API for switchdev
  bridge: mrp: Connect MRP api with the switchev API
  bridge: mrp: Integrate MRP into the bridge
  bridge: mrp: Update Kconfig and Makefile

 include/linux/if_bridge.h       |   1 +
 include/linux/mrp_bridge.h      |  24 ++
 include/net/switchdev.h         |  53 ++++
 include/uapi/linux/if_bridge.h  |  42 +++
 include/uapi/linux/if_ether.h   |   1 +
 include/uapi/linux/mrp_bridge.h |  84 ++++++
 net/bridge/Kconfig              |  12 +
 net/bridge/Makefile             |   2 +
 net/bridge/br_device.c          |   3 +
 net/bridge/br_input.c           |   3 +
 net/bridge/br_mrp.c             | 514 ++++++++++++++++++++++++++++++++
 net/bridge/br_mrp_netlink.c     | 176 +++++++++++
 net/bridge/br_mrp_switchdev.c   | 150 ++++++++++
 net/bridge/br_netlink.c         |   5 +
 net/bridge/br_private.h         |  22 ++
 net/bridge/br_private_mrp.h     |  67 +++++
 net/bridge/br_stp.c             |   6 +
 17 files changed, 1165 insertions(+)
 create mode 100644 include/linux/mrp_bridge.h
 create mode 100644 include/uapi/linux/mrp_bridge.h
 create mode 100644 net/bridge/br_mrp.c
 create mode 100644 net/bridge/br_mrp_netlink.c
 create mode 100644 net/bridge/br_mrp_switchdev.c
 create mode 100644 net/bridge/br_private_mrp.h

-- 
2.17.1


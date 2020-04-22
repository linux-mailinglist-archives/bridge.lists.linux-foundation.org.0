Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A11B4A3E
	for <lists.bridge@lfdr.de>; Wed, 22 Apr 2020 18:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 691ED86449;
	Wed, 22 Apr 2020 16:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JhFCabPXTCrL; Wed, 22 Apr 2020 16:21:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AE3A86448;
	Wed, 22 Apr 2020 16:21:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B2E1C0175;
	Wed, 22 Apr 2020 16:21:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5125CC0175
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CC418511F
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRcO0hyexWjS for <bridge@lists.linux-foundation.org>;
 Wed, 22 Apr 2020 16:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 12B14844CC
 for <bridge@lists.linux-foundation.org>; Wed, 22 Apr 2020 16:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587572503; x=1619108503;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=lsKYDA9KoYNxDI/LZbVkLfhRn6xykem+lAbQy9oiUt8=;
 b=vFUVK2k6AITuZR/w4mFwxfvttzmlW3Rvf3+pkKAvrZOf15061lFHZ2Fl
 ZxGYQD0L+1vlsyqp/rK4lNQBSigFGDNZDjDnWY+1Y5JYucZNDj6Oju/4c
 81H6Yx9/il2sE/RShjZEbKKkVwiAm2opMjiNZmvvFTgpeDiLmTHKr9NrM
 aZcezLfyOHfaveQlbW6UHtwFkylb4uVGkh/dZPdRPszrF2sl3BRBohZHq
 MHjyF2lzhZrixtdXdORGugTz/dAbEQ7ah/7PK69Fu53iBIuYqv+TTCkBT
 Sh9U1UCscWnrIbaywCWCH8So0PJiyb7TxHgu7hI4n5uFawyY4uBwdU36z w==;
IronPort-SDR: YcXSo1psnrOaj9VHUXjA211UOxuIQkWkKdGX9/LXM+fBc0IG2JG7CpvN4G0Vhs+kfCYKwvehdU
 J/hFqP9ai0dUkow1Ggc8oswRRe+W5xWfeGXF5H7ZDuvpe5J8Md7To/5xXyyrI6yIinLNam7pGa
 LaE7F5yFfD1GZZ8Wl/m9dC/NbCFa8GainzP3OHTkyADeyiWEFvDIBe4G0g0q7M9fbdPGQ/H3G2
 d2ehG/3O4yhWA43qh7wAig7l8JZdO4P4blJYpEYjVzIf9uaXIVyLfXjptxfoG4c3o2d9BEDIF2
 PRw=
X-IronPort-AV: E=Sophos;i="5.73,304,1583218800"; d="scan'208";a="71205538"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Apr 2020 09:21:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Apr 2020 09:21:41 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 22 Apr 2020 09:21:41 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <davem@davemloft.net>, <jiri@resnulli.us>, 
 <ivecera@redhat.com>, <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <olteanv@gmail.com>, <andrew@lunn.ch>, <UNGLinuxDriver@microchip.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>
Date: Wed, 22 Apr 2020 18:18:22 +0200
Message-ID: <20200422161833.1123-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 00/11] net: bridge: mrp: Add support
	for Media Redundancy Protocol(MRP)
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

Based on the previous RFC[1][2][3][4][5], and patches[6][7], the MRP state
machine and all the timers were moved to userspace, except for the timers used
to generate MRP Test frames.  In this way the userspace doesn't know and should
not know if the HW or the kernel will generate the MRP Test frames. The
following changes were added to the bridge to support the MRP:
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

The userspace application that is using the new netlink can be found here[8].

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
[4] https://www.spinics.net/lists/netdev/msg641005.html
[5] https://www.spinics.net/lists/netdev/msg643991.html
[6] https://www.spinics.net/lists/netdev/msg645378.html
[7] https://www.spinics.net/lists/kernel/msg3484685.html
[8] https://github.com/microchip-ung/mrp/tree/patch-v8

-v3:
  - fix unused variables

-v2:
  - drop patch 4
  - add port flag BR_MRP_LOST_CONT;
  - another fix for bisectability

-v1:
  - fix bisectability issues
  - in case of errors use extack

-RFC v5:
  - use nla_parse_nested
  - rework the usage of the rcu in br_mrp
  - reorder patches
  - few other small issues raised by Nikolay

-RFC v4:
  - extend existing netlink interface to add mrp support
  - use rcu locks

-RFC v3:
  - move MRP state machine in userspace
  - create generic netlink interface for configuring the HW using switchdev API

-RFC v2:
  - extend switchdev API to offload to HW

Horatiu Vultur (11):
  bridge: uapi: mrp: Add mrp attributes.
  bridge: mrp: Update Kconfig
  bridge: mrp: Extend bridge interface
  net: bridge: Add port attribute IFLA_BRPORT_MRP_RING_OPEN
  bridge: mrp: Add MRP interface.
  switchdev: mrp: Extend switchdev API to offload MRP
  bridge: switchdev: mrp: Implement MRP API for switchdev
  bridge: mrp: Connect MRP API with the switchdev API
  bridge: mrp: Implement netlink interface to configure MRP
  bridge: mrp: Integrate MRP into the bridge
  net: bridge: Add checks for enabling the STP.

 include/linux/if_bridge.h          |   2 +
 include/net/switchdev.h            |  62 ++++
 include/uapi/linux/if_bridge.h     |  42 +++
 include/uapi/linux/if_ether.h      |   1 +
 include/uapi/linux/if_link.h       |   1 +
 include/uapi/linux/mrp_bridge.h    |  84 +++++
 net/bridge/Kconfig                 |  12 +
 net/bridge/Makefile                |   2 +
 net/bridge/br_device.c             |   3 +
 net/bridge/br_if.c                 |   2 +
 net/bridge/br_input.c              |   3 +
 net/bridge/br_ioctl.c              |   3 +-
 net/bridge/br_mrp.c                | 556 +++++++++++++++++++++++++++++
 net/bridge/br_mrp_netlink.c        | 120 +++++++
 net/bridge/br_mrp_switchdev.c      | 140 ++++++++
 net/bridge/br_netlink.c            |  12 +-
 net/bridge/br_private.h            |  38 +-
 net/bridge/br_private_mrp.h        |  63 ++++
 net/bridge/br_stp.c                |   6 +
 net/bridge/br_stp_if.c             |  11 +-
 net/bridge/br_sysfs_br.c           |   4 +-
 tools/include/uapi/linux/if_link.h |   1 +
 22 files changed, 1160 insertions(+), 8 deletions(-)
 create mode 100644 include/uapi/linux/mrp_bridge.h
 create mode 100644 net/bridge/br_mrp.c
 create mode 100644 net/bridge/br_mrp_netlink.c
 create mode 100644 net/bridge/br_mrp_switchdev.c
 create mode 100644 net/bridge/br_private_mrp.h

-- 
2.17.1


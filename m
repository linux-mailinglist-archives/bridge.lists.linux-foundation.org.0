Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5866527FD55
	for <lists.bridge@lfdr.de>; Thu,  1 Oct 2020 12:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC5AB872B3;
	Thu,  1 Oct 2020 10:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAnYcnj0whuU; Thu,  1 Oct 2020 10:32:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E44878727B;
	Thu,  1 Oct 2020 10:32:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4578C0051;
	Thu,  1 Oct 2020 10:32:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 919D9C0051
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6CEFD22EE7
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BaooR7WOedyI for <bridge@lists.linux-foundation.org>;
 Thu,  1 Oct 2020 10:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 13D1B2039B
 for <bridge@lists.linux-foundation.org>; Thu,  1 Oct 2020 10:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601548357; x=1633084357;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+cZ+YKhyj76Cw7z6hfMYxOafQMHU9geMzZI4cikeuw=;
 b=rtNxmCvu+zs4lLuf84xgnFGtHXDb6KlmDVmx8lYjo3BXD3nhPkwkcTa+
 uhsQyY51e1Zf/7Cn1CSStSDlvhy6mJ07HNeVsvJ7CgdrShMoxjZAA6/Zg
 9luYPZcUunRyl11QTMNIKZxpdEtjUTmObPTS4R5ZKdx9x+Sk8A7dzXLbu
 5KOhZbe2+K7skL1S9T7MNLiOWlDh6rBdjMbUYmb2OmrA2fMhDv3jHQQkd
 VfQpsPy7t0fiQivbuN2Qa9+Cw5qhY6alT9bgrHvOFyuOY2h2V8W3/OR5g
 rlff0xPLG50vY42Fififixi0n9NBe8TtHoY2T2UaIXxG/3GJXNQXtxl+p w==;
IronPort-SDR: +9pihxinvIWvX7rsoTz5kC31fjglc8AsiMduKSppPaldKRhpp3dE6Fa8O9bEjpwj92PVBY++Er
 lL25pHSamimK6PqgRRSp0pObJoz12pyudy35ylGFDICA03R+/igTkK6e6d9J7gFdebP4Jf623E
 6ZWr9JhRD8iGJ8y2MDMvUYz36tedgAA1aIXIIP1P4gXml+Eg/NR44t39Rt293zmnGCqMcUJY5d
 UYfguHbnFKx5nNNVR2lBxjEgMhRx/vgFGfyO/Vx1cUxqrGW4a8WWSEKCQkq91uVcFFXP4Fi7r3
 k8o=
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="28360871"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Oct 2020 03:32:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 1 Oct 2020 03:32:09 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 1 Oct 2020 03:32:07 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 1 Oct 2020 10:30:08 +0000
Message-ID: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [net-next v2 00/11] net: bridge: cfm: Add support for
	Connectivity Fault Management(CFM)
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Connectivity Fault Management (CFM) is defined in 802.1Q section 12.14.

Connectivity Fault Management (CFM) comprises capabilities for detecting, verifying,
and isolating connectivity failures in Virtual Bridged Networks.
These capabilities can be used in networks operated by multiple independent organizations,
each with restricted management access to each other’s equipment.

CFM functions are partitioned as follows:
    — Path discovery
    — Fault detection
    — Fault verification and isolation
    — Fault notification
    — Fault recovery

The primary CFM protocol shims are called Maintenance Points (MPs).
A MP can be either a MEP or a MHF.
The MEP:
    -It is the Maintenance association End Point
     described in 802.1Q section 19.2.
    -It is created on a specific level (1-7) and is assuring
     that no CFM frames are passing through this MEP on lower levels.
    -It initiates and terminates/validates CFM frames on its level.
    -It can only exist on a port that is related to a bridge.
The MHF:
    -It is the Maintenance Domain Intermediate Point
     (MIP) Half Function (MHF) described in 802.1Q section 19.3.
    -It is created on a specific level (1-7).
    -It is extracting/injecting certain CFM frame on this level.
    -It can only exist on a port that is related to a bridge.
    -Currently not supported.

There are defined the following CFM protocol functions:
    -Continuity Check
    -Loopback. Currently not supported.
    -Linktrace. Currently not supported.

This CFM component supports create/delete of MEP instances and configuration of
the different CFM protocols. Also status information can be fetched and delivered
through notification due to defect status change.

The CFM component is trying to offload CFM functionality to HW by calling the
switchdev interface.

The user interacts with CFM using the 'cfm' user space client program,
the client talks with the kernel using netlink. The kernel will try to
offload the requests to the HW via switchdev API (not implemented yet).

Any notification emitted by CFM from the kernel can be monitored in user space
by starting 'cfm_server' program.

Currently this 'cfm' and 'cfm_server' programs are standalone placed in a cfm
repository https://github.com/microchip-ung/cfm but it is considered to integrate
this into 'iproute2'.

v1 -> v2
    Added the CFM switchdev interface and also added utilization by calling the
    interface from the kernel CFM implementation trying to offload CFM functionality
    to HW. This offload (CFM driver) is currently not implemented.
    
    Corrections based on RCF comments:
        -The single CFM kernel implementation Patch is broken up into three patches.
        -Changed the list of MEP instances from list_head to hlist_head.
        -Removed unnecessary RCU list traversing.
        -Solved RCU unlocking problem.
        -Removed unnecessary comments.
        -Added ASSERT_RTNL() where required.
        -Shaping up on error messages.
        -Correction NETLINK br_fill_ifinfo() to be able to handle 'filter_mask'
         with multiple flags asserted.

Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>

Henrik Bjoernlund (11):
  net: bridge: extend the process of special frames
  bridge: cfm: Add BRIDGE_CFM to Kconfig.
  bridge: uapi: cfm: Added EtherType used by the CFM protocol.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Netlink Interface.
  bridge: cfm: Netlink Notifications.
  bridge: cfm: Bridge port remove.
  bridge: switchdev: cfm: switchdev interface implementation
  bridge: cfm: Added CFM switchdev utilization.

 include/linux/if_bridge.h       |   13 +
 include/net/switchdev.h         |  115 ++++
 include/uapi/linux/cfm_bridge.h |   70 ++
 include/uapi/linux/if_bridge.h  |  125 ++++
 include/uapi/linux/if_ether.h   |    1 +
 include/uapi/linux/rtnetlink.h  |    2 +
 net/bridge/Kconfig              |   11 +
 net/bridge/Makefile             |    2 +
 net/bridge/br_cfm.c             | 1092 +++++++++++++++++++++++++++++++
 net/bridge/br_cfm_netlink.c     |  728 +++++++++++++++++++++
 net/bridge/br_cfm_switchdev.c   |  203 ++++++
 net/bridge/br_device.c          |    4 +
 net/bridge/br_if.c              |    1 +
 net/bridge/br_input.c           |   31 +-
 net/bridge/br_mrp.c             |   19 +-
 net/bridge/br_netlink.c         |  138 +++-
 net/bridge/br_private.h         |   76 ++-
 net/bridge/br_private_cfm.h     |  208 ++++++
 net/switchdev/switchdev.c       |   54 ++
 19 files changed, 2858 insertions(+), 35 deletions(-)
 create mode 100644 include/uapi/linux/cfm_bridge.h
 create mode 100644 net/bridge/br_cfm.c
 create mode 100644 net/bridge/br_cfm_netlink.c
 create mode 100644 net/bridge/br_cfm_switchdev.c
 create mode 100644 net/bridge/br_private_cfm.h

-- 
2.28.0


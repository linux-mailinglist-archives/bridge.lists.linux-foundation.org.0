Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC671284E82
	for <lists.bridge@lfdr.de>; Tue,  6 Oct 2020 16:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B55E20527;
	Tue,  6 Oct 2020 14:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rRjbsYgtO7Sy; Tue,  6 Oct 2020 14:57:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7995820763;
	Tue,  6 Oct 2020 14:55:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 591ECC0051;
	Tue,  6 Oct 2020 14:55:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E35C2C07FF
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFC828435A
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_rQ8RHynOaY for <bridge@lists.linux-foundation.org>;
 Tue,  6 Oct 2020 14:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7915841AC
 for <bridge@lists.linux-foundation.org>; Tue,  6 Oct 2020 14:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601996141; x=1633532141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ulyTQ6bu3wsgxeeSKBEqHp81k8dRGB+5UE8Ne+fj9Pg=;
 b=XMDQebbDqxsVCA/KQivzhlNHdQXS4zgc6YzwcNcL6ItckVgI/Z2v4EAo
 nn1gttYxpKcX0hhGZ0QtZvjUhUU7kfIFAYFForEHFsmXViNlN4SnYRvF/
 Cm8womp0NbQBl9MQ3e67WIg/vSqCePJs+OinbPpnfMdaLBt1PdBkqIVJx
 FB94cgUWNcmCw4MC591PdVcmaygdvahVuGTq6ahzC2smysdjAPzq7EL4Y
 ZOXlLyWLeZ1At0PknS8UnjbUGkdD02POHXZ1zVwkk8zJswToDAvzISEBh
 D0D8dEJSqFbeZBvvI2qBuBMP1yDi1Gx//5MwRdUc5peN1I/d0iPBuSpnC A==;
IronPort-SDR: h61vZz+/Qk6iemosl5HtjJys977/ibDsuV+uZiULw3AnFjl2F7kRN6qO1IDu11W1yZShSJ8ePs
 0D0V+gBc198mmnahtS+5d+1nMNI/9EvckV0NXaYU8bRiPZhkyCSclfLP182W4O/tpcOsfcgo0J
 YepzL/7ODkv//1DfFVOo7mInWIhKguoEMKWL9A+c6cl9z8Ur8mW4CR9PFKV65BLeGFjVgFcxmt
 XM7i3vdj7/hDUDBTLDyJBj65hXxe03WtwpkElNv5ELOBk6/v+39fgCDii32LYz3TWCsAQ9locN
 vsk=
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="89282770"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Oct 2020 07:55:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 6 Oct 2020 07:55:29 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 6 Oct 2020 07:55:37 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@resnulli.us>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Tue, 6 Oct 2020 14:53:29 +0000
Message-ID: <20201006145338.1956886-1-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Subject: [Bridge] [net-next v3 0/9] net: bridge: cfm: Add support for
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

The user interacts with CFM using the 'cfm' user space client program,
the client talks with the kernel using netlink.

Any notification emitted by CFM from the kernel can be monitored in user space
by starting 'cfm_server' program.

Currently this 'cfm' and 'cfm_server' programs are standalone placed in a cfm
repository https://github.com/microchip-ung/cfm but it is considered to integrate
this into 'iproute2'.

v2 -> v3
    The switchdev definition and utilization has been removed as there was no
    switchdev implementation.
    Some compiling issues are fixed as Reported-by: kernel test robot <lkp@intel.com>.

Henrik Bjoernlund (9):
  net: bridge: extend the process of special frames
  bridge: cfm: Add BRIDGE_CFM to Kconfig.
  bridge: uapi: cfm: Added EtherType used by the CFM protocol.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Netlink Interface.
  bridge: cfm: Netlink Notifications.
  bridge: cfm: Bridge port remove.

 include/uapi/linux/cfm_bridge.h |  70 +++
 include/uapi/linux/if_bridge.h  | 125 +++++
 include/uapi/linux/if_ether.h   |   1 +
 include/uapi/linux/rtnetlink.h  |   2 +
 net/bridge/Kconfig              |  11 +
 net/bridge/Makefile             |   2 +
 net/bridge/br_cfm.c             | 882 ++++++++++++++++++++++++++++++++
 net/bridge/br_cfm_netlink.c     | 731 ++++++++++++++++++++++++++
 net/bridge/br_device.c          |   4 +
 net/bridge/br_if.c              |   1 +
 net/bridge/br_input.c           |  31 +-
 net/bridge/br_mrp.c             |  19 +-
 net/bridge/br_netlink.c         | 138 ++++-
 net/bridge/br_private.h         |  76 ++-
 net/bridge/br_private_cfm.h     | 147 ++++++
 15 files changed, 2205 insertions(+), 35 deletions(-)
 create mode 100644 include/uapi/linux/cfm_bridge.h
 create mode 100644 net/bridge/br_cfm.c
 create mode 100644 net/bridge/br_cfm_netlink.c
 create mode 100644 net/bridge/br_private_cfm.h

-- 
2.28.0


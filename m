Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605A126E212
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45DC4876B7;
	Thu, 17 Sep 2020 17:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVwUNNbuX6tR; Thu, 17 Sep 2020 17:19:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5542487693;
	Thu, 17 Sep 2020 17:19:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44295C0859;
	Thu, 17 Sep 2020 17:19:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E1E0C0051
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E06D203A4
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pfCHmHLyLZJL for <bridge@lists.linux-foundation.org>;
 Fri,  4 Sep 2020 09:18:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id E26581FE49
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 09:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1599211132; x=1630747132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cBJzKiPz3L8lSnLMEyuBKxa7R9QlrsUmPeMiumotiVI=;
 b=lwkzMWDgh6o3j/eJlZd9eyg8cw8Mr83AHyIk1u6FxKFskk1Bb7g57T3f
 Kc/cB3+vTiPV1EFaUzTGh2jwyjXbnzjHk/wij8QhsDQ4+l2yKSq8E5mET
 vAdKmFxNuMr9ebwS5jFHD+mjLRXnRFfcCD2SUbUDhCogx5y2OWrrYU2zd
 rhRR1FtnvUi7fB+ajKIygoXCZMdWJHtltRqE6znKRdEVtX9tQ5iGXE5rg
 qsyCpwlVIR4w2MXkLECOwZ36iQ1tjZxMaf1aG/7q9g7QehqUJscXjBIUD
 7HixC+/0fByN1qjcNUs/bcNtdMZ8kblbNm4GBSauIoGf0acv9eX+N8Lco g==;
IronPort-SDR: va5i21HOcVpVxIqcBQ5wRwfnyi9Y3uKvqfJGr9tvIXPGO/2IoOWaxtKS1gokVWK7RWgJX2RWtV
 3PrDS3gTOpdjhGJfJxyvJ1u/l83f83grnjFsrlUFJGuuMnGerE4Uq8Xs/yuU/tK60I+KsIh3Fb
 esbErWHoejBdLx4SmnP55q6OjtfXd9FR9iVj8zc5TQq305fI7oSXmBNVKdSSoeaeMda0jLuHKC
 X171+leQjuyneZOvW3tBiJ6YNTIqbReEJt3nymAZjzBwtXgpgNUmbLRv6JPH6wtX8XDFqiAK0M
 UF8=
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="94413050"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Sep 2020 02:18:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 4 Sep 2020 02:18:47 -0700
Received: from soft-test08.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 4 Sep 2020 02:18:45 -0700
To: <davem@davemloft.net>, <kuba@kernel.org>, <roopa@nvidia.com>,
 <nikolay@nvidia.com>, <jiri@mellanox.com>, <idosch@mellanox.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Fri, 4 Sep 2020 09:15:20 +0000
Message-ID: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH RFC 0/7] net: bridge: cfm: Add support for
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

Connectivity Fault Management (CFM) comprises capabilities for
detecting, verifying, and isolating connectivity failures in
Virtual Bridged Networks. These capabilities can be used in
networks operated by multiple independent organizations, each
with restricted management access to each other’s equipment.

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

This CFM component supports create/delete of MEP instances and
configuration of the different CFM protocols. Also status information
can be fetched and delivered through notification due to defect status
change.

The user interacts with CFM using the 'cfm' user space client program, the
client talks with the kernel using netlink. The kernel will try to offload
the requests to the HW via switchdev API (not implemented yet).

Any notification emitted by CFM from the kernel can be monitored in user
space by starting 'cfm_server' program.

Currently this 'cfm' and 'cfm_server' programs are standalone placed in a
cfm repository https://github.com/microchip-ung/cfm but it is considered
to integrate this into 'iproute2'.

Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>

Henrik Bjoernlund (7):
  net: bridge: extend the process of special frames
  bridge: cfm: Add BRIDGE_CFM to Kconfig.
  bridge: uapi: cfm: Added EtherType used by the CFM protocol.
  bridge: cfm: Kernel space implementation of CFM.
  bridge: cfm: Netlink Interface.
  bridge: cfm: Netlink Notifications.
  bridge: cfm: Bridge port remove.

 include/uapi/linux/cfm_bridge.h |  75 +++
 include/uapi/linux/if_bridge.h  | 125 +++++
 include/uapi/linux/if_ether.h   |   1 +
 include/uapi/linux/rtnetlink.h  |   2 +
 net/bridge/Kconfig              |  11 +
 net/bridge/Makefile             |   2 +
 net/bridge/br_cfm.c             | 936 ++++++++++++++++++++++++++++++++
 net/bridge/br_cfm_netlink.c     | 690 +++++++++++++++++++++++
 net/bridge/br_device.c          |   4 +
 net/bridge/br_if.c              |   1 +
 net/bridge/br_input.c           |  31 +-
 net/bridge/br_mrp.c             |  19 +-
 net/bridge/br_netlink.c         | 126 ++++-
 net/bridge/br_private.h         |  82 ++-
 net/bridge/br_private_cfm.h     | 242 +++++++++
 15 files changed, 2326 insertions(+), 21 deletions(-)
 create mode 100644 include/uapi/linux/cfm_bridge.h
 create mode 100644 net/bridge/br_cfm.c
 create mode 100644 net/bridge/br_cfm_netlink.c
 create mode 100644 net/bridge/br_private_cfm.h

-- 
2.28.0


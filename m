Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9443C3197AF
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 02:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38E3A8754A;
	Fri, 12 Feb 2021 01:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwO3OC9cuFt1; Fri, 12 Feb 2021 01:05:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D3EB874F7;
	Fri, 12 Feb 2021 01:05:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31E2CC013A;
	Fri, 12 Feb 2021 01:05:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18470C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12F54875A7
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIF8igGHxXFW for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 01:05:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 350B987582
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 01:05:45 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id y18so8957035edw.13
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 17:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mE/OVlXJFK1GimzChU0IMobvC2t4RAJYhxND9dZJsvY=;
 b=bHy9naBQqEYCJdPmyYg7EB5tRKfXeGjhU0sW1LfOvR//3Mk+6YoX6bdojQAbDxfkMK
 7KVNtbaV3JxPz5X+nuWQCSgG0GFmHBJHOe32FsjoJLO83jQGUwj8BfEFijss1HhkCpxB
 ueumz3wYFrKtJrPWnz8CAdGIe/AULhttcIHXBNcevT/2V/4CeWsqfu5VNyxQeJo4Bu/g
 mPnw8fzlLY5/L9yW4qf/RNulzYPLRg6wbW4/FWFQ/TP7uZ3Cyd7I/QCeMXmA7AaLH4MM
 OdduONNr1bk14giWUbNwp8TMzJwaUFXla34ENu9r2KB52SqlYY4efDMc1qo7hQLBFKY8
 jQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mE/OVlXJFK1GimzChU0IMobvC2t4RAJYhxND9dZJsvY=;
 b=UCqBJU8o/ZcG3yfSDO3lmScY2BbXeAqRVvEh+Uhm+F1cPaXpn6a18e/v2UQubXuMJ1
 6cT1argdhHpG4d0k+vKA6aM4RqkgjZD2kTl4Xsxtsd23gXESWQ4YjWTvDqukVGHDnUgi
 6N/1yIsfsIgivHDCoFWtMHwiARtrFiyRp0ojsqs18CAN9xsMrWihc+AXa37V5qmF41/o
 H19xpQQcAjq2AlyWN9pJaasgdU8qEPcr2943znGvGJmOp08Pd6c6w+EBNd8qyQRSx+d6
 4tU9Rn0nl4NdtPMJDFFQTiW10fF7yrbLDcILaJA2NOohqvaqAy15iv+drs7rYihd8DYA
 upFg==
X-Gm-Message-State: AOAM533NIOqzJSbOmFQ9Hp3JhkoHRfeImJMkxbzZOw6t0EI+FrqbQviK
 /cUWtFkLOx3iMpJ6Ru4PAiE=
X-Google-Smtp-Source: ABdhPJzia/I4O9+eAYOLguF3V7ApJSYuV6J2LNIlfyS+JbWkQxXcyU9MtGYebpKky304PIH27FaUKQ==
X-Received: by 2002:a05:6402:289:: with SMTP id
 l9mr872805edv.218.1613091943526; 
 Thu, 11 Feb 2021 17:05:43 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm5019580edc.73.2021.02.11.17.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 17:05:42 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 03:05:22 +0200
Message-Id: <20210212010531.2722925-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 0/9] Cleanup in brport flags switchdev
	offload for DSA
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

The initial goal of this series was to have better support for
standalone ports mode on the DSA drivers like ocelot/felix and sja1105.
This turned out to require some API adjustments in both directions:
to the information presented to and by the switchdev notifier, and to
the API presented to the switch drivers by the DSA layer.

Vladimir Oltean (9):
  net: switchdev: propagate extack to port attributes
  net: bridge: offload all port flags at once in br_setport
  net: bridge: don't print in br_switchdev_set_port_flag
  net: dsa: configure better brport flags when ports leave the bridge
  net: switchdev: pass flags and mask to both {PRE_,}BRIDGE_FLAGS
    attributes
  net: dsa: act as ass passthrough for bridge port flags
  net: mscc: ocelot: use separate flooding PGID for broadcast
  net: mscc: ocelot: offload bridge port flags to device
  net: dsa: sja1105: offload bridge port flags to device

 drivers/net/dsa/b53/b53_common.c              |  91 ++++---
 drivers/net/dsa/b53/b53_priv.h                |   2 -
 drivers/net/dsa/mv88e6xxx/chip.c              | 163 ++++++++++---
 drivers/net/dsa/mv88e6xxx/chip.h              |   6 +-
 drivers/net/dsa/mv88e6xxx/port.c              |  52 ++--
 drivers/net/dsa/mv88e6xxx/port.h              |  19 +-
 drivers/net/dsa/ocelot/felix.c                |  22 ++
 drivers/net/dsa/sja1105/sja1105.h             |   2 +
 drivers/net/dsa/sja1105/sja1105_main.c        | 222 +++++++++++++++++-
 drivers/net/dsa/sja1105/sja1105_spi.c         |   6 +
 .../marvell/prestera/prestera_switchdev.c     |  26 +-
 .../mellanox/mlxsw/spectrum_switchdev.c       |  53 +++--
 drivers/net/ethernet/mscc/ocelot.c            | 100 +++++++-
 drivers/net/ethernet/mscc/ocelot_net.c        |  52 +++-
 drivers/net/ethernet/rocker/rocker_main.c     |  10 +-
 drivers/net/ethernet/ti/cpsw_switchdev.c      |  27 ++-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c       |  34 ++-
 include/net/dsa.h                             |  10 +-
 include/net/switchdev.h                       |  13 +-
 include/soc/mscc/ocelot.h                     |  20 +-
 net/bridge/br_netlink.c                       | 116 +++------
 net/bridge/br_private.h                       |   6 +-
 net/bridge/br_switchdev.c                     |  23 +-
 net/bridge/br_sysfs_if.c                      |   7 +-
 net/dsa/dsa_priv.h                            |  11 +-
 net/dsa/port.c                                |  76 ++++--
 net/dsa/slave.c                               |  10 +-
 net/switchdev/switchdev.c                     |  11 +-
 28 files changed, 870 insertions(+), 320 deletions(-)

-- 
2.25.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C92331A148
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 16:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 251C48739A;
	Fri, 12 Feb 2021 15:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UK75qovDd-bY; Fri, 12 Feb 2021 15:16:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C85D87313;
	Fri, 12 Feb 2021 15:16:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19EDCC1834;
	Fri, 12 Feb 2021 15:16:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 999A5C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80BEE86D37
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_cMXhAIjyaT for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 15:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86D2786BAE
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:10 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id z19so2995125eju.9
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 07:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9js+f0qftXEjk3IJleRBb/QBgSDgHgl8iRdUuTKast8=;
 b=of3rK2160oByIIF+kBqqx46rjK0WSMxkO7kPEe6tJr4iA+dDvK7Dzat72AyCT5iI8v
 Da+pwi6/NfrUoK2avV2XFp4k0z0B6ji1v7rSzNfCPaV4NgExTJRU3yPmaJExppN4amXG
 eHFlLGmi9nfNtqBrAsPkrdL4TBoHHrGw21fa3WsMi14HyyHWrAEAXyuByn40KFvmZNX9
 ZpTkhmXIDolxrmpb/CvmI0wXf3OlnH7CzSsoW2secyyyHugLLTnhm+0Y6c4zGRAQJvNB
 CER3Gr9IuoTxnuUll2AurDx22ml2btXEag6zrEJ9AXat8AZLhwEgDuIEMsdNrulqOPCl
 M6GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9js+f0qftXEjk3IJleRBb/QBgSDgHgl8iRdUuTKast8=;
 b=TfrRF684eHeMMewyfiDtGJFLOqufPYpwSphYObdghAKfUt5BftOge3Uwbv8YvcQb43
 OmEVdTsqDhEsQvnkSZeHqXAtsSJ9PTHhq7hF9V8vfblw3ikBtlQJPALUV68u+rddz9l1
 YKPcGJH2msAPngqD6J0Ay5LU+lCL9j7OCLKhjRvNgh+w5Hu/c5pvXRfvz4UeyYSMS/+i
 WBZfnviZau0EBcv/9bgsd+jPgzwINbHpWw9lFW9kv8kHI70r0OCvn2a1hBSm/sEE5fVE
 PeGceizASR8GWkhM7Zbom5ngK+6DFIeKXLFS7BeWX72cNF4E7M0LG2uP7DMt7XIh3YbE
 8MkA==
X-Gm-Message-State: AOAM5339JGsWfHO5lMG6I8gRbslKJ19PHAU8RefyHoCkh/IyDqtaHfXS
 r0Fw/AVy2m8mtXWp5MnWrnY=
X-Google-Smtp-Source: ABdhPJzAZJbg31w/pvGoxHoKvxji6eJsGt8VTGpKu8R1ebmr7OBUW/jKTDmRDYVrYpts1s0tIeDwEw==
X-Received: by 2002:a17:906:2e4f:: with SMTP id
 r15mr3452573eji.407.1613142969032; 
 Fri, 12 Feb 2021 07:16:09 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z19sm6515456edr.69.2021.02.12.07.16.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 07:16:08 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 17:15:50 +0200
Message-Id: <20210212151600.3357121-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vadym Kochan <vkochan@marvell.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Ido Schimmel <idosch@idosch.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 00/10] Cleanup in brport flags
	switchdev offload for DSA
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

Vladimir Oltean (10):
  net: switchdev: propagate extack to port attributes
  net: bridge: offload all port flags at once in br_setport
  net: bridge: don't print in br_switchdev_set_port_flag
  net: dsa: configure better brport flags when ports leave the bridge
  net: switchdev: pass flags and mask to both {PRE_,}BRIDGE_FLAGS
    attributes
  net: dsa: act as passthrough for bridge port flags
  net: dsa: felix: restore multicast flood to CPU when NPI tagger
    reinitializes
  net: mscc: ocelot: use separate flooding PGID for broadcast
  net: mscc: ocelot: offload bridge port flags to device
  net: dsa: sja1105: offload bridge port flags to device

 drivers/net/dsa/b53/b53_common.c              |  91 ++++---
 drivers/net/dsa/b53/b53_priv.h                |   2 -
 drivers/net/dsa/mv88e6xxx/chip.c              | 163 ++++++++++---
 drivers/net/dsa/mv88e6xxx/chip.h              |   6 +-
 drivers/net/dsa/mv88e6xxx/port.c              |  52 ++--
 drivers/net/dsa/mv88e6xxx/port.h              |  19 +-
 drivers/net/dsa/ocelot/felix.c                |  25 ++
 drivers/net/dsa/sja1105/sja1105.h             |   2 +
 drivers/net/dsa/sja1105/sja1105_main.c        | 222 +++++++++++++++++-
 drivers/net/dsa/sja1105/sja1105_spi.c         |   6 +
 .../marvell/prestera/prestera_switchdev.c     |  26 +-
 .../mellanox/mlxsw/spectrum_switchdev.c       |  53 +++--
 drivers/net/ethernet/mscc/ocelot.c            | 100 +++++++-
 drivers/net/ethernet/mscc/ocelot_net.c        |  52 +++-
 drivers/net/ethernet/rocker/rocker_main.c     |  10 +-
 drivers/net/ethernet/ti/am65-cpsw-switchdev.c |  27 ++-
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
 29 files changed, 889 insertions(+), 331 deletions(-)

-- 
2.25.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C073161F4
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B616F6BE
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 09:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xN6JNGZ2uZfT for <lists.bridge@lfdr.de>;
	Wed, 10 Feb 2021 09:19:26 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 73A5D6F6A3; Wed, 10 Feb 2021 09:19:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF3666F51A;
	Wed, 10 Feb 2021 09:19:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C1A8C0891;
	Wed, 10 Feb 2021 09:19:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B8F91C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98A846F508
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3vRRtvvzyjqv for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9E0376F51A; Wed, 10 Feb 2021 09:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25C5C6F508
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:14 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id a9so2837225ejr.2
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qNqiC3tG2xwOJq2qddxb/1WR+HrSzwiNawlUePCsQFs=;
 b=FZHA5b7/YbuGyx85UjaXr9oA7wpfJd4MyLm1ksHXD3V6l7MiRrIaewHCmrv+bq8Zi8
 hiJ22S3maNnxwqq2z4zZn9+TANcjaVDKFB6MX/1Vi3hnHUH+cTuWfy5r8n1etiZUXQdM
 LMfkTM71xfGGdEwcSrTmn70MpKhdA0FNWu4YQIStGJ4vr55WIyH7/AYfQ4SALcTXr6sk
 rxpgfNbQc9Z22hNYBB9+cL8Z/2Ue9GL8iuCl06lZN9wyyarPc4pKVqdZn0f5WJIBAoeg
 5F2jOum72Q5wcrtY5tjoR2ETeeXSk1Aai3Vc3ZChzfqCRC5WpEVJKfwwvp9XZAYFw3zI
 ccTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qNqiC3tG2xwOJq2qddxb/1WR+HrSzwiNawlUePCsQFs=;
 b=tq7BDNbKfIgm2yg5LTNEQJhl7zVVsb/XBFnGZZeKLUBSVx1gGl2mfF1rxLpuj8o7Hr
 IhsfjdTtC5I89hpZrFhoVCy5cCJgUGKpeCZypsZrBBV6mGkGbvVT34wbU9szbo8X0BY5
 UE1BOXPr59qqVGzfDZT4x6WdpZ+blOcLRyFAGLZTXoIuAXy3jjm7PcekEZcMZA6+k1Sz
 D1uAiruhDUxC1/iHjuLg2SRgk4hZeBneuSwX9qcYMXfkEfTEngKeO6I5rFqPRdyeWPww
 bGGq6C7W01JylDBhosnf6eEyQXkCl9uDEi9Z10cZTZiqBZE1KohlDMely1An67YnoqgR
 YMLg==
X-Gm-Message-State: AOAM530wpWzbGgMQFVgQ0y2RC4SDYUSBjMDYNcVr7afRu8+owYcBbdm/
 x0ggXMLrxU/idrbnpuy5VrE=
X-Google-Smtp-Source: ABdhPJwIfhzp1/ATswAZt7VNiXvQg+QbM0Af40aVGYZcs2kRvVjaRB7YpSMTSF0/8yNHzKfuuoXOFg==
X-Received: by 2002:a17:906:ce24:: with SMTP id
 sd4mr1980081ejb.21.1612948752399; 
 Wed, 10 Feb 2021 01:19:12 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:11 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:34 +0200
Message-Id: <20210210091445.741269-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v3 net-next 00/11] Cleanup in brport flags
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
standalone ports mode and multiple bridges on the DSA drivers like
ocelot/felix and sja1105. Proper support for standalone mode requires
disabling address learning, which in turn requires interaction with the
switchdev notifier, which is actually where most of the patches are.

I also noticed that most of the drivers are actually talking either to
firmware or SPI/MDIO connected devices from the brport flags switchdev
attribute handler, so it makes sense to actually make it sleepable
instead of atomic.

Vladimir Oltean (11):
  net: switchdev: propagate extack to port attributes
  net: bridge: offload all port flags at once in br_setport
  net: bridge: don't print in br_switchdev_set_port_flag
  net: dsa: configure proper brport flags when ports leave the bridge
  net: squash switchdev attributes PRE_BRIDGE_FLAGS and BRIDGE_FLAGS
  net: dsa: kill .port_egress_floods overengineering
  net: prep switchdev drivers for concurrent
    SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
  net: bridge: put SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS on the blocking
    call chain
  net: mscc: ocelot: use separate flooding PGID for broadcast
  net: mscc: ocelot: offload bridge port flags to device
  net: dsa: sja1105: offload bridge port flags to device

 drivers/net/dsa/b53/b53_common.c              |  20 +-
 drivers/net/dsa/mv88e6xxx/chip.c              |  21 +-
 drivers/net/dsa/ocelot/felix.c                |  10 +
 drivers/net/dsa/sja1105/sja1105.h             |   2 +
 drivers/net/dsa/sja1105/sja1105_main.c        | 212 +++++++++++++++++-
 drivers/net/dsa/sja1105/sja1105_spi.c         |   6 +
 .../marvell/prestera/prestera_switchdev.c     |  54 +++--
 .../mellanox/mlxsw/spectrum_switchdev.c       |  90 ++++----
 drivers/net/ethernet/mscc/ocelot.c            |  72 +++++-
 drivers/net/ethernet/mscc/ocelot_net.c        |   7 +-
 drivers/net/ethernet/rocker/rocker.h          |   2 +-
 drivers/net/ethernet/rocker/rocker_main.c     |  24 +-
 drivers/net/ethernet/rocker/rocker_ofdpa.c    |  26 ++-
 drivers/net/ethernet/ti/cpsw_switchdev.c      |  35 ++-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c       |  43 ++--
 include/net/dsa.h                             |   7 +-
 include/net/switchdev.h                       |  14 +-
 include/soc/mscc/ocelot.h                     |  18 +-
 net/bridge/br_netlink.c                       | 162 ++++++-------
 net/bridge/br_private.h                       |   6 +-
 net/bridge/br_switchdev.c                     |  33 ++-
 net/bridge/br_sysfs_if.c                      |  21 +-
 net/dsa/dsa_priv.h                            |   8 +-
 net/dsa/port.c                                |  76 ++++---
 net/dsa/slave.c                               |  10 +-
 net/switchdev/switchdev.c                     |  11 +-
 26 files changed, 654 insertions(+), 336 deletions(-)

-- 
2.25.1


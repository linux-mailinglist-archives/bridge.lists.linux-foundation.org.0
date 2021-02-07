Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA1F312827
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 00:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8572886FD5;
	Sun,  7 Feb 2021 23:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MKgsMHocfqq1; Sun,  7 Feb 2021 23:23:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2B4586A9B;
	Sun,  7 Feb 2021 23:23:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC337C013A;
	Sun,  7 Feb 2021 23:23:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 884A8C013A
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F3072038D
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmRX2fYAdM-D for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 23:23:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by silver.osuosl.org (Postfix) with ESMTPS id E027120387
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:03 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id b9so21732640ejy.12
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 15:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdOLN8iSy3qRTlCt7W2Tkt/uKoMbxQxcelWIFl4Tv0c=;
 b=Byzf7Ch6lxgMByroVpIyGbVWj+WES57XvUbGEWPQ2MDz1xZYNGbPNk9g/UBuyfdJZ0
 370tyntgVPLxpitPW7poWT9XkCvYie4tVQJvYCzW2etWEZn3SzhHcC3YkOc9tMrGVrF4
 C0oDi+3KPIy9x8XBuEYc3IGodXUknCADmCP7cKJTD9L3VMdJdGyd7DL6tXh5gdT4BC6I
 lfh5i28iucwGR6Tf5WYOiVW7P/zSvHTyzFeK+VME2GVttYIqHK31T+1nVE4FAzBbKKxQ
 IQuDdIcAeQ3vnKwNdl2INdVhnREjtNSwTEaiPdPTMUJDmsr15U1xyiMNUTkKn4TBRL7u
 0kWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdOLN8iSy3qRTlCt7W2Tkt/uKoMbxQxcelWIFl4Tv0c=;
 b=V8SylPq7eri1pHil31Jr1cVQE1rW7PHSTCjNSD+JiAf+YYTkO6xDG8rUEZtU1hWrqu
 GaczPfh5ExgUarsQn2MleVfSsyiVtEM74nGAV2E4SmLAvc9nC7Uzo1YVn47MuMJMemN7
 6gEnh0UbgMg6A6KEAmDoARSqVQpydcCChLbdT+cCLN1sHlqzaz6kVD2YUbmdUmrTNdtX
 8hsOZmgitchC1jN6+4P3YMFuqOGLb3/W/JPwn9dM6hpDe+/8VOjZZ2MoJdctRkuJq8AU
 RrNYeHiEypIQpZ/EnGOe2wcuGsTf0GEkef7rRdL6HKkyzTJzg02+J3Ji7TFbLXHAvLP8
 aNTg==
X-Gm-Message-State: AOAM532jFujdbd5/ARgOKPNntfuVNu+S/D0jESoasohBUqrZAymLZAFd
 N6O/YB2k6NlE+naOnCcg9KI=
X-Google-Smtp-Source: ABdhPJxusXpCCs970jULRWNwmy+cIDjL8TtVTjsnERTVMudprC/skPz9sZt48aM94CVE/awhDDaZHQ==
X-Received: by 2002:a17:906:7687:: with SMTP id
 o7mr14362406ejm.209.1612740182250; 
 Sun, 07 Feb 2021 15:23:02 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u21sm7540016ejj.120.2021.02.07.15.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 15:23:01 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Mon,  8 Feb 2021 01:21:32 +0200
Message-Id: <20210207232141.2142678-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH net-next 0/9] Cleanup in brport flags switchdev
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
standalone ports mode and multiple bridges on the Ocelot/Felix DSA
driver. Proper support for standalone mode requires disabling address
learning, which in turn requires interaction with the switchdev notifier,
which is actually where most of the patches are.

Vladimir Oltean (9):
  net: bridge: don't print in br_switchdev_set_port_flag
  net: bridge: offload initial and final port flags through switchdev
  net: dsa: stop setting initial and final brport flags
  net: dsa: kill .port_egress_floods overengineering
  net: squash switchdev attributes PRE_BRIDGE_FLAGS and BRIDGE_FLAGS
  net: bridge: stop treating EOPNOTSUPP as special in
    br_switchdev_set_port_flag
  net: mscc: ocelot: use separate flooding PGID for broadcast
  net: mscc: ocelot: offload bridge port flags to device
  net: mscc: ocelot: support multiple bridges

 drivers/net/dsa/b53/b53_common.c              |  18 ++-
 drivers/net/dsa/mv88e6xxx/chip.c              |  19 ++-
 drivers/net/dsa/ocelot/felix.c                |   9 ++
 .../marvell/prestera/prestera_switchdev.c     |  16 +--
 .../mellanox/mlxsw/spectrum_switchdev.c       |  28 ++--
 drivers/net/ethernet/mscc/ocelot.c            | 135 +++++++++++++-----
 drivers/net/ethernet/mscc/ocelot_net.c        |   4 +
 drivers/net/ethernet/mscc/ocelot_vsc7514.c    |   2 +-
 drivers/net/ethernet/rocker/rocker_main.c     |  24 +---
 drivers/net/ethernet/ti/cpsw_switchdev.c      |  20 +--
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c       |  22 +--
 include/net/dsa.h                             |   6 +-
 include/net/switchdev.h                       |   8 +-
 include/soc/mscc/ocelot.h                     |  26 ++--
 net/bridge/br_if.c                            |  24 +++-
 net/bridge/br_netlink.c                       |  67 +++++----
 net/bridge/br_private.h                       |   8 +-
 net/bridge/br_switchdev.c                     |  35 ++---
 net/dsa/dsa_priv.h                            |   4 +-
 net/dsa/port.c                                |  40 ++----
 net/dsa/slave.c                               |   3 -
 21 files changed, 285 insertions(+), 233 deletions(-)

-- 
2.25.1


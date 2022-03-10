Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B844D4826
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 14:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3294C4014B;
	Thu, 10 Mar 2022 13:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGXNCSAVnm0t; Thu, 10 Mar 2022 13:36:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CA9204027F;
	Thu, 10 Mar 2022 13:36:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8329EC0073;
	Thu, 10 Mar 2022 13:36:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1CD95C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAA2184222
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8_qXakrvLV7 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 13:36:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 990CF817C3
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:40 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id z11so9397571lfh.13
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 05:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=1DB/xtUlg/bv2cuDVJn+P6RhKyQoRLt8abFtk957r6s=;
 b=KBGIzYMTJcy4uw8dS+TAg5MvLQFgLkwp2dDT3D+ltBEnHvsAQgnYDBZONyDk4w0Axx
 PVVD6ezuq5vH+cvZ8jHllKjdd9G/oTQggbuVa29313tGszcpcO5A+42DVTsP4sEtPJHF
 rFjfeJuRAa5OeLyH49lDkzNLaQ+ThCDPZaQZkOxXNmni4mfRJIJ2M+kpomLff6L1IyaI
 IU6tc5P1rlt0jsPyBlbYcETV/4IuQE/F2ezJU9KzTltndoCqOhlqnl4s3BW80ekQ1MX4
 Q9fbbhfYZdo9jE310hgPS9x8zUdqvoRiuNEGZUeWuslxgEBq1cjHHLvNNBpY6gAUvjyL
 mkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=1DB/xtUlg/bv2cuDVJn+P6RhKyQoRLt8abFtk957r6s=;
 b=Iw1IaYEr2hk93JogFlPAePA2hTcUp9OADVw98J36nz+LPndSKP3np96WCiyJUMTcva
 unYc9/LP4xV5OhjkYn/SOu85Ii2IalCOcQs4P3Jc9EPyNDgOiiLoAG0I/2WpedfTka1j
 /rndtpQNaO2CePFeqOKn4K+TsP0WL1Rr0oCJN41HWbfF504SV6mDZK88xmuU+9rDmGZ0
 yqR8MK7nel0v1c2rtLjUm+p4wjTe3rSid74xR1edZPEFtsEs/qwq81TC7cZRXi+4k9Ll
 Wvgc1zxqsDw6KdiX/OjVsKlzNnlOgIAmJ90my7FibM+f1VT2juXNrpsX3Q73jrBcIHcq
 6cTg==
X-Gm-Message-State: AOAM532fmnUVkEdz4z7CdsMAqVP9sJ+NIOgu6RWaojyHQiIuJXwLcqEM
 IBp6g6x5UvNZQS4m/poAmnE=
X-Google-Smtp-Source: ABdhPJy2Fp0IQemgzjdj7RNcr85FsKQiGyYZMQp8zrY1JJ8cAi7qZVOQefmAvKJ21S0Lpl2rnOAR6w==
X-Received: by 2002:a19:e00e:0:b0:443:127b:558d with SMTP id
 x14-20020a19e00e000000b00443127b558dmr3016797lfg.396.1646919398432; 
 Thu, 10 Mar 2022 05:36:38 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 i2-20020a05651c120200b00247d22bc318sm1060299lja.22.2022.03.10.05.36.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 05:36:37 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 14:36:14 +0100
Message-Id: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH iproute2-next 0/3] Extend locked port feature with
	FDB locked flag (MAC-Auth/MAB)
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

This patch set extends the locked port feature for devices
that are behind a locked port, but do not have the ability to
authorize themselves as a supplicant using IEEE 802.1X.
Such devices can be printers, meters or anything related to
fixed installations. Instead of 802.1X authorization, devices
can get access based on their MAC addresses being whitelisted.

For an authorization daemon to detect that a device is trying
to get access through a locked port, the bridge will add the
MAC address of the device to the FDB with a locked flag to it.
Thus the authorization daemon can catch the FDB add event and
check if the MAC address is in the whitelist and if so replace
the FDB entry without the locked flag enabled, and thus open
the port for the device.

This feature is known as MAC-Auth or MAC Authentication Bypass
(MAB) in Cisco terminology, where the full MAB concept involves
additional Cisco infrastructure for authorization. There is no
real authentication process, as the MAC address of the device
is the only input the authorization daemon, in the general
case, has to base the decision if to unlock the port or not.

With this patch set, an implementation of the offloaded case is
supplied for the mv88e6xxx driver. When a packet ingresses on
a locked port, an ATU miss violation event will occur. When
handling such ATU miss violation interrupts, the MAC address of
the device is added to the FDB with a zero destination port
vector (DPV) and the MAC address is communicated through the
switchdev layer to the bridge, so that a FDB entry with the
locked flag enabled can be added.

Hans Schultz (3):
  net: bridge: add fdb flag to extent locked port feature
  net: switchdev: add support for offloading of fdb locked flag
  net: dsa: mv88e6xxx: mac-auth/MAB implementation

 drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
 drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
 drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
 drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
 drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
 drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
 drivers/net/dsa/mv88e6xxx/port.h              |  1 +
 include/net/switchdev.h                       |  3 +-
 include/uapi/linux/neighbour.h                |  1 +
 net/bridge/br.c                               |  3 +-
 net/bridge/br_fdb.c                           | 13 +++-
 net/bridge/br_input.c                         | 11 ++-
 net/bridge/br_private.h                       |  5 +-
 15 files changed, 167 insertions(+), 14 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h

-- 
2.30.2


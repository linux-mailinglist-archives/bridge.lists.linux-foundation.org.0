Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F92532D35
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 17:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25D3940C3D;
	Tue, 24 May 2022 15:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6AOFVGjxb1N; Tue, 24 May 2022 15:22:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9646B40C3E;
	Tue, 24 May 2022 15:22:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E086C007E;
	Tue, 24 May 2022 15:22:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E93EC002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AD5C415E4
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8RD9XMqdeiF for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 15:22:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1531A4097E
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:03 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id u7so20589435ljd.11
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 08:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=iIwfYVv7fNEx0HicZDp/iynxMZIWTs5X4JU/e8Toj3Q=;
 b=YaH1DgHLdkIdhEkYiJgKlTaJvj4NY2mznzZKESIAkDFw10sVbEHVoiK2zstW/JE8nu
 nRp07bJCs6GvOyurfm4MwvVX1zkyRRlntXwRIot1WglIJROzBtn5sJ9lRAgQd39vCf7H
 q0zswAaje5UcywXY1hwzEXbjPNaQ9WWT5ckeoPlZ4ZE3KnfpGmJep2L2k7lAGcJpT7uO
 0VgE0jnh7gFcc0LzgHgyrg+kXKXRFwFZmKBIkKODmpBHwcjYCjL0a8bxWnmYwFwZHWhT
 Wz0X99R6O2cLOjxYvmWp3ynXDiuJqB5egZ3ShbmqlOMdet2pU2rn8i7MsgLYUqDG/HjT
 jRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=iIwfYVv7fNEx0HicZDp/iynxMZIWTs5X4JU/e8Toj3Q=;
 b=05W9vAv7JFd72F26nj0PGVo1DMCWIrpxKxwn0wC6LjEn6v2lSItELePzPN+L+2MAxh
 VA7NJsc8wAR8OyDd7+q77E0RHoOcKWprtHihO99I7PbYfzB5mvjfSXqsuPrgmEh2Ve8Q
 S8ba3veGG+r8IWXeHq+3qT0xNxW9dscITBtfqYygyGZlH20xDelAxIvwOwkGuwYe+cO8
 0lKxw3EugUr2G2hREPL+EhIChCntH173jUA0ljaqbsu/PfcyvropmGDIfElR/ASpjqoD
 s/hNuU7F2AuQPqrT8UIQGmPzcteReSYNXmnzAkqjGYuvvzjOoYG1EOyCb2OM1XrT/vOy
 VGrg==
X-Gm-Message-State: AOAM532tHN0TG6LGvoM5xeQbycwUoBkQWKimtF6XdSZGDnojNAvZf6Jl
 cAmxEwIwSZJgKEaOU9MLm8w=
X-Google-Smtp-Source: ABdhPJxKOf1Z5C8nqRQC4aBKdkYusKDJvRIrXFggpup7JrNlk7rEBE+aZ9ziKk36agciZEwkl2qFOw==
X-Received: by 2002:a2e:22c3:0:b0:253:e5f5:51f6 with SMTP id
 i186-20020a2e22c3000000b00253e5f551f6mr8645905lji.293.1653405720493; 
 Tue, 24 May 2022 08:22:00 -0700 (PDT)
Received: from wse-c0127.westermo.com
 (2-104-116-184-cable.dk.customer.tdc.net. [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a2e3316000000b00253deeaeb3dsm2441404ljc.131.2022.05.24.08.21.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 08:21:59 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 24 May 2022 17:21:40 +0200
Message-Id: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH V3 net-next 0/4] Extend locked port feature with
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

Hans Schultz (4):
  net: bridge: add fdb flag to extent locked port feature
  net: switchdev: add support for offloading of fdb locked flag
  net: dsa: mv88e6xxx: mac-auth/MAB implementation
  selftests: forwarding: add test of MAC-Auth Bypass to locked port
    tests

 drivers/net/dsa/mv88e6xxx/Makefile            |   1 +
 drivers/net/dsa/mv88e6xxx/chip.c              |  40 ++-
 drivers/net/dsa/mv88e6xxx/chip.h              |   5 +
 drivers/net/dsa/mv88e6xxx/global1.h           |   1 +
 drivers/net/dsa/mv88e6xxx/global1_atu.c       |  35 ++-
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 249 ++++++++++++++++++
 .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   |  40 +++
 drivers/net/dsa/mv88e6xxx/port.c              |  32 ++-
 drivers/net/dsa/mv88e6xxx/port.h              |   2 +
 include/net/dsa.h                             |   6 +
 include/net/switchdev.h                       |   3 +-
 include/uapi/linux/neighbour.h                |   1 +
 net/bridge/br.c                               |   3 +-
 net/bridge/br_fdb.c                           |  18 +-
 net/bridge/br_if.c                            |   1 +
 net/bridge/br_input.c                         |  11 +-
 net/bridge/br_private.h                       |   9 +-
 .../net/forwarding/bridge_locked_port.sh      |  42 ++-
 18 files changed, 470 insertions(+), 29 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h

-- 
2.30.2


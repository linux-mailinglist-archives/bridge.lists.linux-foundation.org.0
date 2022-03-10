Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8B34D4964
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B326241295;
	Thu, 10 Mar 2022 14:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1LwPk1bRn7O2; Thu, 10 Mar 2022 14:23:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4ED58410D2;
	Thu, 10 Mar 2022 14:23:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14032C0073;
	Thu, 10 Mar 2022 14:23:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BBAC8C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96F6841295
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cS62l-_L_ebB for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:23:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D3BB410D2
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:43 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id w7so9732966lfd.6
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 06:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=1DB/xtUlg/bv2cuDVJn+P6RhKyQoRLt8abFtk957r6s=;
 b=R47rCIiaVpicOQHFE/ayhGe8nzDLNGihYQm16/4lLr5BnZFPhczoq/4SkPQVJjbAk6
 T9QwpPeL9HR93EwbKL/mHtDXm+P4q0Y4FrvFRJhfP8g8UlO6vQK40gr1hG9deQFjHWHo
 BRGAq32r/Qz8W3Rxtde785V9nWskjzNJesjmgCzwRj3d5XR1tTJkaAmgUmUJMVd3YSXU
 NKHqBkTlu8Vec9zHdjobhjiFLPCsHuJ3MbsXkMPmkr2I6vNdPGsf+dYn6wxsCzzkSbWJ
 LbDKEfJ/7PifVqxh52Zg2G537v0ln0q/ebFkdTzNDjJ7FHsOUzVrHU9aM8JHpoXZ60x0
 4fXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=1DB/xtUlg/bv2cuDVJn+P6RhKyQoRLt8abFtk957r6s=;
 b=wMfGH97Yk2keJfnDKgyzuOspf0uTDITKlKT36cokbvDzgIV/k1JjgvbwdgKMkELt+j
 5SWFjP+46sUc+usQ94g9slhb9pAVFrn/nTT8+2BcPT9Ft+ZISCJRJ5GPegkY2ty1YrXV
 cuol5GRui5LGudwPojfrF5Ddax/KgCIKxL88Az+0vasIrb6YGwbQeWFY7EER6gYRekR9
 BeHCfSJ/RFQ4NMNCL7Jv6GwLUE/CGmTMHRuTt2oWDbYXQ+wJrdTRdTeKsZTWgDWcEcnR
 2g9czOhiRLDIr/knAcRKbVhBWrd68XSpysPdtHb99Pyfmk19oICsTmK5i5JfFRU88Q9E
 8NOg==
X-Gm-Message-State: AOAM531tuouX686cfHBbxmBC+fRCcX2ZGMS8Lx7z0S5mf7/N+EbssQAw
 AFddxcXZRDZQrQE0IL4UDQ4=
X-Google-Smtp-Source: ABdhPJxBHuD4Ir0V/8sdNmCwQKZQxBy55uJMs4YaKnO3j08/Mcfzwgu4Mle7Aab1AR9Lx1DY8y4Eew==
X-Received: by 2002:ac2:554b:0:b0:448:1f2e:59bf with SMTP id
 l11-20020ac2554b000000b004481f2e59bfmr3274685lfk.500.1646922221365; 
 Thu, 10 Mar 2022 06:23:41 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 10-20020a2e080a000000b00247f82bbc6fsm1088932lji.54.2022.03.10.06.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 06:23:41 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 15:23:17 +0100
Message-Id: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next 0/3] Extend locked port feature with FDB
	locked flag (MAC-Auth/MAB)
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


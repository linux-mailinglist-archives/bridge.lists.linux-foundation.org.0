Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80BE4C88C8
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 11:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89ABF40643;
	Tue,  1 Mar 2022 10:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztGxPcW1g-aw; Tue,  1 Mar 2022 10:03:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4349240621;
	Tue,  1 Mar 2022 10:03:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2FA3C007B;
	Tue,  1 Mar 2022 10:03:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C513C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 116C4410DC
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id agxMluRwr_-x for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 10:03:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0DF0410CF
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 10:03:49 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id j7so25962316lfu.6
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 02:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=1yqD4KQaM9b/j4qTrGplWK9SeozZApe70PduPs9Vk3k=;
 b=ok+9qxMt9502Oui1Sb99TSBc1nMun/S4I+2zm9uMBsy9S2ZWqO/7/Wdh7OkhImeF8B
 TF/J4GXLY3GeZKzuF/0jIH4/jxCxVZxOfqfCdfARMS462dxwd5UVXMkRJVr62Z2gxcgB
 iopiSpgnOk6Nk7MXlQBCPGh1XpBAhDHzWvZzZif9A9V0oh1PS6qhhAh8X2w2tA9nrwR0
 Ua1iyFST+99T1dDsWxCgqJeaeIt4wpUNMJTd+Gl2Z0iF2aJ6E7UdHkub7bDRpT86Cu5c
 ZQkWSItIfktnccjGPegT9KTh3D/8Qin3tqiCI0SDIRZ3qvAQ3vZ8dEm7cyDqofHrjuFk
 Hzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=1yqD4KQaM9b/j4qTrGplWK9SeozZApe70PduPs9Vk3k=;
 b=Ys2E1IvTQPv2xaY3SLPepdEXLPh1KPHXfEG94DmfU7t2gmOp6xLnnsqqzPHF4pnwyp
 A4Wa6xUxc2RCN4YD0FKHeDZcha7FTLG7GQna3196HBe/2sLYngXGpHXSiCMgGR1kzH1j
 T6uheMIEeSBxxqWMzednWIM3kyTqAWXScKElja9tGOw636v4mqtnw8wCOS3v2p7wthDz
 /YI46Jisl/SJnjsUhUG1AyuJq5jW8He0KW/7vqsutxlCxgTGQF2CE9QjonlFXJsrMZaZ
 mPn/2Z+mBD2YOE5GSPQKO2vA8qvQWzoyaKeoQiY58OVhdWz+e0Qkg5cM9CdJZ8gu9fJJ
 QdVg==
X-Gm-Message-State: AOAM533eF+UAH0Uhc89uwQTheDdB5oJLGEX7DMVt1RuGRRSLb4ffSU0m
 W9ufZDMem2bAMtfGowztjs/Xbw==
X-Google-Smtp-Source: ABdhPJyZkqkffd6OzcKZDgXSOmBna7OCxMtSnaz/N5ibfBd4pawWA0csNQynqxC9BUFtF+f3ZljV7A==
X-Received: by 2002:a05:6512:3caa:b0:443:7e66:b98a with SMTP id
 h42-20020a0565123caa00b004437e66b98amr15570936lfv.169.1646129027199; 
 Tue, 01 Mar 2022 02:03:47 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 s27-20020a05651c049b00b002460fd4252asm1826822ljc.100.2022.03.01.02.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 02:03:46 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  1 Mar 2022 11:03:11 +0100
Message-Id: <20220301100321.951175-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 00/10] net: bridge: Multiple Spanning
	Trees
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

The bridge has had per-VLAN STP support for a while now, since:

https://lore.kernel.org/netdev/20200124114022.10883-1-nikolay@cumulusnetworks.com/

The current implementation has some problems:

- The mapping from VLAN to STP state is fixed as 1:1, i.e. each VLAN
  is managed independently. This is awkward from an MSTP (802.1Q-2018,
  Clause 13.5) point of view, where the model is that multiple VLANs
  are grouped into MST instances.

  Because of the way that the standard is written, presumably, this is
  also reflected in hardware implementations. It is not uncommon for a
  switch to support the full 4k range of VIDs, but that the pool of
  MST instances is much smaller. Some examples:

  Marvell LinkStreet (mv88e6xxx): 4k VLANs, but only 64 MSTIs
  Marvell Prestera: 4k VLANs, but only 128 MSTIs
  Microchip SparX-5i: 4k VLANs, but only 128 MSTIs

- By default, the feature is enabled, and there is no way to disable
  it. This makes it hard to add offloading in a backwards compatible
  way, since any underlying switchdevs have no way to refuse the
  function if the hardware does not support it

- The port-global STP state has precedence over per-VLAN states. In
  MSTP, as far as I understand it, all VLANs will use the common
  spanning tree (CST) by default - through traffic engineering you can
  then optimize your network to group subsets of VLANs to use
  different trees (MSTI). To my understanding, the way this is
  typically managed in silicon is roughly:

  Incoming packet:
  .----.----.--------------.----.-------------
  | DA | SA | 802.1Q VID=X | ET | Payload ...
  '----'----'--------------'----'-------------
                        |
                        '->|\     .----------------------------.
                           | +--> | VID | Members | ... | MSTI |
                   PVID -->|/     |-----|---------|-----|------|
                                  |   1 | 0001001 | ... |    0 |
                                  |   2 | 0001010 | ... |   10 |
                                  |   3 | 0001100 | ... |   10 |
                                  '----------------------------'
                                                             |
                               .-----------------------------'
                               |  .------------------------.
                               '->| MSTI | Fwding | Lrning |
                                  |------|--------|--------|
                                  |    0 | 111110 | 111110 |
                                  |   10 | 110111 | 110111 |
                                  '------------------------'

  What this is trying to show is that the STP state (whether MSTP is
  used, or ye olde STP) is always accessed via the VLAN table. If STP
  is running, all MSTI pointers in that table will reference the same
  index in the STP stable - if MSTP is running, some VLANs may point
  to other trees (like in this example).

  The fact that in the Linux bridge, the global state (think: index 0
  in most hardware implementations) is supposed to override the
  per-VLAN state, is very awkward to offload. In effect, this means
  that when the global state changes to blocking, drivers will have to
  iterate over all MSTIs in use, and alter them all to match. This
  also means that you have to cache whether the hardware state is
  currently tracking the global state or the per-VLAN state. In the
  first case, you also have to cache the per-VLAN state so that you
  can restore it if the global state transitions back to forwarding.

This series adds a new mst_enable bridge setting (as suggested by Nik)
that can only be changed when no VLANs are configured on the
bridge. Enabling this mode has the following effect:

- The port-global STP state is used to represent the CST (Common
  Spanning Tree) (1/10)

- Ingress STP filtering is deferred until the frame's VLAN has been
  resolved (1/10)

- The preexisting per-VLAN states can no longer be controlled directly
  (1/10). They are instead placed under the MST module's control,
  which is managed using a new netlink interface (described in 3/10)

- VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
  new global VLAN option (2/10)

4-5/10 adds switchdev notifications so that a driver can track VID to
MSTI mappings and MST port states.

An offloading implementation is this provided for mv88e6xxx.

A proposal for the corresponding iproute2 interface is available here:

https://github.com/wkz/iproute2/tree/mst

Tobias Waldekranz (10):
  net: bridge: mst: Multiple Spanning Tree (MST) mode
  net: bridge: mst: Allow changing a VLAN's MSTI
  net: bridge: mst: Support setting and reporting MST port states
  net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations
  net: bridge: mst: Notify switchdev drivers of MST state changes
  net: dsa: Pass VLAN MSTI migration notifications to driver
  net: dsa: Pass MST state changes to driver
  net: dsa: mv88e6xxx: Disentangle STU from VTU
  net: dsa: mv88e6xxx: Export STU as devlink region
  net: dsa: mv88e6xxx: MST Offloading

 drivers/net/dsa/mv88e6xxx/chip.c        | 232 ++++++++++++++
 drivers/net/dsa/mv88e6xxx/chip.h        |  38 +++
 drivers/net/dsa/mv88e6xxx/devlink.c     |  94 ++++++
 drivers/net/dsa/mv88e6xxx/global1.h     |  10 +
 drivers/net/dsa/mv88e6xxx/global1_vtu.c | 311 ++++++++++--------
 include/net/dsa.h                       |   5 +
 include/net/switchdev.h                 |  17 +
 include/uapi/linux/if_bridge.h          |  17 +
 include/uapi/linux/if_link.h            |   1 +
 include/uapi/linux/rtnetlink.h          |   5 +
 net/bridge/Makefile                     |   2 +-
 net/bridge/br_input.c                   |  17 +-
 net/bridge/br_mst.c                     | 402 ++++++++++++++++++++++++
 net/bridge/br_netlink.c                 |  17 +-
 net/bridge/br_private.h                 |  31 ++
 net/bridge/br_stp.c                     |   3 +
 net/bridge/br_switchdev.c               |  57 ++++
 net/bridge/br_vlan.c                    |  20 +-
 net/bridge/br_vlan_options.c            |  24 +-
 net/dsa/dsa_priv.h                      |   3 +
 net/dsa/port.c                          |  40 +++
 net/dsa/slave.c                         |  12 +
 22 files changed, 1216 insertions(+), 142 deletions(-)
 create mode 100644 net/bridge/br_mst.c

-- 
2.25.1


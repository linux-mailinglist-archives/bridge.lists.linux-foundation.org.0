Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5AC4DB426
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87188842E6;
	Wed, 16 Mar 2022 15:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkPnNaW_JesD; Wed, 16 Mar 2022 15:09:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AAF1081AAC;
	Wed, 16 Mar 2022 15:09:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F1D5C000B;
	Wed, 16 Mar 2022 15:09:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2A399C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1971181A99
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAl1l_hk11Uq for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:09:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC7868195C
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:08 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id bu29so4339522lfb.0
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=/1W+dnnlhMQP+e4IRANnXf+TdpO08fnlprvN//t7dF4=;
 b=dq+eeU6WXHkoakUsvtYdLf2nYOhVWitfLRIbs3Cq4jH7z7eyNfnU+WWS/AUGQsXkV6
 gnKgM2rLAW5bVC0zUxTeKLR1k7pFRAJfqGEvH5HXSgWVkBrCfy9/1LrYvqaeKDKH1P3H
 RxlfQxBnttoORFTzRLOJyiKpiI2iiaqAHFgcv++LRMEvV4q9QldcUJwlBjj8mQZwuGeo
 45iVPSKCu6NUCiKjRXU2jaXYW2tbvN+Ken5fTfCe7CifH58wUW7zXNvsDl0ykdURgVUG
 +v1tmCMnwa7YFS8JVvMOBqEdPLaQ/EL7telcJ3BjGnQfnqV/DT5FgqEy+mEL0n3O51Tl
 hMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=/1W+dnnlhMQP+e4IRANnXf+TdpO08fnlprvN//t7dF4=;
 b=APB3AWsf5OwIBkoySBiFs3oRottYjntMxx2MwXQl0oJ5K46I0Hs1rrHEpyr04wKMS2
 y4FXVbrsqaNiKFH+EUO7W3cCj/Wq9IT38WFqZ+/BmtPXOyvktk3m/Q0Bkg0fGe7Rvbf4
 d4ilWPQoVTqYTZ9ZZotTCg/SvvLFlC56ATRfYNkvsSNPCiIDdWiotMIyg9qp1BFkXv/P
 4Dit9vRuiHaqe0e96UWp4HxsyT/KEz2khRxXWp2Vd1uSeUo+pOZSb6vDrhwWsihMi8kY
 IKApO3o4AMdIsKuH6rsYyJZGKfDZUCzoojbIv6LbphOXZ4lFzkeu0SdE3FsS2FG4bVoi
 IKXw==
X-Gm-Message-State: AOAM533c/M7M8F0LCjYcZY3adM+MeMaC/WQkszpMKUBriZz4jmTh/GAn
 owGiUFZTskrRC7nRgZu7+Ny4Rg==
X-Google-Smtp-Source: ABdhPJzKzVSfDws68XyH5Y5SbVgfWQK2aXlZrJmE9cx7FfWNoHKul5PxriLRfcNpuyZzvwsbkQTYSw==
X-Received: by 2002:a05:6512:39ce:b0:448:b4fd:f389 with SMTP id
 k14-20020a05651239ce00b00448b4fdf389mr59430lfu.219.1647443346499; 
 Wed, 16 Mar 2022 08:09:06 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 d2-20020a194f02000000b00448b915e2d3sm176048lfb.99.2022.03.16.08.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:09:05 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Mar 2022 16:08:42 +0100
Message-Id: <20220316150857.2442916-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v5 net-next 00/15] net: bridge: Multiple Spanning
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
  Spanning Tree) (1/15)

- Ingress STP filtering is deferred until the frame's VLAN has been
  resolved (1/15)

- The preexisting per-VLAN states can no longer be controlled directly
  (1/15). They are instead placed under the MST module's control,
  which is managed using a new netlink interface (described in 3/15)

- VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
  new global VLAN option (2/15)

Switchdev notifications are added so that a driver can track:
- MST enabled state
- VID to MSTI mappings
- MST port states

An offloading implementation is this provided for mv88e6xxx.

A proposal for the corresponding iproute2 interface is available here:

https://github.com/wkz/iproute2/tree/mst

v4 -> v5:
  Bridge:
  - Fix build error in intermediate commit (Jakub)
  - Use rcu safe list iterator in br_mst_info_size (Nik)
  - Propagate any errors back to the caller when changing an MST state
    (Vladimir)
  DSA:
  - Boolean algebra workshop (Vladimir, feat. De Morgan)
  - Only flush FDBs on ports when transitioning from
    forwarding/learning to listening/blocking/disabled (Vladimir)

v3 -> v4:
  Bridge:
  - Constify arguments where possible (Nik)
  - Use non-atomic bitmap operators (Nik)
  - Rename br_mst_parse -> br_mst_process (Nik)
  - Account for the dynamic size of generated MST netlink data (Nik)
  - Provide proper error reporting on invalid input (Nik)
  - Export bridge helpers under GPL (Nik)
  - Fix build when bridge VLAN filtering is compiled out (Intel bot)
  - Allocate VLAN bitmaps on the stack (Vladimir)
  DSA:
  - Propagate MST state change errors back to the bridge layer
    (Vladimir)
  - Fix issue with software fallback (Vladimir)
  - Ignore FDB events on software bridged ports
  mv88e6xxx:
  - Use non-atomic bitmap operators (Vladimir)
  - Restore refcount in error path (Vladimir)

v2 -> v3:
  Bridge:
  - Use new boolopt API to enable/disable the MST mode (Nik)
  - Mark br_mst_vlan_set_state as static (Vladimir)
  - Avoid updates/notifications on repeated VLAN to MSTI mapping
    configurations (Vladimir)
  - Configure MSTI states via the existing RTM_GET/SETLINK interface
    (Roopa)
  - Refactor switchdev replay logic (Vladimir)
  - Send switchdev notifications when enabling/disabling MST
    (Vladimir)
  DSA:
  - Align VLAN MSTI callback with existing APIs (Vladimir)
  - Only flush entries in the affected VLANs when changing an MST
    state (Vladimir)
  - Refuse offloading, unless all required ops are implemented
    (Vladimir)
  mv88e6xxx:
  - Always keep the driver's MST state in sync with hardware
    (Vladimir)
  - Fix SID leaks (Vladimir)
  - Only flush entries in the affected VLANs when changing an MST
    state (Vladimir)

v1 (RFC) -> v2:
  - Add a separate MST mode that is distinct from the exiting per-VLAN
    state functionality
  - Control MSTI states explicitly, rather than via an associated VLAN

Tobias Waldekranz (15):
  net: bridge: mst: Multiple Spanning Tree (MST) mode
  net: bridge: mst: Allow changing a VLAN's MSTI
  net: bridge: mst: Support setting and reporting MST port states
  net: bridge: mst: Notify switchdev drivers of MST mode changes
  net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations
  net: bridge: mst: Notify switchdev drivers of MST state changes
  net: bridge: mst: Add helper to map an MSTI to a VID set
  net: bridge: mst: Add helper to check if MST is enabled
  net: bridge: mst: Add helper to query a port's MST state
  net: dsa: Validate hardware support for MST
  net: dsa: Pass VLAN MSTI migration notifications to driver
  net: dsa: Handle MST state changes
  net: dsa: mv88e6xxx: Disentangle STU from VTU
  net: dsa: mv88e6xxx: Export STU as devlink region
  net: dsa: mv88e6xxx: MST Offloading

 drivers/net/dsa/mv88e6xxx/chip.c        | 304 +++++++++++++++++++-
 drivers/net/dsa/mv88e6xxx/chip.h        |  38 +++
 drivers/net/dsa/mv88e6xxx/devlink.c     |  94 +++++++
 drivers/net/dsa/mv88e6xxx/global1.h     |  10 +
 drivers/net/dsa/mv88e6xxx/global1_vtu.c | 311 ++++++++++++---------
 include/linux/if_bridge.h               |  19 ++
 include/net/dsa.h                       |   6 +
 include/net/switchdev.h                 |  16 ++
 include/uapi/linux/if_bridge.h          |  18 ++
 include/uapi/linux/rtnetlink.h          |   1 +
 net/bridge/Makefile                     |   2 +-
 net/bridge/br.c                         |   5 +
 net/bridge/br_input.c                   |  17 +-
 net/bridge/br_mst.c                     | 357 ++++++++++++++++++++++++
 net/bridge/br_netlink.c                 |  44 ++-
 net/bridge/br_private.h                 |  61 ++++
 net/bridge/br_stp.c                     |   6 +
 net/bridge/br_switchdev.c               |  46 +++
 net/bridge/br_vlan.c                    |  20 +-
 net/bridge/br_vlan_options.c            |  20 ++
 net/dsa/dsa_priv.h                      |   7 +
 net/dsa/port.c                          | 113 +++++++-
 net/dsa/slave.c                         |  18 ++
 23 files changed, 1381 insertions(+), 152 deletions(-)
 create mode 100644 net/bridge/br_mst.c

-- 
2.25.1


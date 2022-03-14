Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 119C74D7F0C
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B4A560687;
	Mon, 14 Mar 2022 09:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7qHNHRM5_o6; Mon, 14 Mar 2022 09:53:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4C4B2606FF;
	Mon, 14 Mar 2022 09:52:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D07FC0084;
	Mon, 14 Mar 2022 09:52:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A129C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:52:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2779E83313
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7BGOvj-uZN3 for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:52:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B62FF832D9
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:52:56 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id q5so20947070ljb.11
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=xMFvgybvJF3VqtR+/cQDnuYW+EVkWBbAn5g045aqjjs=;
 b=EhJVlZkVs2Xkt4rI91TPXAMB8GE5CuQUnrCjhdqKM78NXlyd2KT1xa82G7L123WaK4
 sk+8gBjWJv/tz4QeL1Wj2ho7VlzGU6i3j/G9L2MfSyrbKbMyeZrvxhN3qFhFz75VqsQj
 8HtZfXOQqy3Jwp0oWGeypz0WosQYneZa++8U1Vm+DTPm893QA9d+V8bZjOjsv2XlsIdr
 RMuszCzrq10aoOump6Bg3MqM0FCzi6vlLY2ofwGR2lUb3yIQnI3vMEWAlBIgGq0oHFil
 Vuklcxa6QrwBecnnMQhxSpVw34ML5gGET07e3S60l21BxgxZ7AJD8kRAP6OldLkM8Yrg
 obrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=xMFvgybvJF3VqtR+/cQDnuYW+EVkWBbAn5g045aqjjs=;
 b=2IcXly+f6iNiDbhh1AxADO5J8Q62VgsHkx1qJnHSFZK91rEWFOj+fiwUhLRgNKtufP
 97n/AVs1Aul2MqIVvlq/rAzfu/aQWn1fH7r6TtBm13anlBmfh+IzxdIO0wDqoA18nsCb
 D5oU56ymln68GFDfbyBoaM8pu2B4zIFV2BfCrenk9GwcvCaH0wzVtEsmxxsGxRppvtaq
 ICO9LFj0ZXZgBVB3ldcR2ySObck4NhewVQkTjWlvmfoqg7/W8+aAdjouNZzDjPJosYsT
 HBTGTK+xKCJEoCC4bAguiTvPEvOfdq7Hwc9q5nYlrKHKWDkLo0pZuHc65vrwWVfu4Gqi
 Y/9Q==
X-Gm-Message-State: AOAM5307w4WjJOEuWOfOFhq03tGJOQ/cJoR7Xujg6hc7OKGAHjQ8td6c
 5OeJOjhNI2BDEKSAEMVKj4wF1g==
X-Google-Smtp-Source: ABdhPJwfAwHjxQjYONL4Pi1vJVKg4+muhXbkT79GJeSGUZzLhVP3GDmYhBUtTC3Tyf4iU+Bosrj3hw==
X-Received: by 2002:a05:651c:171b:b0:248:c74:76f0 with SMTP id
 be27-20020a05651c171b00b002480c7476f0mr12705190ljb.106.1647251574338; 
 Mon, 14 Mar 2022 02:52:54 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:52:53 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:17 +0100
Message-Id: <20220314095231.3486931-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 00/14] net: bridge: Multiple Spanning
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
  Spanning Tree) (1/14)

- Ingress STP filtering is deferred until the frame's VLAN has been
  resolved (1/14)

- The preexisting per-VLAN states can no longer be controlled directly
  (1/14). They are instead placed under the MST module's control,
  which is managed using a new netlink interface (described in 3/14)

- VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
  new global VLAN option (2/14)

Switchdev notifications are added so that a driver can track:
- MST enabled state
- VID to MSTI mappings
- MST port states

An offloading implementation is this provided for mv88e6xxx.

A proposal for the corresponding iproute2 interface is available here:

https://github.com/wkz/iproute2/tree/mst

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

Tobias Waldekranz (14):
  net: bridge: mst: Multiple Spanning Tree (MST) mode
  net: bridge: mst: Allow changing a VLAN's MSTI
  net: bridge: mst: Support setting and reporting MST port states
  net: bridge: mst: Notify switchdev drivers of MST mode changes
  net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations
  net: bridge: mst: Notify switchdev drivers of MST state changes
  net: bridge: mst: Add helper to map an MSTI to a VID set
  net: bridge: mst: Add helper to check if MST is enabled
  net: dsa: Validate hardware support for MST
  net: dsa: Pass VLAN MSTI migration notifications to driver
  net: dsa: Handle MST state changes
  net: dsa: mv88e6xxx: Disentangle STU from VTU
  net: dsa: mv88e6xxx: Export STU as devlink region
  net: dsa: mv88e6xxx: MST Offloading

 drivers/net/dsa/mv88e6xxx/chip.c        | 305 ++++++++++++++++++++++-
 drivers/net/dsa/mv88e6xxx/chip.h        |  38 +++
 drivers/net/dsa/mv88e6xxx/devlink.c     |  94 +++++++
 drivers/net/dsa/mv88e6xxx/global1.h     |  10 +
 drivers/net/dsa/mv88e6xxx/global1_vtu.c | 311 ++++++++++++++----------
 include/linux/if_bridge.h               |  11 +
 include/net/dsa.h                       |   6 +
 include/net/switchdev.h                 |  16 ++
 include/uapi/linux/if_bridge.h          |  19 ++
 include/uapi/linux/rtnetlink.h          |   1 +
 net/bridge/Makefile                     |   2 +-
 net/bridge/br.c                         |   5 +
 net/bridge/br_input.c                   |  17 +-
 net/bridge/br_mst.c                     | 310 +++++++++++++++++++++++
 net/bridge/br_netlink.c                 |  32 ++-
 net/bridge/br_private.h                 |  43 ++++
 net/bridge/br_stp.c                     |   3 +
 net/bridge/br_switchdev.c               |  46 ++++
 net/bridge/br_vlan.c                    |  20 +-
 net/bridge/br_vlan_options.c            |  20 ++
 net/dsa/dsa_priv.h                      |   6 +
 net/dsa/port.c                          |  99 +++++++-
 net/dsa/slave.c                         |  18 ++
 23 files changed, 1281 insertions(+), 151 deletions(-)
 create mode 100644 net/bridge/br_mst.c

-- 
2.25.1


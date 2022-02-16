Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8618A4B89F9
	for <lists.bridge@lfdr.de>; Wed, 16 Feb 2022 14:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71AA9416F4;
	Wed, 16 Feb 2022 13:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEx3MwOWJp5p; Wed, 16 Feb 2022 13:30:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7776D416C5;
	Wed, 16 Feb 2022 13:30:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2DD69C0073;
	Wed, 16 Feb 2022 13:30:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F474C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67C3E402D0
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4Cqy68OS-ak for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:30:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9329340125
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:30:25 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id n24so3294076ljj.10
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 05:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=7QqLZbURjfzrJmew4Nev3nfIU835eXeMgxWsq8ycOmk=;
 b=8NOmVFFzzhW84LcTC8FUSG7v+xkhO1kmFLtdiXP71jkAj/ZqJjSumEtDVTX43BmOxN
 Qiuxy7Y8e7uThI96MQmYQeVxylr28Onc0ULrJcMg1srI1t5FiYEcO1nCo4j+zRsNPkzw
 xu13xWXrf1lVSJ3xNCq+19EyabVMb+kUBZNP1NlKaoU7pnNeYcctoAlEyskwjV0KT25Z
 M9/QdiICoj4Lr9oMUyeDyiocsSX9/fb16XcVLsghcCKiktSp0wlNVr4pPTtNJJwiLy5f
 BzsGA4sV3wXnIous6TulReojV7EU78ynNCLM/NMHpDHY68p6M39hRQGOZqnaEwfT7BY7
 zG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=7QqLZbURjfzrJmew4Nev3nfIU835eXeMgxWsq8ycOmk=;
 b=g8vfRzOKmuCaq+4bGjl8acBBXibxNoK8ZX+tuGlvKKtPqElI9toEjtEVPHV8T4GpEH
 zmL8BN0mwmzvDdDCi+m6Cir1AcVS/EnUc22/c/SMmZS5aqhKWKlXoXlm1Zsm6yMxmCCb
 MwhUQwrHm1mE+9HasP4t8Blj8CFIkqrHjyJqOHSbhWPOHt1y6B3YaxXHRx44OnPEn16v
 tIgSqiB3d/ODiJS3eWXcGytpPuefAUR4Y2dqw9/DYkJrOtWaNzdSq7eAzikvIlwQwIym
 Hq2Yqi/o+cX2nWcx/+P0KnIKUHXjhbVhPmmgT253qBF8Tdj/kCL7P/5a2kxaKzaEkagf
 VehQ==
X-Gm-Message-State: AOAM530Zs/cG9/Hb0m44LKfSVXrVXktXjlJnlLfVqz4gC6/A8kTjxWHY
 iIzyo9XAd++6bKXsaFjbCGo14g==
X-Google-Smtp-Source: ABdhPJwPyBoUdwJeujjp6omA1mXViAkpti3m/aV9s2ddBHMtuHY4H2Qo4ODdReqTLbrp1F2ckCZW/w==
X-Received: by 2002:a05:651c:1725:b0:244:bbe7:2433 with SMTP id
 be37-20020a05651c172500b00244bbe72433mr2099951ljb.144.1645018223261; 
 Wed, 16 Feb 2022 05:30:23 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id v6sm234780ljd.86.2022.02.16.05.30.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Feb 2022 05:30:22 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Feb 2022 14:29:25 +0100
Message-Id: <20220216132934.1775649-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [RFC net-next 0/9] net: bridge: vlan: Multiple Spanning
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

This series adds support for an arbitrary M:N mapping of VIDs to
MSTIs, proposing one solution to the first issue. An example of an
offload implementation for mv88e6xxx is also provided. Offloading is
done on a best-effort basis, i.e. notifications of the relevant events
are generated, but there is no way for the user to see whether the
per-VLAN state has been offloaded or not. There is also no handling of
the relationship between the port-global state the the per-VLAN ditto.

If I was king of net/bridge/*, I would make the following additional
changes:

- By default, when a VLAN is created, assign it to MSTID 0, which
  would mean that no per-VLAN state is used and that packets belonging
  to this VLAN should be filtered according to the port-global state.

  This way, when a VLAN is configured to use a separate tree (setting
  a non-zero MSTID), an underlying switchdev could oppose it if it is
  not supported.

  Obviously, this adds an extra step for existing users of per-VLAN
  STP states and would thus not be backwards compatible. Maybe this
  means that that is impossible to do, maybe not.

- Swap the precedence of the port-global and the per-VLAN state,
  i.e. the port-global state only applies to packets belonging to
  VLANs that does not make use of a per-VLAN state (MSTID != 0).

  This would make the offloading much more natural, as you avoid all
  of the caching stuff described above.

  Again, this changes the behavior of the kernel so it is not
  backwards compatible. I suspect that this is less of an issue
  though, since my guess is that very few people rely on the old
  behavior.

Thoughts?

Tobias Waldekranz (9):
  net: bridge: vlan: Introduce multiple spanning trees (MST)
  net: bridge: vlan: Allow multiple VLANs to be mapped to a single MST
  net: bridge: vlan: Notify switchdev drivers of VLAN MST migrations
  net: bridge: vlan: Notify switchdev drivers of MST state changes
  net: dsa: Pass VLAN MST migration notifications to driver
  net: dsa: Pass MST state changes to driver
  net: dsa: mv88e6xxx: Disentangle STU from VTU
  net: dsa: mv88e6xxx: Export STU as devlink region
  net: dsa: mv88e6xxx: MST Offloading

 drivers/net/dsa/mv88e6xxx/chip.c        | 223 +++++++++++++++++
 drivers/net/dsa/mv88e6xxx/chip.h        |  38 +++
 drivers/net/dsa/mv88e6xxx/devlink.c     |  94 +++++++
 drivers/net/dsa/mv88e6xxx/global1.h     |  10 +
 drivers/net/dsa/mv88e6xxx/global1_vtu.c | 311 ++++++++++++++----------
 include/linux/if_bridge.h               |   6 +
 include/net/dsa.h                       |   5 +
 include/net/switchdev.h                 |  17 ++
 include/uapi/linux/if_bridge.h          |   1 +
 net/bridge/br_private.h                 |  44 +++-
 net/bridge/br_vlan.c                    | 249 ++++++++++++++++++-
 net/bridge/br_vlan_options.c            |  48 +++-
 net/dsa/dsa_priv.h                      |   3 +
 net/dsa/port.c                          |  40 +++
 net/dsa/slave.c                         |  12 +
 15 files changed, 941 insertions(+), 160 deletions(-)

-- 
2.25.1


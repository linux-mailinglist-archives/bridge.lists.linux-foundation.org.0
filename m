Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44236C09F
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B06283C48;
	Tue, 27 Apr 2021 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBQi_bCqakyN; Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E6FF83C56;
	Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF63FC002F;
	Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D73D7C000F
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B44BA402E3
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnxZtc-AccEJ for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF986402DF
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:50 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id z13so8346309lft.1
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=Jr2O6QSEtOHevsAE5YFTt/YIC0swEXg9oy1TkL8tb2c=;
 b=hZ4E5qrh/uXKwSwpGYAAoXNvtrcOSEQkNHGC5DdEFD1Cz5iepVBfYUgYKfqrKGPHqm
 V7/JfUN/5tFPvbSRI74rerPVudta4hAARuAp//M1Qv3SelDmpesJKyD01s6cxfxZL73S
 8ppoxafEiXyXTHXreytYwcKpCI2hf2Wsi7m/jIQbiPJGGA1b1pev1seooNytxsT1dTmO
 4/PEgLAMEfpgCTfPdhhtbzlcD4NAJpUd1a3H2C7A5uVk7SY4UCMwm8C/h77yfiacZNYW
 JQAOxMfoxiB9RxNQAMIdnCwa70IRb8e2EQmf3i7eG7jEpw2qIRI97Qk1f+u3idEn90is
 MxtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=Jr2O6QSEtOHevsAE5YFTt/YIC0swEXg9oy1TkL8tb2c=;
 b=WY2BGYl6Cvl7QSaYCPONr3pLqdcV50l1iMLJUVbVDtTTJ2Yfb3oojYxgThr/0lCVwb
 LfulhccX5q+6DGiCcK36hA/3JOrv4rF1T4wceonRTIrHOX7CN9KYorW+H9ejhdLr0S28
 LDI303+kfrFWn/XTSw9NHVhcIOdcZCrk9Tcd+y8LceOsuVrrJN9ecFYgm9NkWtipmVDx
 4A5DUqdNcbe0vL1myk8jMGCkaloabcNoGfGDx7/ajYa3XCQQluhhumnxZMfK5cARucuI
 fl4YXchJaUbm5sFjhOhg4y475zfc/MVGU1Ein347f1I8pui8DVAPCfko3hdCdwhcVYOn
 YxDg==
X-Gm-Message-State: AOAM5312L06TfiO4zryg0Yc2dcHVroAvfo34LDeKDqI4qa5f7ULrVNmT
 vjMOn4XmWZlHHVulWLdd85zYyw==
X-Google-Smtp-Source: ABdhPJyEJc4B4Yofjg1fjca33hVj+7n7/kRHbZ7cOa8wErqcV8xQokvZvNDJEBp/HBvgCugQ7qnq+A==
X-Received: by 2002:a19:6b19:: with SMTP id d25mr13285793lfa.406.1619456686893; 
 Mon, 26 Apr 2021 10:04:46 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:46 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:02 +0200
Message-Id: <20210426170411.1789186-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 0/9] net: bridge: Forward offloading
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

## Overview

   vlan1   vlan2
       \   /
   .-----------.
   |    br0    |
   '-----------'
   /   /   \   \
swp0 swp1 swp2 eth0
  :   :   :
  (hwdom 1)

Up to this point, switchdevs have been trusted with offloading
forwarding between bridge ports, e.g. forwarding a unicast from swp0
to swp1 or flooding a broadcast from swp2 to swp1 and swp0. This
series extends forward offloading to include some new classes of
traffic:

- Locally originating flows, i.e. packets that ingress on br0 that are
  to be forwarded to one or several of the ports swp{0,1,2}. Notably
  this also includes routed flows, e.g. a packet ingressing swp0 on
  VLAN 1 which is then routed over to VLAN 2 by the CPU and then
  forwarded to swp1 is "locally originating" from br0's point of view.

- Flows originating from "foreign" interfaces, i.e. an interface that
  is not offloaded by a particular switchdev instance. This includes
  ports belonging to other switchdev instances. A typical example
  would be flows from eth0 towards swp{0,1,2}.

The bridge still looks up its FDB/MDB as usual and then notifies the
switchdev driver that a particular skb should be offloaded if it
matches one of the classes above. It does so by using the _accel
version of dev_queue_xmit, supplying its own netdev as the
"subordinate" device. The driver can react to the presence of the
subordinate in its .ndo_select_queue in what ever way it needs to make
sure to forward the skb in much the same way that it would for packets
ingressing on regular ports.

Hardware domains to which a particular skb has been forwarded are
recorded so that duplicates are avoided.

The main performance benefit is thus seen on multicast flows. Imagine
for example that:

- An IP camera is connected to swp0 (VLAN 1)

- The CPU is acting as a multicast router, routing the group from VLAN
  1 to VLAN 2.

- There are subscribers for the group in question behind both swp1 and
  swp2 (VLAN 2).

With this offloading in place, the bridge need only send a single skb
to the driver, which will send it to the hardware marked in such a way
that the switch will perform the multicast replication according to
the MDB configuration. Naturally, the number of saved skb_clones
increase linearly with the number of subscribed ports.

As an extra benefit, on mv88e6xxx, this also allows the switch to
perform source address learning on these flows, which avoids having to
sync dynamic FDB entries over slow configuration interfaces like MDIO
to avoid flows directed towards the CPU being flooded as unknown
unicast by the switch.


## RFC

- In general, what do you think about this idea?

- hwdom. What do you think about this terminology? Personally I feel
  that we had too many things called offload_fwd_mark, and that as the
  use of the bridge internal ID (nbp->offload_fwd_mark) expands, it
  might be useful to have a separate term for it.

- .dfwd_{add,del}_station. Am I stretching this abstraction too far,
  and if so do you have any suggestion/preference on how to signal the
  offloading from the bridge down to the switchdev driver?

- The way that flooding is implemented in br_forward.c (lazily cloning
  skbs) means that you have to mark the forwarding as completed very
  early (right after should_deliver in maybe_deliver) in order to
  avoid duplicates. Is there some way to move this decision point to a
  later stage that I am missing?

- BR_MULTICAST_TO_UNICAST. Right now, I expect that this series is not
  compatible with unicast-to-multicast being used on a port. Then
  again, I think that this would also be broken for regular switchdev
  bridge offloading as this flag is not offloaded to the switchdev
  port, so there is no way for the driver to refuse it. Any ideas on
  how to handle this?


## mv88e6xxx Specifics

Since we are now only receiving a single skb for both unicast and
multicast flows, we can tag the packets with the FORWARD command
instead of FROM_CPU. The swich(es) will then forward the packet in
accordance with its ATU, VTU, STU, and PVT configuration - just like
for packets ingressing on user ports.

Crucially, FROM_CPU is still used for:

- Ports in standalone mode.

- Flows that are trapped to the CPU and software-forwarded by a
  bridge. Note that these flows match neither of the classes discussed
  in the overview.

- Packets that are sent directly to a port netdev without going
  through the bridge, e.g. lldpd sending out PDU via an AF_PACKET
  socket.

We thus have a pretty clean separation where the data plane uses
FORWARDs and the control plane uses TO_/FROM_CPU.

The barrier between different bridges is enforced by port based VLANs
on mv88e6xxx, which in essence is a mapping from a source device/port
pair to an allowed set of egress ports. In order to have a FORWARD
frame (which carries a _source_ device/port) correctly mapped by the
PVT, we must use a unique pair for each bridge.

Fortunately, there is typically lots of unused address space in most
switch trees. When was the last time you saw an mv88e6xxx product
using more than 4 chips? Even if you found one with 16 (!) devices,
you would still have room to allocate 16*16 virtual ports to software
bridges.

Therefore, the mv88e6xxx driver will allocate a virtual device/port
pair to each bridge that it offloads. All members of the same bridge
are then configured to allow packets from this virtual port in their
PVTs.

Tobias Waldekranz (9):
  net: dfwd: Constrain existing users to macvlan subordinates
  net: bridge: Disambiguate offload_fwd_mark
  net: bridge: switchdev: Recycle unused hwdoms
  net: bridge: switchdev: Forward offloading
  net: dsa: Track port PVIDs
  net: dsa: Forward offloading
  net: dsa: mv88e6xxx: Allocate a virtual DSA port for each bridge
  net: dsa: mv88e6xxx: Map virtual bridge port in PVT
  net: dsa: mv88e6xxx: Forward offloading

 MAINTAINERS                                   |   1 +
 drivers/net/dsa/mv88e6xxx/Makefile            |   1 +
 drivers/net/dsa/mv88e6xxx/chip.c              |  61 ++++++-
 drivers/net/dsa/mv88e6xxx/dst.c               | 160 ++++++++++++++++++
 drivers/net/dsa/mv88e6xxx/dst.h               |  14 ++
 .../net/ethernet/intel/fm10k/fm10k_netdev.c   |   3 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   3 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
 include/linux/dsa/mv88e6xxx.h                 |  13 ++
 include/net/dsa.h                             |  13 ++
 net/bridge/br_forward.c                       |  11 +-
 net/bridge/br_if.c                            |   4 +-
 net/bridge/br_private.h                       |  54 +++++-
 net/bridge/br_switchdev.c                     | 141 +++++++++++----
 net/dsa/port.c                                |  16 +-
 net/dsa/slave.c                               |  36 +++-
 net/dsa/tag_dsa.c                             |  33 +++-
 17 files changed, 510 insertions(+), 57 deletions(-)
 create mode 100644 drivers/net/dsa/mv88e6xxx/dst.c
 create mode 100644 drivers/net/dsa/mv88e6xxx/dst.h
 create mode 100644 include/linux/dsa/mv88e6xxx.h

-- 
2.25.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F1222A2B7
	for <lists.bridge@lfdr.de>; Thu, 23 Jul 2020 00:53:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 999D5886E0;
	Wed, 22 Jul 2020 22:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfVLH-Y010fE; Wed, 22 Jul 2020 22:53:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A497E88432;
	Wed, 22 Jul 2020 22:53:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 816EBC004C;
	Wed, 22 Jul 2020 22:53:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AFF11C004C
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 22:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A30C2045B
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 22:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mTT3tPn6dw88 for <bridge@lists.linux-foundation.org>;
 Wed, 22 Jul 2020 22:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DC6A20397
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 22:53:14 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f2so3378545wrp.7
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 15:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3COe3fqUA0Qp4qhRII0q+bugU0clbZMGqTHVe3gsNXE=;
 b=gnj2AsbUi4lmaYePvvBtgrE4t4HY9TeYsFQhpe5F7WMqXOt/TmXWBn/qtz/0Oqg1cP
 EV9axB2Lw/F0lSEVy1oWxLOWTVhmMpuDaIH8T3d0RV/qz8HmrXi4pD8B7q/a0C/THX9N
 DQP8TDn+sOU8uotjN2Dt9M0uUcYlPxeZmGRLavXICpkS+5qCn7FJLZMci6UCksIBdjof
 SLMWVB1f8oN6FF+yI7Wy2Cr0YtY/oaRvBzh1W5ccMEm/qhXAxe1PLkyDUJxmtLHshbCn
 aqEG4b3YvxDQLfrnlxfoHjXXaZCGRWtLdpTgCTF1PL5NHnN1QLU8kalsbwPQddYlQDvw
 787Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3COe3fqUA0Qp4qhRII0q+bugU0clbZMGqTHVe3gsNXE=;
 b=uOOHQKnJ6gC07ySI6TpBuM2fOH07z3S9LwIuKZEkNRNlPkP+jca4d9N5qMLFWwloF/
 NEqdFBtZdJXOwgd7bo/jK+k9fR7tTHPvG8/ZLelJ2uft1khEYRYYAHaurrSyeHhboIbe
 zPK+MtTq2NugO4nEOgIwp8uZQgK1CtSjIqaE8aMWiXVJybUQPvla4iaZw0Z4bWMQHu3w
 Mw21U4A0PfSAop5BFg2VJDbigrKelsGEP80Ur68tI/LteRSQ6Nfup/Y8R1zF9URnPUWm
 aulvLPI12MtjAkK0uXWVvEAP1AbP3ZLIAITdMhR/7R6KTEKvT4MQxTtA2p327DsTLtCE
 KuEA==
X-Gm-Message-State: AOAM531sZKQMOz5UgsVZ2RgAiBPyp2WIoF3q3R3iV/7tblLHbtysO9A+
 FpIhqjGm8OLb9TEPRQzDSew=
X-Google-Smtp-Source: ABdhPJz4hPiH0k0xSR9jAkOeoW0/r4ZuyBW0PfPMcTaaeMwZ0CpcZjrSDD8su5ATbmNtkZDfLBo8Rw==
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr1327807wrr.323.1595458392467; 
 Wed, 22 Jul 2020 15:53:12 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b139sm1289028wmd.19.2020.07.22.15.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 15:53:11 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Date: Wed, 22 Jul 2020 15:52:53 -0700
Message-Id: <20200722225253.28848-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: andrew@lunn.ch, Florian Fainelli <f.fainelli@gmail.com>,
 ivan.khoronzhuk@linaro.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@mellanox.com, jiri@mellanox.com,
 ilias.apalodimas@linaro.org, rdunlap@infradead.org, kuba@kernel.org,
 olteanv@gmail.com, davem@davemloft.net
Subject: [Bridge] [PATCH net-next] Documentation: networking: Clarify
	switchdev devices behavior
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

This patch provides details on the expected behavior of switchdev
enabled network devices when operating in a "stand alone" mode, as well
as when being bridge members. This clarifies a number of things that
recently came up during a bug fixing session on the b53 DSA switch
driver.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Since this has been submitted in a while, removing the patch numbering,
but previous patches and discussions can be found here:

http://patchwork.ozlabs.org/project/netdev/patch/20190103224702.21541-1-f.fainelli@gmail.com/
http://patchwork.ozlabs.org/project/netdev/patch/20190109043930.8534-1-f.fainelli@gmail.com/
http://patchwork.ozlabs.org/project/netdev/patch/20190110193206.9872-1-f.fainelli@gmail.com/

David, I would like to hear from Vladimir and Ido specifically to make
sure that the documentation is up to date with expectations or desired
behavior so we can move forward with Vladimir's DSA rx filtering patch
series. So don't apply this just yet ;)

Thanks!

 Documentation/networking/switchdev.rst | 118 +++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/Documentation/networking/switchdev.rst b/Documentation/networking/switchdev.rst
index ddc3f35775dc..2e4f50e6c63c 100644
--- a/Documentation/networking/switchdev.rst
+++ b/Documentation/networking/switchdev.rst
@@ -385,3 +385,121 @@ The driver can monitor for updates to arp_tbl using the netevent notifier
 NETEVENT_NEIGH_UPDATE.  The device can be programmed with resolved nexthops
 for the routes as arp_tbl updates.  The driver implements ndo_neigh_destroy
 to know when arp_tbl neighbor entries are purged from the port.
+
+Device driver expected behavior
+-------------------------------
+
+Below is a set of defined behavior that switchdev enabled network devices must
+adhere to.
+
+Configuration less state
+^^^^^^^^^^^^^^^^^^^^^^^^
+
+Upon driver bring up, the network devices must be fully operational, and the
+backing driver must configure the network device such that it is possible to
+send and receive traffic to this network device and it is properly separated
+from other network devices/ports (e.g.: as is frequent with a switch ASIC). How
+this is achieved is heavily hardware dependent, but a simple solution can be to
+use per-port VLAN identifiers unless a better mechanism is available
+(proprietary metadata for each network port for instance).
+
+The network device must be capable of running a full IP protocol stack
+including multicast, DHCP, IPv4/6, etc. If necessary, it should program the
+appropriate filters for VLAN, multicast, unicast etc. The underlying device
+driver must effectively be configured in a similar fashion to what it would do
+when IGMP snooping is enabled for IP multicast over these switchdev network
+devices and unsolicited multicast must be filtered as early as possible into
+the hardware.
+
+When configuring VLANs on top of the network device, all VLANs must be working,
+irrespective of the state of other network devices (e.g.: other ports being part
+of a VLAN aware bridge doing ingress VID checking). See below for details.
+
+If the device implements e.g.: VLAN filtering, putting the interface in
+promiscuous mode should allow the reception of all VLAN tags (including those
+not present in the filter(s)).
+
+Bridged switch ports
+^^^^^^^^^^^^^^^^^^^^
+
+When a switchdev enabled network device is added as a bridge member, it should
+not disrupt any functionality of non-bridged network devices and they
+should continue to behave as normal network devices. Depending on the bridge
+configuration knobs below, the expected behavior is documented.
+
+Bridge VLAN filtering
+^^^^^^^^^^^^^^^^^^^^^
+
+The Linux bridge allows the configuration of a VLAN filtering mode (compile and
+run time) which must be observed by the underlying switchdev network
+device/hardware:
+
+- with VLAN filtering turned off: the bridge is strictly VLAN unaware and its
+  data path will only process untagged Ethernet frames. Frames ingressing the
+  device with a VID that is not programmed into the bridge/switch's VLAN table
+  must be forwarded and may be processed using a VLAN device (see below).
+
+- with VLAN filtering turned on: the bridge is VLAN aware and frames ingressing
+  the device with a VID that is not programmed into the bridges/switch's VLAN
+  table must be dropped (strict VID checking).
+
+Non-bridged network ports of the same switch fabric must not be disturbed in any
+way by the enabling of VLAN filtering on the bridge device(s).
+
+VLAN devices configured on top of a switchdev network device (e.g: sw0p1.100)
+which is a bridge port member must also observe the following behavior:
+
+- with VLAN filtering turned off, enslaving VLAN devices into the bridge might
+  be allowed provided that there is sufficient separation using e.g.: a
+  reserved VLAN ID (4095 for instance) for untagged traffic. The VLAN data path
+  is used to pop/push the VLAN tag such that the bridge's data path only
+  processes untagged traffic.
+
+- with VLAN filtering turned on, these VLAN devices can be created as long as
+  there is not an existing VLAN entry into the bridge with an identical VID and
+  port membership. These VLAN devices cannot be enslaved into the bridge since
+  because they duplicate functionality/use case with the bridge's VLAN data path
+  processing.
+
+Because VLAN filtering can be turned on/off at runtime, the switchdev driver
+must be able to re-configure the underlying hardware on the fly to honor the
+toggling of that option and behave appropriately.
+
+A switchdev driver can also refuse to support dynamic toggling of the VLAN
+filtering knob at runtime and require a destruction of the bridge device(s) and
+creation of new bridge device(s) with a different VLAN filtering value to
+ensure VLAN awareness is pushed down to the HW.
+
+Finally, even when VLAN filtering in the bridge is turned off, the underlying
+switch hardware and driver may still configured itself in a VLAN aware mode
+provided that the behavior described above is observed.
+
+Bridge IGMP snooping
+^^^^^^^^^^^^^^^^^^^^
+
+The Linux bridge allows the configuration of IGMP snooping (compile and run
+time) which must be observed by the underlying switchdev network device/hardware
+in the following way:
+
+- when IGMP snooping is turned off, multicast traffic must be flooded to all
+  switch ports within the same broadcast domain. The CPU/management port
+  should ideally not be flooded and continue to learn multicast traffic through
+  the network stack notifications. If the hardware is not capable of doing that
+  then the CPU/management port must also be flooded and multicast filtering
+  happens in software.
+
+- when IGMP snooping is turned on, multicast traffic must selectively flow
+  to the appropriate network ports (including CPU/management port) and not be
+  unnecessarily flooding.
+
+The switch must adhere to RFC 4541 and flood multicast traffic accordingly
+since that is what the Linux bridge implementation does.
+
+Because IGMP snooping can be turned on/off at runtime, the switchdev driver
+must be able to re-configure the underlying hardware on the fly to honor the
+toggling of that option and behave appropriately.
+
+A switchdev driver can also refuse to support dynamic toggling of the multicast
+snooping knob at runtime and require the destruction of the bridge device(s)
+and creation of a new bridge device(s) with a different multicast snooping
+value.
-- 
2.17.1


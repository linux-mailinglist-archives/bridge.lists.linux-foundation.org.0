Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3066C2C7938
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C93828638F;
	Sun, 29 Nov 2020 13:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GH46W9zQLU3R; Sun, 29 Nov 2020 13:01:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E93686456;
	Sun, 29 Nov 2020 13:01:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2294CC0859;
	Sun, 29 Nov 2020 13:01:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 987E8C0052
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C055120770
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0DAF36LvWSfQ for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id F17AC204D3
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:00:53 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8140758051A;
 Sun, 29 Nov 2020 07:54:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=JWvE4wkdTHgXND6Y4
 bjPsbiWmIMG3ggvyGEu9Fq8aWI=; b=mi1BAUBb2QpKhInOgWPOSFHzvFCiJqYGC
 qbJMVarRepEk5V9ansX6hKbMXL1PsT2qtJI69kiPrfKf2K4HeAO6f/F+ulhvAyJ4
 EeHFYttDKYEr2rQVxjYXR14/nYB7ybcyLavALnAyA3Sw/ra0MqJQO7yLbEX6VIli
 HjMhdO0+mAZDnfgEg3L07pLBoCXzBI8oa79ISmv2MCBbaJdCzzH7KACooBxzz/tR
 UppIAECK7BBzmpdFZxWoVEFlOdL6PEtiY3ZokiECl3EeBRejRgHVsKyh4c7ItnqG
 J9Zlw/tGrngbC8VHbPBegWpfnrggGdOGRxJ6t++DnAAwsmaO6jjcg==
X-ME-Sender: <xms:EJrDXz9vQLxvb1P2VsfMKmXQIaP6EUZvoY9CP0Z-oJYGDdJic6Lnyw>
 <xme:EJrDX_sTbIMpsTldC1ySUGsYxlXYBhWzSBzyjVTsPUmIzwPu77UJMezYAi_vbIlDj
 bxQsSjRaZViIo8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiughoshgt
 hhdrohhrgheqnecuggftrfgrthhtvghrnhepteevgefhvefggfffkeeuffeuvdfhueehhe
 etffeikeegheevfedvgeelvdffudfhnecukfhppeekgedrvddvledrudehgedrudegjeen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughosh
 gthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:EJrDXxBcvBvfBoNAXgEH7tRl50E80ngJB0C9g7lApZvCvxs-ERNajw>
 <xmx:EJrDX_f-jA3T67PROoMYwCjpp2b_s2kjsTt1ZeyqwIX4vnyMEEyuHg>
 <xmx:EJrDX4M9Euw8MiNvXIkkUlOaGwllAEBlLqTJD4c9_Qr-3crNQ88v1Q>
 <xmx:EJrDX3rLy8-kx3DOyx0rG3tOPbQMjYzj63cWKFi6NpzGMG9MlsmbMg>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id 278683064AB2;
 Sun, 29 Nov 2020 07:54:38 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:53:58 +0200
Message-Id: <20201129125407.1391557-1-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/9] mlxsw: Add support for 802.1ad
	bridging
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

From: Ido Schimmel <idosch@nvidia.com>

802.1ad, also known as QinQ, is an extension to the 802.1q standard,
which is concerned with passing possibly 802.1q-tagged packets through
another VLAN-like tunnel. The format of 802.1ad tag is the same as
802.1q, except it uses the EtherType of 0x88a8, unlike 802.1q's 0x8100.

Currently, mlxsw supports bridging with VLAN-unaware (802.1d) bridges
and with VLAN-aware bridges whose VLAN protocol is 802.1q. This set adds
support for VLAN-aware bridges whose VLAN protocol is 802.1ad.

From mlxsw perspective, 802.1ad support entails two main changes:

1. Ports member in an 802.1ad bridge need to be configured to classify
802.1ad packets as tagged and all other packets as untagged

2. When pushing a VLAN at ingress (PVID), its EtherType needs to be
0x88a8 instead of 802.1q's 0x8100

The rest stays the same as with 802.1q bridges.

A follow-up patch set will add support for QinQ with VXLAN, also known
as QinVNI. Currently, linking of a VXLAN netdev to an 802.1ad bridge is
vetoed and an error is returned to user space.

Patch set overview:

Patches #1-#2 add the registers required to configure the two changes
described above.

Patch #3 changes the device to only treat 802.1q packets as tagged by
default, as opposed to both 802.1q and 802.1ad packets. This is more
inline with the behavior supported by the driver.

Patch #4 adds the ability to configure the EtherType when pushing a PVID
at ingress.

Patch #5 performs small refactoring to allow for code re-use in the next
patch.

Patch #6 adds support for 802.1ad bridging and allows mlxsw ports and
their uppers to join such a bridge.

Patch #7 changes the bridge driver to notify about changes to its VLAN
protocol, so that these could be vetoed by mlxsw in the next patch.

Patches #8-#9 teach mlxsw to veto unsupported 802.1ad configurations and
add a corresponding selftest to make sure such configurations are indeed
vetoed.

Amit Cohen (6):
  mlxsw: reg: Add Switch Port VLAN Classification Register
  mlxsw: reg: Add et_vlan field to SPVID register
  mlxsw: spectrum: Only treat 802.1q packets as tagged packets
  mlxsw: Make EtherType configurable when pushing VLAN at ingress
  mlxsw: spectrum_switchdev: Create common functions for VLAN-aware
    bridge
  mlxsw: spectrum_switchdev: Add support of QinQ traffic

Danielle Ratson (3):
  bridge: switchdev: Notify about VLAN protocol changes
  mlxsw: Add QinQ configuration vetoes
  selftests: forwarding: Add QinQ veto testing

 drivers/net/ethernet/mellanox/mlxsw/reg.h     | 114 ++++++-
 .../net/ethernet/mellanox/mlxsw/spectrum.c    | 111 ++++++-
 .../net/ethernet/mellanox/mlxsw/spectrum.h    |   7 +-
 .../ethernet/mellanox/mlxsw/spectrum_router.c |   9 +
 .../mellanox/mlxsw/spectrum_switchdev.c       | 123 +++++++-
 include/net/switchdev.h                       |   2 +
 net/bridge/br_vlan.c                          |  16 +-
 .../drivers/net/mlxsw/q_in_q_veto.sh          | 296 ++++++++++++++++++
 8 files changed, 657 insertions(+), 21 deletions(-)
 create mode 100755 tools/testing/selftests/drivers/net/mlxsw/q_in_q_veto.sh

-- 
2.28.0


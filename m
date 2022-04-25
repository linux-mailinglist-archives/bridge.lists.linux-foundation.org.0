Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 971F750E2FD
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 16:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 022C68174A;
	Mon, 25 Apr 2022 14:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DlRbISm6lO7B; Mon, 25 Apr 2022 14:25:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A0508814B4;
	Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 589A8C007C;
	Mon, 25 Apr 2022 14:25:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FAC8C002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F25E160E0B
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ssxt3mDIK5rM for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 14:25:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3073160761
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 14:25:22 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id j15so7869731wrb.2
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 07:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
 b=Yp2ksl18LS/4Zs/ovpsVTlQwPq8RKkSp5QpY5tBP2+j05ULF7qPRftNv6iD6RV/IlN
 wBgjKe+jfS8pkoAlzDTWhfuCNXo8tuvgYq8GdjluJNdsL0Egy2XuECnoZ1b2EPAjXUe+
 jMVbqPb4/rU9tF+FQiWisfBHk5ZPwSSW1FGaE1as3zRZF/Bl8U0iJvqlG30E5ae4IJ3/
 fULg5bRvkciOv3RjeFApqNa7WkOnypR+SOycWijAO17Hx98IiaXeUtULZ3nSGJ+2vbiX
 wDgY8NgfbOWevz+rMK4KPWxSboDV2TSMJmbRhXZAbyf/q0RpPAAY7AoTalW7Zk59XBqQ
 a2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
 b=jDssbini/XpC3EtreQVm8/GbmtMoTEIKb2VoUBlEBZZTnWHcggSjxgiET5dwMLMZJP
 IPos8DC2eUA0aaI9eK35f+HISDSUWRFrKrdguR5MEOY1gPvfcBP174UF28EN1FC0HMeG
 Yo3IrurqfNNHiK7L5qj9ds92o0Ag9jHe0iA2Uyme19iUmBSKVXoX3uSvFm3EFaX9Ww5S
 E3ImdLvTBRKDKQe0UT2SRKstx/bccdPv3FTCRGuHyYRurnkV3JhDkCIG2GhwQpT8+gGN
 AlRjNGZafRJHaK+2egihgdwbQGExhhu8jDDnEKHWpJC2jAjb1WeURhUuts6z116y39GI
 F3Ow==
X-Gm-Message-State: AOAM533w9sGoyHaOZ+1DW1us5fr8b4EZOxg5q7tLFK21egI+BzH/vD9n
 QCtbEdmBABX5Mg3Fb7q5Bwg=
X-Google-Smtp-Source: ABdhPJzUAnIDjq4TtxReYzY4dzLCr4HXcpG6aANRg5FZdis9Nq2Rs17U9H23mO/9FxTROOaYVJ/RSA==
X-Received: by 2002:a05:6000:1f09:b0:20a:c427:c7c with SMTP id
 bv9-20020a0560001f0900b0020ac4270c7cmr14209914wrb.337.1650896720308; 
 Mon, 25 Apr 2022 07:25:20 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213]) by smtp.gmail.com with ESMTPSA id
 d4-20020a05600c3ac400b0039082eeff53sm8615670wms.22.2022.04.25.07.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 07:25:19 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 25 Apr 2022 16:25:05 +0200
Message-Id: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: [Bridge] [PATCH net-next v4 0/2] propagate extack to
	vxlan_fdb_delete
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

In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
add extack to .ndo_fdb_del and edit all fdb del handelers

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 39 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 38 insertions(+), 22 deletions(-)

-- 
2.36.0


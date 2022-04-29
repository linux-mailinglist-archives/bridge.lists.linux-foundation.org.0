Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DFD5149D1
	for <lists.bridge@lfdr.de>; Fri, 29 Apr 2022 14:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29F078404E;
	Fri, 29 Apr 2022 12:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igEzTcadMavL; Fri, 29 Apr 2022 12:49:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BDFB08404D;
	Fri, 29 Apr 2022 12:49:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9DA17C007C;
	Fri, 29 Apr 2022 12:49:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58611C002D
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45B1A41CCC
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pqLIVPVKLu0B for <bridge@lists.linux-foundation.org>;
 Fri, 29 Apr 2022 12:49:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68EBA41CAC
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 12:49:12 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id u3so10673192wrg.3
 for <bridge@lists.linux-foundation.org>; Fri, 29 Apr 2022 05:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
 b=eqsr3iRoOLraeHQfAN1F8lxbHhTSxdIjUQr8ExFzQAGCUmElefmB7guzyjC0kxl5je
 HT0OIrgMVP7TYB+jH1by1xcLHdxR/iPH0RxBMg5q8hDehljaEk52mNtAkz7VAAAfq6uQ
 U598+3czQfs9pI2uIeUeVm6xVsHA+ogUhmyhCFfyVDEr1zdRF7yHyA3ybZoPFqixxaT/
 X/6mA+22S80hqy84zvJQgTv/OkAWwpJyHz4aD/4jYED4VSKNHVEP2I/N4UZ4TPedAj0+
 bMQcG1Int7xYiYvMjssXccYPNgZwB9G02qDFer0iaKKzUSx93WZuxt9XIQVsQf2k38am
 8hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
 b=fgJcY1QlY7f+1Vy+bYWwU0x0ieU4wnwK8nJF3n+J8CaFl0zjwF8wgAtp4V5RonpJ6x
 duK0svFGihsqfNUpJPM6fHKmGxNakXBESGkBDoY/J9Gf06Bn0sMcaAXmVAuaoHjVsWpG
 vuoI5zk2u5CEbuCSAyNgEiV3fVk4pxDwnTt0lGbhF+P8l9RvMoLLE3T9GrbfAYC1gET1
 RzM25iiKQSBe7HO6hOXnJlq4iLEN0TS3xdjelNtHSJdSioADzPqama5nkxpWa4b/QWdA
 XMBf3kexRD/7Ljeqig7Z3yU2th+X4NvCpmaybVE9WzOaZnxwit8grn7TuoVo80PNtJ2q
 al6A==
X-Gm-Message-State: AOAM532fRjugBiVlNnGRXN0+2XStqFkIcBZ7CVsbgL0fxp86Y3lARrBe
 RLthKT/0QZ/LSTkWkhaSC4Q=
X-Google-Smtp-Source: ABdhPJxuNgz+00AZk2K+3MHKXW1rmmSUinMRc2h419aF6uzywdkwSk8Wwqe7afiMqRAzA0LmEjtA6A==
X-Received: by 2002:a5d:498d:0:b0:20a:dc6b:35c9 with SMTP id
 r13-20020a5d498d000000b0020adc6b35c9mr19910335wrq.176.1651236550512; 
 Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 g18-20020a05600c4ed200b00393e810038esm2899835wmq.34.2022.04.29.05.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Apr 2022 14:49:05 +0200
Message-Id: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
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
Subject: [Bridge] [PATCH net-next v5 0/2] propagate extack to
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
add extack to .ndo_fdb_del and edit all fdb del handelers.

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.36.0


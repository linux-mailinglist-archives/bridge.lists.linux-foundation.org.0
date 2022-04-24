Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB750DB86
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BF254048F;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3eAUq6QZ-8cE; Mon, 25 Apr 2022 08:47:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BE9C440022;
	Mon, 25 Apr 2022 08:47:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA23CC002D;
	Mon, 25 Apr 2022 08:47:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 129D6C002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E51BA60BD1
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EKcpOYFJJNC9 for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 12:10:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AB96605AF
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:10:02 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id t6so13734007wra.4
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 05:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
 b=jbX6/SXWTvvMbmrClbsX++gd1w+2OD/ikoRsd8tpj0m1wta4k5jOn0afedb92k1P2z
 +XQINnTMiG5QDJtcBkVePlDctVDMI27MIwacGSG55x9yPASrF13hi0M8Ja2lghZD/7WR
 aXO5aN1Gh/AUJTaW9VNqPFqczdDVzbeF0OA9JE5wqmxFMuDXeYDBVGjpfbtf1O14672Z
 k0J9PvfQNxqWYo8gRQJTFJr8FYgMYDVYXuhFOpuiATTnF+DkdwHMZJ1VGOAITW3S62Dn
 t5P7EgxV/cY6odv9qhQkvAoMe9QfLSeQSgAVGmprh1KoqLCMDIvg45x0UWdIfoYGDHwT
 lWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
 b=sEE6MN+6lTzpmnD3AngGv55+03vGhgp6wdQooo14dVdsQnWhCcLJvt2LKRMB3FUvvJ
 PV496UWGzPyBcrnX60UwY9WSeh9s8USSYWvDhC+PETqCdB11aPevTGmn+d/cWdqDXySx
 vOp492SONluJk7LghwmFGaI8cTXp8wHy1DTg12CKheuH726kEEFo2za0u6JFhWISinCA
 5vM8bfMNGaJtQfcn9nu5bpw7ABNhFM45qnGW802BsMbyjCo0OWCogCtFfRP8bsTqJekF
 75k3gLUWDJfffmoqmMBXpEVJTDkMNK3XT+RiS7TsxgaaTnSL/SQinPlUdyQEY9eUVhno
 n3/g==
X-Gm-Message-State: AOAM533norXpSAivpXkEi21izcy7NQT3ms88zfwU1Yhh9Sjeo7VDLqeu
 aX4CYmXTXQPGxq1dKuRgIBQ=
X-Google-Smtp-Source: ABdhPJw0KYa7fhoRDswIm3fxHdgxTAvbu2xgjiARxGl5eH6CMPiXt8aK1ddLkk2hzdMh9Cw0a6r7JQ==
X-Received: by 2002:a05:6000:100c:b0:20a:c68a:e9a with SMTP id
 a12-20020a056000100c00b0020ac68a0e9amr10622884wrx.314.1650802201258; 
 Sun, 24 Apr 2022 05:10:01 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 a4-20020a056000188400b0020a9ec6e8e3sm7124788wri.55.2022.04.24.05.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 05:10:00 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 24 Apr 2022 14:09:43 +0200
Message-Id: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: [Bridge] [PATCH net-next v3 0/2] propagate extack to
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 38 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  2 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 37 insertions(+), 23 deletions(-)

-- 
2.36.0


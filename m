Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A551C37A
	for <lists.bridge@lfdr.de>; Thu,  5 May 2022 17:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B08160AC1;
	Thu,  5 May 2022 15:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6BRProQ_IWaz; Thu,  5 May 2022 15:10:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 16BE560B2A;
	Thu,  5 May 2022 15:10:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9AFA5C0081;
	Thu,  5 May 2022 15:10:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3ED5C002D
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7DB8D8401B
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6R2fo8ycz5o for <bridge@lists.linux-foundation.org>;
 Thu,  5 May 2022 15:10:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD74883F94
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 15:10:10 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id b19so6507666wrh.11
 for <bridge@lists.linux-foundation.org>; Thu, 05 May 2022 08:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
 b=WyanZJ4pfugP4UBrAHAI3jE+0AMPPz0h7gFUM9vNG+p5YrdeWWhgzma2gPVbbEw7nQ
 zqyXYKcg6ZlClU+WsCyXFa9pOTdvmphmLTQBVM970g+nAyt6eS078/B7r+Yd2D4Muq6n
 tAQ/j/L/oDKTLJ2BpBFlbUakTEiPv6kzIRg2ny56L8R9Zq1zQM0TXBtzngd0ygArbjI2
 hkOt6i+dsXb84AMFlA6JORanoOhW8jKTQJmasSfefZ/stu/MnlyiD+jTUcuWdV+cgtuH
 DUyIzIrpkgZJdZNH7TxCKR41L621Fs4c3vS28PpKOYcmjt5RTsDegQQyR3I10AjN2LwM
 20oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
 b=RHVxOjCQa1xkMGCZIK72SgQ+MEYuZN0uC9Y4avlQAW2Qcyqam33E1XFIGZJObY7/yA
 f/a1Oeqh+HSX7ncqBNsR89iWTe961kTcMO9VGbS/LHvxbKsJMvbKPfXZ5JU+1NDcJhfj
 BmptLurs/liL2yo8hYmp5Fh5nbEZhdeuLdnlam7z+/Qeffq1A6M2Kv14qW9NWZixanki
 pbY8ITzS7xKAzY5MHxZfcxdurWJ91iVp9aLCriAnlpqOTQrAz7OCY8Q0h/39Ce/DgtQ1
 EteHHEh4Ro9njpv4d4a1XTlZ+mmDJY3fE4TMoZQJh0YC1loVt4tNa2wit9ejJFoVxw2Y
 SNAw==
X-Gm-Message-State: AOAM532aPZk5rCczlkNWPzmzvFkVOFVS6x2yawkGNWeuNIFq28GV80bp
 jCAoVRw7btnxyX+oKAbwy2Y=
X-Google-Smtp-Source: ABdhPJyH3FeC0GOlGDlLA3jmninPUid5beNQGRlfuR6gYFWw5/iHWVU9gj8FHEZ8LDE1fOqtvSu2cQ==
X-Received: by 2002:adf:e491:0:b0:20a:cf97:58df with SMTP id
 i17-20020adfe491000000b0020acf9758dfmr21162391wrm.213.1651763408733; 
 Thu, 05 May 2022 08:10:08 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 s6-20020adfea86000000b0020c5253d907sm1419204wrm.83.2022.05.05.08.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 08:10:08 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu,  5 May 2022 17:09:56 +0200
Message-Id: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
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
Subject: [Bridge] [PATCH net-next v6 0/2] propagate extack to
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 44 insertions(+), 21 deletions(-)

-- 
2.36.0


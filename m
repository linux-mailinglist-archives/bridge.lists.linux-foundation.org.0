Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF1B52498D
	for <lists.bridge@lfdr.de>; Thu, 12 May 2022 11:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 278BD83ED7;
	Thu, 12 May 2022 09:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIZ7qHs2f6fT; Thu, 12 May 2022 09:56:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BEA4E83EE2;
	Thu, 12 May 2022 09:56:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74EACC007E;
	Thu, 12 May 2022 09:56:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 44B90C002D
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 252EF83E6C
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6nIlGHjmKYp for <bridge@lists.linux-foundation.org>;
 Thu, 12 May 2022 09:56:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6065A83ED9
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 09:56:15 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 o12-20020a1c4d0c000000b00393fbe2973dso4803584wmh.2
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 02:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vI+rvT4jTUHk9Zem0CL850oZR0u8HlCjb7Iy9meG1aA=;
 b=lpSgAFrVHDgV+Ou+xzBr6yczkXty0cfBXPNVhifBOx1K1XlM2aoHmrC6HkVUDLQ5ZI
 LOsK5ttHwnnfAVf2UbNhSKRDGx0pgAGhRAulH3RIF4IXyXoRrRUkkj0KuLaFhx3Z0uyO
 eM4g7zPUeD33kOSGvfCxdRRRowYbAqNdlNJkSvjw/Iv0+p0O4sYlUOHQ6A/JBMsPNvPz
 cdYyfzqRam7EHGtogYWasfcT52OZ/Aby5niqbNVNjiRyvHIAMnUv53M4bIoB/oLqxeht
 3HEk9TePNnhNLd4eksRgG/sJOnb0kXALligFZZ51HpBr7q1/hLac3RJTcFgm2yz4lyIt
 AjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vI+rvT4jTUHk9Zem0CL850oZR0u8HlCjb7Iy9meG1aA=;
 b=3giw3NvpUA8IGw/4+oOHHc7q8RD3abXwy2rdoo5ZmeetBCC8xX9qIYGpprFEpI4/pQ
 iN1i1cBEpXCxUhmD2cRNxGN41H0QGxStoZGWMjAAIOroShKK3XpL5XiqvkMPUhq+VF+Z
 byPRhJ8J/Q1G4UVlarYmNtNr+7xfe9gktG+weJ0LKjy3UHsX68r4aZGv3RnlQMpWGRnK
 2KDMnRCfA66BIV4Vx5OByxr9FDfTxwSEOv7eYeuWkrPz40OBfuXrYuxFraq+XxqAnSJz
 7oxMmDsOac94d3uR3iTNoiwy6dNxHTiI3TAac6Ri502cdQgi15pVCAwdW9sJFLlFX7eB
 pz6A==
X-Gm-Message-State: AOAM531TpKQBiYPdwB5M1g04GJyGZ7eLZkq7q7fZJY+QzaGbNvBXccFd
 +ySrltNRZkE/iNXQGkhOBYw=
X-Google-Smtp-Source: ABdhPJzeOkR8gXtslb2c3OAosJp6H5XjNvatCGsuZGEiFUK0wnEiEhEtz1Qdscrp0cS4adhAzk+RXw==
X-Received: by 2002:a05:600c:1547:b0:394:882a:3b5 with SMTP id
 f7-20020a05600c154700b00394882a03b5mr9296978wmg.97.1652349373138; 
 Thu, 12 May 2022 02:56:13 -0700 (PDT)
Received: from alaa-emad ([197.57.250.210]) by smtp.gmail.com with ESMTPSA id
 z15-20020a05600c0a0f00b0039457b94069sm2306913wmp.42.2022.05.12.02.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 02:56:12 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 12 May 2022 11:55:52 +0200
Message-Id: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.1
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
Subject: [Bridge] [PATCH net-next v7 0/2] propagate extack to
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
2.36.1


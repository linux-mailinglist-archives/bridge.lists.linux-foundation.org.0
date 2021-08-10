Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A9D3E7C2D
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7E6881DCB;
	Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OQo874_wJ_Rt; Tue, 10 Aug 2021 15:29:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 93B3D82D45;
	Tue, 10 Aug 2021 15:29:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56717C0020;
	Tue, 10 Aug 2021 15:29:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D927C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4A19606CE
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgER1qe6Vsb3 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12228606C9
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:46 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id r6so4600152wrt.4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S0ul/Cv2dQbKe/+VkzJwYP8SRzCc6gtnQ2xRNVtkMc0=;
 b=c//x2Wu8QQjep3b73PCrWSfxZQ4GrQCYCM06KdY08LzlRD/XXci3LlNWeGqEOJmS2a
 +mUcT6qH0Jv3LRXfhTajKHw9GpWyALwuw3574Au0s9zFhmfPgXJmEw4owWVU5F6sxzmz
 eQpq00UxnUs0BshzQkq0LL66Im4uYfBrU4ugfnnnSb7EH3hHJtNF0yaLw6lO21ExS9nM
 v+V+McMSquZdlMC1k11Zc2kiXHkSbAKxi2YH31QfsnKqSLDovj6foEfsDXuVXeWiwy/a
 wDZGUPTFP2EYp7EF65lITb0JsetISqOOSztIgA6rYZ88JJr7z35vfZsE3l68bp9ZyNBV
 boAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S0ul/Cv2dQbKe/+VkzJwYP8SRzCc6gtnQ2xRNVtkMc0=;
 b=Z+zhZCcyDw/JHrobEGbP2Zg5IZ/tBn0oquxCrL2oqDRcPM1fKqsXaPR/PasX8Rgrdw
 2W3H2i/MNAybvzziEgq8/Yne20IR/xFkpFdN2qxH461rJ4feyRQnBARHB/9xA/0Whn1G
 Su34rOAJtG8+R89WsQNNLXbp7L7TNSNR87Cg7TmJ5vBx1EMAdZxbjZZfXkRuFGo7ubXi
 4JUTMS6SPTiEjtQSZeAbOXLPlP6AumlyZRvJZBkT27LuRzF7qM2PkaSLLNN8VnDRGWY8
 cNgIsjlyrKIth+OHu6Vif8GYvuFV61XSGGWhBOcD67L7FNeTwGjXbdYwGLwaPSJNpvYF
 pH+w==
X-Gm-Message-State: AOAM531r2IKZDCW36BXNCsaDfKuk51cpKc5FV4VAAOQekMUd70OMpLvh
 mr5BEoLOQePP+PAVpWto3SSeKQ==
X-Google-Smtp-Source: ABdhPJwt5tU6h5qM+B9hAAY8Txkmu/QgNuWbdUNcoOIjHqe1aDR/pK4wSNMIpFaYeAVUj5TZRsIBGg==
X-Received: by 2002:a05:6000:1201:: with SMTP id
 e1mr31339841wrx.379.1628609385148; 
 Tue, 10 Aug 2021 08:29:45 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:44 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:18 +0300
Message-Id: <20210810152933.178325-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 00/15] net: bridge: vlan: add global mcast
	options
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Hi,
This is the first follow-up set after the support for per-vlan multicast
contexts which extends global vlan options to support bridge's multicast
config per-vlan, it enables user-space to change and dump the already
existing bridge vlan multicast context options. The global option patches
(01 - 09 and 12-13) follow a similar pattern of changing current mcast
functions to take multicast context instead of a port/bridge directly.
Option equality checks have been added for dumping vlan range compression.
The last 2 patches extend the mcast router dump support so it can be
re-used when dumping vlan config.

patches 01 - 09: add support for various mcast options
patches 10 - 11: prepare for per-vlan querier control
patches 12 - 13: add support for querier control and router control
patches 14 - 15: add support for dumping per-vlan router ports

Next patch-sets:
 - per-port/vlan router option config
 - iproute2 support for all new vlan options
 - selftests

Thanks,
 Nik


Nikolay Aleksandrov (15):
  net: bridge: vlan: add support for mcast igmp/mld version global
    options
  net: bridge: vlan: add support for mcast last member count global
    option
  net: bridge: vlan: add support for mcast startup query count global
    option
  net: bridge: vlan: add support for mcast last member interval global
    option
  net: bridge: vlan: add support for mcast membership interval global
    option
  net: bridge: vlan: add support for mcast querier interval global
    option
  net: bridge: vlan: add support for mcast query interval global option
  net: bridge: vlan: add support for mcast query response interval
    global option
  net: bridge: vlan: add support for mcast startup query interval global
    option
  net: bridge: mcast: move querier state to the multicast context
  net: bridge: mcast: querier and query state affect only current
    context type
  net: bridge: vlan: add support for mcast querier global option
  net: bridge: vlan: add support for mcast router global option
  net: bridge: mcast: use the proper multicast context when dumping
    router ports
  net: bridge: vlan: use br_rports_fill_info() to export mcast router
    ports

 include/uapi/linux/if_bridge.h |  14 +++
 net/bridge/br_mdb.c            |  60 ++++++-----
 net/bridge/br_multicast.c      |  71 +++++++------
 net/bridge/br_netlink.c        |  14 ++-
 net/bridge/br_private.h        |  78 ++++++++++++--
 net/bridge/br_sysfs_br.c       |  10 +-
 net/bridge/br_vlan_options.c   | 186 ++++++++++++++++++++++++++++++++-
 7 files changed, 354 insertions(+), 79 deletions(-)

-- 
2.31.1


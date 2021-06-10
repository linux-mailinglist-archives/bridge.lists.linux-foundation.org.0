Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 356B43A2AFE
	for <lists.bridge@lfdr.de>; Thu, 10 Jun 2021 14:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1C71607D6;
	Thu, 10 Jun 2021 12:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKaweoVfSvrI; Thu, 10 Jun 2021 12:04:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 91DBB60881;
	Thu, 10 Jun 2021 12:04:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 536ABC0022;
	Thu, 10 Jun 2021 12:04:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 03342C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 12:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8A4740277
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 12:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMPaFyArZXWG for <bridge@lists.linux-foundation.org>;
 Thu, 10 Jun 2021 12:04:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D963640267
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 12:04:18 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id ho18so32786411ejc.8
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 05:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=maUiGF2VHEUc5VH+pzNTaQe1wbHTLgvuD4shjy/n6kA=;
 b=B7oqlCKzvxSAB8tfvXE1A68qgl3c6c+nPkxYs8oW80EflWI6Oz19i2Jf2qWczzl0IU
 ufuhBiQRZIpGdTvrCBzsqA6ncmOzOfGe2mlePgX2k7tlAkkaW3ngVQ1yLQgOWRZm+7OL
 f7QiraeHc5enY8EeEwYLeq3Aju+Z7HBRu2PBg9d15OR+IoVtVRDfqsxlK/WwKqElP7V8
 AZv0M+zxt9NN69TKe0K0nJtVqtn6iS5/03SALVjeodX3p7xqwd11oz/7iJ+OzVtDrFP8
 mNfI4wDiSouOzQ8UW1JWoNTqOQz9zFnWR4w2G3Lr9wHb8hF7xhp4c7cwBpN4bN2KUcsR
 wktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=maUiGF2VHEUc5VH+pzNTaQe1wbHTLgvuD4shjy/n6kA=;
 b=oWpuNqhU7itPTtHjHymuwjlk81FsNPs+Rj+JlTLekCx6o5xFAbF3mxfqLuhT7GHI2q
 PVYgPQeJSJ6zqi9/qmJO4tvR5d1l3w1mxfgfoK2c5yOBddWwN7I7hZ8ihg/2tt62Dk77
 mXWUJg42mUSJyLwDi9ciT28+ipJVF6egNO8JSm6H93NlFLrc0q2ud1qykX/rTvfsh8+0
 Yk4iiVZdAiyngEPmwWFDEtBl9GgNSl1DAHLUToasnbt7O/AnDOPT4NFT6ARhb73l6em9
 jWCN1zQvnEXfQRIgim8VDYyup2HYnBSbjQ33RPz6p7BLwx0vaBAnSoB3Rr6Y1XA1A6lm
 Dmaw==
X-Gm-Message-State: AOAM531ZyN2xEx8w9Kmdk8UZ/CiXfzv5EwWBxiN3Cajh2+EWUBbYN0Td
 86UaAV9vdi7kh5xo9edT26HdPQ==
X-Google-Smtp-Source: ABdhPJwCUv1yaNxmTAbtpPYz6hpIUXSZeL7gMlXzzWvEpgYYZjVvaKyXPVYKufzWFAkvrrfs9Or1XQ==
X-Received: by 2002:a17:907:2165:: with SMTP id
 rl5mr4077046ejb.98.1623326656755; 
 Thu, 10 Jun 2021 05:04:16 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e18sm967193ejh.64.2021.06.10.05.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 05:04:16 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 10 Jun 2021 15:04:09 +0300
Message-Id: <20210610120411.128339-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net 0/2 v2] net: bridge: vlan tunnel egress path
	fixes
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
These two fixes take care of tunnel_dst problems in the vlan tunnel egress
path. Patch 01 fixes a null ptr deref due to the lockless use of tunnel_dst
pointer without checking it first, and patch 02 fixes a use-after-free
issue due to wrong dst refcounting (dst_clone() -> dst_hold_safe()).

Both fix the same commit and should be queued for stable backports:
Fixes: 11538d039ac6 ("bridge: vlan dst_metadata hooks in ingress and egress paths")

v2: no changes, added stable list to CC

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: fix vlan tunnel dst null pointer dereference
  net: bridge: fix vlan tunnel dst refcnt when egressing

 net/bridge/br_private.h     |  4 ++--
 net/bridge/br_vlan_tunnel.c | 38 +++++++++++++++++++++++--------------
 2 files changed, 26 insertions(+), 16 deletions(-)

-- 
2.31.1


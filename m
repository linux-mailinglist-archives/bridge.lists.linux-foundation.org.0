Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9D33A2992
	for <lists.bridge@lfdr.de>; Thu, 10 Jun 2021 12:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9083B60873;
	Thu, 10 Jun 2021 10:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WCZxFFeM8t_W; Thu, 10 Jun 2021 10:45:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 322046084C;
	Thu, 10 Jun 2021 10:45:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D46BBC0022;
	Thu, 10 Jun 2021 10:45:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B0DEC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FA1F60856
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awHkxYXHQd2G for <bridge@lists.linux-foundation.org>;
 Thu, 10 Jun 2021 10:45:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B869F6084C
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:47 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id ce15so43377480ejb.4
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 03:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwD7tLjIytzsF2Noid/CFwwwO+Xsa64mcNBZBhtUbeE=;
 b=f6CFykudWQOYyA9KqsAlp9KI46ZYLC6Te9Lw8jeyUv2CGnWxNth+pu/KdJPKoSaPRA
 nU+Sq8Sx8yAobNjY5IfBFG2SUU7jkZv54h495lhbPIKLI2tRwLNMmmcyRPJ/25r+yiy0
 KVsHgKrQ7Y/+GngOh0zc9CeGW89PQ0CemtWZRHsIYAjblQUUCkKvOsOUtMBwtP6CxWEY
 gM84BsOouAVSW1UsM9yen6iIdktkfTGyUkBKxSDxHSsqmxCrnrBqVKZl4XJKFkOmOMWr
 t4eGr2rnbjWUHc4dxznWvLvX79w2ql4W+tBNm0GOVxexxrdipxsU7CXrzrgJ1FNS5p0Z
 4Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bwD7tLjIytzsF2Noid/CFwwwO+Xsa64mcNBZBhtUbeE=;
 b=hilbMsDeMzVOHAkj5zhBOuW3eJePuENpjjVtir3Bb7DMT8pu825qNWyipCLzS2PEgk
 ojIgQpgakUfgztIg2mIPxOo8zxfCGeGxE1sMJdvsRDgueLi/oFy3c/PjCdgzL1RSfhU5
 8L0IIa5UPlUqvwYR5ohD6g5B+1h37T79/Ku6ucAL8MH66Ru6TAQdJQ08S5I23x2D99iN
 LAl4o3jScnLfKsLcPqYp6jcxwG4pA0Zz59EWZ/80XynNnOfS1WA+zQqHRdc2XWLhJYhP
 grPN/7eu4K1rS2J1O5uuPPnu+LPSZL5+bvy7YuWBwxd1EMkWnx4lL+zshv32/fmmWP3D
 aYXA==
X-Gm-Message-State: AOAM530W6Sio4sBqsM8p0oQGpdo4ZaluGeefO0E179e7/cf9aJ9TWAMn
 nZLgXrKD3E9/6e2BklskVLTkcw==
X-Google-Smtp-Source: ABdhPJwd2vywjLqUORTSRomxouvP1kM/orHcJXtkR3DS9pPFXeu7RBhwRxD3TElw6ccJIRP8NiIuTw==
X-Received: by 2002:a17:906:d1d2:: with SMTP id
 bs18mr3971919ejb.56.1623321945610; 
 Thu, 10 Jun 2021 03:45:45 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id y1sm866526ejl.7.2021.06.10.03.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 03:45:45 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 10 Jun 2021 13:45:35 +0300
Message-Id: <20210610104537.119538-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net 0/2] net: bridge: vlan tunnel egress path fixes
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
11538d039ac6 ("bridge: vlan dst_metadata hooks in ingress and egress paths")

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


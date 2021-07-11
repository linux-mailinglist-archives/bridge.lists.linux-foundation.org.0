Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962963C3B66
	for <lists.bridge@lfdr.de>; Sun, 11 Jul 2021 11:58:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99D1B40113;
	Sun, 11 Jul 2021 09:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vpyw69fyXd4Q; Sun, 11 Jul 2021 09:58:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2D8A24012B;
	Sun, 11 Jul 2021 09:58:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5FEBC001F;
	Sun, 11 Jul 2021 09:58:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CF71AC000E
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C30D38390F
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzFxK2wLPhiZ for <bridge@lists.linux-foundation.org>;
 Sun, 11 Jul 2021 09:58:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C10B838F0
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:02 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 k31-20020a05600c1c9fb029021727d66d33so7804900wms.0
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 02:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56+H0JW/2Pf8Zd1MqwXSgnDI7f6wt6P7h2rgDhNLDzw=;
 b=2SWIhAmM/X3Wr1qK+Dv/WefXxS8j/OeK/rYdidcI2C8scWZphuHeyX+27t7ecpw0Yy
 IhDrog9fyOANod3Ks0XB7rUyIRphlclCh+nttWNI0WvJRwJA6CWT2Cv5eqCcr8jPu/P9
 ApimnWJ9MaqywU7Afg3cl3NxCXM4zsIaMmxfjY0aLBZTGt0ZL7XsFR1s0w5bJgLK0h5A
 hNOCCqOl7xDNa+BBrsFu9Rh+PvCkiN1u0mEZIdbJ1F2h1kRC9Tbb1JHWRQbVTa0EBZSe
 Y/w79cyZp7Jkxzz+T8ZkhltkXa6TIPMYIwvGQZxg37W6YjgAgG0xhzwQ8eQVHu479Te8
 h83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56+H0JW/2Pf8Zd1MqwXSgnDI7f6wt6P7h2rgDhNLDzw=;
 b=BZUj1TXWIq+NRmKr2Ql0HzUTCmKP5Nx7LBMqdnB7u8h5IWTBEyf8oM+n6J9Nc0daLE
 NOeHEuDt2XAMHXrMe+GHLzHTBIrVzb42MxOF6uZu85Eo4nS367yVxaGxeOzxMImgBBJj
 yg6t59QtpUWz7TJARlqEBqTshldIQB0B1N7c4gX20fv3KPqwuLoo2G8skM7SdRyi7u5M
 F0x/lOJNuB6KxijtJq5UIw5qlYlym5+K9tANxlue3/Mb6zst6zE6q5jODEqHVspLWJ7a
 m3c1e0GiI2Az7+ESXWNsgVPciYCGFqr5BXrmFrpcF18iolGacjPX43D1iI4+h60TF8hl
 8fgw==
X-Gm-Message-State: AOAM533TSOVh1khZUdMRvYWQBiYZhuCnL3WlNAviv/q8HKfrx3kMvtC1
 MrP913TWj5waVVAGxnUgsGX5AA==
X-Google-Smtp-Source: ABdhPJwSBLwReyDtz2OpqQaw1MV+mnyo5FLW9+AhuJbYvT3hwZIIOotUastfEa+IUTAVKxBKFekZaA==
X-Received: by 2002:a1c:1bd4:: with SMTP id b203mr8725783wmb.171.1625997481209; 
 Sun, 11 Jul 2021 02:58:01 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m18sm9095567wmq.45.2021.07.11.02.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Jul 2021 02:58:00 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sun, 11 Jul 2021 12:56:27 +0300
Message-Id: <20210711095629.2986949-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 stable@vger.kernel.org, roopa@nvidia.com
Subject: [Bridge] [PATCH net 0/2] net: bridge: multicast: fix automatic
	router port marking races
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
While working on per-vlan multicast snooping I found two race conditions
when multicast snooping is enabled. They're identical and happen when
the router port list is modified without the multicast lock. One requires
a PIM hello message to be received on a port and the other an MRD
advertisement. To fix them we just need to take the multicast_lock when
adding the ports to the router port list (marking them as router ports).
Tested on an affected setup by generating the required packets while
modifying the port list in parallel.

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: multicast: fix PIM hello router port marking race
  net: bridge: multicast: fix MRD advertisement router port marking race

 net/bridge/br_multicast.c | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.31.1


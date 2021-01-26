Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EB4303914
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 10:35:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3319F86714;
	Tue, 26 Jan 2021 09:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4A17ksjtWy2; Tue, 26 Jan 2021 09:35:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 081BF8670F;
	Tue, 26 Jan 2021 09:35:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6B06C1DA7;
	Tue, 26 Jan 2021 09:35:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 892D7C013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6EDA5203E3
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0p1JWLz54STz for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 09:35:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 24E8F20034
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:35:40 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id ke15so21971210ejc.12
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 01:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=73ciu6eFOPHbqo4MJgjXh4/QYZ5M67T1wK+DASmK9NE=;
 b=DaguywYnXaB5G+/wUWtHvNyDG1c1zijWNwRMBQDCYCF62OfhAdXJOnm+M7+Alsq7Lu
 +UYRLmbfdv2rr92dPElP66Em4P6ykmydnfyuWxSwffY/iWRIYQ61Tt98d0dDjdEO70Z0
 h44GqX/EmP0wFQgmZNs4oD3W4NnmUBuK+mAi/Af2zR00chDU3nsi/k3FHJ16Qa1QJ/6e
 OGRrfpUEXHRvd9z0kxW8Vtu933kts++nwlOtfgQ9jj/rbD6IXvFMjckirvKiM8OTYhPT
 OhV7JWJ0lmC/nuNdvosxOqQizxr3Ao8IyrEdgf0huBgXuFSQnAosKyDxyKywWkSQ5zoU
 9+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=73ciu6eFOPHbqo4MJgjXh4/QYZ5M67T1wK+DASmK9NE=;
 b=uaCU7nPYdejuD3YpBSGySXpvWzOFmuj4gE7lXNbsu1DI647mvrUx3xMoo5W/w2S2bJ
 o3X6s+v6tuZxj3jFVzwktP5urP9dWW1/P3qsDJ7omJTgwsNJQr4CQDSBwIGUYNZgDiVg
 AC5infeNvmuh2/IPT4OpzaIQKK2eB2az/JrZztVMVV2Oj7ZXcXph+67UW/gChPS6ZF/W
 JbwMM1RUxTWE4Oy3cTtnJpiOBUQ9Z5hzdggUkYWee/z+/UHf4k+wGsVTHuc23ihbdiGp
 uF6zcI2P451nm8bu7XXvVHyPt7C5RLL+7+BxGwXET23RT8/93QzYZiv6b8uwHwHF2aay
 fn+g==
X-Gm-Message-State: AOAM5331L1nE9hWOGY6OwhmcidIHg8pzVqMsAVNrHlKrPaElwRRO5FiC
 nxD41zgRP7AvSqA/RcVd7TIlcg==
X-Google-Smtp-Source: ABdhPJwKrQ51Nwha2VtS4aMgCuEL82xY1akX4Z4zmNsNYZEiQfggxfFJ1qUfY7Cel/HEuFVth6zzOw==
X-Received: by 2002:a17:906:7253:: with SMTP id
 n19mr2896364ejk.543.1611653738662; 
 Tue, 26 Jan 2021 01:35:38 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u2sm9512360ejb.65.2021.01.26.01.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 01:35:38 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 26 Jan 2021 11:35:31 +0200
Message-Id: <20210126093533.441338-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 0/2] net: bridge: multicast: per-port
	EHT hosts limit
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
This set adds a simple configurable per-port EHT tracked hosts limit.
Patch 01 adds a default limit of 512 tracked hosts per-port, since the EHT
changes are still only in net-next that shouldn't be a problem. Then
patch 02 adds the ability to configure and retrieve the hosts limit
and to retrieve the current number of tracked hosts per port.
Let's be on the safe side and limit the number of tracked hosts by
default while allowing the user to increase that limit if needed.

v2: patch 2: move br_multicast_eht_set_hosts_limit() to br_multicast_eht.c,
             no functional change

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: multicast: add per-port EHT hosts limit
  net: bridge: multicast: make tracked EHT hosts limit configurable

 include/uapi/linux/if_link.h      |  2 ++
 net/bridge/br_multicast.c         |  1 +
 net/bridge/br_multicast_eht.c     | 22 ++++++++++++++++++++++
 net/bridge/br_netlink.c           | 19 ++++++++++++++++++-
 net/bridge/br_private.h           |  2 ++
 net/bridge/br_private_mcast_eht.h | 28 ++++++++++++++++++++++++++++
 net/bridge/br_sysfs_if.c          | 26 ++++++++++++++++++++++++++
 net/core/rtnetlink.c              |  2 +-
 8 files changed, 100 insertions(+), 2 deletions(-)

-- 
2.29.2


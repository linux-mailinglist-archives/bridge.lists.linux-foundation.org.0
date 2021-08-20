Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE53F2C5D
	for <lists.bridge@lfdr.de>; Fri, 20 Aug 2021 14:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F3914011C;
	Fri, 20 Aug 2021 12:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7mtib2Es_bn; Fri, 20 Aug 2021 12:44:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 787FC401AD;
	Fri, 20 Aug 2021 12:44:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3F84BC0022;
	Fri, 20 Aug 2021 12:44:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6EE1FC000E
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D11A40466
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4U92yANkmS1 for <bridge@lists.linux-foundation.org>;
 Fri, 20 Aug 2021 12:44:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1946840405
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 12:43:59 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id h9so20022183ejs.4
 for <bridge@lists.linux-foundation.org>; Fri, 20 Aug 2021 05:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=giNz4IMQJBWP9MPpTNJl9KipRoS+mbRRhgoflH2MLuc=;
 b=baP/p1y6Id5GHg2j6wuQaaDBno0KZNyeB8YQbfZfByrzqp2iDkVPPFJka/xKkwp6Ag
 aGZzfxyIp3KjAIO6i2amosQy9oMzzO6cZ/XpnAfM9XhfGnjrXrhP13cHMDhE/ykRLsp/
 YIo/ILPY1HLFobWrtZZVYTL6oo3MJ08TJFuHddGwRXpuqbkKOM9V2p9UWExW8WF9jpRm
 CtPAXg6WY2PuBM8wCsuZ7Xd79qf9a1eOojUkZNx/D7LLGXsAfVzq397ono6XHCkVj5o0
 h5kIjd8cj3tBVoNtGWXmqzwvgs9JGm3vZqgrfM6V5yHZfjwHMTUmLNsLzVYpaC2UPyh8
 rmeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=giNz4IMQJBWP9MPpTNJl9KipRoS+mbRRhgoflH2MLuc=;
 b=N+dbeaODYjl2a1R2NanCE9mMXoJqdb0opWizM1JoMuxqKp/adIJC65frqpzXygQkMm
 mkDkTaxbQWxeEhaU77a6c3y8gVxXU++AqF9dXldiHrkXMvvxX9WEpNFb2/fZh8Tlx2LV
 ORwtvtuEGALnCJrDYJUK5t+keFUD6bETawxcx3MNfQX3jQ+GcO9HnLJR5U8Wp/c5vMVf
 QMR1pbJ4d0c+S1kbwzSBpoLlpBh8h6mx5ONH4LPcgk8K3pqGto5BA59mi9YB0Jz2Xotz
 UXtWyPor+aUzfpVq2L/tgKCL/dLVJpM59jyT/miqms8qRFf6FhPrahzRXJl19BWkupWw
 EOnQ==
X-Gm-Message-State: AOAM530cYeoYQZZ2jg4K8MNu+G3HcAxOwYJYKqtyGKeed7W05i2wK+ka
 HuRR6e6HVW6+vv7rW50ZULtyEQ==
X-Google-Smtp-Source: ABdhPJy9j8l2nWFIqj7zYdTJX4V77CWERzGmn2AXcVp2St4jibRZZvLcXL7siAbc0Js3vGS7sLuZAA==
X-Received: by 2002:a17:907:b07:: with SMTP id
 h7mr20616242ejl.406.1629463438243; 
 Fri, 20 Aug 2021 05:43:58 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id ci19sm676627ejc.109.2021.08.20.05.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 05:43:57 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 20 Aug 2021 15:42:53 +0300
Message-Id: <20210820124255.1465672-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: mcast: add support for
	port/vlan router control
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
This small set adds control over port/vlan mcast router config.
Initially I had added host vlan entry router control via vlan's global
options but that is really unnecessary and we can use a single per-vlan
option to control it both for port/vlan and host/vlan entries. Since
it's all still in net-next we can convert BRIDGE_VLANDB_GOPTS_MCAST_ROUTER
to BRIDGE_VLANDB_ENTRY_MCAST_ROUTER and use it for both. That makes much
more sense and is easier for user-space. Patch 01 prepares the port
router function to be used with port mcast context instead of port and
then patch 02 converts the global vlan mcast router option to per-vlan
mcast router option which directly gives us both host/vlan and port/vlan
mcast router control without any additional changes.

This way we get the following coherent syntax:
 [ port/vlan mcast router]
 $ bridge vlan set vid 100 dev ens20 mcast_router 2

 [ bridge/vlan mcast router ]
 $ bridge vlan set vid 100 dev bridge mcast_router 2
instead of:
 $ bridge vlan set vid 100 dev bridge mcast_router 1 global

The mcast_router should not be regarded as a global option, it controls
the port/vlan and bridge/vlan mcast router behaviour.

This is the last set needed for the initial per-vlan mcast support.
Next patch-sets:
 - iproute2 support
 - selftests

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: mcast: br_multicast_set_port_router takes multicast
    context as argument
  net: bridge: vlan: convert mcast router global opt to per-vlan entry

 include/uapi/linux/if_bridge.h |  2 +-
 net/bridge/br_multicast.c      | 24 ++++++++++++----
 net/bridge/br_netlink.c        |  3 +-
 net/bridge/br_private.h        | 18 +++++++++++-
 net/bridge/br_sysfs_if.c       |  2 +-
 net/bridge/br_vlan.c           |  1 +
 net/bridge/br_vlan_options.c   | 51 ++++++++++++++++++++++------------
 7 files changed, 74 insertions(+), 27 deletions(-)

-- 
2.31.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7F43038D1
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 10:21:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFD80854C9;
	Tue, 26 Jan 2021 09:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HY9yTL2O0cZd; Tue, 26 Jan 2021 09:21:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27DB485450;
	Tue, 26 Jan 2021 09:21:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 049D5C1DA7;
	Tue, 26 Jan 2021 09:21:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 793CCC013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70050203E3
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVnbD+H2krkK for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 09:21:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by silver.osuosl.org (Postfix) with ESMTPS id 086FE20021
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 09:21:42 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id gx5so21951781ejb.7
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 01:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XdLi2k7bp5m2hq3pEkkJKOTLNg7Dpyy+GJx91gunEG8=;
 b=RAQdfDKfGB5XehyNiAe7lCmK/wr+jWCKZgZCPxq8MlVuEH6vVEzbcnYBvKZhUbl4In
 lLLXCtzwYSN3eleiegfCjn1mBDa0lqHdczqrKTlWJuLbW6HsEDvYvdsgPKmkfMJgE9CP
 oCUz8WD7umQ7Bq+tM9jdH5bdFc/+ID2KeYOWQdfbJ+oWV+brDLytO5heWlM36JM0MYi1
 1iCJhT4JpWLTgCwwBit2B9CXHiK7Tc9NFeLZ0KpStjry7XuzcZX6dmORHQRJSkl/sU1u
 MjkSwARjz1LtZk0+AwfWaVyjv8dN6nlvgQ9FefSbUac1in9WkdfDDR2NlJkaLksjLAL3
 l82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XdLi2k7bp5m2hq3pEkkJKOTLNg7Dpyy+GJx91gunEG8=;
 b=pFumUfzvbnpzY1X9wZp/3jy5OgnqwhU7c5NuLRuIKH7s15GaAbEmeF5zYs2t6ufugF
 TpTuSDuLEmLpkRXU0/DgVZoGW9WDNObNiq4jJRiw9AtAGXRkAbUWWlEnn/SiaQ6wJ6Ub
 G098goqVEDArL4a2rHT2qwkgLy/HB0H7Nf9zg3dJYmfL4+rJTrR8kkcZo7/PpYTS3KF2
 iZfnZg0bwgRfJMcy0xndcgoGi4S1J0idc/7futKNaul+9iERPXBuPMLhdjb43XL670ww
 SxMrO1P1SinYBGoVlvitDspUqODsVRtOyfhEI8hyqYPx2dSyU5FFnJveWMRhe9Ib6DBm
 uirg==
X-Gm-Message-State: AOAM531b4PTfCQb2xMuSFamnrHnZRxmO2ccFfa0Syj1V8ac3o+R3Ucgi
 vNPEYhP0bmgmpSqxoaEol+noPg==
X-Google-Smtp-Source: ABdhPJw/PzTYZ1qkLgDURIxHfYWD6i4N2xfrg2GJxNgol2HYKD5eRSyN+/37pEX2tAUv+yx+m5LsYQ==
X-Received: by 2002:a17:906:c410:: with SMTP id
 u16mr2777136ejz.159.1611652900833; 
 Tue, 26 Jan 2021 01:21:40 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u9sm1195274edv.32.2021.01.26.01.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 01:21:40 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 26 Jan 2021 11:21:30 +0200
Message-Id: <20210126092132.407355-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: multicast: per-port EHT
	hosts limit
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

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: multicast: add per-port EHT hosts limit
  net: bridge: multicast: make tracked EHT hosts limit configurable

 include/uapi/linux/if_link.h      |  2 ++
 net/bridge/br_multicast.c         | 16 ++++++++++++++++
 net/bridge/br_multicast_eht.c     |  7 +++++++
 net/bridge/br_netlink.c           | 19 ++++++++++++++++++-
 net/bridge/br_private.h           |  2 ++
 net/bridge/br_private_mcast_eht.h | 28 ++++++++++++++++++++++++++++
 net/bridge/br_sysfs_if.c          | 26 ++++++++++++++++++++++++++
 net/core/rtnetlink.c              |  2 +-
 8 files changed, 100 insertions(+), 2 deletions(-)

-- 
2.29.2


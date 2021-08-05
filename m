Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590DD3E1052
	for <lists.bridge@lfdr.de>; Thu,  5 Aug 2021 10:32:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43B1640287;
	Thu,  5 Aug 2021 08:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80BF3lh9RIv3; Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A43F1400EC;
	Thu,  5 Aug 2021 08:31:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5118AC001F;
	Thu,  5 Aug 2021 08:31:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 173ECC000E
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD08682F13
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkKXk7slenpm for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 08:31:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28DA482F0F
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:31:57 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id x11so8203723ejj.8
 for <bridge@lists.linux-foundation.org>; Thu, 05 Aug 2021 01:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9EkdsdYrApQ7+f5B8Pf+SPksTX/P+n0hxS3e4gT9YU8=;
 b=xqiRpsxL69vB0rwu/tqx/+M8yMfnqdwIb7raj+3psGPAF3iRPd6FMf46Tn4VpwyItb
 LHQcr8Ax3liG9F1syUcoSfiF5j2K2cTZ+uVYAhkmZ53Sih1ZFMTUj/Gu5d98VE1eQhz7
 X4z3w6gR0WR4VvFpZ8vvtEI8fyRyW4zoYDXY4zto0r2hni1xTyxeoy90wsy8N94LR8KJ
 8EBf8/GeQwHJMySq3h0zLRqfsq3qd5Upf4TcUUDzHr6CVr6Me78rYi4k3F2S8FQdpFRS
 okJ1JqXxx7Wu6JYjlmSVM4+0i0pfJYD9BfLnS/ZdbuMifq4WG6dTkFbd/X2jpfwsw/Ti
 /v3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9EkdsdYrApQ7+f5B8Pf+SPksTX/P+n0hxS3e4gT9YU8=;
 b=UgQ69IaeoB3Ys++n8FbW5NsmaJw+dXCfpYkNDNVib5tZgwxEPOE6hYSiZFG0RGMioQ
 rVrjWIZCcNGt9c62pq2rEf1Bo7SAcG7SFuN3kWu2rB89Z1RaS2MqRrZF7TpUl7pO7vHp
 sB2VvKbOa/C+Mg7S1F55OXmEfOj9vdoiAGKQqeWJpeNkMmrXVyqQnZG9hpYgp7bIQaRh
 CGxDJujvAPo20dCAY9JoPdQtwqwjPEuozClGrjLB/HOy/3FaACJ8qzSPABE2N2Siwc/6
 PXcNoodEBKM0w3lbKp/op6umpkRchFh9neH8B7sQbjF9oQg0LDjIbTiujTKHocUVKCcu
 fq4g==
X-Gm-Message-State: AOAM531y5N2FX4JL3TO10SDwzonM/Yf02e49mfDMUFsM4ZmY1cu3dZUP
 PEBNuuBADpFYSJBTJcyJ2ycj8A==
X-Google-Smtp-Source: ABdhPJxMIcJYTBW+Ta73fHztDJiyFCHXDkhT478vefVH/d1uYr5MDxyp/ys5RslAyEcnURKaWL0IyQ==
X-Received: by 2002:a17:906:2990:: with SMTP id
 x16mr3597423eje.554.1628152315124; 
 Thu, 05 Aug 2021 01:31:55 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id bm1sm1471611ejb.38.2021.08.05.01.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 01:31:54 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu,  5 Aug 2021 11:29:00 +0300
Message-Id: <20210805082903.711396-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 arnd@arndb.de, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/3] net: bridge: fix recent ioctl changes
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
These are three fixes for the recent bridge removal of ndo_do_ioctl
done by commit ad2f99aedf8f ("net: bridge: move bridge ioctls out of
.ndo_do_ioctl"). Patch 01 fixes a deadlock of the new bridge ioctl
hook lock and rtnl by taking a netdev reference and always taking the
bridge ioctl lock first then rtnl from within the bridge hook.
Patch 02 fixes old_deviceless() bridge calls device name argument, and
patch 03 checks in dev_ifsioc()'s SIOCBRADD/DELIF cases if the netdevice is
actually a bridge before interpreting its private ptr as net_bridge.

Patch 01 was tested by running old bridge-utils commands with lockdep
enabled. Patch 02 was tested again by using bridge-utils and using the
respective ioctl calls on a "up" bridge device. Patch 03 was tested by
using the addif ioctl on a non-bridge device (e.g. loopback).

Thanks,
 Nik

Nikolay Aleksandrov (3):
  net: bridge: fix ioctl locking
  net: bridge: fix ioctl old_deviceless bridge argument
  net: core: don't call SIOCBRADD/DELIF for non-bridge devices

 net/bridge/br_if.c    |  4 +---
 net/bridge/br_ioctl.c | 39 +++++++++++++++++++++++++--------------
 net/core/dev_ioctl.c  |  9 ++++++++-
 3 files changed, 34 insertions(+), 18 deletions(-)

-- 
2.31.1


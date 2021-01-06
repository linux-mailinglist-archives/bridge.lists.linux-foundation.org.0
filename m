Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42C82EBBD8
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18F5A871DB;
	Wed,  6 Jan 2021 09:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id So+oHGvWEI1W; Wed,  6 Jan 2021 09:52:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D989A87216;
	Wed,  6 Jan 2021 09:52:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF4A8C013A;
	Wed,  6 Jan 2021 09:52:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D545C013A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83B9187216
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6hDKpxlHY9x for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FBDB871DB
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:07 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id i24so3828144edj.8
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wFYVdNCGZo254Md4m2v48sFF9I2fZhhCJRCbYo96ynw=;
 b=r2hEt3YhyZtRbtTbKEgM7AOCqI7maZ7J138o7yqh2U812EyJXex68bYOO1VKErnc7a
 TyfLHIvKIAN4jpLN8ISxdbLNv5IGt6zkxgcqC8Zfj+O0TPMTrjyfeYatRMLY3rPQnPV9
 WHooaDbovRFSuCmtx1hbVe13OkZL+o8IkJwLi5v2X2etGgPp7z61ORFGyvkwknDoqaTy
 OZgvBQoXxLT2LhjIOllhwVtZBGj7ehBLwJ8dh0AJZzj2qqWbu/Aj5n6inx9EBArJQlW/
 EWDrGYPKnqKaayDO+8Ke/iXzt1PnKp22uvAd/uQlcBfKvO1YD7AYlqDdKMdg+UHGP8JK
 9zLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wFYVdNCGZo254Md4m2v48sFF9I2fZhhCJRCbYo96ynw=;
 b=sH3+bYtaGu/roF+OI7CIoFPKMty9rPF67ixKOTgOLwYk1ZihAULbTJbvCu2n22gOCQ
 /JmXI1QBW+rlospM44kw85QKnv52S5ozIXy3GTpRN5XsnTohFUQpsvPw2xoeJiQkbbmd
 y4hrbUIVjJR0iR14yH6SkqDm9p/9u5aadYvt1JNNOBYg54mcHQWyeP6BTqfRvXa7fOVV
 NYqxpKAnuCB7E8rx4d3Y+TzmwU/HQnbb7G2xKKoTgCrvhnNM1n2Y4A77jtT8oFTCMnGL
 dz90z8Nocgm3X78D4EZ/3Ltdg/d3XasZy5grFx6s839SMGW2TfeIpqH5HDZjmDiUCEPS
 X38A==
X-Gm-Message-State: AOAM533xo7TpOdCEeSIB+aKgFvmByn7aS2QnL+hhx66aX+Y3aIYVXxtO
 u5Bqy8QBuaXUI5nXgWd6YlM=
X-Google-Smtp-Source: ABdhPJx6jQJEjUJu+pPJq4VL96D+e7Xlxkq7a+kpLfhHQq9snCSQsVZHsxrmUc2CD5wkfstxBayVaA==
X-Received: by 2002:a50:fb85:: with SMTP id e5mr3402235edq.153.1609926726098; 
 Wed, 06 Jan 2021 01:52:06 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:05 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:29 +0200
Message-Id: <20210106095136.224739-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 0/7] Offload software learnt bridge
	addresses to DSA
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

This series tries to make DSA behave a bit more sanely when bridged with
"foreign" (non-DSA) interfaces and source address learning is not
supported on the hardware CPU port (which would make things work more
seamlessly without software intervention). When a station A connected to
a DSA switch port needs to talk to another station B connected to a
non-DSA port through the Linux bridge, DSA must explicitly add a route
for station B towards its CPU port.

Initial RFC was posted here:
https://patchwork.ozlabs.org/project/netdev/cover/20201108131953.2462644-1-olteanv@gmail.com/

v2 was posted here:
https://patchwork.kernel.org/project/netdevbpf/cover/20201213024018.772586-1-vladimir.oltean@nxp.com/

v3 was posted here:
https://patchwork.kernel.org/project/netdevbpf/cover/20201213140710.1198050-1-vladimir.oltean@nxp.com/

This is a resend of the previous v3 with some added Reviewed-by tags.

Vladimir Oltean (7):
  net: bridge: notify switchdev of disappearance of old FDB entry upon
    migration
  net: dsa: be louder when a non-legacy FDB operation fails
  net: dsa: don't use switchdev_notifier_fdb_info in
    dsa_switchdev_event_work
  net: dsa: move switchdev event implementation under the same
    switch/case statement
  net: dsa: exit early in dsa_slave_switchdev_event if we can't program
    the FDB
  net: dsa: listen for SWITCHDEV_{FDB,DEL}_ADD_TO_DEVICE on foreign
    bridge neighbors
  net: dsa: ocelot: request DSA to fix up lack of address learning on
    CPU port

 drivers/net/dsa/ocelot/felix.c |   1 +
 include/net/dsa.h              |   5 +
 net/bridge/br_fdb.c            |   1 +
 net/dsa/dsa_priv.h             |  12 +++
 net/dsa/slave.c                | 174 +++++++++++++++++++++------------
 5 files changed, 130 insertions(+), 63 deletions(-)

-- 
2.25.1


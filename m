Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8531B3B73CA
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87F2C8384B;
	Tue, 29 Jun 2021 14:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8Sf9Arkp4sa; Tue, 29 Jun 2021 14:07:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E595382C38;
	Tue, 29 Jun 2021 14:07:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6129C0022;
	Tue, 29 Jun 2021 14:07:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F0A8C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 401B64045A
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8F9ELBccaXIi for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED036403B7
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:17 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id w13so25516973edc.0
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FzNs6k+WH9nnhjpgpXPTc7VwF/FF2gD8HuGqYMS5qGE=;
 b=UENoSF0vdbrkt2VBRVb9yTMcP+TFhrp6iHCqbcu4h7QEoAU/8SJrNC8AHhewuD79/9
 Tscf9R8dRpdPGRLOnx91O6Et9pyPHJik4Z3Bzzv6XpBy0928GrRQ0i7QX75uY3Pvt12j
 B0+hi+NgpLORRqNUuv4RAXd1PHmvJEUw7KxCxcnyUiCjU9TZ8BnVo+nW558M/FpAeWF4
 swbWVr0rVBWx0FXOtvASNb0CGc8ZhYiw6OK8VZ7j8TjlvF6cwFoNowJhRImw+IfBFpMA
 B+yAxZfcFZSEK/Yqxd3oJzfFETJWraWUdgm+dzr+5NC4ml2wvuFZ7mUbbfeGV52bgBRR
 NBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FzNs6k+WH9nnhjpgpXPTc7VwF/FF2gD8HuGqYMS5qGE=;
 b=TMXVE/28CgXO+WAFWR23nMbvnp10Psus0mOnjSbjv6BVsjBFFbZPVc78jQG7M7Wf3Q
 6D30jBJaWV0ifyOKtVj95DWSR7aQKRsj6TkiLiGuKjHgear3DuxMRHwZtxPzCmmYrVfi
 uzH8EgZfeunb3rQ0ZbLitFlwIZKqPf02qWPYn8Cf4Pnzo08s4J+O9nbABTal8qsR2xHl
 xgDs6xb2IQrZmFRPrvv/6xQydQ+IR1cKCuR+hwrAGBMiFmZN9Bdwf864daekO1W853U4
 9auozzWflnApBYfj46VQRRZvobgLPe3Y6qy9VRnCRI82PXN8Y4ug7qanSsmOmrAfEc0i
 FgTw==
X-Gm-Message-State: AOAM531d2I38U1GsPe+Bf04W4+6t2yY8cYBnwgNAOLeWIZFaa7unyLbA
 DcpKfD7EGTZAX+1XDpwCFmo=
X-Google-Smtp-Source: ABdhPJxwCupxqwye11I9zt+G3U/Paxv5VqKI06sxoIZFwq54yeaY2q1lVnLtV+vQdlpdzDV0dGyDdA==
X-Received: by 2002:a05:6402:375:: with SMTP id
 s21mr39507883edw.203.1624975636162; 
 Tue, 29 Jun 2021 07:07:16 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:15 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:43 +0300
Message-Id: <20210629140658.2510288-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 00/15] RX filtering in DSA
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

This is my 5th stab at creating a list of unicast and multicast
addresses that the DSA CPU ports must trap. I am reusing a lot of
Tobias's work which he submitted here:
https://patchwork.kernel.org/project/netdevbpf/cover/20210116012515.3152-1-tobias@waldekranz.com/

My additions to Tobias' work come in the form of taking some care that
additions and removals of host addresses are properly balanced, so that
we can do reference counting on them for cross-chip setups and multiple
bridges spanning the same switch (I am working on an NXP board where
both are real requirements).

During the last attempted submission of multiple CPU ports for DSA:
https://patchwork.kernel.org/project/netdevbpf/cover/20210410133454.4768-1-ansuelsmth@gmail.com/

it became clear that the concept of multiple CPU ports would not be
compatible with the idea of address learning on those CPU ports (when
those CPU ports are statically assigned to user ports, not in a LAG)
unless the switch supports complete FDB isolation, which most switches
do not. So DSA needs to manage in software all addresses that are
installed on the CPU port(s), which is what this patch set does.

Compared to all earlier attempts, this series does not fiddle with how
DSA operates the ports in standalone mode at all, just when bridged.
We need to sort that out properly, then any optimization that comes in
standalone mode (i.e. IFF_UNICAST_FLT) can come later.

Changes in v5:
- added READ_ONCE and WRITE_ONCE for fdb->dst
- removed a paranoid WARN_ON in DSA
- added some documentation regarding how 'bridge fdb' is supposed to be
  used with DSA

Tobias Waldekranz (2):
  net: bridge: switchdev: send FDB notifications for host addresses
  net: dsa: include bridge addresses which are local in the host fdb
    list

Vladimir Oltean (13):
  net: bridge: use READ_ONCE() and WRITE_ONCE() compiler barriers for
    fdb->dst
  net: bridge: allow br_fdb_replay to be called for the bridge device
  net: dsa: delete dsa_legacy_fdb_add and dsa_legacy_fdb_del
  net: dsa: introduce dsa_is_upstream_port and dsa_switch_is_upstream_of
  net: dsa: introduce a separate cross-chip notifier type for host MDBs
  net: dsa: reference count the MDB entries at the cross-chip notifier
    level
  net: dsa: introduce a separate cross-chip notifier type for host FDBs
  net: dsa: reference count the FDB addresses at the cross-chip notifier
    level
  net: dsa: install the host MDB and FDB entries in the master's RX
    filter
  net: dsa: sync static FDB entries on foreign interfaces to hardware
  net: dsa: include fdb entries pointing to bridge in the host fdb list
  net: dsa: ensure during dsa_fdb_offload_notify that dev_hold and
    dev_put are on the same dev
  net: dsa: replay the local bridge FDB entries pointing to the bridge
    dev too

 .../networking/dsa/configuration.rst          |  68 +++++
 include/net/dsa.h                             |  39 +++
 net/bridge/br_fdb.c                           |  37 ++-
 net/bridge/br_private.h                       |   7 +-
 net/bridge/br_switchdev.c                     |  12 +-
 net/dsa/dsa2.c                                |  14 +
 net/dsa/dsa_priv.h                            |  14 +
 net/dsa/port.c                                |  86 ++++++
 net/dsa/slave.c                               | 102 +++----
 net/dsa/switch.c                              | 273 +++++++++++++++++-
 10 files changed, 573 insertions(+), 79 deletions(-)

-- 
2.25.1


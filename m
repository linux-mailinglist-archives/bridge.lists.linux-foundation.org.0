Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F221EC7C6
	for <lists.bridge@lfdr.de>; Wed,  3 Jun 2020 05:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3218385250;
	Wed,  3 Jun 2020 03:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGBjCAjfjlNU; Wed,  3 Jun 2020 03:27:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B059885D6E;
	Wed,  3 Jun 2020 03:27:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D6C5C016E;
	Wed,  3 Jun 2020 03:27:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE4C9C0177
 for <bridge@lists.linux-foundation.org>; Sun, 19 Apr 2020 16:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BAC9684E0C
 for <bridge@lists.linux-foundation.org>; Sun, 19 Apr 2020 16:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pM6SZ4fNfJyM for <bridge@lists.linux-foundation.org>;
 Sun, 19 Apr 2020 16:19:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16EB384D16
 for <bridge@lists.linux-foundation.org>; Sun, 19 Apr 2020 16:19:53 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y22so3011532pll.4
 for <bridge@lists.linux-foundation.org>; Sun, 19 Apr 2020 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YG+p9bpPBHqyI4mCiMrVfo4BojUmW4QV1jvJ5YQRhnY=;
 b=hHE1PNZgAIGvBQTOD3CUD4s+7VggJSeq6TnzxrF3uubC7quWhfgn7tRKDYFs+xlAbc
 +KV+tqw1PUHAsh3qRxT4zw1Y+8hjoONwZcGjRqvtZZoW4t1v94x40FvDL1nlhxqRXqAL
 Qf/bXUUtZ2viScyRqbtwtkz56JfAiDIugkeD1/z1zfdbn2SiSE+e6lcpc1D9kZu34hc4
 g+rA+fY8YIDld6yxHeMuNeiqye20nk88NVxb83OUaGxzGlJ4Du7fltMj1KSJgyqgnJUU
 YY1rxThk5EH5azh1q9ox8+CfG5TiveZ9dXo6hFTa2gxKRARs7+h7Vd9Dth/YL4FxQIQf
 YNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YG+p9bpPBHqyI4mCiMrVfo4BojUmW4QV1jvJ5YQRhnY=;
 b=LEqoa3YW/yWQdmr5VCDvrvlkgQWhOuadKDnIZdTQ0BmXkpa90zoTHVn/tA857VAu03
 BWyoCkG52+xYymUdYIFEU6S46hoEZImi4tbitcNMNUyM3/lO+0FrmuZxos01WiuBnBbJ
 d5x0wi0BEejCavqf45A/2PUB8fDfmmVhnK4tx+eEsCdSc0REUVQSPU2C65qogGG8lP4b
 /Bk+nI9NrnKyaC5CrkYLMJ5qgneaARhGYsBgPHQnnSl+4RsMaXZKgH3xV9UOXxQ4YeaI
 GDk955IpcFqXVZfUWPaJwOtfWkWn/pey7hGkZ+eKqAMuKIvbaUj1fhuB/cUVEHZw0Jxo
 KvJg==
X-Gm-Message-State: AGi0PubFrMpagYaHWElBu7hZjT6hsJz5nOwUH6G2jDzx6v5ps3fE4i1j
 KW8GrsuVDwAW2tVLubdUFQs=
X-Google-Smtp-Source: APiQypJLbgPo7MTzc0x6sikVq4UdzWK5aXvn0WloExU02qcoI1xEihcY9913DVQzdtaNkrCFZ8d3cQ==
X-Received: by 2002:a17:902:7598:: with SMTP id
 j24mr13781426pll.166.1587313192684; 
 Sun, 19 Apr 2020 09:19:52 -0700 (PDT)
Received: from P65xSA.lan ([2402:f000:1:1501::7141:e898])
 by smtp.gmail.com with ESMTPSA id a13sm25173557pfc.26.2020.04.19.09.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 09:19:52 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 20 Apr 2020 00:19:46 +0800
Message-Id: <20200419161946.19984-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jun 2020 03:27:25 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [RFC PATCH net-next] net: bridge: fix client roaming from
	DSA user port
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

When a client roams from a DSA user port to a soft-bridged port (such as WiFi
interface), the left-over MAC entry in the switch HW is not deleted, causing
inconsistency between Linux fdb and the switch MAC table. As a result, the
client cannot talk to other hosts which are on that DSA user port until the
MAC entry expires.

Solve this by notifying switchdev fdb to delete the leftover entry when an
entry is updated. Remove the added_by_user check in DSA

Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
I tried this on mt7530 and mv88e6xxx, but only mt7530 works.
In previous discussion[1], Andrew Lunn said "try playing with auto learning
for the CPU port" but it didn't work on mv88e6xxx either

I think commit 7e26bf45e4cb ("net: bridge: allow SW learn to take over HW fdb
entries") already tried to fix this issue..

[1] https://lore.kernel.org/netdev/20200405150915.GD161768@lunn.ch/

 net/bridge/br_fdb.c | 3 +++
 net/dsa/slave.c     | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 4877a0db16c6..46003e78f2ac 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -579,6 +579,9 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 			/* fastpath: update of existing entry */
 			if (unlikely(source != fdb->dst &&
 				     !test_bit(BR_FDB_STICKY, &fdb->flags))) {
+				/* Remove the entry in HW */
+				br_switchdev_fdb_notify(fdb, RTM_DELNEIGH);
+
 				fdb->dst = source;
 				fdb_modified = true;
 				/* Take over HW learned entry */
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index e94eb1aac602..6133a1be1a74 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -1932,8 +1932,6 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 
 	case SWITCHDEV_FDB_DEL_TO_DEVICE:
 		fdb_info = &switchdev_work->fdb_info;
-		if (!fdb_info->added_by_user)
-			break;
 
 		err = dsa_port_fdb_del(dp, fdb_info->addr, fdb_info->vid);
 		if (err) {
-- 
2.26.0


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA94366E690
	for <lists.bridge@lfdr.de>; Tue, 17 Jan 2023 20:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEA44812BF;
	Tue, 17 Jan 2023 19:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEA44812BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xT6RQmv7K7V0; Tue, 17 Jan 2023 19:09:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6D964812C9;
	Tue, 17 Jan 2023 19:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D964812C9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0829FC007C;
	Tue, 17 Jan 2023 19:09:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85CB2C002D
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 19:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B563812BF
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 19:09:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B563812BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7Cz-uUZaLCN for <bridge@lists.linux-foundation.org>;
 Tue, 17 Jan 2023 19:09:00 +0000 (UTC)
X-Greylist: delayed 00:09:44 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95AC98128B
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95AC98128B
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 19:09:00 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 0884118835F8;
 Tue, 17 Jan 2023 18:59:13 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id EE2C8250007B;
 Tue, 17 Jan 2023 18:59:12 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id E5B499EC000B; Tue, 17 Jan 2023 18:59:12 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 48D9991201E4;
 Tue, 17 Jan 2023 18:59:12 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 17 Jan 2023 19:57:10 +0100
Message-Id: <20230117185714.3058453-2-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117185714.3058453-1-netdev@kapio-technology.com>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>
Subject: [Bridge] [RFC PATCH net-next 1/5] net: bridge: add dynamic flag to
	switchdev notifier
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

To be able to add dynamic FDB entries to drivers from userspace, the
dynamic flag must be added when sending RTM_NEWNEIGH events down.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 include/net/switchdev.h   | 1 +
 net/bridge/br_switchdev.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index ca0312b78294..aaf918d4ba67 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
 	u8 added_by_user:1,
 	   is_local:1,
 	   locked:1,
+	   is_dyn:1,
 	   offloaded:1;
 };
 
diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 7eb6fd5bb917..60c05a00a1df 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
 	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
 	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
+	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);
 	item->locked = false;
 	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
 	item->info.ctx = ctx;
-- 
2.34.1


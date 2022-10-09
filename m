Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642E85F9785
	for <lists.bridge@lfdr.de>; Mon, 10 Oct 2022 06:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFFBA40A13;
	Mon, 10 Oct 2022 04:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFFBA40A13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZvE6r_JngPr; Mon, 10 Oct 2022 04:56:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2C0F640227;
	Mon, 10 Oct 2022 04:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C0F640227
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94355C007C;
	Mon, 10 Oct 2022 04:56:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE8F2C002D
 for <bridge@lists.linux-foundation.org>; Mon, 10 Oct 2022 04:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AE0D829B6
 for <bridge@lists.linux-foundation.org>; Mon, 10 Oct 2022 04:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AE0D829B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mG2B0wUPYNbq for <bridge@lists.linux-foundation.org>;
 Mon, 10 Oct 2022 04:56:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 326C38276E
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 326C38276E
 for <bridge@lists.linux-foundation.org>; Mon, 10 Oct 2022 04:56:07 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 5811418843CD;
 Mon, 10 Oct 2022 04:56:03 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 1C041250556A;
 Mon, 10 Oct 2022 04:56:03 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 0)
 id 0EB5F9EC0001; Mon, 10 Oct 2022 04:56:03 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id CCB289120FED;
 Sun,  9 Oct 2022 17:41:35 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Sun,  9 Oct 2022 19:40:51 +0200
Message-Id: <20221009174052.1927483-9-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221009174052.1927483-1-netdev@kapio-technology.com>
References: <20221009174052.1927483-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>,
 Florent Fourcot <florent.fourcot@wifirst.fr>
Subject: [Bridge] [PATCH v7 net-next 8/9] net: dsa: mv88e6xxx: add blackhole
	ATU entries
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

Blackhole FDB entries can now be added, deleted or replaced in the
driver ATU.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 60 +++++++++++++++++++++++++++++---
 1 file changed, 56 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 71843fe87f77..3c4ebb2a5301 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -2735,6 +2735,56 @@ static int mv88e6xxx_vlan_msti_set(struct dsa_switch *ds,
 	return err;
 }
 
+static int mv88e6xxx_blackhole_fdb_loadpurge(struct dsa_switch *ds,
+					     const unsigned char *addr, u16 vid, u8 state)
+{
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_atu_entry entry;
+	struct mv88e6xxx_vtu_entry vlan;
+
+	u16 fid = 0;
+	int err;
+
+	if (vid == 0) {
+		fid = MV88E6XXX_FID_BRIDGED;
+	} else {
+		mv88e6xxx_reg_lock(chip);
+		err = mv88e6xxx_vtu_get(chip, vid, &vlan);
+		mv88e6xxx_reg_unlock(chip);
+		if (err)
+			return err;
+
+		/* switchdev expects -EOPNOTSUPP to honor software VLANs */
+		if (!vlan.valid)
+			return -EOPNOTSUPP;
+
+		fid = vlan.fid;
+	}
+
+	ether_addr_copy(entry.mac, addr);
+	entry.portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
+	entry.state = state;
+	entry.trunk = false;
+
+	mv88e6xxx_reg_lock(chip);
+	err = mv88e6xxx_g1_atu_loadpurge(chip, fid, &entry);
+	mv88e6xxx_reg_unlock(chip);
+
+	return err;
+}
+
+int mv88e6xxx_blackhole_fdb_add(struct dsa_switch *ds, const unsigned char *addr, u16 vid)
+{
+	return mv88e6xxx_blackhole_fdb_loadpurge(ds, addr, vid,
+						 MV88E6XXX_G1_ATU_DATA_STATE_UC_STATIC);
+}
+
+int mv88e6xxx_blackhole_fdb_del(struct dsa_switch *ds, const unsigned char *addr, u16 vid)
+{
+	return mv88e6xxx_blackhole_fdb_loadpurge(ds, addr, vid,
+						 MV88E6XXX_G1_ATU_DATA_STATE_UC_UNUSED);
+}
+
 static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
 				  const unsigned char *addr, u16 vid,
 				  u16 fdb_flags, struct dsa_db db)
@@ -2742,9 +2792,10 @@ static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
 	struct mv88e6xxx_chip *chip = ds->priv;
 	int err;
 
-	/* Ignore entries with flags set */
-	if (fdb_flags)
+	if (fdb_flags & DSA_FDB_FLAG_LOCKED)
 		return 0;
+	if (fdb_flags & DSA_FDB_FLAG_BLACKHOLE)
+		return mv88e6xxx_blackhole_fdb_add(ds, addr, vid);
 
 	if (mv88e6xxx_port_is_locked(chip, port))
 		mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
@@ -2765,9 +2816,10 @@ static int mv88e6xxx_port_fdb_del(struct dsa_switch *ds, int port,
 	bool locked_found = false;
 	int err = 0;
 
-	/* Ignore entries with flags set */
-	if (fdb_flags)
+	if (fdb_flags & DSA_FDB_FLAG_LOCKED)
 		return 0;
+	if (fdb_flags & DSA_FDB_FLAG_BLACKHOLE)
+		return mv88e6xxx_blackhole_fdb_del(ds, addr, vid);
 
 	if (mv88e6xxx_port_is_locked(chip, port))
 		locked_found = mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
-- 
2.34.1


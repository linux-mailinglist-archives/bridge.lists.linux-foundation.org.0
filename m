Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A399D5EE40E
	for <lists.bridge@lfdr.de>; Wed, 28 Sep 2022 20:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDAF383252;
	Wed, 28 Sep 2022 18:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDAF383252
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tNTurOew-JQW; Wed, 28 Sep 2022 18:15:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D14AD83268;
	Wed, 28 Sep 2022 18:15:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D14AD83268
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7E445C0078;
	Wed, 28 Sep 2022 18:15:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3613FC002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 18:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03253417B3
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 18:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03253417B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4OLxFDxR41at for <bridge@lists.linux-foundation.org>;
 Wed, 28 Sep 2022 18:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2CB34088D
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2CB34088D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Sep 2022 18:15:44 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 881BE1884BE7;
 Wed, 28 Sep 2022 18:15:41 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 7B72A25005A8;
 Wed, 28 Sep 2022 18:15:41 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 0)
 id 4CDAA9120FED; Wed, 28 Sep 2022 18:15:41 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id CC68D9120FED;
 Wed, 28 Sep 2022 15:06:30 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 28 Sep 2022 17:02:55 +0200
Message-Id: <20220928150256.115248-9-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928150256.115248-1-netdev@kapio-technology.com>
References: <20220928150256.115248-1-netdev@kapio-technology.com>
MIME-Version: 1.0
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
Subject: [Bridge] [PATCH v6 net-next 8/9] net: dsa: mv88e6xxx: add blackhole
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

From: "Hans J. Schultz" <netdev@kapio-technology.com>

Blackhole FDB entries can now be added, deleted or replaced in the
driver ATU.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 78 ++++++++++++++++++++++++++++++--
 1 file changed, 74 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 71843fe87f77..a17f30e5d4a6 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -2735,6 +2735,72 @@ static int mv88e6xxx_vlan_msti_set(struct dsa_switch *ds,
 	return err;
 }
 
+struct mv88e6xxx_vid_search_ctx {
+	u16 vid_search;
+	u16 fid_found;
+};
+
+static int mv88e6xxx_find_fid_on_matching_vid(struct mv88e6xxx_chip *chip,
+					      const struct mv88e6xxx_vtu_entry *entry,
+					      void *priv)
+{
+	struct mv88e6xxx_vid_search_ctx *ctx = priv;
+
+	if (ctx->vid_search == entry->vid) {
+		ctx->fid_found = entry->fid;
+		return 1;
+	}
+
+	return 0;
+}
+
+static int mv88e6xxx_blackhole_fdb_loadpurge(struct dsa_switch *ds,
+					     const unsigned char *addr, u16 vid, u8 state)
+{
+	struct mv88e6xxx_chip *chip = ds->priv;
+	struct mv88e6xxx_vid_search_ctx ctx;
+	struct mv88e6xxx_atu_entry entry;
+	u16 fid = 0;
+	int err;
+
+	ether_addr_copy(entry.mac, addr);
+	entry.portvec = MV88E6XXX_G1_ATU_DATA_PORT_VECTOR_NO_EGRESS;
+	entry.state = state;
+	entry.trunk = false;
+
+	ctx.vid_search = vid;
+	mv88e6xxx_reg_lock(chip);
+	err = mv88e6xxx_vtu_walk(chip, mv88e6xxx_find_fid_on_matching_vid, &ctx);
+	mv88e6xxx_reg_unlock(chip);
+	if (err < 0)
+		return err;
+	if (err == 1)
+		fid = ctx.fid_found;
+	else
+		return -ENODATA;
+
+	if (!fid)
+		return -ENODATA;
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
@@ -2742,9 +2808,12 @@ static int mv88e6xxx_port_fdb_add(struct dsa_switch *ds, int port,
 	struct mv88e6xxx_chip *chip = ds->priv;
 	int err;
 
-	/* Ignore entries with flags set */
-	if (fdb_flags)
+	if (fdb_flags & DSA_FDB_FLAG_LOCKED)
 		return 0;
+	if (fdb_flags & DSA_FDB_FLAG_BLACKHOLE) {
+		mv88e6xxx_blackhole_fdb_del(ds, addr, vid);
+		return mv88e6xxx_blackhole_fdb_add(ds, addr, vid);
+	}
 
 	if (mv88e6xxx_port_is_locked(chip, port))
 		mv88e6xxx_atu_locked_entry_find_purge(ds, port, addr, vid);
@@ -2765,9 +2834,10 @@ static int mv88e6xxx_port_fdb_del(struct dsa_switch *ds, int port,
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


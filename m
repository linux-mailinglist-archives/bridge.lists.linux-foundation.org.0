Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC22F5A27CF
	for <lists.bridge@lfdr.de>; Fri, 26 Aug 2022 14:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B25D40FBC;
	Fri, 26 Aug 2022 12:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B25D40FBC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFVhbhDzdGyq; Fri, 26 Aug 2022 12:27:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BFC2740192;
	Fri, 26 Aug 2022 12:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFC2740192
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E6BFC0078;
	Fri, 26 Aug 2022 12:27:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66191C002D
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FE95419ED
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FE95419ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KgetXP0hb3Lz for <bridge@lists.linux-foundation.org>;
 Fri, 26 Aug 2022 12:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECE5D41944
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECE5D41944
 for <bridge@lists.linux-foundation.org>; Fri, 26 Aug 2022 12:27:06 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 2856E188F33E;
 Fri, 26 Aug 2022 12:27:04 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 230C925032BD;
 Fri, 26 Aug 2022 12:27:04 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 18B379EC0015; Fri, 26 Aug 2022 11:46:06 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from wse-c0127.beijerelectronics.com (unknown [208.127.141.28])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id C89389EC0006;
 Fri, 26 Aug 2022 11:46:03 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 26 Aug 2022 13:45:36 +0200
Message-Id: <20220826114538.705433-5-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220826114538.705433-1-netdev@kapio-technology.com>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Hans Schultz <netdev@kapio-technology.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 4/6] net: dsa: mv88e6xxx: allow reading
	FID when handling ATU violations
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

The FID is needed to get hold of which VID was involved in a violation,
thus the need to be able to read the FID.

For convenience the function mv88e6xxx_g1_atu_op() has been used to read
ATU violations, but the function invalidates reading the fid, so to both
read ATU violations without zeroing the fid, and read the fid, functions
have been added to ensure both are done correctly.

Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
---
 drivers/net/dsa/mv88e6xxx/global1_atu.c | 60 ++++++++++++++++++++++---
 1 file changed, 55 insertions(+), 5 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/global1_atu.c b/drivers/net/dsa/mv88e6xxx/global1_atu.c
index 40bd67a5c8e9..d9dfa1159cde 100644
--- a/drivers/net/dsa/mv88e6xxx/global1_atu.c
+++ b/drivers/net/dsa/mv88e6xxx/global1_atu.c
@@ -114,6 +114,19 @@ static int mv88e6xxx_g1_atu_op_wait(struct mv88e6xxx_chip *chip)
 	return mv88e6xxx_g1_wait_bit(chip, MV88E6XXX_G1_ATU_OP, bit, 0);
 }
 
+static int mv88e6xxx_g1_read_atu_violation(struct mv88e6xxx_chip *chip)
+{
+	int err;
+
+	err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_OP,
+				 MV88E6XXX_G1_ATU_OP_BUSY |
+				 MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g1_atu_op_wait(chip);
+}
+
 static int mv88e6xxx_g1_atu_op(struct mv88e6xxx_chip *chip, u16 fid, u16 op)
 {
 	u16 val;
@@ -159,6 +172,41 @@ int mv88e6xxx_g1_atu_get_next(struct mv88e6xxx_chip *chip, u16 fid)
 	return mv88e6xxx_g1_atu_op(chip, fid, MV88E6XXX_G1_ATU_OP_GET_NEXT_DB);
 }
 
+static int mv88e6xxx_g1_atu_fid_read(struct mv88e6xxx_chip *chip, u16 *fid)
+{
+	u16 val = 0, upper = 0, op = 0;
+	int err = -EOPNOTSUPP;
+
+	if (mv88e6xxx_num_databases(chip) > 256) {
+		err = mv88e6xxx_g1_read(chip, MV88E6352_G1_ATU_FID, &val);
+		val &= 0xfff;
+		if (err)
+			return err;
+	} else {
+		err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_OP, &op);
+		if (err)
+			return err;
+		if (mv88e6xxx_num_databases(chip) > 64) {
+			/* ATU DBNum[7:4] are located in ATU Control 15:12 */
+			err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_CTL, &upper);
+			if (err)
+				return err;
+
+			upper = (upper >> 8) & 0x00f0;
+		} else if (mv88e6xxx_num_databases(chip) > 16) {
+			/* ATU DBNum[5:4] are located in ATU Operation 9:8 */
+
+			upper = (op >> 4) & 0x30;
+		}
+		/* ATU DBNum[3:0] are located in ATU Operation 3:0 */
+
+		val = (op & 0xf) | upper;
+	}
+	*fid = val;
+
+	return err;
+}
+
 /* Offset 0x0C: ATU Data Register */
 
 static int mv88e6xxx_g1_atu_data_read(struct mv88e6xxx_chip *chip,
@@ -353,14 +401,12 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
 {
 	struct mv88e6xxx_chip *chip = dev_id;
 	struct mv88e6xxx_atu_entry entry;
-	int spid;
-	int err;
-	u16 val;
+	int err, spid;
+	u16 val, fid;
 
 	mv88e6xxx_reg_lock(chip);
 
-	err = mv88e6xxx_g1_atu_op(chip, 0,
-				  MV88E6XXX_G1_ATU_OP_GET_CLR_VIOLATION);
+	err = mv88e6xxx_g1_read_atu_violation(chip);
 	if (err)
 		goto out;
 
@@ -368,6 +414,10 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
 	if (err)
 		goto out;
 
+	err = mv88e6xxx_g1_atu_fid_read(chip, &fid);
+	if (err)
+		goto out;
+
 	err = mv88e6xxx_g1_atu_data_read(chip, &entry);
 	if (err)
 		goto out;
-- 
2.30.2


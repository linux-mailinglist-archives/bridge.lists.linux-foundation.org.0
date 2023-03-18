Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7826BFAB3
	for <lists.bridge@lfdr.de>; Sat, 18 Mar 2023 15:12:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B10A41607;
	Sat, 18 Mar 2023 14:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B10A41607
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id old5BkVb9C-d; Sat, 18 Mar 2023 14:12:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D125C4160F;
	Sat, 18 Mar 2023 14:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D125C4160F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9ED3EC008C;
	Sat, 18 Mar 2023 14:12:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7558C0032
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C253415FD
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C253415FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4P0DIXGW0ih for <bridge@lists.linux-foundation.org>;
 Sat, 18 Mar 2023 14:12:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B501415FF
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B501415FF
 for <bridge@lists.linux-foundation.org>; Sat, 18 Mar 2023 14:12:48 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id E41D018839C7;
 Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id DB0C325002BC;
 Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id D13B49B403E2; Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 1B3E49B403E1;
 Sat, 18 Mar 2023 14:12:46 +0000 (UTC)
From: "Hans J. Schultz" <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Sat, 18 Mar 2023 15:10:10 +0100
Message-Id: <20230318141010.513424-7-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230318141010.513424-1-netdev@kapio-technology.com>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 "Hans J. Schultz" <netdev@kapio-technology.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add dynamic
	FDB test
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

Test FDB ageing of user entry created by

bridge fdb replace ADDR dev <DEV> master dynamic

Use LOW_AGEING_TIME variable in forwarding.config to set a low ageing time.
Beware, DSA might not accept the ageing time you want. Check the
age_time_coeff value for your driver.

Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
---
 .../net/forwarding/bridge_locked_port.sh      | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index dc92d32464f6..dbc7017fd45d 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -14,6 +14,7 @@ ALL_TESTS="
 NUM_NETIFS=4
 CHECK_TC="no"
 source lib.sh
+source tc_common.sh
 
 h1_create()
 {
@@ -319,6 +320,41 @@ locked_port_mab_flush()
 	log_test "Locked port MAB FDB flush"
 }
 
+# Test of dynamic FDB entries.
+locked_port_dyn_fdb()
+{
+	local mac=00:01:02:03:04:05
+	local ageing_time
+
+	RET=0
+	ageing_time=$(bridge_ageing_time_get br0)
+	tc qdisc add dev $swp2 clsact
+	ip link set dev br0 type bridge ageing_time $LOW_AGEING_TIME
+	bridge link set dev $swp1 learning on locked on
+
+	bridge fdb replace $mac dev $swp1 master dynamic
+	tc filter add dev $swp2 egress protocol ip pref 1 handle 1 flower \
+		dst_ip 192.0.2.2 ip_proto udp dst_port 12345 action pass
+
+	$MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
+		-a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
+	tc_check_packets "dev $swp2 egress" 1 1
+	check_err $? "Packet not seen on egress after adding dynamic FDB"
+
+	sleep $((LOW_AGEING_TIME / 100 + 10))
+
+	$MZ $swp1 -c 1 -p 128 -t udp "sp=54321,dp=12345" \
+		-a $mac -b `mac_get $h2` -A 192.0.2.1 -B 192.0.2.2 -q
+	tc_check_packets "dev $swp2 egress" 1 1
+	check_fail $? "Dynamic FDB entry did not age out"
+
+	ip link set dev br0 type bridge ageing_time $ageing_time
+	bridge link set dev $swp1 learning off locked off
+	tc qdisc del dev $swp2 clsact
+
+	log_test "Locked port dyn FDB"
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.34.1


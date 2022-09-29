Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D01735EF89D
	for <lists.bridge@lfdr.de>; Thu, 29 Sep 2022 17:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F6A541B71;
	Thu, 29 Sep 2022 15:24:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F6A541B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zll7DhIRKtj9; Thu, 29 Sep 2022 15:24:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9350341B5B;
	Thu, 29 Sep 2022 15:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9350341B5B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24F75C007C;
	Thu, 29 Sep 2022 15:24:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 47E68C002D
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21B8183F9B
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:24:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21B8183F9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s7KTSTrWx1IA for <bridge@lists.linux-foundation.org>;
 Thu, 29 Sep 2022 15:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED3FD80F59
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED3FD80F59
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:24:54 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id CF1A418847F4;
 Thu, 29 Sep 2022 15:24:52 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id C88282500370;
 Thu, 29 Sep 2022 15:24:52 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id B9CA99EC0007; Thu, 29 Sep 2022 15:24:52 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id E30C09120FED;
 Thu, 29 Sep 2022 15:24:51 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 29 Sep 2022 17:21:37 +0200
Message-Id: <20220929152137.167626-2-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929152137.167626-1-netdev@kapio-technology.com>
References: <20220929152137.167626-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Hans Schultz <netdev@kapio-technology.com>,
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
Subject: [Bridge] [PATCH iproute2-next 2/2] bridge: fdb: enable FDB
	blackhole feature
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

Block traffic to a specific host with the command:
bridge fdb add <MAC> vlan <vid> dev br0 blackhole

The blackhole FDB entries can be added, deleted and replaced with
ordinary FDB entries.

Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
---
 bridge/fdb.c                   | 7 ++++++-
 include/uapi/linux/neighbour.h | 4 ++++
 man/man8/bridge.8              | 6 ++++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/bridge/fdb.c b/bridge/fdb.c
index 0fbe9bd3..2160f1c2 100644
--- a/bridge/fdb.c
+++ b/bridge/fdb.c
@@ -38,7 +38,7 @@ static void usage(void)
 	fprintf(stderr,
 		"Usage: bridge fdb { add | append | del | replace } ADDR dev DEV\n"
 		"              [ self ] [ master ] [ use ] [ router ] [ extern_learn ]\n"
-		"              [ sticky ] [ local | static | dynamic ] [ vlan VID ]\n"
+		"              [ sticky ] [ local | static | dynamic ] [blackhole] [ vlan VID ]\n"
 		"              { [ dst IPADDR ] [ port PORT] [ vni VNI ] | [ nhid NHID ] }\n"
 		"	       [ via DEV ] [ src_vni VNI ]\n"
 		"       bridge fdb [ show [ br BRDEV ] [ brport DEV ] [ vlan VID ]\n"
@@ -116,6 +116,9 @@ static void fdb_print_flags(FILE *fp, unsigned int flags, __u8 ext_flags)
 	if (flags & NTF_STICKY)
 		print_string(PRINT_ANY, NULL, "%s ", "sticky");
 
+	if (ext_flags & NTF_EXT_BLACKHOLE)
+		print_string(PRINT_ANY, NULL, "%s ", "blackhole");
+
 	if (ext_flags & NTF_EXT_LOCKED)
 		print_string(PRINT_ANY, NULL, "%s ", "locked");
 
@@ -493,6 +496,8 @@ static int fdb_modify(int cmd, int flags, int argc, char **argv)
 			req.ndm.ndm_flags |= NTF_EXT_LEARNED;
 		} else if (matches(*argv, "sticky") == 0) {
 			req.ndm.ndm_flags |= NTF_STICKY;
+		} else if (matches(*argv, "blackhole") == 0) {
+			ext_flags |= NTF_EXT_BLACKHOLE;
 		} else {
 			if (strcmp(*argv, "to") == 0)
 				NEXT_ARG();
diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 4dda051b..cc7d540e 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -54,6 +54,7 @@ enum {
 /* Extended flags under NDA_FLAGS_EXT: */
 #define NTF_EXT_MANAGED		(1 << 0)
 #define NTF_EXT_LOCKED		(1 << 1)
+#define NTF_EXT_BLACKHOLE	(1 << 2)
 
 /*
  *	Neighbor Cache Entry States.
@@ -91,6 +92,9 @@ enum {
  * NTF_EXT_LOCKED flagged FDB entries are placeholder entries used with the
  * locked port feature, that ensures that an entry exists while at the same
  * time dropping packets on ingress with src MAC and VID matching the entry.
+ *
+ * NTF_EXT_BLACKHOLE flagged FDB entries ensure that no forwarding is allowed
+ * from any port to the destination MAC, VID pair associated with it.
  */
 
 struct nda_cacheinfo {
diff --git a/man/man8/bridge.8 b/man/man8/bridge.8
index 40250477..af2e7db2 100644
--- a/man/man8/bridge.8
+++ b/man/man8/bridge.8
@@ -699,6 +699,12 @@ controller learnt dynamic entry. Kernel will not age such an entry.
 - this entry will not change its port due to learning.
 .sp
 
+.B blackhole
+- this is an entry that denies all forwarding from any port to a destination
+matching the entry. It can be added by userspace, but the flag is mostly set
+from a hardware driver.
+.sp
+
 .in -8
 The next command line parameters apply only
 when the specified device
-- 
2.34.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C74375F4683
	for <lists.bridge@lfdr.de>; Tue,  4 Oct 2022 17:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E98DE40911;
	Tue,  4 Oct 2022 15:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E98DE40911
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwwtDaiUo1Xc; Tue,  4 Oct 2022 15:20:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2423941756;
	Tue,  4 Oct 2022 15:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2423941756
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E996BC007D;
	Tue,  4 Oct 2022 15:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCDA0C007B
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96F3D41725
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96F3D41725
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPhNu5UD2GOq for <bridge@lists.linux-foundation.org>;
 Tue,  4 Oct 2022 15:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8194040911
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8194040911
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:54 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id C91BD1884BAC;
 Tue,  4 Oct 2022 15:20:52 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id AC91125001FA;
 Tue,  4 Oct 2022 15:20:52 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 8B1649EC000E; Tue,  4 Oct 2022 15:20:52 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id B5CFB9EC000A;
 Tue,  4 Oct 2022 15:20:51 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  4 Oct 2022 17:20:36 +0200
Message-Id: <20221004152036.7848-4-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004152036.7848-1-netdev@kapio-technology.com>
References: <20221004152036.7848-1-netdev@kapio-technology.com>
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
Subject: [Bridge] [PATCH v2 iproute2-next 4/4] bridge: fdb: enable FDB
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

Blackhole FDB entries can be added, deleted and replaced with
ordinary FDB entries.

Example with output:

$ bridge fdb add 10:10:10:10:10:10 dev br0 blackhole
$ bridge -d fdb show dev br0
10:10:10:10:10:10 vlan 1 blackhole master br0 permanent
10:10:10:10:10:10 blackhole master br0 permanent
$ bridge -d -j -p fdb show dev br0
[ {
        "mac": "10:10:10:10:10:10",
        "vlan": 1,
        "flags": [ "blackhole" ],
        "master": "br0",
        "state": "permanent"
    },{
        "mac": "10:10:10:10:10:10",
        "flags": [ "blackhole" ],
        "master": "br0",
        "state": "permanent"
    } ]

Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
---
 bridge/fdb.c      | 13 ++++++++++++-
 man/man8/bridge.8 | 12 ++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/bridge/fdb.c b/bridge/fdb.c
index f1f0a5bb..1c8c50a8 100644
--- a/bridge/fdb.c
+++ b/bridge/fdb.c
@@ -38,7 +38,7 @@ static void usage(void)
 	fprintf(stderr,
 		"Usage: bridge fdb { add | append | del | replace } ADDR dev DEV\n"
 		"              [ self ] [ master ] [ use ] [ router ] [ extern_learn ]\n"
-		"              [ sticky ] [ local | static | dynamic ] [ vlan VID ]\n"
+		"              [ sticky ] [ local | static | dynamic ] [ blackhole ] [ vlan VID ]\n"
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
 
@@ -421,6 +424,7 @@ static int fdb_modify(int cmd, int flags, int argc, char **argv)
 	char *endptr;
 	short vid = -1;
 	__u32 nhid = 0;
+	__u32 ext_flags = 0;
 
 	while (argc > 0) {
 		if (strcmp(*argv, "dev") == 0) {
@@ -492,6 +496,8 @@ static int fdb_modify(int cmd, int flags, int argc, char **argv)
 			req.ndm.ndm_flags |= NTF_EXT_LEARNED;
 		} else if (matches(*argv, "sticky") == 0) {
 			req.ndm.ndm_flags |= NTF_STICKY;
+		} else if (matches(*argv, "blackhole") == 0) {
+			ext_flags |= NTF_EXT_BLACKHOLE;
 		} else {
 			if (strcmp(*argv, "to") == 0)
 				NEXT_ARG();
@@ -534,6 +540,11 @@ static int fdb_modify(int cmd, int flags, int argc, char **argv)
 	if (dst_ok)
 		addattr_l(&req.n, sizeof(req), NDA_DST, &dst.data, dst.bytelen);
 
+	if (ext_flags &&
+	    addattr_l(&req.n, sizeof(req), NDA_FLAGS_EXT, &ext_flags,
+		      sizeof(ext_flags)) < 0)
+		return -1;
+
 	if (vid >= 0)
 		addattr16(&req.n, sizeof(req), NDA_VLAN, vid);
 	if (nhid > 0)
diff --git a/man/man8/bridge.8 b/man/man8/bridge.8
index f4f1d807..0119a2a9 100644
--- a/man/man8/bridge.8
+++ b/man/man8/bridge.8
@@ -85,6 +85,13 @@ bridge \- show / manipulate bridge addresses and devices
 .B nhid
 .IR NHID " } "
 
+.ti -8
+.BR "bridge fdb" " { " add " | " del " } "
+.I LLADR
+.B dev
+.IR BRDEV " [ "
+.BR self " ] [ " local " ] [ " blackhole " ] "
+
 .ti -8
 .BR "bridge fdb" " [ [ " show " ] [ "
 .B br
@@ -701,6 +708,11 @@ controller learnt dynamic entry. Kernel will not age such an entry.
 - this entry will not change its port due to learning.
 .sp
 
+.B blackhole
+- this entry will silently discard all matching packets. The entry must
+be added as a local permanent entry.
+.sp
+
 .in -8
 The next command line parameters apply only
 when the specified device
-- 
2.34.1


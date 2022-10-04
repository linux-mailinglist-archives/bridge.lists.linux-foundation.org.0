Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ADC5F4680
	for <lists.bridge@lfdr.de>; Tue,  4 Oct 2022 17:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 478AB60F75;
	Tue,  4 Oct 2022 15:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 478AB60F75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VxcAKcQz_65d; Tue,  4 Oct 2022 15:20:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D693760F6D;
	Tue,  4 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D693760F6D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91449C007B;
	Tue,  4 Oct 2022 15:20:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C778C0078
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A76041725
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A76041725
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SuqJcemuSthU for <bridge@lists.linux-foundation.org>;
 Tue,  4 Oct 2022 15:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29E5340911
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29E5340911
 for <bridge@lists.linux-foundation.org>; Tue,  4 Oct 2022 15:20:50 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 3B7B11884B7E;
 Tue,  4 Oct 2022 15:20:48 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 094D625001FA;
 Tue,  4 Oct 2022 15:20:48 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id D49EE9EC000E; Tue,  4 Oct 2022 15:20:47 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from fujitsu.vestervang (2-104-116-184-cable.dk.customer.tdc.net
 [2.104.116.184])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 021779120FED;
 Tue,  4 Oct 2022 15:20:46 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue,  4 Oct 2022 17:20:34 +0200
Message-Id: <20221004152036.7848-2-netdev@kapio-technology.com>
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
Subject: [Bridge] [PATCH v2 iproute2-next 2/4] bridge: fdb: show locked FDB
	entries flag in output
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

Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
---
 bridge/fdb.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/bridge/fdb.c b/bridge/fdb.c
index 5f71bde0..f1f0a5bb 100644
--- a/bridge/fdb.c
+++ b/bridge/fdb.c
@@ -93,7 +93,7 @@ static int state_a2n(unsigned int *s, const char *arg)
 	return 0;
 }
 
-static void fdb_print_flags(FILE *fp, unsigned int flags)
+static void fdb_print_flags(FILE *fp, unsigned int flags, __u8 ext_flags)
 {
 	open_json_array(PRINT_JSON,
 			is_json_context() ?  "flags" : "");
@@ -116,6 +116,9 @@ static void fdb_print_flags(FILE *fp, unsigned int flags)
 	if (flags & NTF_STICKY)
 		print_string(PRINT_ANY, NULL, "%s ", "sticky");
 
+	if (ext_flags & NTF_EXT_LOCKED)
+		print_string(PRINT_ANY, NULL, "%s ", "locked");
+
 	close_json_array(PRINT_JSON, NULL);
 }
 
@@ -144,6 +147,7 @@ int print_fdb(struct nlmsghdr *n, void *arg)
 	struct ndmsg *r = NLMSG_DATA(n);
 	int len = n->nlmsg_len;
 	struct rtattr *tb[NDA_MAX+1];
+	__u32 ext_flags = 0;
 	__u16 vid = 0;
 
 	if (n->nlmsg_type != RTM_NEWNEIGH && n->nlmsg_type != RTM_DELNEIGH) {
@@ -170,6 +174,9 @@ int print_fdb(struct nlmsghdr *n, void *arg)
 	parse_rtattr(tb, NDA_MAX, NDA_RTA(r),
 		     n->nlmsg_len - NLMSG_LENGTH(sizeof(*r)));
 
+	if (tb[NDA_FLAGS_EXT])
+		ext_flags = rta_getattr_u32(tb[NDA_FLAGS_EXT]);
+
 	if (tb[NDA_VLAN])
 		vid = rta_getattr_u16(tb[NDA_VLAN]);
 
@@ -266,7 +273,7 @@ int print_fdb(struct nlmsghdr *n, void *arg)
 	if (show_stats && tb[NDA_CACHEINFO])
 		fdb_print_stats(fp, RTA_DATA(tb[NDA_CACHEINFO]));
 
-	fdb_print_flags(fp, r->ndm_flags);
+	fdb_print_flags(fp, r->ndm_flags, ext_flags);
 
 
 	if (tb[NDA_MASTER])
-- 
2.34.1


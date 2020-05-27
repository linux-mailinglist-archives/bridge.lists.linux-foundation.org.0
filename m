Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7971E4477
	for <lists.bridge@lfdr.de>; Wed, 27 May 2020 15:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1AA6C24B96;
	Wed, 27 May 2020 13:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqUFD1MHUxw9; Wed, 27 May 2020 13:51:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B890C24B59;
	Wed, 27 May 2020 13:51:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B32DC016F;
	Wed, 27 May 2020 13:51:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84AF8C016F
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 13:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71F4C87E24
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 13:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seFQGdZ5ouQd for <bridge@lists.linux-foundation.org>;
 Wed, 27 May 2020 13:51:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F25887E23
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 13:51:42 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1fei-1itmw20YYa-011xf5; Wed, 27 May 2020 15:51:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 27 May 2020 15:51:13 +0200
Message-Id: <20200527135124.1082844-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:tNJGImBksv3+uHh4LK9iDkXQuSmBokYMQI86sR1uOpirtHXc2NK
 CrX21qK2bbI6xhZ/Ib4t+RJHd4UNZzA3A8i8Udhs+Nj6xtysytaLytX2xtrUB3t5bOmtrDH
 Ibtv+P8HKRJy4pUycJSjjYzaNl2DkK5nnWSAL7d8WuvguMsMdN+CvlSnMfp143rT9MKRdXy
 GJne/oiPD9a6i+xx4Thjg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BuiwkU7bU2Y=:GCvuv9qB6dHCgoInEOLGK9
 808pZ65A3+ZvuUmKlZmMiMD+KWWW2i9sI6v31khsncel949CUjtROBxfQ/YqLPiJUBV2ZsN9j
 qQV6S3goxKEOk9KzwOExut5lMc8AjOFOiF7jXZmTEB/owEEAV0SUx3tM8L1tkLLBxrJELyN6J
 PqyBUv8hhDmxkOB5b+/7AwSSKMb+THSX2UgAaAdjJXpHwVzyyPLJtTMOxmpQCb7DzClmRCS/u
 dSbxI4gPROhiPNa8PXGS6rZ9c0mebdDsIs42fVsJKJMSaRpWjWffc9pt5Y8+y0CmvHl4n3vAt
 qH9K9bG8kV4OEwviLn4j3mWr8mFsal3Pz9anJ5PlSWXDL46FLykAv6jQouHtV/hri3R2yFyb+
 hwhaFktbARAdRFXtEcygRtIZxEfRg6b7j0WKdyJe8Dc1aBg13Zi4xs1rtC1MrDU3qgpxPIWcX
 ME2+KIlcSe8RyJWLuNR2qQLQcPKIeQZUeQyjQNfAYeIJG6gcWSzqAk7UUppgM7hX/9AzZgiPl
 7EdDeK3BKgwKGWGRypzGiRdQOk/cb/6PY1mti/GTsTFSrbPz8N6apCWYpoIx2bg4EY2Lhk7QN
 ua8LzeoeF5dWNsDG8BvW9SP1/8hmPZ7Q1cuPp6P0l2vReHontQz/GesEr++93qzBrWIpccEbi
 QjLD6J7noL6sgsnqeNoIwHa8y1tl2XpOQYJ1KDVXNob0pyUWKGelHT+PJVJmrf8ooIbe/a5E5
 Ejc2tS5hwpNiGyKjwaRcItpmmNZPROwbjJcVBXMabwtIKubudHvMqjW+19SuMHF+eWEbZNHjL
 m6RSK50uvvuP0D73KZUz5T2LuCfFaMWnR9CemE+ZRKpt2N+Oh0=
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>
Subject: [Bridge] [PATCH] bridge: multicast: work around clang bug
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

Clang-10 and clang-11 run into a corner case of the register
allocator on 32-bit ARM, leading to excessive stack usage from
register spilling:

net/bridge/br_multicast.c:2422:6: error: stack frame size of 1472 bytes in function 'br_multicast_get_stats' [-Werror,-Wframe-larger-than=]

Work around this by marking one of the internal functions as
noinline_for_stack.

Link: https://bugs.llvm.org/show_bug.cgi?id=45802#c9
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_multicast.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index ad12fe3fca8c..83490bf73a13 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2413,7 +2413,8 @@ void br_multicast_uninit_stats(struct net_bridge *br)
 	free_percpu(br->mcast_stats);
 }
 
-static void mcast_stats_add_dir(u64 *dst, u64 *src)
+/* noinline for https://bugs.llvm.org/show_bug.cgi?id=45802#c9 */
+static noinline_for_stack void mcast_stats_add_dir(u64 *dst, u64 *src)
 {
 	dst[BR_MCAST_DIR_RX] += src[BR_MCAST_DIR_RX];
 	dst[BR_MCAST_DIR_TX] += src[BR_MCAST_DIR_TX];
-- 
2.26.2


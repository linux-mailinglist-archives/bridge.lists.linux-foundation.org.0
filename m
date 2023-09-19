Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 567F07A625A
	for <lists.bridge@lfdr.de>; Tue, 19 Sep 2023 14:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5727241DD5;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5727241DD5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=bDYGCiaN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ud0Yev45p7Ra; Tue, 19 Sep 2023 12:16:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 93F6541DC4;
	Tue, 19 Sep 2023 12:16:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93F6541DC4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CA85C0DDB;
	Tue, 19 Sep 2023 12:16:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AD09DC0032
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 798F641DC4
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 798F641DC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYFMCwa9N7ow for <bridge@lists.linux-foundation.org>;
 Tue, 19 Sep 2023 12:16:37 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [212.42.244.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8BDB41DBB
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8BDB41DBB
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695125794; bh=FwyAToRIE29YQYTXCZD36dnr5jrFFg1GpuCyJILagjE=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=bDYGCiaNi2SMoB4Lq20YNO9OSX5appH2rXn5siz/Drn8RfD4iF4K36cjToWpcDfVd
 e7nJU4MIKMYNVCEJD42MsX0LP/2rgxBnmhBJGysdHEYleoFVkLdO38xxlor72DgWLG
 QWwGswxJmMDtXDRXD2HfMSdkTiOFUFCBZACOzzZ8=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 15F5981FF3;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
Date: Tue, 19 Sep 2023 10:12:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fdb_limit-v4-1-39f0293807b8@avm.de>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
In-Reply-To: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>, 
 Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, 
 Oleksij Rempel <linux@rempel-privat.de>, Paolo Abeni <pabeni@redhat.com>, 
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <shuah@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695111167; l=1376;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=FwyAToRIE29YQYTXCZD36dnr5jrFFg1GpuCyJILagjE=;
 b=4H9SGHafMlvvhzLNe+S2ZC1itIhii7CabVi/bmpupLrRj5CyQXRME/UGIiDnlNZgJoDI3FcKL
 1f27fMU577fAiVdzuph2/KCHWC8a67UWmmHku7Jz7fuUjk4Pqxt9Kcl
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1695125794-54606D5A-73B3AB27/0/0
X-purgate-type: clean
X-purgate-size: 1378
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v4 1/6] net: bridge: Set
 BR_FDB_ADDED_BY_USER early in fdb_add_entry
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

In preparation of the following fdb limit for dynamically learned entries,
allow fdb_create to detect that the entry was added by the user. This
way it can skip applying the limit in this case.

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 net/bridge/br_fdb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e69a872bfc1d..f517ea92132c 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1056,7 +1056,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		if (!(flags & NLM_F_CREATE))
 			return -ENOENT;
 
-		fdb = fdb_create(br, source, addr, vid, 0);
+		fdb = fdb_create(br, source, addr, vid,
+				 BIT(BR_FDB_ADDED_BY_USER));
 		if (!fdb)
 			return -ENOMEM;
 
@@ -1069,6 +1070,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			WRITE_ONCE(fdb->dst, source);
 			modified = true;
 		}
+
+		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 	}
 
 	if (fdb_to_nud(br, fdb) != state) {
@@ -1100,8 +1103,6 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 	if (fdb_handle_notify(fdb, notify))
 		modified = true;
 
-	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
-
 	fdb->used = jiffies;
 	if (modified) {
 		if (refresh)

-- 
2.42.0


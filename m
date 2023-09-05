Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6173079224C
	for <lists.bridge@lfdr.de>; Tue,  5 Sep 2023 13:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 199684107B;
	Tue,  5 Sep 2023 11:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 199684107B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=skhnokKE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzuJ_ZXJiKGu; Tue,  5 Sep 2023 11:55:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7B3C5400CE;
	Tue,  5 Sep 2023 11:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B3C5400CE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5F5B7C0DD8;
	Tue,  5 Sep 2023 11:55:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9EF0CC008C
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70564400CE
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70564400CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t7V90lMJNcCD for <bridge@lists.linux-foundation.org>;
 Tue,  5 Sep 2023 11:55:20 +0000 (UTC)
X-Greylist: delayed 326 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 05 Sep 2023 11:55:19 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9A45402F4
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::119])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9A45402F4
 for <bridge@lists.linux-foundation.org>; Tue,  5 Sep 2023 11:55:19 +0000 (UTC)
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue,  5 Sep 2023 13:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1693914590; bh=ZsQ3D/ai0dRwVx5veqLcaOVIYyHU7UzerQkt4HdacU8=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=skhnokKEXI2ReIgvIaFyFEG+VfAeKi9lHdzEVsZBtJBfyyMskG1mUbtBurTx05A84
 Jl0yBczRuZ2WRti3zyHLR+bV0QV7NObaJVE+XmmncW97TI1MJUQgBh8NLHFt3Dnen/
 NMqzCKmOFYwx+DsYLjEkBBeMz8Ws+WabDPQmipvc=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 0668B82160;
 Tue,  5 Sep 2023 13:49:50 +0200 (CEST)
Date: Tue, 05 Sep 2023 13:47:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230905-fdb_limit-v3-1-7597cd500a82@avm.de>
References: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
In-Reply-To: <20230905-fdb_limit-v3-0-7597cd500a82@avm.de>
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>, 
 Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, 
 Oleksij Rempel <linux@rempel-privat.de>, Paolo Abeni <pabeni@redhat.com>, 
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <shuah@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.3
X-purgate-ID: 149429::1693914590-864E198B-EF077B6C/0/0
X-purgate-type: clean
X-purgate-size: 1370
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v3 1/6] net: bridge: Set
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
 net/bridge/br_fdb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e69a872bfc1d..06e28ef8d9ff 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1056,7 +1056,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		if (!(flags & NLM_F_CREATE))
 			return -ENOENT;
 
-		fdb = fdb_create(br, source, addr, vid, 0);
+		fdb = fdb_create(br, source, addr, vid, BIT(BR_FDB_ADDED_BY_USER));
 		if (!fdb)
 			return -ENOMEM;
 
@@ -1069,6 +1069,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			WRITE_ONCE(fdb->dst, source);
 			modified = true;
 		}
+
+		set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 	}
 
 	if (fdb_to_nud(br, fdb) != state) {
@@ -1100,8 +1102,6 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 	if (fdb_handle_notify(fdb, notify))
 		modified = true;
 
-	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
-
 	fdb->used = jiffies;
 	if (modified) {
 		if (refresh)

-- 
2.42.0


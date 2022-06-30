Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 012D456B41C
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 10:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E41106134D;
	Fri,  8 Jul 2022 08:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E41106134D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMyrxx9vqkpy; Fri,  8 Jul 2022 08:12:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3774560A93;
	Fri,  8 Jul 2022 08:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3774560A93
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 98EE4C0077;
	Fri,  8 Jul 2022 08:12:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 331E6C002D
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 22:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 069AE4023B
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 22:28:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 069AE4023B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BajcpG_MPDne for <bridge@lists.linux-foundation.org>;
 Fri,  1 Jul 2022 22:28:17 +0000 (UTC)
X-Greylist: delayed 00:45:00 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B374E4011F
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B374E4011F
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 22:28:17 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 0EFF91886613;
 Thu, 30 Jun 2022 11:16:57 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 03A7A25032B8;
 Thu, 30 Jun 2022 11:16:57 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id E2097A1E00AC; Thu, 30 Jun 2022 11:16:56 +0000 (UTC)
X-Screener-Id: e32ae469fa6e394734d05373d3a705875723cf1e
Received: from wse-c0127.vestervang (unknown [208.127.141.28])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id 32C1DA1E00A5;
 Thu, 30 Jun 2022 11:16:55 +0000 (UTC)
From: Hans Schultz <hans@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 30 Jun 2022 13:16:34 +0200
Message-Id: <20220630111634.610320-1-hans@kapio-technology.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 08 Jul 2022 08:12:31 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Hans Schultz <hans@kapio-technology.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
	link-local traffic cannot unlock a locked port
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

This patch is related to the patch set
"Add support for locked bridge ports (for 802.1X)"
Link: https://lore.kernel.org/netdev/20220223101650.1212814-1-schultz.hans+netdev@gmail.com/

This patch makes the locked port feature work with learning turned on,
which is enabled with the command:

bridge link set dev DEV learning on

Without this patch, link local traffic (01:80:c2) like EAPOL packets will
create a fdb entry when ingressing on a locked port with learning turned
on, thus unintentionally opening up the port for traffic for the said MAC.

Some switchcore features like Mac-Auth and refreshing of FDB entries,
require learning enables on some switchcores, f.ex. the mv88e6xxx family.
Other features may apply too.

Since many switchcores trap or mirror various multicast packets to the
CPU, link local traffic will unintentionally unlock the port for the
SA mac in question unless prevented by this patch.

Signed-off-by: Hans Schultz <hans@kapio-technology.com>
---
 net/bridge/br_input.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 68b3e850bcb9..a3ce0a151817 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -215,6 +215,7 @@ static void __br_handle_local_finish(struct sk_buff *skb)
 	if ((p->flags & BR_LEARNING) &&
 	    nbp_state_should_learn(p) &&
 	    !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
+	    !(p->flags & BR_PORT_LOCKED) &&
 	    br_should_learn(p, skb, &vid))
 		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
 }
-- 
2.30.2


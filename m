Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC407A625C
	for <lists.bridge@lfdr.de>; Tue, 19 Sep 2023 14:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF29841722;
	Tue, 19 Sep 2023 12:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF29841722
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=acSKyeYx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqNDMOuS0vtV; Tue, 19 Sep 2023 12:16:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 44EAA4171C;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44EAA4171C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B6B7C0DD9;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1CDA0C008D
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C35BF60F58
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C35BF60F58
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=acSKyeYx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4V_VnhSi878 for <bridge@lists.linux-foundation.org>;
 Tue, 19 Sep 2023 12:16:37 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [212.42.244.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35B4760F1E
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35B4760F1E
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 19 Sep 2023 14:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695125794; bh=98I6K9g8d9UN6Mj6dcFBDTX8Omeq6aFBdEfYnJIQo8g=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=acSKyeYx4V18C3VvK0tRaOEch2dY1e4YLmb8HLY5/y3LSwTeQd6fBMjgF6l2V3+mQ
 bxvZj1Ss0fZVsL8Hczg9YwKkWJpxxRjBFsObXvJ4mVAwdbLKL+H2MOqeqEBlz26ISp
 ePwmT2TkGyC/bu7i1aUqj1BpP2z8ndAr6ZnrS3cU=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 8953782000;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
Date: Tue, 19 Sep 2023 10:12:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fdb_limit-v4-4-39f0293807b8@avm.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695111167; l=3675;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=98I6K9g8d9UN6Mj6dcFBDTX8Omeq6aFBdEfYnJIQo8g=;
 b=+O/vG30P80aYeRD2NeTJD51vvX0AL1hjsD1wwhht5rPqD1HX/7YgV5QWmeQ4nEGjXQ53fo9cT
 5NxEoDKzjB5CFOMrx4+/m0WyzKvecxDhMpxlQ+AYMUjjBYg9Iaej1Fi
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1695125793-80FD1D8B-195B29DA/0/0
X-purgate-type: clean
X-purgate-size: 3677
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v4 4/6] net: bridge: Add netlink knobs for
 number / max learned FDB entries
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

The previous patch added accounting and a limit for the number of
dynamically learned FDB entries per bridge. However it did not provide
means to actually configure those bounds or read back the count. This
patch does that.

Two new netlink attributes are added for the accounting and limit of
dynamically learned FDB entries:
 - IFLA_BR_FDB_N_LEARNED (RO) for the number of entries accounted for
   a single bridge.
 - IFLA_BR_FDB_MAX_LEARNED (RW) for the configured limit of entries for
   the bridge.

The new attributes are used like this:

 # ip link add name br up type bridge fdb_max_learned 256
 # ip link add name v1 up master br type veth peer v2
 # ip link set up dev v2
 # mausezahn -a rand -c 1024 v2
 0.01 seconds (90877 packets per second
 # bridge fdb | grep -v permanent | wc -l
 256
 # ip -d link show dev br
 13: br: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 [...]
     [...] fdb_n_learned 256 fdb_max_learned 256

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 include/uapi/linux/if_link.h |  2 ++
 net/bridge/br_netlink.c      | 15 ++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index ce3117df9cec..0486f314c176 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -510,6 +510,8 @@ enum {
 	IFLA_BR_VLAN_STATS_PER_PORT,
 	IFLA_BR_MULTI_BOOLOPT,
 	IFLA_BR_MCAST_QUERIER_STATE,
+	IFLA_BR_FDB_N_LEARNED,
+	IFLA_BR_FDB_MAX_LEARNED,
 	__IFLA_BR_MAX,
 };
 
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 505683ef9a26..f5d49a05e61b 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1267,6 +1267,8 @@ static const struct nla_policy br_policy[IFLA_BR_MAX + 1] = {
 	[IFLA_BR_VLAN_STATS_PER_PORT] = { .type = NLA_U8 },
 	[IFLA_BR_MULTI_BOOLOPT] =
 		NLA_POLICY_EXACT_LEN(sizeof(struct br_boolopt_multi)),
+	[IFLA_BR_FDB_N_LEARNED] = { .type = NLA_U32 },
+	[IFLA_BR_FDB_MAX_LEARNED] = { .type = NLA_U32 },
 };
 
 static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
@@ -1541,6 +1543,12 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 			return err;
 	}
 
+	if (data[IFLA_BR_FDB_MAX_LEARNED]) {
+		u32 val = nla_get_u32(data[IFLA_BR_FDB_MAX_LEARNED]);
+
+		WRITE_ONCE(br->fdb_max_learned, val);
+	}
+
 	return 0;
 }
 
@@ -1595,6 +1603,8 @@ static size_t br_get_size(const struct net_device *brdev)
 	       nla_total_size_64bit(sizeof(u64)) + /* IFLA_BR_TOPOLOGY_CHANGE_TIMER */
 	       nla_total_size_64bit(sizeof(u64)) + /* IFLA_BR_GC_TIMER */
 	       nla_total_size(ETH_ALEN) +       /* IFLA_BR_GROUP_ADDR */
+	       nla_total_size(sizeof(u32)) +    /* IFLA_BR_FDB_N_LEARNED */
+	       nla_total_size(sizeof(u32)) +    /* IFLA_BR_FDB_MAX_LEARNED */
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_MCAST_ROUTER */
 	       nla_total_size(sizeof(u8)) +     /* IFLA_BR_MCAST_SNOOPING */
@@ -1670,7 +1680,10 @@ static int br_fill_info(struct sk_buff *skb, const struct net_device *brdev)
 	    nla_put_u8(skb, IFLA_BR_TOPOLOGY_CHANGE_DETECTED,
 		       br->topology_change_detected) ||
 	    nla_put(skb, IFLA_BR_GROUP_ADDR, ETH_ALEN, br->group_addr) ||
-	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm))
+	    nla_put(skb, IFLA_BR_MULTI_BOOLOPT, sizeof(bm), &bm) ||
+	    nla_put_u32(skb, IFLA_BR_FDB_N_LEARNED,
+			atomic_read(&br->fdb_n_learned)) ||
+	    nla_put_u32(skb, IFLA_BR_FDB_MAX_LEARNED, br->fdb_max_learned))
 		return -EMSGSIZE;
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING

-- 
2.42.0


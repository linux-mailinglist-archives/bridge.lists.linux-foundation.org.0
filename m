Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FAA56B423
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 10:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FA7040071;
	Fri,  8 Jul 2022 08:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FA7040071
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFvYST9wbDaS; Fri,  8 Jul 2022 08:12:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 542484008C;
	Fri,  8 Jul 2022 08:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 542484008C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52813C002D;
	Fri,  8 Jul 2022 08:12:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FA88C002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 15:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D077C40220
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 15:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D077C40220
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3HzwKH8GzqLu for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 15:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 242AC4018B
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 242AC4018B
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 15:30:04 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id AE4091886E7B;
 Thu,  7 Jul 2022 15:29:57 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id A0CA025032B7;
 Thu,  7 Jul 2022 15:29:57 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 842CFA1E00B8; Thu,  7 Jul 2022 15:29:57 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
Received: from wse-c0127.vestervang (unknown [208.127.141.28])
 by smtp.gigahost.dk (Postfix) with ESMTPSA id D38979120FED;
 Thu,  7 Jul 2022 15:29:55 +0000 (UTC)
From: Hans Schultz <netdev@kapio-technology.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu,  7 Jul 2022 17:29:30 +0200
Message-Id: <20220707152930.1789437-7-netdev@kapio-technology.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220707152930.1789437-1-netdev@kapio-technology.com>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 08 Jul 2022 08:12:31 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Hans Schultz <netdev@kapio-technology.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v4 net-next 6/6] selftests: forwarding: add test of
	MAC-Auth Bypass to locked port tests
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

Verify that the MAC-Auth mechanism works by adding a FDB entry with the
locked flag set, denying access until the FDB entry is replaced with a
FDB entry without the locked flag set.

Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
---
 .../net/forwarding/bridge_locked_port.sh      | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index 5b02b6b60ce7..1ee12d7b5c8b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
+ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
 NUM_NETIFS=4
 CHECK_TC="no"
 source lib.sh
@@ -166,6 +166,34 @@ locked_port_ipv6()
 	log_test "Locked port ipv6"
 }
 
+locked_port_mab()
+{
+	RET=0
+	check_locked_port_support || return 0
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+	bridge link set dev $swp1 learning on
+
+	ping_do $h1 192.0.2.2
+	check_fail $? "MAB: Ping worked on locked port without FDB entry"
+
+	bridge fdb show | grep `mac_get $h1` | grep -q "locked"
+	check_err $? "MAB: No locked fdb entry after ping on locked port"
+
+	bridge fdb replace `mac_get $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
+
+	bridge fdb del `mac_get $h1` dev $swp1 master
+	bridge link set dev $swp1 learning off
+	bridge link set dev $swp1 locked off
+
+	log_test "Locked port MAB"
+}
 trap cleanup EXIT
 
 setup_prepare
-- 
2.30.2


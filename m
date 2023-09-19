Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9867A625E
	for <lists.bridge@lfdr.de>; Tue, 19 Sep 2023 14:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CACA883478;
	Tue, 19 Sep 2023 12:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CACA883478
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=M+XuX7K0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzxGqDiVRdVK; Tue, 19 Sep 2023 12:16:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BA34B834EF;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA34B834EF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80BFCC0DDA;
	Tue, 19 Sep 2023 12:16:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0E633C0DD2
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E77A360608
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E77A360608
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=M+XuX7K0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5u8eCXZZ02zQ for <bridge@lists.linux-foundation.org>;
 Tue, 19 Sep 2023 12:16:39 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::94])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01F4960F1E
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 12:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01F4960F1E
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 19 Sep 2023 14:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1695125795; bh=1Pn1Mj5B9BK9G6xRh+VXmW7e+DczI+9uJJqpPrAiqOA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=M+XuX7K00vctJxIPrf1FQDGQdyJWQVco7pMmtmaGPUVYmHGhE2ANt7WGaXd1GFpWI
 sTuq6gICoVsbC4Q1xW15L4TecDWhmBTrqo56zFQHNWLIGAusW5Lvx7Xe2dquMLQU1k
 QG2qtj2NusTAgxYBfh4hUrKWNWuK0t1WuoYiAR5s=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id D5AC682000;
 Tue, 19 Sep 2023 14:16:34 +0200 (CEST)
Date: Tue, 19 Sep 2023 10:12:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fdb_limit-v4-6-39f0293807b8@avm.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695111167; l=7286;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=1Pn1Mj5B9BK9G6xRh+VXmW7e+DczI+9uJJqpPrAiqOA=;
 b=ZSgDZskCJzluT9nSnnXD2U5tXzeWhEqArbAtQ1bb9jVX8f9JbxWL9ssQ0ZSe5OroeeKh3G4Ck
 1MHUzy2/ZwZDCMw5QOzDHvmilgHtKhAmtFrHV4eBea87U1un1lvT6Dr
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1695125795-4DE39EEA-8F192E7E/0/0
X-purgate-type: clean
X-purgate-size: 7288
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v4 6/6] selftests: forwarding:
 bridge_fdb_learning_limit: Add a new selftest
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

Add a suite covering the fdb_n_learned and fdb_max_learned bridge
features, touching all special cases in accounting at least once.

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 tools/testing/selftests/net/forwarding/Makefile    |   3 +-
 .../net/forwarding/bridge_fdb_learning_limit.sh    | 283 +++++++++++++++++++++
 2 files changed, 285 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
index 74e754e266c3..df593b7b3e6b 100644
--- a/tools/testing/selftests/net/forwarding/Makefile
+++ b/tools/testing/selftests/net/forwarding/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0+ OR MIT
 
-TEST_PROGS = bridge_igmp.sh \
+TEST_PROGS = bridge_fdb_learning_limit.sh \
+	bridge_igmp.sh \
 	bridge_locked_port.sh \
 	bridge_mdb.sh \
 	bridge_mdb_host.sh \
diff --git a/tools/testing/selftests/net/forwarding/bridge_fdb_learning_limit.sh b/tools/testing/selftests/net/forwarding/bridge_fdb_learning_limit.sh
new file mode 100755
index 000000000000..0760a34b7114
--- /dev/null
+++ b/tools/testing/selftests/net/forwarding/bridge_fdb_learning_limit.sh
@@ -0,0 +1,283 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+# ShellCheck incorrectly believes that most of the code here is unreachable
+# because it's invoked by variable name following ALL_TESTS.
+#
+# shellcheck disable=SC2317
+
+ALL_TESTS="check_accounting check_limit"
+NUM_NETIFS=6
+source lib.sh
+
+TEST_MAC_BASE=de:ad:be:ef:42:
+
+NUM_PKTS=16
+FDB_LIMIT=8
+
+FDB_TYPES=(
+	# name		is counted?	overrides learned?
+	'learned	1		0'
+	'static		0		1'
+	'user		0		1'
+	'extern_learn	0		1'
+	'local		0		1'
+)
+
+mac()
+{
+	printf "${TEST_MAC_BASE}%02x" "$1"
+}
+
+H1_DEFAULT_MAC=$(mac 42)
+
+switch_create()
+{
+	ip link add dev br0 type bridge
+
+	ip link set dev "$swp1" master br0
+	ip link set dev "$swp2" master br0
+	# swp3 is used to add local MACs, so do not add it to the bridge yet.
+
+	# swp2 is only used for replying when learning on swp1, its MAC should not be learned.
+	ip link set dev "$swp2" type bridge_slave learning off
+
+	ip link set dev br0 up
+
+	ip link set dev "$swp1" up
+	ip link set dev "$swp2" up
+	ip link set dev "$swp3" up
+}
+
+switch_destroy()
+{
+	ip link set dev "$swp3" down
+	ip link set dev "$swp2" down
+	ip link set dev "$swp1" down
+
+	ip link del dev br0
+}
+
+h_create()
+{
+	ip link set "$h1" addr "$H1_DEFAULT_MAC"
+
+	simple_if_init "$h1" 192.0.2.1/24
+	simple_if_init "$h2" 192.0.2.2/24
+}
+
+h_destroy()
+{
+	simple_if_fini "$h1" 192.0.2.1/24
+	simple_if_fini "$h2" 192.0.2.2/24
+}
+
+setup_prepare()
+{
+	h1=${NETIFS[p1]}
+	swp1=${NETIFS[p2]}
+
+	h2=${NETIFS[p3]}
+	swp2=${NETIFS[p4]}
+
+	swp3=${NETIFS[p6]}
+
+	vrf_prepare
+
+	h_create
+
+	switch_create
+}
+
+cleanup()
+{
+	pre_cleanup
+
+	switch_destroy
+
+	h_destroy
+
+	vrf_cleanup
+}
+
+fdb_get_n_learned()
+{
+	ip -d -j link show dev br0 type bridge | \
+		jq '.[]["linkinfo"]["info_data"]["fdb_n_learned"]'
+}
+
+fdb_get_n_mac()
+{
+	local mac=${1}
+
+	bridge -j fdb show br br0 | \
+		jq "map(select(.mac == \"${mac}\" and (has(\"vlan\") | not))) | length"
+}
+
+fdb_fill_learned()
+{
+	local i
+
+	for i in $(seq 1 "$NUM_PKTS"); do
+		fdb_add learned "$(mac "$i")"
+	done
+}
+
+fdb_reset()
+{
+	bridge fdb flush dev br0
+
+	# Keep the default MAC address of h1 in the table. We set it to a different one when
+	# testing dynamic learning.
+	bridge fdb add "$H1_DEFAULT_MAC" dev "$swp1" master static use
+}
+
+fdb_add()
+{
+	local type=$1 mac=$2
+
+	case "$type" in
+		learned)
+			ip link set "$h1" addr "$mac"
+			# Wait for a reply so we implicitly wait until after the forwarding
+			# code finished and the FDB entry was created.
+			PING_COUNT=1 ping_do "$h1" 192.0.2.2
+			check_err $? "Failed to ping another bridge port"
+			ip link set "$h1" addr "$H1_DEFAULT_MAC"
+			;;
+		local)
+			ip link set dev "$swp3" addr "$mac" && ip link set "$swp3" master br0
+			;;
+		static)
+			bridge fdb replace "$mac" dev "$swp1" master static
+			;;
+		user)
+			bridge fdb replace "$mac" dev "$swp1" master static use
+			;;
+		extern_learn)
+			bridge fdb replace "$mac" dev "$swp1" master extern_learn
+			;;
+	esac
+
+	check_err $? "Failed to add a FDB entry of type ${type}"
+}
+
+fdb_del()
+{
+	local type=$1 mac=$2
+
+	case "$type" in
+		local)
+			ip link set "$swp3" nomaster
+			;;
+		*)
+			bridge fdb del "$mac" dev "$swp1" master
+			;;
+	esac
+
+	check_err $? "Failed to remove a FDB entry of type ${type}"
+}
+
+check_accounting_one_type()
+{
+	local type=$1 is_counted=$2 overrides_learned=$3
+	shift 3
+	RET=0
+
+	fdb_reset
+	fdb_add "$type" "$(mac 0)"
+	learned=$(fdb_get_n_learned)
+	[ "$learned" -ne "$is_counted" ]
+	check_fail $? "Inserted FDB type ${type}: Expected the count ${is_counted}, but got ${learned}"
+
+	fdb_del "$type" "$(mac 0)"
+	learned=$(fdb_get_n_learned)
+	[ "$learned" -ne 0 ]
+	check_fail $? "Removed FDB type ${type}: Expected the count 0, but got ${learned}"
+
+	if [ "$overrides_learned" -eq 1 ]; then
+		fdb_reset
+		fdb_add learned "$(mac 0)"
+		fdb_add "$type" "$(mac 0)"
+		learned=$(fdb_get_n_learned)
+		[ "$learned" -ne "$is_counted" ]
+		check_fail $? "Set a learned entry to FDB type ${type}: Expected the count ${is_counted}, but got ${learned}"
+		fdb_del "$type" "$(mac 0)"
+	fi
+
+	log_test "FDB accounting interacting with FDB type ${type}"
+}
+
+check_accounting()
+{
+	local type_args learned
+	RET=0
+
+	fdb_reset
+	learned=$(fdb_get_n_learned)
+	[ "$learned" -ne 0 ]
+	check_fail $? "Flushed the FDB table: Expected the count 0, but got ${learned}"
+
+	fdb_fill_learned
+	sleep 1
+
+	learned=$(fdb_get_n_learned)
+	[ "$learned" -ne "$NUM_PKTS" ]
+	check_fail $? "Filled the FDB table: Expected the count ${NUM_PKTS}, but got ${learned}"
+
+	log_test "FDB accounting"
+
+	for type_args in "${FDB_TYPES[@]}"; do
+		# This is intentional use of word splitting.
+		# shellcheck disable=SC2086
+		check_accounting_one_type $type_args
+	done
+}
+
+check_limit_one_type()
+{
+	local type=$1 is_counted=$2
+	local n_mac expected=$((1 - is_counted))
+	RET=0
+
+	fdb_reset
+	fdb_fill_learned
+
+	fdb_add "$type" "$(mac 0)"
+	n_mac=$(fdb_get_n_mac "$(mac 0)")
+	[ "$n_mac" -ne "$expected" ]
+	check_fail $? "Inserted FDB type ${type} at limit: Expected the count ${expected}, but got ${n_mac}"
+
+	log_test "FDB limits interacting with FDB type ${type}"
+}
+
+check_limit()
+{
+	local learned
+	RET=0
+
+	ip link set br0 type bridge fdb_max_learned "$FDB_LIMIT"
+
+	fdb_reset
+	fdb_fill_learned
+
+	learned=$(fdb_get_n_learned)
+	[ "$learned" -ne "$FDB_LIMIT" ]
+	check_fail $? "Filled the limited FDB table: Expected the count ${FDB_LIMIT}, but got ${learned}"
+
+	log_test "FDB limits"
+
+	for type_args in "${FDB_TYPES[@]}"; do
+		# This is intentional use of word splitting.
+		# shellcheck disable=SC2086
+		check_limit_one_type $type_args
+	done
+}
+
+trap cleanup EXIT
+
+setup_prepare
+
+tests_run
+
+exit $EXIT_STATUS

-- 
2.42.0


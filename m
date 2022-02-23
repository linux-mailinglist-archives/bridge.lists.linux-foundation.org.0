Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EA04C1015
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 11:17:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8328A60F52;
	Wed, 23 Feb 2022 10:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUh0dv0gfJkt; Wed, 23 Feb 2022 10:17:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DC03360F54;
	Wed, 23 Feb 2022 10:17:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F64EC0021;
	Wed, 23 Feb 2022 10:17:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3287BC0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7798410E1
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4hMMiCh5VEm for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 10:17:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1BE14154F
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:35 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id m14so30113503lfu.4
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 02:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=B62nDdE55WM/1duOKCHxmZ2f2uyelMOuqvpmkuCjkww=;
 b=Jp4+U0Urt1JRgU4N5WbvXyrxpmnyoBYjtIi4vw/zpHLl/ZiZtuvTLDeLEpTFg+nwr/
 mDPHM9uPt3JIMTlSechOPm4Imp2zjVLpqW4TjO3pbZojqeTNANDdnJTJnR82Tj1agcot
 SPB8Vq+ZaZparv+qgffoGEup4n7stDOrbKqVLSVULIWizPgSr9nUzr759Xm6BhS/fIli
 1ZLS8Dc0CWW/dbTqk2ZdFsUCeakC9rAFGgUKyMQWkM6SWrCl8UorqxLM51VYlaUxayFz
 Skrfsuzn52Roh2mPXoG/8kqWSwa+sxlDZvfCBeXeJxyR9n9XkhcyA+cjeuuWOt52d/t5
 UqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=B62nDdE55WM/1duOKCHxmZ2f2uyelMOuqvpmkuCjkww=;
 b=n5JoxhiKE7U016EZ1ZVuRT3cG4hk8DZgL2HhZjJ1Z8J1cEsHg3MxWivZRDh21GpD3t
 Fg13UHkysYy45+pUlPEcNipG9Egb62ZgQ/K8XI3hQjM/q9p+YZTY2FHYhOPQw5tlX5a9
 jXfnni2/ehUUhmQxYOoStYpdSWJsmtO3+PvKfnwjS/ny6CP406Y9rvGNabwPiJxEY/CZ
 dKjzwL5jaCJGI/JItfD5Y7PW25STmQmUJeosD0T5X+GhJedm7MShI3HFHuYY5hGlnTbj
 kIu2Cf6oCA3ECnJPI2JY8/3qbPfWeZSPVVC4ukNFTmPWReKAPfdfGVYHo5WQHG6Tl8YA
 iJ1g==
X-Gm-Message-State: AOAM533vLpLI9sQNcdYRtviywDFCIqC2XoxlCob1YI632qG5CrFllnNC
 3/LeyS2UnEBdkxcJitKK1KE=
X-Google-Smtp-Source: ABdhPJxaBJc5Wc8NbdpOf6wGXNgbqWRrNC7TfVeQ75B+nhdGjR9FbtB6Y9z0UyrXsKU100bkEnNeFw==
X-Received: by 2002:a05:6512:6cc:b0:42c:e7e1:57dd with SMTP id
 u12-20020a05651206cc00b0042ce7e157ddmr19984222lff.290.1645611453820; 
 Wed, 23 Feb 2022 02:17:33 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id d5sm1613102lfs.307.2022.02.23.02.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:17:33 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 23 Feb 2022 11:16:50 +0100
Message-Id: <20220223101650.1212814-6-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v5 5/5] selftests: forwarding: tests of
	locked port feature
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

These tests check that the basic locked port feature works, so that
no 'host' can communicate (ping) through a locked port unless the
MAC address of the 'host' interface is in the forwarding database of
the bridge.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
Acked-by: Ido Schimmel <idosch@nvidia.com>
---
 .../testing/selftests/net/forwarding/Makefile |   1 +
 .../net/forwarding/bridge_locked_port.sh      | 180 ++++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh |   8 +
 3 files changed, 189 insertions(+)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh

diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
index 72ee644d47bf..8fa97ae9af9e 100644
--- a/tools/testing/selftests/net/forwarding/Makefile
+++ b/tools/testing/selftests/net/forwarding/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0+ OR MIT
 
 TEST_PROGS = bridge_igmp.sh \
+	bridge_locked_port.sh \
 	bridge_port_isolation.sh \
 	bridge_sticky_fdb.sh \
 	bridge_vlan_aware.sh \
diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
new file mode 100755
index 000000000000..6e98efa6d371
--- /dev/null
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -0,0 +1,180 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
+NUM_NETIFS=4
+CHECK_TC="no"
+source lib.sh
+
+h1_create()
+{
+	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
+	vrf_create "vrf-vlan-h1"
+	ip link set dev vrf-vlan-h1 up
+	vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24
+}
+
+h1_destroy()
+{
+	vlan_destroy $h1 100
+	simple_if_fini $h1 192.0.2.1/24 2001:db8:1::1/64
+}
+
+h2_create()
+{
+	simple_if_init $h2 192.0.2.2/24 2001:db8:1::2/64
+	vrf_create "vrf-vlan-h2"
+	ip link set dev vrf-vlan-h2 up
+	vlan_create $h2 100 vrf-vlan-h2 198.51.100.2/24
+}
+
+h2_destroy()
+{
+	vlan_destroy $h2 100
+	simple_if_fini $h2 192.0.2.2/24 2001:db8:1::2/64
+}
+
+switch_create()
+{
+	ip link add dev br0 type bridge vlan_filtering 1
+
+	ip link set dev $swp1 master br0
+	ip link set dev $swp2 master br0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 up
+	ip link set dev $swp2 up
+
+	bridge link set dev $swp1 learning off
+}
+
+switch_destroy()
+{
+	ip link set dev $swp2 down
+	ip link set dev $swp1 down
+
+	ip link del dev br0
+}
+
+setup_prepare()
+{
+	h1=${NETIFS[p1]}
+	swp1=${NETIFS[p2]}
+
+	swp2=${NETIFS[p3]}
+	h2=${NETIFS[p4]}
+
+	vrf_prepare
+
+	h1_create
+	h2_create
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
+	h2_destroy
+	h1_destroy
+
+	vrf_cleanup
+}
+
+locked_port_ipv4()
+{
+	RET=0
+
+	check_locked_port_support || return 0
+
+	ping_do $h1 192.0.2.2
+	check_err $? "Ping did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+
+	ping_do $h1 192.0.2.2
+	check_fail $? "Ping worked after locking port, but before adding FDB entry"
+
+	bridge fdb add `mac_get $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "Ping did not work after locking port and adding FDB entry"
+
+	bridge link set dev $swp1 locked off
+	bridge fdb del `mac_get $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "Ping did not work after unlocking port and removing FDB entry."
+
+	log_test "Locked port ipv4"
+}
+
+locked_port_vlan()
+{
+	RET=0
+
+	check_locked_port_support || return 0
+
+	bridge vlan add vid 100 dev $swp1
+	bridge vlan add vid 100 dev $swp2
+
+	ping_do $h1.100 198.51.100.2
+	check_err $? "Ping through vlan did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+	ping_do $h1.100 198.51.100.2
+	check_fail $? "Ping through vlan worked after locking port, but before adding FDB entry"
+
+	bridge fdb add `mac_get $h1` dev $swp1 vlan 100 master static
+
+	ping_do $h1.100 198.51.100.2
+	check_err $? "Ping through vlan did not work after locking port and adding FDB entry"
+
+	bridge link set dev $swp1 locked off
+	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master static
+
+	ping_do $h1.100 198.51.100.2
+	check_err $? "Ping through vlan did not work after unlocking port and removing FDB entry"
+
+	bridge vlan del vid 100 dev $swp1
+	bridge vlan del vid 100 dev $swp2
+	log_test "Locked port vlan"
+}
+
+locked_port_ipv6()
+{
+	RET=0
+	check_locked_port_support || return 0
+
+	ping6_do $h1 2001:db8:1::2
+	check_err $? "Ping6 did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+
+	ping6_do $h1 2001:db8:1::2
+	check_fail $? "Ping6 worked after locking port, but before adding FDB entry"
+
+	bridge fdb add `mac_get $h1` dev $swp1 master static
+	ping6_do $h1 2001:db8:1::2
+	check_err $? "Ping6 did not work after locking port and adding FDB entry"
+
+	bridge link set dev $swp1 locked off
+	bridge fdb del `mac_get $h1` dev $swp1 master static
+
+	ping6_do $h1 2001:db8:1::2
+	check_err $? "Ping6 did not work after unlocking port and removing FDB entry"
+
+	log_test "Locked port ipv6"
+}
+
+trap cleanup EXIT
+
+setup_prepare
+setup_wait
+
+tests_run
+
+exit $EXIT_STATUS
diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index 7da783d6f453..c26b603abb4d 100644
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -125,6 +125,14 @@ check_ethtool_lanes_support()
 	fi
 }
 
+check_locked_port_support()
+{
+	if ! bridge -d link show | grep -q " locked"; then
+		echo "SKIP: iproute2 too old; Locked port feature not supported."
+		return $ksft_skip
+	fi
+}
+
 if [[ "$(id -u)" -ne 0 ]]; then
 	echo "SKIP: need root privileges"
 	exit $ksft_skip
-- 
2.30.2


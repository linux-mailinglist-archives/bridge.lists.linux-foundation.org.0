Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BA24BBC88
	for <lists.bridge@lfdr.de>; Fri, 18 Feb 2022 16:53:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8770940192;
	Fri, 18 Feb 2022 15:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qG-oO3zbOs-h; Fri, 18 Feb 2022 15:53:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9AF0340110;
	Fri, 18 Feb 2022 15:53:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51FC8C0039;
	Fri, 18 Feb 2022 15:53:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8430C000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B73E2812C6
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7b51RvskbpAY for <bridge@lists.linux-foundation.org>;
 Fri, 18 Feb 2022 15:53:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B39CB80B86
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:30 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id t14so4923493ljh.8
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 07:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=+Mu8RvBnev8GXTejYsZPejfoz1EIMAndo1iFiCzGtfU=;
 b=Ne7ve291QC1Ba2C/uEJ1kQrM/HEA0BtP4jUbz3fW5Zi43QXrH90M4ADD9g/D9y1sq2
 4nDJo9rkkksFdRJVWv6+MS2HY08pNJvc9HxJfrYhVvV9PPWrroL8CWUBq6hrSm38/rRm
 rV/i42qonsEW7yMLJAzRVLHwFn8/KWEk1RcnscyahJaWwLDDgXR9WLSVYhtPBdFyTxay
 AXHj/yWPjSKpxqLvNaSYskfyqH6a3zBZkYGujTNkKkfkcBIiWJe07mo7RUMo8RonwzyL
 87F7hwllYfSa5jvOSIQAL1+CIwjUDVc+JFce5Bp+Oe2LWfap7oj2nhK9djtyVILWGtOa
 fYxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=+Mu8RvBnev8GXTejYsZPejfoz1EIMAndo1iFiCzGtfU=;
 b=xV/YM0O5CFUMjLX1D6FDaQr+OtjsfJFz7y4hWLrXq60JKEI/yEZgzTWjUuYqX6WVJE
 2Ru2gqpWSdyumzEKytpT2NZGB2ft+l0UsSOVsiZjJTqkRoCXYK34Sdo399spQVlKTTIh
 jD9tKL0wM2bUmAo/I/ZBi8YisgpxZ02PI+k1JHmEvGEF+AGnjc/H9FxgfAvjMRcosC06
 A06kJlujkxDcMEufQHDV3npq4a15e226frhE6OFvNvy4S/PNkXgbN4natcBbWmSS1K1l
 4Mjazoul8cfmJnY+bUZKMz1n8YWHQe6abQJlMRPHbWf2BkDkRjhNbc8cajG55x/srpjT
 m87w==
X-Gm-Message-State: AOAM533cw5gM0NNz0F8tQrnPpuqHn2eiJ9g/FAQtmc+Elq7hYoZ9MZGY
 b51k4Efgv4w4T3OkT1ZJbjU=
X-Google-Smtp-Source: ABdhPJxlzT3gBFdCoywzClFF8dDbeFMFzORMD607SdJ3lZizRUrVvz9NSMNSjqfnZ1Mc3OoijizKEw==
X-Received: by 2002:a2e:90c9:0:b0:244:2f8a:7aca with SMTP id
 o9-20020a2e90c9000000b002442f8a7acamr6152453ljg.129.1645199608751; 
 Fri, 18 Feb 2022 07:53:28 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id v11sm295453lfr.3.2022.02.18.07.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 07:53:28 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 18 Feb 2022 16:51:48 +0100
Message-Id: <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v3 5/5] selftests: forwarding: tests of
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

These tests check that the basic locked port feature works, so that no 'host'
can communicate (ping) through a locked port unless the MAC address of the
'host' interface is in the forwarding database of the bridge.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 .../testing/selftests/net/forwarding/Makefile |   1 +
 .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh |  16 ++
 3 files changed, 191 insertions(+)
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
index 000000000000..d2805441b325
--- /dev/null
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -0,0 +1,174 @@
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
+        ip link set dev vrf-vlan-h1 up
+        vlan_create $h1 100 vrf-vlan-h1 192.0.3.1/24 2001:db8:3::1/64
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
+	vlan_create $h2 100 vrf-vlan-h2 192.0.3.2/24 2001:db8:3::2/64
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
+ifaddr()
+{
+	ip -br link show dev "$1" | awk '{ print($3); }'
+}
+
+locked_port_ipv4()
+{
+	RET=0
+
+	check_locked_port_support || return 0
+
+	ping_do $h1 192.0.2.2
+	check_err $? "Ping didn't work when it should have"
+
+	bridge link set dev $swp1 locked on
+
+	ping_do $h1 192.0.2.2
+	check_fail $? "Ping worked when it should not have"
+
+	bridge fdb add `ifaddr $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "Ping didn't work when it should have"
+
+	bridge link set dev $swp1 locked off
+	bridge fdb del `ifaddr $h1` dev $swp1 master static
+	log_test "Locked port ipv4"
+}
+
+locked_port_vlan()
+{
+	RET=0
+
+	check_locked_port_support || return 0
+	check_vlan_filtering_support || return 0
+
+	bridge vlan add vid 100 dev $swp1 tagged
+	bridge vlan add vid 100 dev $swp2 tagged
+
+	ping_do $h1.100 192.0.3.2
+	check_err $? "Ping didn't work when it should have"
+
+	bridge link set dev $swp1 locked on
+	ping_do $h1.100 192.0.3.2
+	check_fail $? "Ping worked when it should not have"
+
+	bridge fdb add `ifaddr $h1` dev $swp1 vlan 100 master static
+
+	ping_do $h1.100 192.0.3.2
+	check_err $? "Ping didn't work when it should have"
+
+	bridge link set dev $swp1 locked off
+	bridge vlan del vid 100 dev $swp1
+	bridge vlan del vid 100 dev $swp2
+	bridge fdb del `ifaddr $h1` dev $swp1 vlan 100 master static
+	log_test "Locked port vlan"
+}
+
+locked_port_ipv6()
+{
+	RET=0
+	check_locked_port_support || return 0
+
+	ping6_do $h1 2001:db8:1::2
+	check_err $? "Ping6 didn't work when it should have"
+
+	bridge link set dev $swp1 locked on
+
+	ping6_do $h1 2001:db8:1::2
+	check_fail $? "Ping worked when it should not have"
+
+	bridge fdb add `ifaddr $h1` dev $swp1 master static
+	ping6_do $h1 2001:db8:1::2
+	check_err $? "Ping didn't work when it should have"
+
+	bridge link set dev $swp1 locked off
+	bridge fdb del `ifaddr $h1` dev $swp1 master static
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
index 7da783d6f453..9ded90f17ead 100644
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -125,6 +125,22 @@ check_ethtool_lanes_support()
 	fi
 }
 
+check_locked_port_support()
+{
+        if ! bridge -d link show | grep -q " locked"; then
+                echo "SKIP: iproute2 too old; Locked port feature not supported."
+                return $ksft_skip
+        fi
+}
+
+check_vlan_filtering_support()
+{
+	if ! bridge -d vlan show | grep -q "state forwarding"; then
+		echo "SKIP: vlan filtering not supported."
+		return $ksft_skip
+	fi
+}
+
 if [[ "$(id -u)" -ne 0 ]]; then
 	echo "SKIP: need root privileges"
 	exit $ksft_skip
-- 
2.30.2


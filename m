Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25A4BF965
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 14:30:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6511B409D3;
	Tue, 22 Feb 2022 13:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AnScNBn2sMwM; Tue, 22 Feb 2022 13:30:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DE2F5410C4;
	Tue, 22 Feb 2022 13:30:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A40E1C0073;
	Tue, 22 Feb 2022 13:30:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36E0AC0011
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21307405BF
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pdJPaKN3azUM for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 13:29:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B74AF405B9
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:55 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id i11so24822269lfu.3
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 05:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=apVwciccGncKyrNnT21WgTMlXkF016ygJDNOQ6HTOEY=;
 b=TUG8laC+Wl5KqrFopUf/VVbz6g9dDrIwlg3tfwzUw9zRlqs4eVDDH2hibE25183xEH
 qzS3hZTEmFMfz6PnRblUjbKF3WeWRBb6BwVeI3X648O4evbKhgdah52fBE3ZwTqfTE2M
 bvWHBWA/GudQMROp0hPvAbDHC2AL70GFkziwApkIlRa3w8rh8Ruydl2nZAoiR+iY2HJW
 bOYlRblvniIkcOm+BZD0WA+PebhWtMVDgCRcg44w0YrQgZaOvkA2/LdAevxTjbsyEhk+
 i+1HlA7QQLD8wEno/44Z5u6IRGqNO/xF30cJiJwxFg8VaJ/ab1h45xVHYAS6+zExhAM9
 tsmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=apVwciccGncKyrNnT21WgTMlXkF016ygJDNOQ6HTOEY=;
 b=DD+AqZSsDc3nczLzrBjHaKAl/q85GDLVEAI0bSnmT2W1wCjwkWfBbAUZ49c+cIJlsg
 oDT3pJVTAeG1wPSsgRxSs3vLeMy28Rhe52KwTLNP4+uYGMKVRiROPAF7bjpplBMIL9k/
 pdiQ7un0C3HLHk5ocxNv55j5ORIYo0xpzaqAjUcogorpZS8F7lD+ZZMv8F/Hgd04vFeK
 90Tl0bVVoKWH2y2Eq2cV7I0w077KfFFMSPIXbnyXKaiXqwtwmBENMR0gHShxxHR7cJG3
 TCe3Nz1GMirN8CzsgPEngSbwhnx4VymKP/Q5n6neGPczC4DtPkSggT6FWre90Pse2Rao
 u9yA==
X-Gm-Message-State: AOAM533hyOx3Gktx1N97LpePaRQRxcHofrji+DZ/oEedvfuUFWVDmHc8
 E02+coGYezTH7A6l3QUQ4po=
X-Google-Smtp-Source: ABdhPJwc6RRWm6+BPTKa0C/3tgUzVX3hZENkr5K/8THqBgvYVvDZfAJUApd4EGMAsEpP1EudELq1HA==
X-Received: by 2002:ac2:5d67:0:b0:442:f135:3bcc with SMTP id
 h7-20020ac25d67000000b00442f1353bccmr17248740lft.452.1645536593576; 
 Tue, 22 Feb 2022 05:29:53 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id e22sm1703685ljb.17.2022.02.22.05.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 05:29:53 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 22 Feb 2022 14:28:18 +0100
Message-Id: <20220222132818.1180786-6-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next v4 5/5] selftests: forwarding: tests of
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
index 000000000000..a8800e531d07
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
+	vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24 ::ffff:c633:6401/64
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
+	vlan_create $h2 100 vrf-vlan-h2 198.51.100.2/24 ::ffff:c633:6402/64
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


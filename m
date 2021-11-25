Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAD045DBFB
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F5F81D9F;
	Thu, 25 Nov 2021 14:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvxr06OPSRqi; Thu, 25 Nov 2021 14:09:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AAB1E80D3A;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CC2FC001E;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9DDB1C000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E3EC401FF
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5IDmAhgWl9i for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E02E40540
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:16 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id o20so25926791eds.10
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rvlj2z02TvoZ0JtiYBU5m7HbtbPpDbjJufuKd8Zrdlw=;
 b=g60hvNNRt5j46HgOcpZc68bECQL+18z5jEhOoUl8LwH2PAEx+X1CDBqtOXuNK5qPta
 Y4gHlPKqwpcY3OxmaJ2L0IzPz4bS6MQJqgczq0LiVhHtfqhNQZUYU/vUsaLWmx6dC8xo
 SZHzLJElMNFcXu34sRzH38lVlnj28NvKo7WEZowsAsp1wbX83JiIH49keW6NBJRBYo0G
 TwMaIASetZYjq8XgVf4uLTzGbLYDDVr9aM6aWxwPZPFhTQY5lI6qJzTsHs9gh1bNVtmQ
 mpC2v/a/TfJQM3h/1/O1k3P+ZNkIC2vRyM8vc97A+YvNGhrgyqczaBHeF3pTfRS6oqsW
 pjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rvlj2z02TvoZ0JtiYBU5m7HbtbPpDbjJufuKd8Zrdlw=;
 b=sLK3uelRPhXrS1hQu3Xd3s1BdPhvaS9Lsf5I0c4BxpDwkLXkm/9VHcnYxQtBNv3Ygh
 ho3fsP9gbUJI6AbnRSuTpnsDzqisRsBM6q0+JaT1hFTsfYqc45c0Rpeg5ZxXKotWCVAW
 oPjmYW4SUjPlExDB/F6YuubAMvGqo9olrFp3QRv13xo6oGxakYSHE/cSfXZfVOqn+ds1
 hBLUJG3muGXaGNGEfcs9IhYCJ1qG5Mod9KRKnLfeSxbStgwHWRHTltdy7K+KWyJNM2Y1
 r6qkRABU5MAEmzrCTXOYQhDSTETgkY82gKXXrRRxjZ3AEBtxNmMAXlRv8oGNSPHV3oz8
 KHBQ==
X-Gm-Message-State: AOAM532tp6F+PSSVboqkkcoCMWuKhCSQsh6IPnnYsV82d+SvO9OSWtFl
 FnAGVnSc0Wk+VFm5kILFI2LpJLCcTKagyETy
X-Google-Smtp-Source: ABdhPJwlad71DK9gLrzJB964OkQYEjaCNI6ybh7zUXpE3ePKeZkjQnSlVdfi7t5/1fU6aFqQJWDZbg==
X-Received: by 2002:a17:907:2da5:: with SMTP id
 gt37mr31666251ejc.316.1637849354846; 
 Thu, 25 Nov 2021 06:09:14 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:14 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:49 +0200
Message-Id: <20211125140858.3639139-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 01/10] selftests: net: bridge: add vlan
	mcast snooping control test
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Add the first test for bridge per-vlan multicast snooping which checks
if control of the global and per-vlan options work as expected, joins
and leaves are tested at each option value.

TEST: Vlan multicast snooping enable                                [ OK ]
TEST: Vlan global options existence                                 [ OK ]
TEST: Vlan mcast_snooping global option default value               [ OK ]
TEST: Vlan 10 multicast snooping control                            [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 148 ++++++++++++++++++
 1 file changed, 148 insertions(+)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
new file mode 100755
index 000000000000..796e8f094e08
--- /dev/null
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -0,0 +1,148 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+ALL_TESTS="vlmc_control_test"
+NUM_NETIFS=4
+CHECK_TC="yes"
+TEST_GROUP="239.10.10.10"
+
+source lib.sh
+
+h1_create()
+{
+	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
+	ip link add l $h1 $h1.10 up type vlan id 10
+}
+
+h1_destroy()
+{
+	ip link del $h1.10
+	simple_if_fini $h1 192.0.2.1/24 2001:db8:1::1/64
+}
+
+h2_create()
+{
+	simple_if_init $h2 192.0.2.2/24 2001:db8:1::2/64
+	ip link add l $h2 $h2.10 up type vlan id 10
+}
+
+h2_destroy()
+{
+	ip link del $h2.10
+	simple_if_fini $h2 192.0.2.2/24 2001:db8:1::2/64
+}
+
+switch_create()
+{
+	ip link add dev br0 type bridge mcast_snooping 1 mcast_querier 1 vlan_filtering 1
+
+	ip link set dev $swp1 master br0
+	ip link set dev $swp2 master br0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 up
+	ip link set dev $swp2 up
+
+	bridge vlan add vid 10-11 dev $swp1 master
+	bridge vlan add vid 10-11 dev $swp2 master
+
+	ip link set dev br0 type bridge mcast_vlan_snooping 1
+	check_err $? "Could not enable global vlan multicast snooping"
+	log_test "Vlan multicast snooping enable"
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
+vlmc_v2join_test()
+{
+	local expect=$1
+
+	RET=0
+	ip address add dev $h2.10 $TEST_GROUP/32 autojoin
+	check_err $? "Could not join $TEST_GROUP"
+
+	sleep 5
+	bridge -j mdb show dev br0 |
+		jq -e ".[].mdb[] | select(.grp == \"$TEST_GROUP\" and .vid == 10)" &>/dev/null
+	if [ $expect -eq 0 ]; then
+		check_err $? "IGMPv2 report didn't create mdb entry for $TEST_GROUP"
+	else
+		check_fail $? "IGMPv2 report shouldn't have created mdb entry for $TEST_GROUP"
+	fi
+
+	# check if we need to cleanup
+	if [ $RET -eq 0 ]; then
+		ip address del dev $h2.10 $TEST_GROUP/32 2>&1 1>/dev/null
+		sleep 5
+		bridge -j mdb show dev br0 |
+			jq -e ".[].mdb[] | select(.grp == \"$TEST_GROUP\" and \
+						  .vid == 10)" &>/dev/null
+		check_fail $? "IGMPv2 leave didn't remove mdb entry for $TEST_GROUP"
+	fi
+}
+
+vlmc_control_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+	log_test "Vlan global options existence"
+
+	RET=0
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and .mcast_snooping == 1) " &>/dev/null
+	check_err $? "Wrong default mcast_snooping global option value"
+	log_test "Vlan mcast_snooping global option default value"
+
+	RET=0
+	vlmc_v2join_test 0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 0
+	check_err $? "Could not disable multicast snooping in vlan 10"
+	vlmc_v2join_test 1
+	log_test "Vlan 10 multicast snooping control"
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
-- 
2.31.1


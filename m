Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7164345DBFC
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D96E61BDB;
	Thu, 25 Nov 2021 14:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BihH3HK2L3A8; Thu, 25 Nov 2021 14:09:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 038AB61BE4;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B6B08C0039;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BDF7C0030
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4561180D07
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khG91PhIp2dP for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5232D80C4D
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:17 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id x15so26151366edv.1
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BzpnEA37RXcLJueyhR+TEPx2gUPlYvWfPjF8B5Ruo4o=;
 b=FPTx/34hoPRAdbxsgFLIdI155A0LPiIo/mRhgeXxXtt1IjbIgq1imUUaLmpUl5sMtZ
 rFJDaaz1WS6JWUV9zyqWh2Ck6DJz9KRqhHJ7iQpGWKLvTQWMJOkKTzqx9L9CtEN8DZAe
 V9l0yHfxD7emaU1CZ0vGxvFQkdKVhmgbwd9OlV/K+z8eLJ2VS16xiT0Zw2H0YXZMuz7E
 O6MHedZceHXkhrtbqeMGy1jNp/NC/RepM0lqbB9qy2501h82q/vMcBAWoosq/VtHg61i
 JW0u6rwl4qaDs93b5i0TNH5dMVolCYenzAGLyfCWncBVdzHyuUd9Ak/2vBXCHOk6uD1G
 +l2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BzpnEA37RXcLJueyhR+TEPx2gUPlYvWfPjF8B5Ruo4o=;
 b=yiGErO8FvRGuOJOoueohaGVvZsdRxYgvDJ5Lu09piFnNuWVTvXTTIch4Xa2gguruQe
 BG3zjrNo0cDl7MaGwQP6+FZ/nnwDfAGRsPj92KVXx4vBtSDlM+wvE7YXu3+yTtgTf0HR
 WDActeh6QW/8J7D/pXdaXnT9O3ZwifQKETu2Dv6+KBTunRSCobhcKeVRM9q49Zg7NGex
 rgg/Nw0y15vm3+WKKKVS/LKEbdWOYn1cqWpLsxxlwYfjg+ioB9Sp9FtknewxuzFh1SIH
 gC5Su7rejBQ8P+fttjBwIDvHs8eWNMDGDaUUDqRWNJcnSPXs4x7blOEKZoqBW/cjDsL0
 VKMQ==
X-Gm-Message-State: AOAM532cDKIeTgheRxZ3RWa1NyqVbr4Xr//wpL+1+uYTf2gu+lMughuo
 iDXq8dFJ4S6l8PlNyDp0Xz4mKXy3Ob18nYJ3
X-Google-Smtp-Source: ABdhPJzfUWGSdET9KbbHVkXcP8/7y/JoCL9L5itv/p0ROdZM60h3Sp5IiOSbqUEu5fy/R/HVR5gqdA==
X-Received: by 2002:a17:907:7f9e:: with SMTP id
 qk30mr31480904ejc.313.1637849355883; 
 Thu, 25 Nov 2021 06:09:15 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:15 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:50 +0200
Message-Id: <20211125140858.3639139-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 02/10] selftests: net: bridge: add vlan
	mcast querier test
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

Add a test to try the new global vlan mcast_querier control and also
verify that tagged general query packets are properly generated when
querier is enabled for a single vlan.

TEST: Vlan mcast_querier global option default value                [ OK ]
TEST: Vlan 10 multicast querier enable                              [ OK ]
TEST: Vlan 10 tagged IGMPv2 general query sent                      [ OK ]
TEST: Vlan 10 tagged MLD general query sent                         [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 105 +++++++++++++++++-
 1 file changed, 104 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 796e8f094e08..aa23764a328b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="vlmc_control_test"
+ALL_TESTS="vlmc_control_test vlmc_querier_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -43,6 +43,9 @@ switch_create()
 	ip link set dev $swp1 up
 	ip link set dev $swp2 up
 
+	tc qdisc add dev $swp1 clsact
+	tc qdisc add dev $swp2 clsact
+
 	bridge vlan add vid 10-11 dev $swp1 master
 	bridge vlan add vid 10-11 dev $swp2 master
 
@@ -138,6 +141,106 @@ vlmc_control_test()
 	log_test "Vlan 10 multicast snooping control"
 }
 
+# setup for general query counting
+vlmc_query_cnt_xstats()
+{
+	local type=$1
+	local version=$2
+	local dev=$3
+
+	ip -j link xstats type bridge_slave dev $dev | \
+	jq -e ".[].multicast.${type}_queries.tx_v${version}"
+}
+
+vlmc_query_cnt_setup()
+{
+	local type=$1
+	local dev=$2
+
+	if [[ $type == "igmp" ]]; then
+		tc filter add dev $dev egress pref 10 prot 802.1Q \
+			flower vlan_id 10 vlan_ethtype ipv4 dst_ip 224.0.0.1 ip_proto 2 \
+			action pass
+	else
+		tc filter add dev $dev egress pref 10 prot 802.1Q \
+			flower vlan_id 10 vlan_ethtype ipv6 dst_ip ff02::1 ip_proto icmpv6 \
+			action pass
+	fi
+
+	ip link set dev br0 type bridge mcast_stats_enabled 1
+}
+
+vlmc_query_cnt_cleanup()
+{
+	local dev=$1
+
+	ip link set dev br0 type bridge mcast_stats_enabled 0
+	tc filter del dev $dev egress pref 10
+}
+
+vlmc_check_query()
+{
+	local type=$1
+	local version=$2
+	local dev=$3
+	local expect=$4
+	local time=$5
+	local ret=0
+
+	vlmc_query_cnt_setup $type $dev
+
+	local pre_tx_xstats=$(vlmc_query_cnt_xstats $type $version $dev)
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier 1
+	ret=$?
+	if [[ $ret -eq 0 ]]; then
+		sleep $time
+
+		local tcstats=$(tc_rule_stats_get $dev 10 egress)
+		local post_tx_xstats=$(vlmc_query_cnt_xstats $type $version $dev)
+
+		if [[ $tcstats != $expect || \
+		      $(($post_tx_xstats-$pre_tx_xstats)) != $expect || \
+		      $tcstats != $(($post_tx_xstats-$pre_tx_xstats)) ]]; then
+			ret=1
+		fi
+	fi
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier 0
+	vlmc_query_cnt_cleanup $dev
+
+	return $ret
+}
+
+vlmc_querier_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and .mcast_querier == 0) " &>/dev/null
+	check_err $? "Wrong default mcast_querier global vlan option value"
+	log_test "Vlan mcast_querier global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier 1
+	check_err $? "Could not enable querier in vlan 10"
+	log_test "Vlan 10 multicast querier enable"
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier 0
+
+	RET=0
+	vlmc_check_query igmp 2 $swp1 1 1
+	check_err $? "No vlan tagged IGMPv2 general query packets sent"
+	log_test "Vlan 10 tagged IGMPv2 general query sent"
+
+	RET=0
+	vlmc_check_query mld 1 $swp1 1 1
+	check_err $? "No vlan tagged MLD general query packets sent"
+	log_test "Vlan 10 tagged MLD general query sent"
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


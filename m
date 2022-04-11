Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5E4FBD64
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADE4E60FE7;
	Mon, 11 Apr 2022 13:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qdnj83rXekSh; Mon, 11 Apr 2022 13:39:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 383A860E73;
	Mon, 11 Apr 2022 13:39:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB550C0084;
	Mon, 11 Apr 2022 13:39:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A9F7C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0D68410DB
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYzvxFrMzuKN for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:39:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B984F410D8
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:06 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id bq30so13932838lfb.3
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=50MJkKhlS1J2AvfKZSt0Jb7+m5hEUpZE6Hebck0fg/A=;
 b=JXCw9oiD2WnF+/dOWbCKR30QwHOFYeeIGFnoSQa3rk8zCXJGF9WjRf21JEaJS7JlFW
 oJYl9mRBvdtaftLg5HYDs6a1KOlfipXmEgYHv64nyqOgOdKBy5dw93enKmSLyOTC8vDJ
 W/UW3b6tEh2yZBB1eEDy309N1pFBTEJEpmWVM2F45VroybbBgx/7sQzUz5QgrIDKfitW
 cMnHAf+Q4TDrbb1nkoIJQXMsvEtII4Ikv0y/qk+3qrMBfUp2W8kEQjfFaQdohb1DjTE1
 sqAvuH9qb9id5HA7h3y0VaR/F/YMRqh2KrrJV6qs859EreZyHh+T2yEXN41++YTzd4wl
 zeKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=50MJkKhlS1J2AvfKZSt0Jb7+m5hEUpZE6Hebck0fg/A=;
 b=NkXv8PolHfCui+BYqOUoGhzjSAbpfCIK5vT/OUlu0WL1chSPWywq2g+ndSfWUltZRV
 a1At07YghrXncKJlAdwqfkAIcs68oZfzlFNVhZRJtiw7Qi40/CWZovBFGIeh3BoT/Epg
 g65OoTJIDu7mSHrbw/ICFE4xI0pMSDYNupc4es9DnW49lk9BlWmLXUgrP/3tyCLmYQTg
 NRNmjpCnLmdv3WNRKCgfhANyXAuDS6y4kLftz/oZ9EwfzoYz4XP+dN+zt40tMfSJmipV
 JIFtRELaV24kZI8mNd5rtMQnl8XjEBMh6nmBygLEZ4UXL205rpLOwnRbriF5wSobKwna
 YDgA==
X-Gm-Message-State: AOAM530ziKHzn/P5Iy5NBSpLjZ/Tb/dezodQl3Lc1KXib2bucf7F6sML
 Dth8Tx3oHWsNN5X3jFTl81M=
X-Google-Smtp-Source: ABdhPJygk8gDfsKgwEqOQRFbO6IgRWDrD1xWTXDdJhj6rrgjNMQxB602CKesPbTFsnNmR3wr9M9wzQ==
X-Received: by 2002:ac2:5119:0:b0:450:d4e7:99ca with SMTP id
 q25-20020ac25119000000b00450d4e799camr21456161lfb.95.1649684344648; 
 Mon, 11 Apr 2022 06:39:04 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:39:04 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:37 +0200
Message-Id: <20220411133837.318876-14-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 13/13] selftests: forwarding: verify
	flood of known mc on mcast_router port
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

This test verifies that both known (in mdb) and unknown IP multicast is
forwarded to a mcast_router port.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 .../selftests/net/forwarding/bridge_mdb.sh    | 54 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
index 137bc79fd677..3fd7d68bca09 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
@@ -10,13 +10,16 @@
 # Verify selective multicast forwarding (strict mdb), when bridge port
 # mcast_flood is disabled, of known MAC, IPv4, IPv6 traffic.
 #
+# Verify flooding towards mcast_router ports of known IP multicast.
+#
 # Note: this test completely disables IPv6 auto-configuration to avoid
 #       any type of dynamic behavior outside of MLD and IGMP protocols.
 #       Static IPv6 addresses are used to ensure consistent behavior,
 #       even in the startup phase when multicast snooping is enabled.
 #
 
-ALL_TESTS="mdb_add_del_test mdb_compat_fwd_test mdb_mac_fwd_test mdb_ip4_fwd_test mdb_ip6_fwd_test"
+ALL_TESTS="mdb_add_del_test mdb_compat_fwd_test mdb_rport_fwd_test \
+	   mdb_mac_fwd_test mdb_ip4_fwd_test mdb_ip6_fwd_test"
 NUM_NETIFS=6
 
 SRC_PORT="1234"
@@ -246,6 +249,55 @@ mdb_compat_fwd_test()
 	do_compat_fwd "br0"
 }
 
+#
+# Verify fwd of IP multicast to router ports.  A detected multicast
+# router should always receive both known and unknown multicast.
+#
+mdb_rport_fwd_test()
+{
+	pass_grp=$PASS_GRP_IP4
+	fail_grp=$FAIL_GRP_IP4
+	pass_pkt=$PASS_PKT_IP4
+	fail_pkt=$FAIL_PKT_IP4
+	decoy="br0"
+	port=$h1
+	type="IPv4"
+
+	# Disable flooding of unknown multicast, strict MDB forwarding
+	bridge link set dev "$swp1" mcast_flood off
+	bridge link set dev "$swp2" mcast_flood off
+	bridge link set dev "br0"   mcast_flood off self
+
+	# Let h2 act as a multicast router
+	ip link set dev "$swp1" type bridge_slave mcast_router 2
+
+	# Static filter only to this decoy port
+	bridge mdb add dev br0 port $decoy grp "$pass_grp"
+	check_err $? "Failed adding multicast group $pass_grp to bridge port $decoy"
+
+	tcpdump_start "$port"
+
+	# Real data we're expecting
+	$MZ -q "$h2" "$pass_pkt"
+	# This should not pass
+	$MZ -q "$h2" "$fail_pkt"
+
+	sleep 1
+	tcpdump_stop "$port"
+
+	tcpdump_show "$port" |grep -q "$src$spt > $pass_grp$dpt"
+	check_err $? "Failed forwarding $type multicast $pass_grp from $h2 to port $port"
+
+	tcpdump_show "$port" |grep -q "$src$spt > $fail_grp$dpt"
+	check_err $? "Failed forwarding $type multicast $fail_grp from $h2 to port $port"
+
+	bridge mdb del dev br0 port br0 grp "$pass_grp"
+	ip link set dev "$swp1" type bridge_slave mcast_router 1
+
+	log_test "MDB forward all $type multicast to multicast router on $port"
+	tcpdump_cleanup "$port"
+}
+
 do_mdb_fwd()
 {
 	type=$1
-- 
2.25.1


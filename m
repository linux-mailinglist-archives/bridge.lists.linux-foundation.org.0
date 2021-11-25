Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B02645DC00
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5149615F2;
	Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XsS-qtuSNnh; Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6AEEE61BED;
	Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30623C0038;
	Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D11DCC000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF30C40545
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30t7gY7lWfg7 for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE12D40542
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:25 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id o20so25928639eds.10
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jDgbRWbHqWtsaVeh+4rNPIsENfs+qLEuUZMgVdJDcfw=;
 b=saZZVnYLTtWITiQYzBL+L1wPU01pMugwFRwS0HyBsP1zl2v+21xj2jCBo4f/PbOJXa
 qJNMR9Q4MJiXFwP7jjQdciNVRlQ5YX9ZS1ynXMM7OawOtAja/QjbjEhnCDXnO4mMsXSY
 4evNrOuFgOc3cneku9JItIszBnxMDUcjsrva/RQb2maiCNZYrkwN+eZJIiU0vkPxgEDj
 meyLFRHSpaPGHzq3VfPDxGJghLKmK8yLzWZADTFt+p0wmFqQDpIKIS1Wq7bQbwAWbS6W
 zSiq3sL4EQUyqy/LkujM4pW4aOrp6tO+EqGCeh3F54KEajRU56pg5gaIaettRnoVi5it
 aeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jDgbRWbHqWtsaVeh+4rNPIsENfs+qLEuUZMgVdJDcfw=;
 b=Al2Fxe2MLEhdaN/iZM8r/cBqUiXaYRvilrXYJ82xNZUFbz1/dtOukaxyhaDAv7Xczk
 VfTxJ0zUoHsaWXGoVfQkJ+4mzZHPOUJ+F/WoeFSTus6ZPFLI7QiUFT8phScZKuXW2Yxp
 sbCuNNbqbB4K1oVCiiuWveFOSlZZA/zUoW3v/LlVX4qJozzJ5gYImaHDxbaQ9EsIs++9
 H2QcpIb0qv41/yogfFtlqkxkIDzpIaTs0+C3sp7137brwYW3ij3fJSM8gevu1zCtPQGp
 d7DtvHFmpbImocZ+tlLXuUjB5g0I/qdD2fP02nt958WfrddPcRb+Vprth/mp2Q87bD7h
 TFHA==
X-Gm-Message-State: AOAM530mBTQz56XhTkQT9sOVBAOpCAOoZwv35wnp05Rfryaf15PRc2fK
 dI9LtlTaET4PlP6jmwxFmBSdfQ==
X-Google-Smtp-Source: ABdhPJzS3zkpWwrd4BGX0vjMO9TWZvqGd1SYTeFWh8DZbwcd2s91LHv1BUqrr6YYd2MK1GXTyWWj2g==
X-Received: by 2002:a17:907:1c15:: with SMTP id
 nc21mr32003003ejc.510.1637849363872; 
 Thu, 25 Nov 2021 06:09:23 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:23 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:53 +0200
Message-Id: <20211125140858.3639139-6-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 05/10] selftests: net: bridge: add vlan
	mcast_startup_query_count/interval tests
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

Add tests which change the new per-vlan startup query count/interval
options and verify the proper number of queries are sent in the expected
interval.

TEST: Vlan mcast_startup_query_interval global option default value   [ OK ]
TEST: Vlan mcast_startup_query_count global option default value    [ OK ]
TEST: Vlan 10 mcast_startup_query_interval option changed to 100    [ OK ]
TEST: Vlan 10 mcast_startup_query_count option changed to 3         [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 85146c998316..0070d8292569 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -1,7 +1,8 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test vlmc_last_member_test"
+ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
+	   vlmc_last_member_test vlmc_startup_query_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -318,6 +319,45 @@ vlmc_last_member_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_last_member_interval 100
 }
 
+vlmc_startup_query_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_startup_query_interval == 3125) " &>/dev/null
+	check_err $? "Wrong default mcast_startup_query_interval global vlan option value"
+	log_test "Vlan mcast_startup_query_interval global option default value"
+
+	RET=0
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_startup_query_count == 2) " &>/dev/null
+	check_err $? "Wrong default mcast_startup_query_count global vlan option value"
+	log_test "Vlan mcast_startup_query_count global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_interval 100
+	check_err $? "Could not set mcast_startup_query_interval in vlan 10"
+	vlmc_check_query igmp 2 $swp1 2 3
+	check_err $? "Wrong number of tagged IGMPv2 general queries sent"
+	log_test "Vlan 10 mcast_startup_query_interval option changed to 100"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_count 3
+	check_err $? "Could not set mcast_startup_query_count in vlan 10"
+	vlmc_check_query igmp 2 $swp1 3 4
+	check_err $? "Wrong number of tagged IGMPv2 general queries sent"
+	log_test "Vlan 10 mcast_startup_query_count option changed to 3"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_interval 3125
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_count 2
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


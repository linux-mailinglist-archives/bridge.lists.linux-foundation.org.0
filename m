Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 802FE29C7FA
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1565B8645E;
	Tue, 27 Oct 2020 19:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFxNNGmdWJj5; Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A5C3863DC;
	Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C5B4C0051;
	Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C598C0859
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E3D92E131
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWC6g+ohiTLo for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BFDC2E136
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id i1so3157599wro.1
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KUwIDVuHZxC8CM1QJ43pGK3dXQdVN5CV0sqGlBsC+08=;
 b=B3t+dQ/ZMMRClgJdoY14DL/k5UGsWQP38sZjmzFQd7RLR7qkuQk1EBXLiJTRJiNrw1
 92oddnXE7M1avb9oEjN7p0/QVObZam7DxopYI2EMEgwOqD/lF4/4XlUzN1uVP3VKwtAK
 A1nsyIgF8xK/rugo4ODblyeV5Ssif8cVlEX3P+QMmD7bB66QKv29bWbBF1cD7qDg3wxA
 hyVxOj3YE165ebEvHl/uVkq741DDXaVuyn2rJ7kadooQ676fORbYxOrJbiw5Y1BdsWaH
 0B8S4plE5OurnFsB+DlwItxmK9ERr6G1gcHsPL8o+RVQnEc3LmC9aCR78P627mD7ZnYz
 kH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KUwIDVuHZxC8CM1QJ43pGK3dXQdVN5CV0sqGlBsC+08=;
 b=DyYUvkKENBl73f4yfncyF54Dq+3sSXu9k5CeyNqU/mFEJRyP3Dl5V02IBZz+XTRUlT
 BuS/8fEaxbssturKkoqL/Wy3Sma/WH5SFZaaadT1Ea+ft+SnKoXxWAGCcAZ4+JIK3yxC
 DXyPMsDO5Uf0zhqrcnunQZVOi94SR7ObHl+Gu8ByMIHjkiB5KsPRCQ0+m0FJobywweei
 5w6pkUUHwXqKMwP1W12fl3bxtkhccuL/Vtv0CDuq86XYoyKfOrHAwtGvoyEMgtGmMW7E
 xxjsfBdfM9lE0UfErF5+KbqlQ6cuWZAsCqfiRcecdLanXf4g1I/jjtZLyuUi3mCQSYeW
 xhEA==
X-Gm-Message-State: AOAM530OVP9aPy0rodDUB9LdRKEN5/3getx5/Gt3n7F4gdHKTX9/HdGk
 qPGXcyEVHOl2OHvTGnNtUO0I4ee73Lf/Muh+
X-Google-Smtp-Source: ABdhPJzvT/ZlEfqgxAcgH92K0h8DlZLP1JqONyLOH87tppbgYxW9DPuab304ZhyFExvldGBnhee+oA==
X-Received: by 2002:adf:80c8:: with SMTP id 66mr4566237wrl.415.1603825223987; 
 Tue, 27 Oct 2020 12:00:23 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:23 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:33 +0200
Message-Id: <20201027185934.227040-16-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 15/16] selftests: net: bridge: add test
	for igmpv3 exclude timeout
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

Test that when a group in exclude mode expires it changes mode to
include and the blocked entries are deleted.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 49 ++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 45c5619666d8..db0a03e30868 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -3,7 +3,8 @@
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
 	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test v3exc_is_include_test \
-	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test v3exc_block_test"
+	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test v3exc_block_test \
+	   v3exc_timeout_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -574,6 +575,52 @@ v3exc_block_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3exc_timeout_test()
+{
+	RET=0
+	local X=("192.0.2.20" "192.0.2.30")
+
+	# GMI should be 3 seconds
+	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
+	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_ALLOW2" -q
+	sleep 3
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"include\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.1\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.1 entry still exists"
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.2\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.2 entry still exists"
+
+	check_sg_entries "allow" "${X[@]}"
+
+	check_sg_state 0 "${X[@]}"
+
+	check_sg_fwding 1 "${X[@]}"
+	check_sg_fwding 0 192.0.2.100
+
+	log_test "IGMPv3 group $TEST_GROUP exclude timeout"
+
+	ip link set dev br0 type bridge mcast_query_interval 12500 \
+					mcast_query_response_interval 1000
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A81F2A4CB3
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FA8A863D9;
	Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DRROXsQjs0X; Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B0C2863AE;
	Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DFE56C088B;
	Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 24319C0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1454286208
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MDJzQFdzRsbK for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2363A861EE
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:23 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id n15so19418120wrq.2
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eFw7qsj6z01pcgLzMm8dHLRPOHpj/X67em/halFVu3o=;
 b=mSA+X10FOUtdTGgVaa8szAyvp7xLUiw5xJzr/sxWIGAgUIFKLzjAPoBb0crIjNqKS7
 /cQeiw1EIWeX+FO/UOOS6nV318jIDXCdf3tWw2b3GzX2IL/sjdo9YdzEbfOsMYO3Zaan
 X81dEcprvdVUQHeGdEQCxubMYYam/pFIY/3YCOYVYIgOZ6/38bRrSslBWbvvrHJLzdKp
 /Q0IA5uyiNC8cKEWYELvM21d6Qt6Ej6O/1aAUbmzHHCh1jU0XH0JDTIUOqx/htH5OTDP
 rD+VUD0Y0fCR8JQ8DLXyJgRepqrkS6chRK4oaSrI3A1PVt/8n9anXUHNwgUTGQbrATpT
 0k4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eFw7qsj6z01pcgLzMm8dHLRPOHpj/X67em/halFVu3o=;
 b=e6hRUJ7cfVHbonmI7Pa80yxVf/rpkb04TNAWwU04S+lCCoJbe6w4ZsU2Kv+peV5Jng
 lnaO8QPmQo4HrW4kMoFq9RvI0SN9MGA3xys/mR7lFJke37ehty1jmDVpoD/xnuqbbNSn
 VDZ7KDFeHcDc8rbMlDRRS0DcXsEuQ9KeC3a3YH/CpV/Hza1F+ZDyEt5FMO0uxZUHkVBD
 udBI1AZ5U1yRl1C5Cj4VBYeNIsq1WOPR6tk9cVyfqLtmHiwVbNVb32SVsAYrVgWIU21g
 x2ZGexHl+6yVjdzZ4N2s4fFAzz/26m76Ev71AzHCzYLUxwTge0UoIWvumo1Oj3guuL4o
 Mc5g==
X-Gm-Message-State: AOAM530omZ76P72eOKRv+ghnjI1pxTD7eFhulmOn3/Fg81iR9ywCBZxl
 njSeZv+vGgkz6Oux2VKGVgOfBA==
X-Google-Smtp-Source: ABdhPJwD1UyhsS3G8BvW6xOfH7zUhBVgT+g24QU1NWMIxSbG8uUXSV7HTKtWK4yY2FNWkPJp5n9YtA==
X-Received: by 2002:adf:f64f:: with SMTP id x15mr18237203wrp.228.1604424261625; 
 Tue, 03 Nov 2020 09:24:21 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:20 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:00 +0200
Message-Id: <20201103172412.1044840-5-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 04/16] selftests: net: bridge: add initial
	MLDv2 include test
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

Add the initial setup for MLDv2 tests with the first test of a simple
is_include report. For MLDv2 we need to setup the bridge properly and we
also send the full precooked packets instead of relying on mausezahn to
fill in some parts. For verification we use the generic S,G state checking
functions from lib.sh.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_mld.sh

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
new file mode 100755
index 000000000000..3d0d579e4e03
--- /dev/null
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -0,0 +1,146 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+ALL_TESTS="mldv2include_test"
+NUM_NETIFS=4
+CHECK_TC="yes"
+TEST_GROUP="ff02::cc"
+TEST_GROUP_MAC="33:33:00:00:00:cc"
+
+# MLDv2 is_in report: grp ff02::cc is_include 2001:db8:1::1,2001:db8:1::2,2001:db8:1::3
+MZPKT_IS_INC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:fe:80:00:\
+00:00:00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:\
+00:05:02:00:00:00:00:8f:00:8e:d9:00:00:00:01:01:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:\
+00:00:00:00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:\
+00:00:00:00:00:00:02:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:03"
+
+source lib.sh
+
+h1_create()
+{
+	simple_if_init $h1 2001:db8:1::1/64
+}
+
+h1_destroy()
+{
+	simple_if_fini $h1 2001:db8:1::1/64
+}
+
+h2_create()
+{
+	simple_if_init $h2 2001:db8:1::2/64
+}
+
+h2_destroy()
+{
+	simple_if_fini $h2 2001:db8:1::2/64
+}
+
+switch_create()
+{
+	ip link add dev br0 type bridge mcast_snooping 1 mcast_query_response_interval 100 \
+					mcast_mld_version 2 mcast_startup_query_interval 300 \
+					mcast_querier 1
+
+	ip link set dev $swp1 master br0
+	ip link set dev $swp2 master br0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 up
+	ip link set dev $swp2 up
+
+	# make sure a query has been generated
+	sleep 5
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
+mldv2include_prepare()
+{
+	local host1_if=$1
+	local X=("2001:db8:1::1" "2001:db8:1::2" "2001:db8:1::3")
+
+	ip link set dev br0 type bridge mcast_mld_version 2
+	check_err $? "Could not change bridge MLD version to 2"
+
+	$MZ $host1_if $MZPKT_IS_INC -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .source_list != null)" &>/dev/null
+	check_err $? "Missing *,G entry with source list"
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"include\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+	brmcast_check_sg_entries "is_include" "${X[@]}"
+}
+
+mldv2cleanup()
+{
+	local port=$1
+
+	bridge mdb del dev br0 port $port grp $TEST_GROUP
+	ip link set dev br0 type bridge mcast_mld_version 1
+}
+
+mldv2include_test()
+{
+	RET=0
+	local X=("2001:db8:1::1" "2001:db8:1::2" "2001:db8:1::3")
+
+	mldv2include_prepare $h1
+
+	brmcast_check_sg_state 0 "${X[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}"
+	brmcast_check_sg_fwding 0 "2001:db8:1::100"
+
+	log_test "MLDv2 report $TEST_GROUP is_include"
+
+	mldv2cleanup $swp1
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
2.25.4


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A832E29C7F1
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CBF0869A0;
	Tue, 27 Oct 2020 19:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uniV62Ol9TQo; Tue, 27 Oct 2020 19:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 920EA869A7;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A010C0051;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89FACC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8661585329
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HgJxox62r1wD for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A40CE85040
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:13 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id k18so2540375wmj.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pTc77R4pvCO6vD2QlG7YIVyPR4T/3LpBX7VL/VP1Nug=;
 b=docZ8N+iqBRaKPIQhMh5bpZeYwNCA11NL3jzp+RmYXhx/nnbloIoK8ZWsofY54lkSi
 OPccisFD1IY4Cur2HWYvcbQlhhl3cwjwztpEHFHRa6d1NwucsOzkcYxFFbjb+g6D1RLP
 5hsj4wsMfdo3OalkSx0tll9DTDcGKhsRb52eXYfuxh2kynfpp+/w94w9mpNXtZUw4be1
 2/wpilNZYVqP9c3h4/0TXDUq+ncNjvvnbz/+Op8mscApAAkxsMXR2dMQRmURyZtRK54c
 diukgujEuDxNrXsfU6saB19jv7EkLe3gilQDfjB0X3FByRzjWav6cIKZbkzL8BFWfgTC
 kemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pTc77R4pvCO6vD2QlG7YIVyPR4T/3LpBX7VL/VP1Nug=;
 b=ryQYG3fcq2sGa8lDgYuCA1juWKyt5ybkdcpBAe0jfOY6x8jEDYczRXafhUj37GSlNf
 kDt5egHyebZ5qCus0nhJKzoF/zv+4+K6Ans3S0df+bN14UUgK/lhpRI/FqfCvpCCSNd8
 5AqJFIqjXnkIhhliRLBHyEmskBG+Ic5JLCgJQ6cD3hvRdujTzdYXvqWTJ5r+mqcQdnLY
 m/FCVtaoctHrHT/2wI+PiIjpggw6rIYjMNSwcnNMN5UBuyUqSM3tCCn5+7L8jkOyPFSZ
 pSyfV+G8R3Z9LkGfR66QTwpkJ6hO4Nax7EK02SmnDcDLU/5HHR6vg3qXdIVAg32ZCCp4
 gFKg==
X-Gm-Message-State: AOAM530ske+EOHqpBc8sW8EzLl88ZqimoryMcw7rJNTA+kze0mfR/njk
 IeeavglkF34ZJyWBf/pkIacs5A==
X-Google-Smtp-Source: ABdhPJyOhYhUsRfgbvQiyEdCo4xyzoFNA+4GrRwG9tUfLK9m80zXpr3OCn6kFdrwF34lYyrfIt9rzg==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr4371742wmj.102.1603825212082; 
 Tue, 27 Oct 2020 12:00:12 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:11 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:23 +0200
Message-Id: <20201027185934.227040-6-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 05/16] selftests: net: bridge: add tests
	for igmpv3 is_include and inc -> allow reports
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

First we test is_include/include mode then we build on that with allow
effectively achieving:
  state          report        result                 action
 INCLUDE (A)    ALLOW (B)    INCLUDE (A+B)           (B)=GMI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 82 ++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 19c1f46d1151..e9999e346ea6 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -1,11 +1,20 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="v2reportleave_test"
+ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
 TEST_GROUP_MAC="01:00:5e:0a:0a:0a"
+
+ALL_GROUP="224.0.0.1"
+ALL_MAC="01:00:5e:00:00:01"
+
+# IGMPv3 is_in report: grp 239.10.10.10 is_include 192.0.2.1,192.0.2.2,192.0.2.3
+MZPKT_IS_INC="22:00:9d:de:00:00:00:01:01:00:00:03:ef:0a:0a:0a:c0:00:02:01:c0:00:02:02:c0:00:02:03"
+# IGMPv3 allow report: grp 239.10.10.10 allow 192.0.2.10,192.0.2.11,192.0.2.12
+MZPKT_ALLOW="22:00:99:c3:00:00:00:01:05:00:00:03:ef:0a:0a:0a:c0:00:02:0a:c0:00:02:0b:c0:00:02:0c"
+
 source lib.sh
 
 h1_create()
@@ -210,6 +219,77 @@ check_sg_state()
 	done
 }
 
+v3include_prepare()
+{
+	local host1_if=$1
+	local mac=$2
+	local group=$3
+	local X=("192.0.2.1" "192.0.2.2" "192.0.2.3")
+
+	ip link set dev br0 type bridge mcast_igmp_version 3
+	check_err $? "Could not change bridge IGMP version to 3"
+
+	$MZ $host1_if -b $mac -c 1 -B $group -t ip "proto=2,p=$MZPKT_IS_INC" -q
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
+	check_sg_entries "is_include" "${X[@]}"
+}
+
+v3cleanup()
+{
+	local port=$1
+	local group=$2
+
+	bridge mdb del dev br0 port $port grp $group
+	ip link set dev br0 type bridge mcast_igmp_version 2
+}
+
+v3include_test()
+{
+	RET=0
+	local X=("192.0.2.1" "192.0.2.2" "192.0.2.3")
+
+	v3include_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	check_sg_state 0 "${X[@]}"
+
+	check_sg_fwding 1 "${X[@]}"
+	check_sg_fwding 0 "192.0.2.100"
+
+	log_test "IGMPv3 report $TEST_GROUP is_include"
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
+v3inc_allow_test()
+{
+	RET=0
+	local X=("192.0.2.10" "192.0.2.11" "192.0.2.12")
+
+	v3include_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_ALLOW" -q
+	sleep 1
+	check_sg_entries "allow" "${X[@]}"
+
+	check_sg_state 0 "${X[@]}"
+
+	check_sg_fwding 1 "${X[@]}"
+	check_sg_fwding 0 "192.0.2.100"
+
+	log_test "IGMPv3 report $TEST_GROUP include -> allow"
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


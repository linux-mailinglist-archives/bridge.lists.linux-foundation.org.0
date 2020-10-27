Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B02F229C7F3
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 632F186381;
	Tue, 27 Oct 2020 19:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYgAAVKK4Qoz; Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49AA186388;
	Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 32133C0859;
	Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E872BC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C867C2E0F1
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvmWGd4Eml8n for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id A7FA92E146
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:18 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id t3so154809wmi.3
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Asc85PeAu34wOOUcZ5M4BI/jMYTqZqHRSKn8fRmFp+Q=;
 b=NRIRVoObB74sv3K3+hxR4HW1wX78cjMhupA5bRlj+8nJTuZ9MYgojs81gDBM/niY8o
 Fj8uKXZvLxaYYc+zsO30MLCgqwiLldUeQcuQSnmi1cXFKwjixQtgv4YmXz+GUnIDuoXD
 hQPQRuynPvAlIS7vM6kQXZXmB1vm2wxxnunCFknDQ5agLf8twnBnsjpVZLtZCBbNlL9/
 9a/xzzZoOdyfHLU4GBQhlHP2kGjZHetDc+miIswIDLqIic8HaSiDVO2y4t6YoR4W560W
 /odot+qz7elCLafQIH1RKcnCowgo1G7Fo2G+mU5RGZoiOmXiBreP5RzpM/e8lSeBhKGO
 tkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Asc85PeAu34wOOUcZ5M4BI/jMYTqZqHRSKn8fRmFp+Q=;
 b=WiWSckr6jqHdl9A5xn2I7C4BDHZBsmykWSkXP2ii4nf3RFXfFrYIA1wNRUFr58Dbs8
 Tvk0IAXDe0hRNBPXFzPR6FEEEj2IRJda7slEvnX9mfq+nXEx3OS1NFhYVWC0MFp2PfuD
 7ytMFjR6FS76rN92PTBoE2I0umejLsEjmRnp9mNRu3jSl/b4FX4Jijgthh/9pG/zWzT/
 HHy0XYuOptpzRjRN1/W9lLgF3HZAkb0qboXjxGwMSO0NbnOvyXUQheaxlOXMfg93kv/a
 GRLwQeeP0KBuFVbikbOj3JpfXjtdykLCY6+UoEhuftzPIrI70Mx3HpiPcd96AHD2SivA
 FPwg==
X-Gm-Message-State: AOAM533C7DsbwRzUNCHRDb0iYYYjyzo3fVozZf7ayY6bvUY1k2NOL/yp
 ImT6DhqefEp64Ax9bVL7MVUM0A==
X-Google-Smtp-Source: ABdhPJz6HKK/h/k1yqee0HneGTNOMuCc/QnrFT6p+vKJyGWponzQy7Xl18wdF9hms41zfsEiVhmL5Q==
X-Received: by 2002:a7b:cf04:: with SMTP id l4mr4297731wmg.33.1603825217071;
 Tue, 27 Oct 2020 12:00:17 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:16 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:27 +0200
Message-Id: <20201027185934.227040-10-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 09/16] selftests: net: bridge: add test
	for igmpv3 exc -> allow report
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

The test checks for the following case:
   state          report        result                  action
  EXCLUDE (X,Y)  ALLOW (A)     EXCLUDE (X+A,Y-A)       (A)=GMI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 83 +++++++++++++------
 1 file changed, 59 insertions(+), 24 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 36f10a3168cc..d786e75abe2c 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
-	   v3inc_is_exclude_test v3inc_to_exclude_test"
+	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -17,6 +17,8 @@ MZPKT_IS_INC="22:00:9d:de:00:00:00:01:01:00:00:03:ef:0a:0a:0a:c0:00:02:01:c0:00:
 MZPKT_IS_INC2="22:00:9d:c3:00:00:00:01:01:00:00:03:ef:0a:0a:0a:c0:00:02:0a:c0:00:02:0b:c0:00:02:0c"
 # IGMPv3 allow report: grp 239.10.10.10 allow 192.0.2.10,192.0.2.11,192.0.2.12
 MZPKT_ALLOW="22:00:99:c3:00:00:00:01:05:00:00:03:ef:0a:0a:0a:c0:00:02:0a:c0:00:02:0b:c0:00:02:0c"
+# IGMPv3 allow report: grp 239.10.10.10 allow 192.0.2.20,192.0.2.30
+MZPKT_ALLOW2="22:00:5b:b4:00:00:00:01:05:00:00:02:ef:0a:0a:0a:c0:00:02:14:c0:00:02:1e"
 # IGMPv3 is_ex report: grp 239.10.10.10 is_exclude 192.0.2.1,192.0.2.2,192.0.2.20,192.0.2.21
 MZPKT_IS_EXC="22:00:da:b6:00:00:00:01:02:00:00:04:ef:0a:0a:0a:c0:00:02:01:c0:00:02:02:c0:00:02:14:c0:00:02:15"
 # IGMPv3 to_ex report: grp 239.10.10.10 to_exclude 192.0.2.1,192.0.2.20,192.0.2.30
@@ -250,6 +252,38 @@ v3include_prepare()
 	check_sg_entries "is_include" "${X[@]}"
 }
 
+v3exclude_prepare()
+{
+	local host1_if=$1
+	local mac=$2
+	local group=$3
+	local pkt=$4
+	local X=("192.0.2.1" "192.0.2.2")
+	local Y=("192.0.2.20" "192.0.2.21")
+
+	v3include_prepare $host1_if $mac $group
+
+	$MZ $host1_if -c 1 -b $mac -B $group -t ip "proto=2,p=$MZPKT_IS_EXC" -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"exclude\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	check_sg_entries "is_exclude" "${X[@]}" "${Y[@]}"
+
+	check_sg_state 0 "${X[@]}"
+	check_sg_state 1 "${Y[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.3\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.3 entry still exists"
+}
+
 v3cleanup()
 {
 	local port=$1
@@ -321,30 +355,8 @@ v3inc_is_include_test()
 v3inc_is_exclude_test()
 {
 	RET=0
-	local X=("192.0.2.1" "192.0.2.2")
-	local Y=("192.0.2.20" "192.0.2.21")
-
-	v3include_prepare $h1 $ALL_MAC $ALL_GROUP
-
-	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_IS_EXC" -q
-	sleep 1
-	bridge -j -d -s mdb show dev br0 \
-		| jq -e ".[].mdb[] | \
-			 select(.grp == \"$TEST_GROUP\" and \
-				.source_list != null and .filter_mode == \"exclude\")" &>/dev/null
-	check_err $? "Wrong *,G entry filter mode"
-
-	check_sg_entries "is_exclude" "${X[@]}" "${Y[@]}"
 
-	check_sg_state 0 "${X[@]}"
-	check_sg_state 1 "${Y[@]}"
-
-	bridge -j -d -s mdb show dev br0 \
-		| jq -e ".[].mdb[] | \
-			 select(.grp == \"$TEST_GROUP\" and \
-				.source_list != null and
-				.source_list[].address == \"192.0.2.3\")" &>/dev/null
-	check_fail $? "Wrong *,G entry source list, 192.0.2.3 entry still exists"
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
 
 	check_sg_fwding 1 "${X[@]}" 192.0.2.100
 	check_sg_fwding 0 "${Y[@]}"
@@ -401,6 +413,29 @@ v3inc_to_exclude_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3exc_allow_test()
+{
+	RET=0
+	local X=("192.0.2.1" "192.0.2.2" "192.0.2.20" "192.0.2.30")
+	local Y=("192.0.2.21")
+
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_ALLOW2" -q
+	sleep 1
+	check_sg_entries "allow" "${X[@]}" "${Y[@]}"
+
+	check_sg_state 0 "${X[@]}"
+	check_sg_state 1 "${Y[@]}"
+
+	check_sg_fwding 1 "${X[@]}" 192.0.2.100
+	check_sg_fwding 0 "${Y[@]}"
+
+	log_test "IGMPv3 report $TEST_GROUP exclude -> allow"
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


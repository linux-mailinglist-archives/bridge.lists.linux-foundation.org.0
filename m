Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1590129C7F2
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0174863AC;
	Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCfbfgh2qYbc; Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 146D48630F;
	Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E8C68C0893;
	Tue, 27 Oct 2020 19:00:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E279C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B3672E10B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qy+NZGiY4-0F for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BBED2E0F1
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n18so3129521wrs.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JzKJIP19qAr7tycB0lsJIxtVUIVBOP2rnZUT6EMgcEg=;
 b=oolbQbp+RAdedRw2nl+g+MjzgZviiwdPjEqDHPDZCSGcD3xrCoiLMsyr3koqNz8Ktw
 CLZzaS0+/Tqq85mwNfhRvB7Ss1MgrTNj4FrzV+k5qb6Wjp3iL4yvaLLsDJ/TRdi83ELD
 RhQJ2kOtqYB8yjj6WXeHSG3RlK8TRnBHX9PZvBKTA9KNcX6feOUfAa73W2GqEKR5Y2Ca
 SmgigMaPSmu1cabKPV7Z2fZt5zXoVYVkaa3ebFI1GMC4QY+7+UvWWVPMP8wUHGY6qOhg
 b6VUwZc3qGoNXesQZStDnyF51OyheA0lpUR3MVCdaPOyuDUR7GLXgy4hEC0tElvRBPKV
 dy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JzKJIP19qAr7tycB0lsJIxtVUIVBOP2rnZUT6EMgcEg=;
 b=Z8bmnEfyTHjZIwokWspGy3GeqZdr9yIRVFFgx5YyxyGMk08aHmwCxeolSLpBdTMF/q
 Amo0hFGCCkDyBw9Tfo+JZ3G9DuSmjbaoOOWkT1cr79h5MNMiTzJJrDYlksnwW37crKuK
 KownedHtfuHQtfq/A1MiLyTDc4QPWMumPJ/ZPaae63dTIpXhxl7z1UVy4DrmfmbxQvaT
 8tEvlLtsSELT4fnljKsgxJKsD36NXC5dkfatBOscLsM89V2AzxOYDk0b+JvVh/OJbbDm
 gXzftoHb/lKOQQnqCBOjXbOQyPiGhUfr1YbGebXDFYmSP67w7PY15pDxOVgo+89J21J2
 c9ag==
X-Gm-Message-State: AOAM533Jub278FjwXLlkSK6Y+jQMFzuKZjORe40A6i/d7icWca4En/Ts
 SfvYwSDskhx9sFCUdC88bv3+/vNpxCFdahrF
X-Google-Smtp-Source: ABdhPJzgvwtSVBngsQIJw0RAb4dfZsKGeznf5cPLM5c7KM64w0zdnWtACQQSyHWUPLNLlOKVbBcP8Q==
X-Received: by 2002:adf:f4d2:: with SMTP id h18mr4229152wrp.99.1603825215763; 
 Tue, 27 Oct 2020 12:00:15 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:15 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:26 +0200
Message-Id: <20201027185934.227040-9-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/16] selftests: net: bridge: add test
	for igmpv3 inc -> to_exclude report
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
 INCLUDE (A)    TO_EX (B)     EXCLUDE (A*B,B-A)       (B-A)=0
                                                      Delete (A-B)
                                                      Send Q(G,A*B)
                                                      Group Timer=GMI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 51 ++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 34d2c4370fa6..36f10a3168cc 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
-	   v3inc_is_exclude_test"
+	   v3inc_is_exclude_test v3inc_to_exclude_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -19,6 +19,8 @@ MZPKT_IS_INC2="22:00:9d:c3:00:00:00:01:01:00:00:03:ef:0a:0a:0a:c0:00:02:0a:c0:00
 MZPKT_ALLOW="22:00:99:c3:00:00:00:01:05:00:00:03:ef:0a:0a:0a:c0:00:02:0a:c0:00:02:0b:c0:00:02:0c"
 # IGMPv3 is_ex report: grp 239.10.10.10 is_exclude 192.0.2.1,192.0.2.2,192.0.2.20,192.0.2.21
 MZPKT_IS_EXC="22:00:da:b6:00:00:00:01:02:00:00:04:ef:0a:0a:0a:c0:00:02:01:c0:00:02:02:c0:00:02:14:c0:00:02:15"
+# IGMPv3 to_ex report: grp 239.10.10.10 to_exclude 192.0.2.1,192.0.2.20,192.0.2.30
+MZPKT_TO_EXC="22:00:9a:b1:00:00:00:01:04:00:00:03:ef:0a:0a:0a:c0:00:02:01:c0:00:02:14:c0:00:02:1e"
 
 source lib.sh
 
@@ -352,6 +354,53 @@ v3inc_is_exclude_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3inc_to_exclude_test()
+{
+	RET=0
+	local X=("192.0.2.1")
+	local Y=("192.0.2.20" "192.0.2.30")
+
+	v3include_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_TO_EXC" -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"exclude\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	check_sg_entries "to_exclude" "${X[@]}" "${Y[@]}"
+
+	check_sg_state 0 "${X[@]}"
+	check_sg_state 1 "${Y[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.2\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.2 entry still exists"
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.21\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.21 entry still exists"
+
+	check_sg_fwding 1 "${X[@]}" 192.0.2.100
+	check_sg_fwding 0 "${Y[@]}"
+
+	log_test "IGMPv3 report $TEST_GROUP include -> to_exclude"
+
+	ip link set dev br0 type bridge mcast_last_member_interval 100
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD082A4CBD
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5730486449;
	Tue,  3 Nov 2020 17:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPxG-bqugD8O; Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0FC786451;
	Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B33F3C0051;
	Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67B2EC088B
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 45C138644F
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwnvBJqNbXbS for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67CEC86447
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:33 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h62so91047wme.3
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LpHznR+IRzgzH6in5jT7JKWaQCGzhh8Iu4vmSBYkhkE=;
 b=tcBSgeO6Y6En6bJnm5gjagFeSQzIw2tQJ55bKAjwjyblN3cms+MzI0JryX7VsHZ0ER
 DV9UwwGbFCmrrzXu8Vt9sEUiM7Ut8M5lbWHAXWs+QQF6RsiiD4gjJjrQDt3AohxNlVq0
 1PfbySXy8TZ2UnhLlXNnEruuk8Gea+RKHpgift8LJ2sBLowOCqm9lbe3R6WmeDAGlsJk
 4l0ByErFqMZliMwgtq53bgGPOmQf/1RkG+i0m09Hwsmy4uuRQYkAtzwzsedzq9qEr46T
 b1AKginq/caTTSUS7Hq0WOdY7oDypFT269EmLeniwce5xnbgtxMmFS9on43WqLh47GG3
 m2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LpHznR+IRzgzH6in5jT7JKWaQCGzhh8Iu4vmSBYkhkE=;
 b=GEvgFblhedFnl11ABB1B6nsfD/fsFOIuIT8vyM8t8Fi8stTPOM7QTuaECFwyM00+C8
 xGgxaELLO2QuZb09CyYnxK5pnXZmnKC2ZNu2G8LjLJzBVjQpjyKHltvH6F0Vd1N9oKka
 pN5M4V1i4DhanbAFvlsk0fKyjw8ucS7J9whpu38r7oKlipdsSdiO6BJF3ZqCfT7g8iO0
 G0UDoWKBycC2k1X/wdGk0uT4goohIvkIXouqXUlZddNizIzH3ppXMLErMMea2+dLPLeI
 u2FpnmrE3Igxir1/hP69EE3LelIopCBZ1Dna31/A1yrr5DMh8NORJd4sWOxOh8fIwEPJ
 1itg==
X-Gm-Message-State: AOAM533jco3e6y/Amn6VaCI831rumpj3iyV1tfJk+SoYRibcYrp6sk2H
 se73hrSVK8OaQSpZ2Qfge4sBJw==
X-Google-Smtp-Source: ABdhPJzlowO5W6emfveN52bPRVddvBFLSj8d6aR76y/8zs3oN46MDdf4d8XaW0c3FaLbvwaZEN/Q7g==
X-Received: by 2002:a1c:87:: with SMTP id 129mr249691wma.34.1604424271757;
 Tue, 03 Nov 2020 09:24:31 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:31 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:10 +0200
Message-Id: <20201103172412.1044840-15-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 14/16] selftests: net: bridge: add test
	for mldv2 exc -> block report
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
   Router State  Report Received  New Router State     Actions
   EXCLUDE (X,Y)   BLOCK (A)      EXCLUDE (X+(A-Y),Y)  (A-X-Y) =
                                                            Filter Timer
                                                       Send Q(MA,A-Y)

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index a3c405b2fd6f..c498e51b8d2b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -3,7 +3,8 @@
 
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
 	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test \
-	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test mldv2inc_block_test"
+	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test mldv2inc_block_test \
+	   mldv2exc_block_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -444,6 +445,34 @@ mldv2inc_block_test()
 	mldv2cleanup $swp1
 }
 
+mldv2exc_block_test()
+{
+	RET=0
+	local X=("2001:db8:1::1" "2001:db8:1::2" "2001:db8:1::30")
+	local Y=("2001:db8:1::20" "2001:db8:1::21")
+
+	mldv2exclude_prepare $h1
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 $MZPKT_BLOCK -q
+	sleep 1
+	brmcast_check_sg_entries "block" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP exclude -> block"
+
+	ip link set dev br0 type bridge mcast_last_member_interval 100
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


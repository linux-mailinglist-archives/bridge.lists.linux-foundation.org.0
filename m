Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2452A4CB7
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1842D214EC;
	Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7+zmmebG3Wh; Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8FEA421080;
	Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81C54C1AD5;
	Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 13178C0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ECB98214D2
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CktnD3regjLO for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 24699207EF
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id h62so90827wme.3
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1i5q0YkqyzRPr4Kh/KGjP2SBAhGipIHGU89Hep2TGE0=;
 b=1e+O5yiBFEYPKp1Jd9+xgaLFeAjF+kkDWYgx4mFAh7dqU582fGfwPeIiFnvu79X4Mj
 9tJKUhZonsunlHvi0qIwvJrqXvSyFXsiuxj2uvPt2HKGKYEb0Yxi74jThztzQt8vIH6q
 HjJCrvW500Ue1me2PhW5EmePy53bAUVbMMZgsBPmSLJ9GOUaGgmTXbYdImnf4LlcaL0g
 q8e7RP+ryroHh2Yu6PK4REjdmjFkdHFiupaYoS0wMdp7B7l5hx+9FFbKA3QSiWuRbGJI
 7QZklcypiozBHFxIfbA6FkMfuaL7kV0MSw3H8mBsoW+OzH3bjPCttao0asgudyEZvJLH
 1Fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1i5q0YkqyzRPr4Kh/KGjP2SBAhGipIHGU89Hep2TGE0=;
 b=oLuawGiGxOPcN87Jy4UfzluJugPjV7ALGtwBo0MK6OmFpkncNDhc5/uDMl1KD7DvHh
 xoRqecRq5sR2S/AR3HKpGAl5t23tr+JLYrojsnxeIVqGRkYvHmnrsfJjMDJmdk7G4T1E
 H0mv0AOFXhtZ8qCoQRZEuwT+IfmZb9RDhCguDEEsGF5PG8BqGukuWEoB5wmUwqiZEtto
 EiObSwButRoCHlsA8uAQvRqjjlErmctYjUI/qXAr3FEAelqLo3S7lSbrmL/Ga0ojtRei
 p4ruqpzcrY0Hn51ycR0xNUJcrx11HA67ZOSBC0lwh9KDxob+Q/UbwsTpro1OCWzbis2Q
 Y9iQ==
X-Gm-Message-State: AOAM530/uKsqcu2hAJIw9iG4uB/3hYxB9NzCVV9UhsAFRHr33JXMa+pn
 bsw1S7DHq5GN39PUK3XKf1s24A==
X-Google-Smtp-Source: ABdhPJzEHscs3jX6/BfAprDhr68pfn7/itqEpzTTrSfwePJ/Esz9/TA4fPMWGb3bzGgPCmqNNow1XQ==
X-Received: by 2002:a1c:8194:: with SMTP id c142mr217506wmd.94.1604424266561; 
 Tue, 03 Nov 2020 09:24:26 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:26 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:05 +0200
Message-Id: <20201103172412.1044840-10-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 09/16] selftests: net: bridge: add test
	for mldv2 exc -> allow report
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
   EXCLUDE (X,Y)   ALLOW (A)      EXCLUDE (X+A,Y-A)    (A)=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index 571b01ef672c..97882c13f278 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
-	   mldv2inc_to_exclude_test"
+	   mldv2inc_to_exclude_test mldv2exc_allow_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -26,6 +26,11 @@ MZPKT_ALLOW="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:f
 02:00:00:00:00:8f:00:8a:ac:00:00:00:01:05:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:\
 00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:10:20:01:0d:b8:00:01:00:00:00:00:00:00:00:\
 00:00:11:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:12"
+# MLDv2 allow report: grp ff02::cc allow 2001:db8:1::20,2001:db8:1::30
+MZPKT_ALLOW2="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:44:00:01:fe:80:00:00:00:\
+00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:\
+00:00:00:8f:00:b8:5a:00:00:00:01:05:00:00:02:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:30"
 # MLDv2 is_ex report: grp ff02::cc is_exclude 2001:db8:1::1,2001:db8:1::2,2001:db8:1::20,2001:db8:1::21
 MZPKT_IS_EXC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:64:00:01:fe:80:00:00:00:\
 00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:\
@@ -296,6 +301,29 @@ mldv2inc_to_exclude_test()
 	mldv2cleanup $swp1
 }
 
+mldv2exc_allow_test()
+{
+	RET=0
+	local X=("2001:db8:1::1" "2001:db8:1::2" "2001:db8:1::20" "2001:db8:1::30")
+	local Y=("2001:db8:1::21")
+
+	mldv2exclude_prepare $h1
+
+	$MZ $h1 -c 1 $MZPKT_ALLOW2 -q
+	sleep 1
+	brmcast_check_sg_entries "allow" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP exclude -> allow"
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


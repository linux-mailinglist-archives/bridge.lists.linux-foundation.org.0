Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95022A4CBB
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84B4787478;
	Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQMSHp3tsCuB; Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48A5E87467;
	Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3A337C0051;
	Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05A7AC0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E97E087462
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YY-TmwFLqMzN for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 306A187454
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id k18so79755wmj.5
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bc4VDKLFfRtDvy2e5Zsnlq8PlNzZNU+VRXlP4XcvGWU=;
 b=X4427bX6KLsZipwexz/bDyeMNMiQP7dxD1gBoGluxdYi4uUpRPahjavU8I2OPUbaLU
 CYNGUaBqR7oEu0AEqgLZgAh4ONIL3jiT+pCEO/YaLn88SBrNNr07dMHFEDowxZtTUcDs
 VmWswbOVWjzDaZmSaHhwUK+r5MFFv/n9AtV/dRWF+wnlEb8QRvM6GuEy6ZjMOf+UKqBX
 VW+uhzXEijsYEvQ+U4HPtFcfjEOeQHAi39ArEGi88eZEQLxwT1gaNIYeFnfbhm4KHGUa
 gT4AaKo38jLrPjdeGslVvnd56JcTXap7LpOvbh9GS8C6FhxfKWE/lqud+3nAF7Rg2Vdj
 Qq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bc4VDKLFfRtDvy2e5Zsnlq8PlNzZNU+VRXlP4XcvGWU=;
 b=C5r5xSMk7tsfJzuAWmly7roy6uC/j99jAJzjJMCAJNEPyIXSLlKwEo4gwbiVlp5ePy
 FJMjLcDuSktGNbiyel7qrRmFpTU77TNeUozE46KMnim3lDlpYdujKLbcpdXMdOcuX20Z
 97g2dsJVB6AM8nIvhFC0BLJBuRAWbuOX0A9rIhl36CVtnLtA7euGem37u2Cf7pd9jJKK
 KsQ3Nwg35u6KpJAaUYOujDhOMd9rOdzOai+dSSKMsfzttwQzYmWfjjon2ELFReSRp2zv
 S0B2+cQGrWeVhrh1JvUGpFryvF8YHxJql5SX1vTR4m8uTb9Rpui0ypdcgy0KRqQdcZoY
 oluA==
X-Gm-Message-State: AOAM530DA+PzV6xpMoHyUFW+VCNr3OoYfInjwAnpBLkier/4q7wAwlcK
 /hGcextC/wgqnHyDsIbkv+Meig==
X-Google-Smtp-Source: ABdhPJxFu4be/8zPQYWMfSKDaM79AsTb/5bF87GhkTA9eWGRnR31eTjQ3S1PzIeG+yZKSzv0Kj9+nA==
X-Received: by 2002:a1c:3846:: with SMTP id f67mr200371wma.33.1604424270730;
 Tue, 03 Nov 2020 09:24:30 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:30 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:09 +0200
Message-Id: <20201103172412.1044840-14-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 13/16] selftests: net: bridge: add test
	for mldv2 inc -> block report
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
   INCLUDE (A)     BLOCK (B)      INCLUDE (A)          Send Q(MA,A*B)

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 37 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index 024fa22fa3c2..a3c405b2fd6f 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
 	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test \
-	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test"
+	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test mldv2inc_block_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -54,6 +54,12 @@ MZPKT_TO_EXC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:
 00:00:00:8f:00:8b:8e:00:00:00:01:04:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
 01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:\
 01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:30"
+# MLDv2 block report: grp ff02::cc block 2001:db8:1::1,2001:db8:1::20,2001:db8:1::30
+MZPKT_BLOCK="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:fe:80:00:00:00:00:\
+00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:00:\
+00:00:8f:00:89:8e:00:00:00:01:06:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:01:\
+0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:01:\
+0d:b8:00:01:00:00:00:00:00:00:00:00:00:30"
 
 source lib.sh
 
@@ -409,6 +415,35 @@ mldv2exc_to_exclude_test()
 	mldv2cleanup $swp1
 }
 
+mldv2inc_block_test()
+{
+	RET=0
+	local X=("2001:db8:1::2" "2001:db8:1::3")
+
+	mldv2include_prepare $h1
+
+	$MZ $h1 -c 1 $MZPKT_BLOCK -q
+	# make sure the lowered timers have expired (by default 2 seconds)
+	sleep 3
+	brmcast_check_sg_entries "block" "${X[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::1\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::1 entry still exists"
+
+	brmcast_check_sg_fwding 1 "${X[@]}"
+	brmcast_check_sg_fwding 0 2001:db8:1::100
+
+	log_test "MLDv2 report $TEST_GROUP include -> block"
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


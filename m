Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B02A4CB8
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12D5987454;
	Tue,  3 Nov 2020 17:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uw7L3L8i7eU6; Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6EEB87456;
	Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9411C088B;
	Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 794F8C0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6838787455
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t+U+a08mj7TD for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1ADC287454
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g12so19345247wrp.10
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tV29GM//sIrAknsIvkAwGZRgs3V5x1gFc989PRAg+Es=;
 b=HUXpz6Ox1VBFdcZxZo7EdlLQCZLYkBlUkEJ4y0dzECnfeffh+UpLaPHUJB0o7TeZ+L
 iq4rBSMNtJ969RApzOpu007wo9r51h7SHr8MtNd7kyhQ7ZvP/sHgZisW5CD2YUX1/gEd
 BaVQ/FFWony82YeLurWlb8hhj5YCjkxZ7ZmW1bRdWNOt1VjQ7QwFQVrLkzsu2GWrPBgj
 d4Y+MRb7dMggDohiEh47cTnJSQrllwsYvXtoO3Pa9tTioMtr//t1j7uCgRyKCnHhmqwO
 cS7pWhKfsSvdkKKKd9mIBo05cVCGybwJMkMQVgOBs9kuasrdk40Zp13NyK+tQqfUYcVY
 yHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tV29GM//sIrAknsIvkAwGZRgs3V5x1gFc989PRAg+Es=;
 b=ZbOMvXWymf4JMINKUUXkyk4vxrSCvDgW5V0tOjvBiysCiTjEKeFKqYEiewQvnxzb54
 yaKk31N59Z0D2U1pHP9xJxCxRgdYu+45oaIP5pNZBbzl4LJBrNrxsW9B9SaA9xk92mCU
 54dWwlyKj+1oo2K0+uIUKcwdYCsxO92FMwlaQk8ROCNIp4UfxkEk3VMb8Xp8BdAwXf5a
 jRtDIs8nrCSyhPiBSHsxZXQNKlZ4Pq6S0at4AAqGn3nBVsWyj7qGbTjOLI8Oarn2fHG8
 wana/MBCJ5CneGOIU/iAUPMzzD5zQE9gzxIcRJkmmyLf00lIwaNKh3slZogPJemlmpjR
 ga2A==
X-Gm-Message-State: AOAM531QhJ7cSJ7xHstppQXzQyO7vY3TBqepIAGzX/tt+PDjKVD62s1b
 KSLeky/EsZIMpqMrEhNp3Ohk2A==
X-Google-Smtp-Source: ABdhPJzc3oEvLw8t4gPk7rx7Z7lTlYtrdc2Qxgz0KFGXstrWC03ROVNpyCS5xr3ri155r0nlYGNxNA==
X-Received: by 2002:adf:a50e:: with SMTP id i14mr27882952wrb.121.1604424267571; 
 Tue, 03 Nov 2020 09:24:27 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:27 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:06 +0200
Message-Id: <20201103172412.1044840-11-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 10/16] selftests: net: bridge: add test
	for mldv2 exc -> is_include report
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
   EXCLUDE (X,Y)     IS_IN (A)     EXCLUDE (X+A, Y-A)  (A)=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index 97882c13f278..bae865b5bc8c 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
-	   mldv2inc_to_exclude_test mldv2exc_allow_test"
+	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -20,6 +20,11 @@ MZPKT_IS_INC2="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01
 05:02:00:00:00:00:8f:00:8e:ac:00:00:00:01:01:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:\
 00:00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:10:20:01:0d:b8:00:01:00:00:00:00:00:00:\
 00:00:00:11:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:12"
+# MLDv2 is_in report: grp ff02::cc is_include 2001:db8:1::20,2001:db8:1::30
+MZPKT_IS_INC3="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:44:00:01:fe:80:00:00:00:\
+00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:\
+00:00:00:8f:00:bc:5a:00:00:00:01:01:00:00:02:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:30"
 # MLDv2 allow report: grp ff02::cc allow 2001:db8:1::10,2001:db8:1::11,2001:db8:1::12
 MZPKT_ALLOW="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:fe:80:00:00:\
 00:00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:\
@@ -324,6 +329,29 @@ mldv2exc_allow_test()
 	mldv2cleanup $swp1
 }
 
+mldv2exc_is_include_test()
+{
+	RET=0
+	local X=("2001:db8:1::1" "2001:db8:1::2" "2001:db8:1::20" "2001:db8:1::30")
+	local Y=("2001:db8:1::21")
+
+	mldv2exclude_prepare $h1
+
+	$MZ $h1 -c 1 $MZPKT_IS_INC3 -q
+	sleep 1
+	brmcast_check_sg_entries "is_include" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP exclude -> is_include"
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


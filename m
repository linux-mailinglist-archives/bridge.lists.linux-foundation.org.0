Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E262A4CB2
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D866F8745E;
	Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZSeKRay0NvW7; Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27FAA87456;
	Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DD3DC0051;
	Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14E7BC0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0401586770
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CKt-gM01ztXD for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 13720868CC
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 205so85338wma.4
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7gEjJWV+umySqk07uezM2KFdZejL2mgBfGXLYK38GRc=;
 b=GP4dMhZcYmhWpTyvlGvIDAL0UgplapxDYCzG2iCazo6A8g63WABrTZIKgPppIWtYhG
 8tg6DZcImbEx++w1H84dkkOA7ipsckN5rxvQ542v0yfK31tw55eG3r0J7wNx1Yb/dAsn
 x/qSPyBjnoBRILCiNTntn7g0voKYSVSzcJtavqKUvDgqOnu567GPDS/P1mjP4+k59T3L
 L26pUCELcVr/Fl85ZqLidbFTQnz41cDM+wevPf3NmxaQvzQCWEpKYAd1RVlcw69FMCQz
 1yusJNvgMNDqkeWyj/3Y5KdN8VZk0cHUok5i+vRy6PfEeatfMC2Br9hIpqu6v2o+d1ar
 AogA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7gEjJWV+umySqk07uezM2KFdZejL2mgBfGXLYK38GRc=;
 b=HGOWyFJn44eQpLmK8fi042bhgE8H+gUgWJXZ1yrgz+o/Igdb6rEOj3Q0oCaDgl5TOG
 PEDuN/k345VJl9sL73CrzWGE8DLgJW0DMdyKf9minRHLE6K6t7dnxJ0Ik5GQYKRlQdnX
 ST8fJT+G/SL7yMgu50tuG7F5VybJbmFZv5VGKFN4JDvsfCHDmskH8Ycqn4JxZ2VzNKIN
 BOyzDqVX1239r8/AGzeo/UWbQokTkuTNfv+CNkA9wC24lw837Zbuxvnwcw9hgYZHaku9
 km6KtKE5wUHUxhyV03Gm9rgDlzbz15s4CRdWiuCmYuGTRIPZRXJQdWQnFl5Ckc5KJWLt
 f1Bw==
X-Gm-Message-State: AOAM5322Y0rwhkgh+Ses9x741geLAoCPA4ZK7HkcJiKWVo6fmAV488K7
 aTEx3s1XRZSDnqauK5zDsO9VHw==
X-Google-Smtp-Source: ABdhPJx/Jz0lEYHY45Eur9Vbf73REK77AG+hhiaxjNORvzrPDTNtQtDHNvrOYSpXZENVSmAjIaib/g==
X-Received: by 2002:a1c:c912:: with SMTP id f18mr214386wmb.150.1604424264538; 
 Tue, 03 Nov 2020 09:24:24 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:24 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:03 +0200
Message-Id: <20201103172412.1044840-8-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 07/16] selftests: net: bridge: add test
	for mldv2 inc -> is_exclude report
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
   INCLUDE (A)       IS_EX (B)     EXCLUDE (A*B, B-A)  (B-A)=0
                                                       Delete (A-B)
                                                       Filter Timer=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 54 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index a93bf6fa6caa..ddef8699be7d 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test"
+ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -25,6 +25,12 @@ MZPKT_ALLOW="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:f
 02:00:00:00:00:8f:00:8a:ac:00:00:00:01:05:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:\
 00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:10:20:01:0d:b8:00:01:00:00:00:00:00:00:00:\
 00:00:11:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:12"
+# MLDv2 is_ex report: grp ff02::cc is_exclude 2001:db8:1::1,2001:db8:1::2,2001:db8:1::20,2001:db8:1::21
+MZPKT_IS_EXC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:64:00:01:fe:80:00:00:00:\
+00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:\
+00:00:00:8f:00:5f:d0:00:00:00:01:02:00:00:04:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:02:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:21"
 
 source lib.sh
 
@@ -123,6 +129,38 @@ mldv2include_prepare()
 	brmcast_check_sg_entries "is_include" "${X[@]}"
 }
 
+mldv2exclude_prepare()
+{
+	local host1_if=$1
+	local mac=$2
+	local group=$3
+	local pkt=$4
+	local X=("2001:db8:1::1" "2001:db8:1::2")
+	local Y=("2001:db8:1::20" "2001:db8:1::21")
+
+	mldv2include_prepare $h1
+
+	$MZ $host1_if -c 1 $MZPKT_IS_EXC -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+			 .source_list != null and .filter_mode == \"exclude\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	brmcast_check_sg_entries "is_exclude" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::3\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::3 entry still exists"
+}
+
 mldv2cleanup()
 {
 	local port=$1
@@ -190,6 +228,20 @@ mldv2inc_is_include_test()
 	mldv2cleanup $swp1
 }
 
+mldv2inc_is_exclude_test()
+{
+	RET=0
+
+	mldv2exclude_prepare $h1
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP include -> is_exclude"
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


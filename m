Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEE72A4CB5
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1649E86D43;
	Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DP8nbztcLglW; Tue,  3 Nov 2020 17:24:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E87886D2F;
	Tue,  3 Nov 2020 17:24:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4BB3AC088B;
	Tue,  3 Nov 2020 17:24:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 049ECC0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E83F8868B8
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8m8uuKpQUI+T for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A2FC868CC
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:27 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id w1so19406194wrm.4
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pv0mYQY96avQk6/x0yKvIul49s/hwoEkDNqPqwg5FM0=;
 b=KkYY7K6DenUW+xA8wALkph4qPwmNEooxt/zkQKhQKZcEzOlhtF8V4Hwvp9dq0yn/u9
 sOSWNR2Ccaz5CY9xKluU71xhs0wH99jJQH/O5NxMAGNp0UtTfAVH/38SLo2FfDFV0C7K
 KH/yZygMihLZNRb7FkXsJU79VGfPm+bX7AsKgyCSmTlJBJMsL5TfbTEGOLHPJ2Hym3Wo
 OuShDq9MzkkHpxy1N/WigC9TN6b3k2kil7EJsHBV3G6uR7Q7YtkC1wLq/MnbqZGyRJRr
 II9xGW7kWJxzdLfj9+COKCBizxU4FCHyVAbsT6hFR2bF+z7YZLSU0oqHYYjfFb8/4UDX
 HVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pv0mYQY96avQk6/x0yKvIul49s/hwoEkDNqPqwg5FM0=;
 b=q9NZwa5j7BO1JOvPzwc6TNyNpjepzZJqhGS95CceNeXAjMLyzfjXgcHW4+Puv3rLhX
 muiwARmfsnnP3PwRoT9Z1BSmrg32/GP2W/HA4VvS35rJaEuz9oTDwxni3XrizOaxVHxc
 PWWwjcoG0Y3Ow+Ut6MMmqSP41VgixqJsYaFwTInyHjqvL5C0DRXNW3nu8B+1P9aCNU2N
 Is/DL/3snbysm5/tluDGdxSTKU46Razu2RGnRWWw0iKuSr1qO0/uEAZLZYGD9tfHggbd
 XzsSHfFOnTfaF3JRu5wMHQkJ32KDoUUWEsFuRjjNzd7LKYzymMa40lI32et/7Cw45FSz
 JpYA==
X-Gm-Message-State: AOAM533sgosQxnooyNYOASg1JxGBS/G7yRC0A4GwTI9RoAM0S5kgkeJH
 +C4n58uxv8t10n0JQo9vrtT4dvWcNhvsBvWI
X-Google-Smtp-Source: ABdhPJxdCj2kzankMoObzieZS9kP+iZKnfoL5Fd8RilMrpnvRpzcjRd8P2NpEt+M3PMEd/zxWV3wlg==
X-Received: by 2002:adf:e351:: with SMTP id n17mr2337311wrj.308.1604424265537; 
 Tue, 03 Nov 2020 09:24:25 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:25 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:04 +0200
Message-Id: <20201103172412.1044840-9-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/16] selftests: net: bridge: add test
	for mldv2 inc -> to_exclude report
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
   INCLUDE (A)     TO_EX (B)      EXCLUDE (A*B,B-A)    (B-A)=0
                                                       Delete (A-B)
                                                       Send Q(MA,A*B)
                                                       Filter Timer=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 56 ++++++++++++++++++-
 1 file changed, 55 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index ddef8699be7d..571b01ef672c 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -1,7 +1,8 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test"
+ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
+	   mldv2inc_to_exclude_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -31,6 +32,12 @@ MZPKT_IS_EXC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:64:00:01:
 00:00:00:8f:00:5f:d0:00:00:00:01:02:00:00:04:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
 01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:02:20:\
 01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:21"
+# MLDv2 to_ex report: grp ff02::cc to_exclude 2001:db8:1::1,2001:db8:1::20,2001:db8:1::30
+MZPKT_TO_EXC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:fe:80:00:00:00:\
+00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:02:00:\
+00:00:00:8f:00:8b:8e:00:00:00:01:04:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:cc:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:20:20:\
+01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:30"
 
 source lib.sh
 
@@ -242,6 +249,53 @@ mldv2inc_is_exclude_test()
 	mldv2cleanup $swp1
 }
 
+mldv2inc_to_exclude_test()
+{
+	RET=0
+	local X=("2001:db8:1::1")
+	local Y=("2001:db8:1::20" "2001:db8:1::30")
+
+	mldv2include_prepare $h1
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 $MZPKT_TO_EXC -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"exclude\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	brmcast_check_sg_entries "to_exclude" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::2\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::2 entry still exists"
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::21\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::21 entry still exists"
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP include -> to_exclude"
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


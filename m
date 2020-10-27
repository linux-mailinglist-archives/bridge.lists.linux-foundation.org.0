Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D229C7F9
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C540B86448;
	Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3_46ZPsRmqiI; Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1E40863DB;
	Tue, 27 Oct 2020 19:00:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C32CAC1AD6;
	Tue, 27 Oct 2020 19:00:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36AF8C0893
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 14ACF2E136
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 322n2OLzmuXz for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by silver.osuosl.org (Postfix) with ESMTPS id 33E7B2E131
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:23 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id k18so2540824wmj.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hkVjZ+YIjaJPktJubl8CMRKBr4zOyIIs4Cgi4AHtLdg=;
 b=PTJAjWIXqOo10ByygiLJ17DkXHRBd0InDc1XoZkYKuJDCetemkNTNVfz90gu14BKh7
 0BrMoX5uDOM0VJX9WcgZ4lqupcvM6DzRH9vBAbuq+/OfpLCjfR9dpU4gkopT3DAZuME9
 M7qalhxnqYzcc7QCLJxbxNqFxk2HzsZcTviDPVGh2Tf3Ut4p6hHK8xrIPbjiTx2ANOKf
 Ooa/o+G7i9+OwYkAkt5+4gnJnAxAuGqioCvIJ8483O0aLVk5aN5JgDb0CIVPPstjHnXo
 9KA90zhtNs/+EP5N8JDxEOcu7xn0Ste9Ck3JDQRrIJh7brvgRhMCyyJ1m5m+WXJbtMBq
 0d8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hkVjZ+YIjaJPktJubl8CMRKBr4zOyIIs4Cgi4AHtLdg=;
 b=XlaZ02/ShqX9RR98Oowqlyau/vBI2Y0FO8c207adw+mPs+5QkeZGX19rz44cJI6W9k
 97VhV2Rui/qjCZ5FxUnFAn7AXkczLsc3pdVDLii4+UDgqlmd1xYOQ+QeDMmh2qknLxIZ
 GzEvmg6VHNFSQ9rQUT1Z7CZMnCQuLta74JJnEN9mCMRkVfVWOWr9Q06hlqs0Hu648jq4
 e3nG95ggFqPeLu4wW8n64G6580JLEyxhvsLmbnnTFdonCjBkE2V8k8tW8G3XvRNBLc3k
 om+nhc2BDvf+hpwz8oPoK1O9FCPCB3/E+hMKz0eq6ThH7Mef/jv/xbC34uJZanqXZe3V
 N0GQ==
X-Gm-Message-State: AOAM53007iLzYILsZvPX+awnd1hUHnE+Ue+pkwEn7Bl9M1hY1qdIfDMr
 Wz8KVCSzwVeO3b1nOBoSCDiX9w==
X-Google-Smtp-Source: ABdhPJzykSANs+MMEVckVqeXmwguDl6k4AlfnQ9uUtkIG4KhetLOK2QqJDR7NQLT6HotSLqdyArmsw==
X-Received: by 2002:a1c:9641:: with SMTP id y62mr4356126wmd.145.1603825221626; 
 Tue, 27 Oct 2020 12:00:21 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:21 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:31 +0200
Message-Id: <20201027185934.227040-14-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 13/16] selftests: net: bridge: add test
	for igmpv3 inc -> block report
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
  INCLUDE (A)    BLOCK (B)     INCLUDE (A)              Send Q(G,A*B)

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 33 ++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 3cfc30b88285..3772c7a066c9 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
 	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test v3exc_is_include_test \
-	   v3exc_is_exclude_test v3exc_to_exclude_test"
+	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -28,6 +28,8 @@ MZPKT_IS_EXC="22:00:da:b6:00:00:00:01:02:00:00:04:ef:0a:0a:0a:c0:00:02:01:c0:00:
 MZPKT_IS_EXC2="22:00:5e:b4:00:00:00:01:02:00:00:02:ef:0a:0a:0a:c0:00:02:14:c0:00:02:1e"
 # IGMPv3 to_ex report: grp 239.10.10.10 to_exclude 192.0.2.1,192.0.2.20,192.0.2.30
 MZPKT_TO_EXC="22:00:9a:b1:00:00:00:01:04:00:00:03:ef:0a:0a:0a:c0:00:02:01:c0:00:02:14:c0:00:02:1e"
+# IGMPv3 block report: grp 239.10.10.10 block 192.0.2.1,192.0.2.20,192.0.2.30
+MZPKT_BLOCK="22:00:98:b1:00:00:00:01:06:00:00:03:ef:0a:0a:0a:c0:00:02:01:c0:00:02:14:c0:00:02:1e"
 
 source lib.sh
 
@@ -515,6 +517,35 @@ v3exc_to_exclude_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3inc_block_test()
+{
+	RET=0
+	local X=("192.0.2.2" "192.0.2.3")
+
+	v3include_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_BLOCK" -q
+	# make sure the lowered timers have expired (by default 2 seconds)
+	sleep 3
+	check_sg_entries "block" "${X[@]}"
+
+	check_sg_state 0 "${X[@]}"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"192.0.2.1\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 192.0.2.1 entry still exists"
+
+	check_sg_fwding 1 "${X[@]}"
+	check_sg_fwding 0 "192.0.2.100"
+
+	log_test "IGMPv3 report $TEST_GROUP include -> block"
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


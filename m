Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678FA29C7EB
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D715687368;
	Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzFlwiv+WFGQ; Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54E2887367;
	Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37389C0893;
	Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2146C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BFF8F8696B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I5ODLeySQfT5 for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9C5985329
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:07 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n6so3077483wrm.13
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qug/l2PaHPdn5nmmo5MAN4jJnMHDysyaTDj3MD0cWk8=;
 b=yAQv4R8rgsLyHmAPm5o97IiojoAcx5+7ufwQVOSCinvt1RK0kxjCmtYzdoTwaAxiou
 H6764HMhlANaqp75yBugcbRLxBenWlYjL1RNs/AsO3qN6EG2Gnqi4Jh4ZRD+RhtCFIe3
 m7WKVivxJCNzzQkJkhyQqAnbbjUHQgmf9KyG+lIcXEjB6Qh+6uUZMHNiUX82WdN1oQRB
 Bl37O8AaW0AjdVaylhO0oyAylaFTbNwLNhz6BGZVQA92XSxulTg/eQTyCoXxSC/uLQZ2
 aFtorS94NL2uFpOTsjL6rSA15nxmKDWko6YzsdR3uE10HG+zWjn4a3gg3Dnky701E9Fh
 cuMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qug/l2PaHPdn5nmmo5MAN4jJnMHDysyaTDj3MD0cWk8=;
 b=p2q/m0rxfeY0fD1eb5sQmzjJmQhQScl/UQASCWx+RZEuQDWSxI5YtCJKglniEWoQGC
 RlC4yMKh/4EH19B4JNvpAO2hq4mIOqcn9xqg1i2NSlT+Kqig0vB/4/1c7cwKI5MAJYIM
 r3S64FkoWfA4ti/bovoz2Uem++a1RVN1tNazEwsO/Ej9yNJsQCdcOYTXtE2S8hQ4Qyjr
 rohbs+9hCF7kuRdAzRautdk+T0IaegKMBexhfboakxa4+7gxMkkhjSRiF61hzPAF0Lus
 FmAqBZZGGS5EAVYU7GkXEIeYuybrMzJAF40ex9E67g2ffurv4tlG44PQzhsgpMR5m8Cp
 8jug==
X-Gm-Message-State: AOAM530nsKI22tZv0Mfx3OKnwykSNKPqibxyZqljD9VeItMhuuGr4gmH
 QmAAkDOnbFLr+pTxL3zG87MofQ==
X-Google-Smtp-Source: ABdhPJw3dbU05kDu9XZ1JYoYS3bQsbXcEpPRJ+5nT0Cj2GCgiJCFERh1UrhYdAvjEY2KTjzvS651kQ==
X-Received: by 2002:adf:c3c6:: with SMTP id d6mr4586243wrg.206.1603825206322; 
 Tue, 27 Oct 2020 12:00:06 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:05 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:19 +0200
Message-Id: <20201027185934.227040-2-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 01/16] selftests: net: bridge: rename
	current igmp tests to igmpv2
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

To prepare the bridge_igmp.sh for IGMPv3 we need to rename the
current test to IGMPv2.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 tools/testing/selftests/net/forwarding/bridge_igmp.sh | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 88d2472ba151..481198300b72 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="reportleave_test"
+ALL_TESTS="v2reportleave_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -110,7 +110,7 @@ mcast_packet_test()
 	return $seen
 }
 
-reportleave_test()
+v2reportleave_test()
 {
 	RET=0
 	ip address add dev $h2 $TEST_GROUP/32 autojoin
@@ -118,12 +118,12 @@ reportleave_test()
 
 	sleep 5
 	bridge mdb show dev br0 | grep $TEST_GROUP 1>/dev/null
-	check_err $? "Report didn't create mdb entry for $TEST_GROUP"
+	check_err $? "IGMPv2 report didn't create mdb entry for $TEST_GROUP"
 
 	mcast_packet_test $TEST_GROUP_MAC $TEST_GROUP $h1 $h2
 	check_fail $? "Traffic to $TEST_GROUP wasn't forwarded"
 
-	log_test "IGMP report $TEST_GROUP"
+	log_test "IGMPv2 report $TEST_GROUP"
 
 	RET=0
 	bridge mdb show dev br0 | grep $TEST_GROUP 1>/dev/null
@@ -139,7 +139,7 @@ reportleave_test()
 	mcast_packet_test $TEST_GROUP_MAC $TEST_GROUP $h1 $h2
 	check_err $? "Traffic to $TEST_GROUP was forwarded without mdb entry"
 
-	log_test "IGMP leave $TEST_GROUP"
+	log_test "IGMPv2 leave $TEST_GROUP"
 }
 
 trap cleanup EXIT
-- 
2.25.4


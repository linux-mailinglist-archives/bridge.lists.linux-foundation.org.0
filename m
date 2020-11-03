Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2EB2A4CAB
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 630E58744B;
	Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gp3dqVa1Kazx; Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC42487450;
	Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CCE3C0051;
	Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE3A7C0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A289E2094D
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEyt6Hepj2KZ for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id AACD9207A8
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:19 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v5so107130wmh.1
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xBm95jl2xW7HhQ7hwk4jZB0S0Y7wQfebO/eBHZqjNWo=;
 b=MqzUiWrQhY5xpB2YoBUurz8HpgeL4rD0U/WPxFKSRrv83ZBc6jSVrCVdx8rk/Pq3CS
 I8jdO2PTuajjv7UegAo7D6AnccQFOkWAOSDQ+SiLDG4OTFynJhx9izQO2/nbr1dQQBxE
 3yoq7NqaeFfhln1CNJOI067Zqmcpd0Vy8xWAtJ0jGRx/BywDQHiGY1jnPA1cfSpUaV7m
 USgfyueHQ64pmPimxsOsz9h9IQYUzAOGDKAdXg+78ZOkiz++2HeXCnpf0C9Bb5z/Kleb
 lfYzoLM8Wk3DAGSHOTUjMsEumGKT7h5t7r4GuBb8e30w0K4wUi78bmE6r9QASRUP5L+L
 kvpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xBm95jl2xW7HhQ7hwk4jZB0S0Y7wQfebO/eBHZqjNWo=;
 b=OQlTEV0Xt4qG5Gjw88eO7wkikWFqlRyyvBWn4CYTRPnQHn0vFzQthEUb64CjBb2hiZ
 vYRESqRr/jc3xDlke23tUfFTJTMdfVBos85/NBpNVPbxmo18YOuoBDLwjHnk7VYOP6il
 fHYQkds0c3q1WBSJ4BLHdZ6aJm/71d5CJuFyQvFtPKD7wd2/sXhPTMjFL5ioFbmBaNRl
 Jv4LAZ2bt10t3jYpVi97+SdVt5kiDemfS5MOZF/4Auy4RP15NCy9QUhzylcS+ko74sDi
 Tz/4PflPBAdSU5Bqx6fWXjb3TPo+GiTqms3km67iKX5u3NKt1LufKD98tgzbCb75JXt8
 2IGQ==
X-Gm-Message-State: AOAM530H1z2Luzebw/Kl9TdE2Pkj3FRCkioWrOGx92tl7bv+lr8x7crw
 4mQ5vjaRcjThUREnnrb27K4M9Q==
X-Google-Smtp-Source: ABdhPJwCmHQRlzOe8Sz/VWtIyaNseKz0zgnrUmtmbUdUByHCZrPtIFFD6fMCz/oy1M+X9RNK7nhj8A==
X-Received: by 2002:a7b:cd92:: with SMTP id y18mr202822wmj.178.1604424258113; 
 Tue, 03 Nov 2020 09:24:18 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:17 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:23:57 +0200
Message-Id: <20201103172412.1044840-2-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 01/16] selftests: net: bridge: factor out
	mcast_packet_test
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

Factor out mcast_packet_test into lib.sh so it can be later extended and
reused by MLDv2 tests.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 32 -------------------
 tools/testing/selftests/net/forwarding/lib.sh | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 0e71abdd7a03..50a48ce16ba1 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -105,38 +105,6 @@ cleanup()
 	vrf_cleanup
 }
 
-# return 0 if the packet wasn't seen on host2_if or 1 if it was
-mcast_packet_test()
-{
-	local mac=$1
-	local src_ip=$2
-	local ip=$3
-	local host1_if=$4
-	local host2_if=$5
-	local seen=0
-
-	# Add an ACL on `host2_if` which will tell us whether the packet
-	# was received by it or not.
-	tc qdisc add dev $host2_if ingress
-	tc filter add dev $host2_if ingress protocol ip pref 1 handle 101 \
-		flower ip_proto udp dst_mac $mac action drop
-
-	$MZ $host1_if -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
-	sleep 1
-
-	tc -j -s filter show dev $host2_if ingress \
-		| jq -e ".[] | select(.options.handle == 101) \
-		| select(.options.actions[0].stats.packets == 1)" &> /dev/null
-	if [[ $? -eq 0 ]]; then
-		seen=1
-	fi
-
-	tc filter del dev $host2_if ingress protocol ip pref 1 handle 101 flower
-	tc qdisc del dev $host2_if ingress
-
-	return $seen
-}
-
 v2reportleave_test()
 {
 	RET=0
diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index 927f9ba49e08..bb3ccc6d2165 100644
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1270,3 +1270,35 @@ tcpdump_show()
 {
 	tcpdump -e -n -r $capfile 2>&1
 }
+
+# return 0 if the packet wasn't seen on host2_if or 1 if it was
+mcast_packet_test()
+{
+	local mac=$1
+	local src_ip=$2
+	local ip=$3
+	local host1_if=$4
+	local host2_if=$5
+	local seen=0
+
+	# Add an ACL on `host2_if` which will tell us whether the packet
+	# was received by it or not.
+	tc qdisc add dev $host2_if ingress
+	tc filter add dev $host2_if ingress protocol ip pref 1 handle 101 \
+		flower ip_proto udp dst_mac $mac action drop
+
+	$MZ $host1_if -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
+	sleep 1
+
+	tc -j -s filter show dev $host2_if ingress \
+		| jq -e ".[] | select(.options.handle == 101) \
+		| select(.options.actions[0].stats.packets == 1)" &> /dev/null
+	if [[ $? -eq 0 ]]; then
+		seen=1
+	fi
+
+	tc filter del dev $host2_if ingress protocol ip pref 1 handle 101 flower
+	tc qdisc del dev $host2_if ingress
+
+	return $seen
+}
-- 
2.25.4


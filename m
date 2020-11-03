Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCCE2A4CB6
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 639E78639F;
	Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRKn-pqhENDW; Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51417863DC;
	Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3331AC1AD4;
	Tue,  3 Nov 2020 17:24:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33D96C088B
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 17068207A8
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0iKJJaKgDSey for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by silver.osuosl.org (Postfix) with ESMTPS id 01733207EF
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:20 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id y12so19362211wrp.6
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dNyIExP8c9yMd7IzGVWPAaLZGLs2zadG76onwKL9QZM=;
 b=TljOs6rbX9O++Nptjxew0JrB01mnJ8mehSMrWfPFF2baZNj6e5EAoxlu0LWJsTy3ao
 5F4T0rqsZYeUrcZT3hPGJrRMD3f8EqbpRSJgqQWx+7cWtPQWl7YKHJdX5WUYqiPCg/MM
 V2Y8W2x+nUb9rKhW/ghg0qCFxiV641INL6Mk0pwlagMUZjezYlPgb3LhMzlb/N43RA3t
 J5J9HKTwsyjiMvEugiOKd/pu2JFrhRvMcJKtV+2Ohx79eadzpbwstZ8Cs3lJ9EixG9p7
 7rIyBXIRGoKppp9a3R6vXzl6PtFSEytxeAw0T2iB5pOLIhylaZ+YcK7EWteoDikRLg0V
 YPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dNyIExP8c9yMd7IzGVWPAaLZGLs2zadG76onwKL9QZM=;
 b=hfOL91Lhtbpybm2nzE+A6jIk19JoyuU5zBIifa3qkmBt7fGL5rxl+nNwNawQ7ZsKUB
 8JcmMEoVpaO7fs+Jin/8yfFD9cJzfzO0Tr/vRDL6b41y6m0TUmwZ3jx/WIPjNuRu6vU3
 Hx5G5GIc4QAwhHCjOc+//dZksizJbJ8gPOHuKOfPtHu0oV3BWSHWA9n8PYviQRfFw+vj
 uiv7gaHIaH703V+0/TNa6cnC2d7EF9OED9VJxprxlaPfYCVosutyUt1KJ0dBrjB/fpAs
 m6lUYlBARKoMWrSDJ2vTBPuVAE4Q5tixkY8qkwSHDjiFhrm7YvVJC8C7k8jpZjXWw/M+
 bg0g==
X-Gm-Message-State: AOAM5324cxAt09tbiQkXHbN8HfkmUGFEcIIhA3+0nLc+32u8h1yVdV/D
 fGUaF291f61UAAu95NZ6AttEwQ==
X-Google-Smtp-Source: ABdhPJyZj1xy6tlFq+PgIg0mS77/IRivdvtLVeNUXS/8ttcygJ803RBdfgPWwd9YwP0JYdiE1zFzCQ==
X-Received: by 2002:a5d:694b:: with SMTP id r11mr27952409wrw.104.1604424259355; 
 Tue, 03 Nov 2020 09:24:19 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:18 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:23:58 +0200
Message-Id: <20201103172412.1044840-3-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/16] selftests: net: lib: add support
	for IPv6 mcast packet test
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

In order to test an IPv6 multicast packet we need to pass different tc
and mausezahn protocols only, so add a simple check for the destination
address which decides if we should generate an IPv4 or IPv6 mcast
packet.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 tools/testing/selftests/net/forwarding/lib.sh | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
index bb3ccc6d2165..0a427b8a039d 100644
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1280,14 +1280,22 @@ mcast_packet_test()
 	local host1_if=$4
 	local host2_if=$5
 	local seen=0
+	local tc_proto="ip"
+	local mz_v6arg=""
+
+	# basic check to see if we were passed an IPv4 address, if not assume IPv6
+	if [[ ! $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
+		tc_proto="ipv6"
+		mz_v6arg="-6"
+	fi
 
 	# Add an ACL on `host2_if` which will tell us whether the packet
 	# was received by it or not.
 	tc qdisc add dev $host2_if ingress
-	tc filter add dev $host2_if ingress protocol ip pref 1 handle 101 \
+	tc filter add dev $host2_if ingress protocol $tc_proto pref 1 handle 101 \
 		flower ip_proto udp dst_mac $mac action drop
 
-	$MZ $host1_if -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
+	$MZ $host1_if $mz_v6arg -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
 	sleep 1
 
 	tc -j -s filter show dev $host2_if ingress \
@@ -1297,7 +1305,7 @@ mcast_packet_test()
 		seen=1
 	fi
 
-	tc filter del dev $host2_if ingress protocol ip pref 1 handle 101 flower
+	tc filter del dev $host2_if ingress protocol $tc_proto pref 1 handle 101 flower
 	tc qdisc del dev $host2_if ingress
 
 	return $seen
-- 
2.25.4


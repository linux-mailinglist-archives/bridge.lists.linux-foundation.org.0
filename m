Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E528A29C7EF
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DA0885329;
	Tue, 27 Oct 2020 19:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yz+G0ji9ZAUb; Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF2CC8696B;
	Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A232FC0051;
	Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7885EC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 56DA62E122
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AftZMAuNQWlF for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 096192E0E3
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:08 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id n18so3129036wrs.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tLPWNUeiDX6YqJv0P1s9lGNPu+RgfZ8zS9WrTNhZtwU=;
 b=Pbbgzu7Uim9URoVPsODKBzIRpIWNZUV/sc1OsVCs/ctmhcIQJuqP1Da07kJ2ti9/rK
 zwadkwjLlxDK6vSMPMNy7hOKGF9z/TVWXc++pM9nsU6I2AuCe/CIsrnng25YCjNkjb4f
 nyOsGMfA8wywQAx2ipPq2e+Cm42KAUKXLliz5jwbRyp1GGAZtlPV0gPBOKSl6pt+XRkh
 jhlsFvNWPtpOonDa/1z7uV3cBIFFMK7HjMxd29Pc6KJwjY0diRy6Y9jWj3DpTW9TVLii
 jpwVVOEsvNW0ITz2hhefUMxxEdpP8Qt870u1sEdMawZhO0x30jL4RKpm3No+NrtAJE0S
 WLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tLPWNUeiDX6YqJv0P1s9lGNPu+RgfZ8zS9WrTNhZtwU=;
 b=TirRttCfkgFD0PtRLSvufC+ESZiZo94B5/sPTvB4w/Ux3GZShdP10F+WyF8mFBONPI
 ufKJ1Wi5Zf18qU6F/t86Ek+qoXVgW9Zx1WpHoAZ3OUyf+B61Clw2QyqFhXtXcDSZdCsc
 tyscjSIYCgjfvqa4+Rl8a6PCZ1RzVETF89cJcpmAbkckym+lgTX1aiBEVegTFB8OGgvb
 DC0Bp5nwKLjZPqxXyWdt15tkoEKkvUxkX54JVxz86KgKc0DTYar9yF2L6PsTQvufog2i
 a0GvtDtWDD2c03sC0RLs/fPlkVCEqw0ZYew9W67jP3k6nE/wjCep8bQ4i/OEpjcZl/ji
 GoqQ==
X-Gm-Message-State: AOAM531ft7u8gl8uWKscbYyP6KKENgEeqHxtAd4bzkoz7sJmiyTWyJpG
 PiCltcZO69G35UufXVKcIv+SHA==
X-Google-Smtp-Source: ABdhPJzG/OSgYLmz2HBNiIC8mB9c1vzZDllDh54O3gAqpvWndh4V2M5gurPd/JiO/Om2Nd0bKkjvbA==
X-Received: by 2002:adf:94e6:: with SMTP id 93mr4299190wrr.190.1603825207449; 
 Tue, 27 Oct 2020 12:00:07 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:07 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:20 +0200
Message-Id: <20201027185934.227040-3-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/16] selftests: net: bridge: igmp: add
	support for packet source address
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

Add support for one more argument which specifies the source address to
use. It will be later used for IGMPv3 S,G entry testing.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../testing/selftests/net/forwarding/bridge_igmp.sh | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 481198300b72..1c19459dbc58 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -83,9 +83,10 @@ cleanup()
 mcast_packet_test()
 {
 	local mac=$1
-	local ip=$2
-	local host1_if=$3
-	local host2_if=$4
+	local src_ip=$2
+	local ip=$3
+	local host1_if=$4
+	local host2_if=$5
 	local seen=0
 
 	# Add an ACL on `host2_if` which will tell us whether the packet
@@ -94,7 +95,7 @@ mcast_packet_test()
 	tc filter add dev $host2_if ingress protocol ip pref 1 handle 101 \
 		flower dst_mac $mac action drop
 
-	$MZ $host1_if -c 1 -p 64 -b $mac -B $ip -t udp "dp=4096,sp=2048" -q
+	$MZ $host1_if -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
 	sleep 1
 
 	tc -j -s filter show dev $host2_if ingress \
@@ -120,7 +121,7 @@ v2reportleave_test()
 	bridge mdb show dev br0 | grep $TEST_GROUP 1>/dev/null
 	check_err $? "IGMPv2 report didn't create mdb entry for $TEST_GROUP"
 
-	mcast_packet_test $TEST_GROUP_MAC $TEST_GROUP $h1 $h2
+	mcast_packet_test $TEST_GROUP_MAC 192.0.2.1 $TEST_GROUP $h1 $h2
 	check_fail $? "Traffic to $TEST_GROUP wasn't forwarded"
 
 	log_test "IGMPv2 report $TEST_GROUP"
@@ -136,7 +137,7 @@ v2reportleave_test()
 	bridge mdb show dev br0 | grep $TEST_GROUP 1>/dev/null
 	check_fail $? "Leave didn't delete mdb entry for $TEST_GROUP"
 
-	mcast_packet_test $TEST_GROUP_MAC $TEST_GROUP $h1 $h2
+	mcast_packet_test $TEST_GROUP_MAC 192.0.2.1 $TEST_GROUP $h1 $h2
 	check_err $? "Traffic to $TEST_GROUP was forwarded without mdb entry"
 
 	log_test "IGMPv2 leave $TEST_GROUP"
-- 
2.25.4


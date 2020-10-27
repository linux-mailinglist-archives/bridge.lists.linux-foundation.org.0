Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E829C7F7
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1098863CD;
	Tue, 27 Oct 2020 19:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jK8aV8Ond66Y; Tue, 27 Oct 2020 19:00:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F3C586448;
	Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 67B07C0893;
	Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E778DC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D513487383
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1avxyk-6B80 for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0063587374
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:21 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n18so3129755wrs.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GkauxuTNWiSF9oMdr/Q/tgJ/GE3iMvf1VO5Jw7M5+xs=;
 b=uFAh3qD+tDMpttSW6AZo2oHmMqnlE/L9/+Hto2jryq9hxQWSn7IW0ju6HGCycstPp0
 H0f6qtJqmac7tUfLC4b7nNKIFi/021FZUX0STCsIysgbaN6NIOgUZEHytzNwAAXZmDSV
 Qr1esn/thg3+Dx1UYG4ul1cmqB/LNJCUvpPHK4bzXBNUeUfWGViXsSr2GcxNob8IZiRW
 k6BDsH4PovXv/VUBlcOloRE4WEStDzZLFH4YcDG3Z/kEBRD9o5ZY7DeP+RE0BjOZpimq
 4MDQNQU6jjdhSNsZ+f9MH8JGza0NaBmOOC5D9JIeP5NWqYwwuUNhWBR1yod++gkD1shl
 GXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GkauxuTNWiSF9oMdr/Q/tgJ/GE3iMvf1VO5Jw7M5+xs=;
 b=hWEuyo16dy5setehpvHNPDoogwv8X7Q8tbjLzFjZeRfkzDvPUwNS28XAA0hEYkPEBU
 /qWgrgGBsV0jVcDwrxQOAZuFS/yFdE/RmfT60WKvvM1QZOwcwrDk3nRJz8bHQVLbE+av
 Xxo1hFQc8N3EO3BsAY6i6kj9DNR9i5DYaNntRQeVQgrEoPu5BHf6Fzc3aZefe44Pn3EL
 a7EyDBraxTPxjtRLQWOz10etGLdNorXbJmlUpW7CmsnxLHKJNRKtg9zfVGZpIfSvaZKO
 3j1tCvXZFSP/fzqn2x/M8kG91viXJXroimGyj5Mpf7uB6sRnYA2rCS3qdHqq7eVsUqTO
 5UPw==
X-Gm-Message-State: AOAM533oMORWPw0H8sBgANE468Rky/aeLYRYZNOBqD3kIS7Gc6KuohvF
 Xfu8e4Y5lsztnurFH90BMfkRrQ==
X-Google-Smtp-Source: ABdhPJzeAzyPZ503wQzC31NBDWhLz0G6RpVsHLo4W4PaX1fa3CRC6CqBBsE/4zLiXLtFF2amELEfwg==
X-Received: by 2002:adf:bc4a:: with SMTP id a10mr4513962wrh.253.1603825220478; 
 Tue, 27 Oct 2020 12:00:20 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:20 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:30 +0200
Message-Id: <20201027185934.227040-13-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/16] selftests: net: bridge: add test
	for igmpv3 exc -> to_exclude report
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
  EXCLUDE (X,Y)  TO_EX (A)     EXCLUDE (A-Y,Y*A)        (A-X-Y)=Group Timer
                                                        Delete (X-A)
                                                        Delete (Y-A)
                                                        Send Q(G,A-Y)
                                                        Group Timer=GMI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 91b0b26428f6..3cfc30b88285 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
 	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test v3exc_is_include_test \
-	   v3exc_is_exclude_test"
+	   v3exc_is_exclude_test v3exc_to_exclude_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -487,6 +487,34 @@ v3exc_is_exclude_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3exc_to_exclude_test()
+{
+	RET=0
+	local X=("192.0.2.1" "192.0.2.30")
+	local Y=("192.0.2.20")
+
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_TO_EXC" -q
+	sleep 1
+	check_sg_entries "to_exclude" "${X[@]}" "${Y[@]}"
+
+	check_sg_state 0 "${X[@]}"
+	check_sg_state 1 "${Y[@]}"
+
+	check_sg_fwding 1 "${X[@]}" 192.0.2.100
+	check_sg_fwding 0 "${Y[@]}"
+
+	log_test "IGMPv3 report $TEST_GROUP exclude -> to_exclude"
+
+	ip link set dev br0 type bridge mcast_last_member_interval 100
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6083E43FBFF
	for <lists.bridge@lfdr.de>; Fri, 29 Oct 2021 14:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 355224027E;
	Fri, 29 Oct 2021 12:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1bf3_Zzv4FD; Fri, 29 Oct 2021 12:05:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C220A402A9;
	Fri, 29 Oct 2021 12:05:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BC84C0021;
	Fri, 29 Oct 2021 12:05:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DBAB1C0012
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C479040281
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0nFyrHKEMHw for <bridge@lists.linux-foundation.org>;
 Fri, 29 Oct 2021 12:05:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 771194027E
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:05:32 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id f8so16282860edy.4
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 05:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yk7ObfgbV6bHLpvFk8W0bMRko++x+nG1d7mbf7ehRf8=;
 b=3hSVPH2QcGxHO8zd1Asn6yhjgFGMryxEE14djkGf1sXpAeqs/IBDMfyGQek8YEDkrA
 gSoIMnICeI5klOOesMYf1c9jZtkR5J5Ksq0OOhNAREATdGBxaJKjFhcfMVjwzi9fK5Ez
 N3gDfPBRW4ib0AmS5evFJWC60hp4nT3GJVZLZFOGgwRj9XvSv9vNmvuif0Qpkto2qm10
 COFk70ekyklBXjOUeJKuWtLyOGkyzBV98MUpoOv0xe1BPb4dM2SaTEi3nOs+wyxoVcRA
 6cEkoA4rvpfJ57rBtlvuEfSADQik+NigfZ9IU24Ci23Yk5Ot1ndXBUPGWfPKbGoqGbP9
 ER8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yk7ObfgbV6bHLpvFk8W0bMRko++x+nG1d7mbf7ehRf8=;
 b=El6rms0u+WycWl2m4CjsSvCizAe3I1M6kv9alXPMOGPhsI5xhlPwciS7CG34SqFdJy
 JpXLnk8imETbx/12vYEYA3ECRP+6djRxnm6JztT1eY41VtBhwbI3/VMgf8ba150u/GHL
 dyVfbU2OagZwUKjs602UDpPkJyunTrAHubpjvab+YSYdmZ+zjAKtg3Hp3YY0Z0tHXnR7
 QY0Q4bepkqRsYucWr2qq0/WPFNDVSi8BBF3BSyMX8TW6rWE8RirWEXQJueK2bQXeWgK5
 nVVxko8bVx00pjAtC1B31iK/b4lXUh5vNjO4QcQeBDqT4744r/QP3pRR2NZB7OBvpBrr
 ZXCg==
X-Gm-Message-State: AOAM533IfmKxZ0aYaQmg+QNzOlzLrxCLvxhNfpXDJjZuLoqmkycfc93P
 HQY0iym6JdeNv7wZAV6muQzTYoTfkX7fsHQ8
X-Google-Smtp-Source: ABdhPJzqsVGG8M75ALYvHymIlvBJufCR2xZqPlg4fpuH4VK41ExJlHZqkb6gHrR9SydS29fh766M8g==
X-Received: by 2002:a17:907:16a1:: with SMTP id
 hc33mr12960498ejc.137.1635509130435; 
 Fri, 29 Oct 2021 05:05:30 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id c7sm2877578ejd.91.2021.10.29.05.05.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Oct 2021 05:05:29 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 29 Oct 2021 15:05:27 +0300
Message-Id: <20211029120527.2716884-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <c09158a8-f94c-5e33-db31-59430501e631@nvidia.com>
References: <c09158a8-f94c-5e33-db31-59430501e631@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net v2] selftests: net: bridge: update IGMP/MLD
	membership interval value
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

When I fixed IGMPv3/MLDv2 to use the bridge's multicast_membership_interval
value which is chosen by user-space instead of calculating it based on
multicast_query_interval and multicast_query_response_interval I forgot
to update the selftests relying on that behaviour. Now we have to
manually set the expected GMI value to perform the tests correctly and get
proper results (similar to IGMPv2 behaviour).

Fixes: fac3cb82a54a ("net: bridge: mcast: use multicast_membership_interval for IGMPv3")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
v2: set membership_interval in the same command and reset it back to
default after the test

 .../testing/selftests/net/forwarding/bridge_igmp.sh  | 12 +++++++++---
 tools/testing/selftests/net/forwarding/bridge_mld.sh | 12 +++++++++---
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 675eff45b037..1162836f8f32 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -482,10 +482,15 @@ v3exc_timeout_test()
 	local X=("192.0.2.20" "192.0.2.30")
 
 	# GMI should be 3 seconds
-	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+	ip link set dev br0 type bridge mcast_query_interval 100 \
+					mcast_query_response_interval 100 \
+					mcast_membership_interval 300
 
 	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
-	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	ip link set dev br0 type bridge mcast_query_interval 500 \
+					mcast_query_response_interval 500 \
+					mcast_membership_interval 1500
+
 	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_ALLOW2" -q
 	sleep 3
 	bridge -j -d -s mdb show dev br0 \
@@ -517,7 +522,8 @@ v3exc_timeout_test()
 	log_test "IGMPv3 group $TEST_GROUP exclude timeout"
 
 	ip link set dev br0 type bridge mcast_query_interval 12500 \
-					mcast_query_response_interval 1000
+					mcast_query_response_interval 1000 \
+					mcast_membership_interval 26000
 
 	v3cleanup $swp1 $TEST_GROUP
 }
diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index ffdcfa87ca2b..e2b9ff773c6b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -479,10 +479,15 @@ mldv2exc_timeout_test()
 	local X=("2001:db8:1::20" "2001:db8:1::30")
 
 	# GMI should be 3 seconds
-	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+	ip link set dev br0 type bridge mcast_query_interval 100 \
+					mcast_query_response_interval 100 \
+					mcast_membership_interval 300
 
 	mldv2exclude_prepare $h1
-	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	ip link set dev br0 type bridge mcast_query_interval 500 \
+					mcast_query_response_interval 500 \
+					mcast_membership_interval 1500
+
 	$MZ $h1 -c 1 $MZPKT_ALLOW2 -q
 	sleep 3
 	bridge -j -d -s mdb show dev br0 \
@@ -514,7 +519,8 @@ mldv2exc_timeout_test()
 	log_test "MLDv2 group $TEST_GROUP exclude timeout"
 
 	ip link set dev br0 type bridge mcast_query_interval 12500 \
-					mcast_query_response_interval 1000
+					mcast_query_response_interval 1000 \
+					mcast_membership_interval 26000
 
 	mldv2cleanup $swp1
 }
-- 
2.31.1


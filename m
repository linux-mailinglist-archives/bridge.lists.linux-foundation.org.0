Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC7C45DC01
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05E238280E;
	Thu, 25 Nov 2021 14:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmPTwLnU9KEL; Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8EAB2827C5;
	Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 659EEC000A;
	Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1525DC0030
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 043BE61BED
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxI-pKuQswOw for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53FEA61BE2
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:27 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id y13so26075000edd.13
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zYFf5rleB9ec1h6L5Rsg6C85Sz0GkYn54vaAI/sfBKM=;
 b=TZ4dGHtEEfqktYYq6EH4whBPY2645fhRxPiV/i9ULpr6ozh9oLTyJ4GXOSpkcT0IyA
 pEWrfUX5fWk6L5QENIVhdpd3+TXwh/SAzZSDFKX06XcNNYospIL4eEPKBBzcyYnoqfhQ
 1Z9D+zD3BoVGjiWsZIu//sCxU+jxOBVfdzWX5EFgBldvOGJYobXOZ9FnYRoqZQH0spq4
 ZhAqxcqLXfezrGJJL5/yaRcNyEK7OADcIjdOABNNAntNRm9xjA3OK2Aok2xumniYRfcf
 e3jjNq+nvx8IqA2VFa/04bovWO6A8SkSMEAzDuY+3RBL0q984PWfpEhyNkXqfv2R8cxR
 6EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zYFf5rleB9ec1h6L5Rsg6C85Sz0GkYn54vaAI/sfBKM=;
 b=7+IaDZ+Dl5xMiBEPedx8DMqL9a0n6D5tuHY8C0YV/MeJQgFyf8vy328mazpzvb3nAG
 BCiFjNwquO6viFyBJ0ttJ0Et3xOzZxSNU/gCnTdzsTYyMfpojsZHGNZL3W96gSV/gLfD
 w2VQ9QwQK4SgmoztaQSjZlNIk4IL+vj74gCUGNFAQie9uaDYhNyxMDUn1UTwCHuauSk7
 NgRV+A1epeWRR2X259Au3ep7/wVpWZQhNdmvaIwFg+gf2gz5sFT1v0qo7Ok8t1K3FHqW
 NYpMhlQgAtM8EIMm3n8Bb357SVHtsdQGtzKisQcVKMp1jFOgaUw8w6lN+SWGRyPT7WRh
 84zA==
X-Gm-Message-State: AOAM532CM0n5OqQCDmr6Sh3l2HiXm4sZ2P8+SFURrSRE5hdxGw9sRcN2
 f0AZ4NM1+3gulW0TAxx642Z0og==
X-Google-Smtp-Source: ABdhPJzVR17R/4LvQ9RZgjUp76vKCtEMbSLHQAs27urE23gUQgCXvgHXevUiptGreLeIBrA9X4qbUA==
X-Received: by 2002:a17:907:7da8:: with SMTP id
 oz40mr31380601ejc.105.1637849364878; 
 Thu, 25 Nov 2021 06:09:24 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:24 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:54 +0200
Message-Id: <20211125140858.3639139-7-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 06/10] selftests: net: bridge: add vlan
	mcast_membership_interval test
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

Add a test which changes the new per-vlan mcast_membership_interval and
verifies that a newly learned mdb entry would expire in that interval.

TEST: Vlan mcast_membership_interval global option default value    [ OK ]
TEST: Vlan 10 mcast_membership_interval option changed to 200       [ OK ]
TEST: Vlan 10 mcast_membership_interval mdb entry expire            [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 28 ++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 0070d8292569..87dcd49b0a8d 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
-	   vlmc_last_member_test vlmc_startup_query_test"
+	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -358,6 +358,32 @@ vlmc_startup_query_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_count 2
 }
 
+vlmc_membership_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_membership_interval == 26000) " &>/dev/null
+	check_err $? "Wrong default mcast_membership_interval global vlan option value"
+	log_test "Vlan mcast_membership_interval global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_membership_interval 200
+	check_err $? "Could not set mcast_membership_interval in vlan 10"
+	log_test "Vlan 10 mcast_membership_interval option changed to 200"
+
+	RET=0
+	vlmc_v2join_test 1
+	log_test "Vlan 10 mcast_membership_interval mdb entry expire"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_membership_interval 26000
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


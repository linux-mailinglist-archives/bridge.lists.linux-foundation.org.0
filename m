Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 414EB45DC06
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3BB9827CA;
	Thu, 25 Nov 2021 14:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGtV_c1LRuJD; Thu, 25 Nov 2021 14:09:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 556FD827D9;
	Thu, 25 Nov 2021 14:09:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78932C000A;
	Thu, 25 Nov 2021 14:09:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C22CC0041
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4F3940545
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdmI7GPegb2T for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E922F40548
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id y12so26083718eda.12
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nmr06pA0TokKoR6jlJic1Isl4JZia+uZ96LV+9m0Xfk=;
 b=qCilOhgU1ExKEZEIAxoiLKHqAkukOP07ZzUuPqR52J7FfCdWqISFFzn//+tHX35VLi
 RTThkXPJTbMU2L4plslbTzWY8aRPsH0tF24AoD+R5TuceouHuzSXojqeuLnfdL9/x297
 iLH3EirHXGckKJC9VJfEUHeyWfSFH7keERCCZ5F2xROX24SOF9/bqptMxXahfbAwAgn5
 2QvuQ3DzhYD1V3SxKgsjSm/ytjfj1Lw+E1EMb0vc7oPeSMNHYUi8CglzsT07EVhyfFw7
 6dNDrYZjmwUV2QHs/Vr2txD/Mx65Bywp5Qu26JlUKHkLwKKw/4ghpJ4rDMU0aO+EEVmL
 iOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nmr06pA0TokKoR6jlJic1Isl4JZia+uZ96LV+9m0Xfk=;
 b=1RgUo/WxJuG7/kIgAD5PCTZ0BTWU74kLq0ie1coAodumxczNKR6zWvbz599kMply78
 XRo4APX71+O9GNfb6WJ/JYOOT9V8iu+Zwwkcv37vARp6z1yahzXEREaR0ITjE/GPsOEJ
 EW/pu5tirhqQD/WHYDimUDh3zn3g0K+ZNUjnJDv9uTty9BGY4BtemgMFvX/8TyE3UiE5
 STEAqkci+2fEbkQHa9zxZxuV7kGMtKwQX0YITnW4s3z8liumtw0CYSg941offqOgdw2N
 QNqRtjO/D2Q14j87XJ0TUGiyvMlrfyk7CqW0HKB7bkmwb4Aw8P8dlx3ZjKtBxjc7zIjI
 zLyQ==
X-Gm-Message-State: AOAM532JPtfEM4F9JFK0K07QEtyjKYHQKJ3XUdllinHFt7P2SPn3NzAm
 9W9JlVnFrLRevJbCrVxe//7OBQ==
X-Google-Smtp-Source: ABdhPJxMes8ylLjzMUDK+c/dgBnadUX26SaFHqYxu1GjpM7dPtC1eSEH2LWv4cw+Wn2XVLbyiSgjxA==
X-Received: by 2002:a05:6402:124e:: with SMTP id
 l14mr39092087edw.74.1637849369093; 
 Thu, 25 Nov 2021 06:09:29 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:28 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:58 +0200
Message-Id: <20211125140858.3639139-11-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 10/10] selftests: net: bridge: add test
	for vlan_filtering dependency
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

Add a test for dependency of mcast_vlan_snooping on vlan_filtering. If
vlan_filtering gets disabled, then mcast_vlan_snooping must be
automatically disabled as well.

TEST: Disable multicast vlan snooping when vlan filtering is disabled   [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_vlan_mcast.sh    | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 898a70f4d226..5224a5a8595b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -4,7 +4,7 @@
 ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
 	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test \
 	   vlmc_querier_intvl_test vlmc_query_intvl_test vlmc_query_response_intvl_test \
-	   vlmc_router_port_test"
+	   vlmc_router_port_test vlmc_filtering_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -523,6 +523,16 @@ vlmc_router_port_test()
 	bridge vlan set vid 10 dev $swp1 mcast_router 1
 }
 
+vlmc_filtering_test()
+{
+	RET=0
+	ip link set dev br0 type bridge vlan_filtering 0
+	ip -j -d link show dev bridge | \
+	jq -e "select(.[0].linkinfo.info_data.mcast_vlan_snooping == 1)" &>/dev/null
+	check_fail $? "Vlan filtering is disabled but multicast vlan snooping is still enabled"
+	log_test "Disable multicast vlan snooping when vlan filtering is disabled"
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


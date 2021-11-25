Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729045DC05
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5782261BF1;
	Thu, 25 Nov 2021 14:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUBMs-pfiNB2; Thu, 25 Nov 2021 14:09:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DA92A61BF2;
	Thu, 25 Nov 2021 14:09:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10C3CC0039;
	Thu, 25 Nov 2021 14:09:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B49AC0030
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DFF54091F
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CQMmihbsYbPc for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69F6A40922
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id x6so26094346edr.5
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DYxPRHRLEYcQrka7MbONriR7V5sW93K2rC+A+CbWUo0=;
 b=16Km5yqD1Jq7DqqEExTSa8dTgydtuWXkbRI5Ua4QUtOuXqQSDk5JBX9Kk+rxevcQDN
 k+xgovQkOr0B9aF8hdIj9f6KCj9srlwk0EmuIYDCBqQ7dCA759Rlo831pOZek6OViGie
 nzORFaOJDeHw9EtShM7FVXaEw4tHSWGa0dSoNA0+7LCrL8phbzO2DisADNWu9nI6uVM/
 Ff1cnAuwnDtcX+pfb+tCm2V58UQBwDtzplViNpHLL4Pa6SOsmQGXOM8RQLSg+pW6ZsGC
 YqT88vZLmuI9D4gufEHFMqx8a1+paH+s35KH4LtVjNIGy+NKxulKQCsAqCwni3W8JPhd
 0jBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DYxPRHRLEYcQrka7MbONriR7V5sW93K2rC+A+CbWUo0=;
 b=RCDoGux7eiFbBZGYSWnWl4H7bVRqZngQg9eW+RqNSTXe3oK+XJl32wJBa6TxWnmeTH
 QPgAnYG27ikg4w4SlCR29pboUA69mmne2hkxeibK+1ykTEJ2dZD+9X1K3YnyQaQggf9V
 deHdNZ+rKcyYAjBiTSPHtESX3ctdShV6EZ3vgDlfWnM6Vk/MfNsg/dV9l9AD5q2j1VtT
 +R6ENKQPv498ZW1f99T5HzbRtCbuO/fj5aQc7BUnJ4de1tB8PI6Otl5HAvKFtu/YdNwL
 US7tqyxA5qGqX2josvvVfZoCEYMu7ZgMOLKJLjHLiVoZHiLSL+4jxa9DZ6A4A4/9bhFe
 /zVQ==
X-Gm-Message-State: AOAM530aiDjWJMCgFxa139v7JOZXTsfHIlZJFvKoaNy2qn2q4Is8zMJj
 0B4lLdvaFJnnmQh6NuK64PFhdA==
X-Google-Smtp-Source: ABdhPJzlFtYQnVuZVy5yHi28cZn17LwIKrH5XB4Kpl+/O4mXZh1KAREofI4NpQNHAV7OqqaIwJxb4Q==
X-Received: by 2002:a05:6402:84f:: with SMTP id
 b15mr37664622edz.323.1637849366194; 
 Thu, 25 Nov 2021 06:09:26 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:25 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:55 +0200
Message-Id: <20211125140858.3639139-8-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 07/10] selftests: net: bridge: add vlan
	mcast_querier_interval tests
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

Add tests which change the new per-vlan mcast_querier_interval and
verify that it is taken into account when an outside querier is present.

TEST: Vlan mcast_querier_interval global option default value       [ OK ]
TEST: Vlan 10 mcast_querier_interval option changed to 100          [ OK ]
TEST: Vlan 10 mcast_querier_interval expire after outside query     [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 40 ++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 87dcd49b0a8d..9a68d56fd74c 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -2,7 +2,8 @@
 # SPDX-License-Identifier: GPL-2.0
 
 ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
-	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test"
+	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test \
+	   vlmc_querier_intvl_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -384,6 +385,43 @@ vlmc_membership_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_membership_interval 26000
 }
 
+vlmc_querier_intvl_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_querier_interval == 25500) " &>/dev/null
+	check_err $? "Wrong default mcast_querier_interval global vlan option value"
+	log_test "Vlan mcast_querier_interval global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier_interval 100
+	check_err $? "Could not set mcast_querier_interval in vlan 10"
+	log_test "Vlan 10 mcast_querier_interval option changed to 100"
+
+	RET=0
+	ip link add dev br1 type bridge mcast_snooping 1 mcast_querier 1 vlan_filtering 1 \
+					mcast_vlan_snooping 1
+	bridge vlan add vid 10 dev br1 self pvid untagged
+	ip link set dev $h1 master br1
+	ip link set dev br1 up
+	bridge vlan add vid 10 dev $h1 master
+	bridge vlan global set vid 10 dev br1 mcast_snooping 1 mcast_querier 1
+	sleep 2
+	ip link del dev br1
+	ip addr replace 2001:db8:1::1/64 dev $h1
+	vlmc_check_query igmp 2 $swp1 1 1
+	check_err $? "Wrong number of IGMPv2 general queries after querier interval"
+	log_test "Vlan 10 mcast_querier_interval expire after outside query"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier_interval 25500
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


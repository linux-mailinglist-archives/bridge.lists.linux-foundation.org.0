Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7911E45DC03
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A1D361BEF;
	Thu, 25 Nov 2021 14:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5Hatepu3-Fw; Thu, 25 Nov 2021 14:09:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BD29161BED;
	Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97F4FC002F;
	Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14C62C000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D1F7408C2
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izTmQxJKim2B for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8D664091F
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:26 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id r11so26169853edd.9
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2qBrpPJsVudI6ySyaIY5TvYiAoJvmZq0zlu3qsVbGJw=;
 b=zkTCHhDPo6CeblP4zt7GKTJrhkAYeyHazgOcLJLN1Oy5SxnoWqzP10cvSZmh6t1EdB
 UD3x1kc6WaksgP3/QN+U3lZoZZ86ae3yhTwj4bRZDW4osGRd4F0pXTr21jkAi4ORy9LR
 vU234HOsyTi1nLApmLURc2RP2XBWXuD2wFsGLdCU/bQEzFA8U7AqaR1zqfEdAluM78d0
 pD3EHIRcNQZ6Q+gs8EKsIHxVu8014eFit2XUvfImxo5sbA2vz1giXpuOTnl6oUClTWil
 koFMY8GB5J1w1ITzMHNr90MvnSnFe4Osfetqqi7a1UuSWRopTqbMKSpEnFfXfblsDgdw
 /Fpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2qBrpPJsVudI6ySyaIY5TvYiAoJvmZq0zlu3qsVbGJw=;
 b=d+Bottpu1bNzcZWFM1iBZcva0SBtlXPhIdCTh6glCXuS4a7cGTkIOYXz87Rbzlur6X
 DQ18oc8OLGD/Tze83jQoT48CQR340QtzCkfdNEAvsmTwa1LMI6NRn53NNo5+rJicXX8+
 2i4ewUXfyoaxqKCzDFu2KAJvHDi4fy3NmZLTkMbdhLZqR5JBK62zTsd8zxHbU2GJh8CS
 ALwny55LFBMRf7LsQtmmGi4ylIvnv7QDsDnZElMmIDMYq5T35158Sw1eUW6sZtUQPfv5
 6dYhPT65KXABPVn7WGosoBLUsRTHys1icRp74pUNZojBoOQ0YT4aZ5hujh0EXDqqOfSA
 K3Fg==
X-Gm-Message-State: AOAM532y2v2OPRgu8+7213OM/0189ox7iQCfn2kgS33hs35qO9e1ZLPF
 qgkzYNaQxT7tSBzuTx6FaNDIcA==
X-Google-Smtp-Source: ABdhPJx9pJ1h5f1zet4iWkjJRsBMnfn84hmVUiJ+4VBsrzm9yqnDq0Jpeo2MiBWwKJnuv5HjppC1Eg==
X-Received: by 2002:a17:907:7f8f:: with SMTP id
 qk15mr31334914ejc.455.1637849357975; 
 Thu, 25 Nov 2021 06:09:17 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:17 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:52 +0200
Message-Id: <20211125140858.3639139-5-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 04/10] selftests: net: bridge: add vlan
	mcast_last_member_count/interval tests
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

Add tests which verify the default values of mcast_last_member_count
mcast_last_member_count and also try to change them.

TEST: Vlan mcast_last_member_count global option default value      [ OK ]
TEST: Vlan mcast_last_member_interval global option default value   [ OK ]
TEST: Vlan 10 mcast_last_member_count option changed to 3           [ OK ]
TEST: Vlan 10 mcast_last_member_interval option changed to 200      [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 1b91778fac2f..85146c998316 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test"
+ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test vlmc_last_member_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -284,6 +284,40 @@ vlmc_igmp_mld_version_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_mld_version 1
 }
 
+vlmc_last_member_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_last_member_count == 2) " &>/dev/null
+	check_err $? "Wrong default mcast_last_member_count global vlan option value"
+	log_test "Vlan mcast_last_member_count global option default value"
+
+	RET=0
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_last_member_interval == 100) " &>/dev/null
+	check_err $? "Wrong default mcast_last_member_interval global vlan option value"
+	log_test "Vlan mcast_last_member_interval global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_last_member_count 3
+	check_err $? "Could not set mcast_last_member_count in vlan 10"
+	log_test "Vlan 10 mcast_last_member_count option changed to 3"
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_last_member_count 2
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_last_member_interval 200
+	check_err $? "Could not set mcast_last_member_interval in vlan 10"
+	log_test "Vlan 10 mcast_last_member_interval option changed to 200"
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_last_member_interval 100
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AE645DBFD
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29D7061BE4;
	Thu, 25 Nov 2021 14:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SvUP4OKoognc; Thu, 25 Nov 2021 14:09:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AA44860D6A;
	Thu, 25 Nov 2021 14:09:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E19C0C0030;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE512C000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCEA6408CE
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IBM20E-0PGXO for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3CE640303
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:18 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id x15so26151575edv.1
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FzgAx/GM5UY7f5TX8VZkJRzCg4EVgCVxeMVd/CytlKU=;
 b=kVCq5pWtzAWSHFYGKKnoa+wROir6oCgaHq8S/t7k0/VnVWnx2tlLcVzoF/81ImvC2W
 L4LnH3d61VE8JTaMpI6aUcmjeqheIEboLwgiIlj6flPJLV55AwsIGXGHRx7TB/qeGfrg
 f28bpDm68q9KcAfybVWFNcXnxltwpEs/TwkSUtxZX1RZFo4zXgI1GKbXDU1jYyWoHlNu
 yqTKL4DBFI1SoVFJYCnAyBxk6ZwK4K6hiwgWauHgmRT47huWzRTDVlwD3L+/qNF0ygpf
 5Jzjs8Now3cL+BgyMzgL++n0O/ptuouqzzYa4IKxVvV/4sTlhMRkarFdlxaesLq4e7gy
 pKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FzgAx/GM5UY7f5TX8VZkJRzCg4EVgCVxeMVd/CytlKU=;
 b=tTeajNIhYMnK5cMeHwxJr8AClTOtBPV6a0QU9m+4cnBpUUbBWIdKPQflOW0AB2Yy6E
 6uNQBTjUI9s7r42xxKYORhLk6p8N8kuGhGB1v1rdPv2Xzkef7Gjl+KhjnlYW/Rv5Cfvm
 QkjJA4SFqK51zJFu78XWq3TjrZURsPajptKXbSyEinxTr0lFLf4r2DOVgAZ1cgXEzxrY
 sBPySaZn25W59b6R24u88AOIEaESdjEa5GyJkPbg/joRPKfrANkqUA8CjUUDHr2CqIZT
 lHboeqhG9gH2/SputRQ+eWa1+Q+4XHtjQgWVXl0zDMc9XTs7KUYxSYcCjT2dGh/qw2ar
 IBvQ==
X-Gm-Message-State: AOAM5326z84uzLUUmlFgRtK9UUJyk+OW1ohZBZ0Pnb5xLFhzj4jmHilu
 vOuVv7569lsEp6hNB46T8H0Fow==
X-Google-Smtp-Source: ABdhPJybo0OICHJGzFirHRDPUPSja8NYuLoyAWJRXRl/kCcpxPylRZbw4iLn5N/myyLCw/hIbhSwhg==
X-Received: by 2002:a17:907:86a1:: with SMTP id
 qa33mr31819212ejc.142.1637849356887; 
 Thu, 25 Nov 2021 06:09:16 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:16 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:51 +0200
Message-Id: <20211125140858.3639139-4-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 03/10] selftests: net: bridge: add vlan
	mcast igmp/mld version tests
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

Add tests which change the new per-vlan IGMP/MLD versions and verify
that proper tagged general query packets are sent.

TEST: Vlan mcast_igmp_version global option default value           [ OK ]
TEST: Vlan mcast_mld_version global option default value            [ OK ]
TEST: Vlan 10 mcast_igmp_version option changed to 3                [ OK ]
TEST: Vlan 10 tagged IGMPv3 general query sent                      [ OK ]
TEST: Vlan 10 mcast_mld_version option changed to 2                 [ OK ]
TEST: Vlan 10 tagged MLDv2 general query sent                       [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 45 ++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index aa23764a328b..1b91778fac2f 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="vlmc_control_test vlmc_querier_test"
+ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -241,6 +241,49 @@ vlmc_querier_test()
 	log_test "Vlan 10 tagged MLD general query sent"
 }
 
+vlmc_igmp_mld_version_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and .mcast_igmp_version == 2) " &>/dev/null
+	check_err $? "Wrong default mcast_igmp_version global vlan option value"
+	log_test "Vlan mcast_igmp_version global option default value"
+
+	RET=0
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and .mcast_mld_version == 1) " &>/dev/null
+	check_err $? "Wrong default mcast_mld_version global vlan option value"
+	log_test "Vlan mcast_mld_version global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_igmp_version 3
+	check_err $? "Could not set mcast_igmp_version in vlan 10"
+	log_test "Vlan 10 mcast_igmp_version option changed to 3"
+
+	RET=0
+	vlmc_check_query igmp 3 $swp1 1 1
+	check_err $? "No vlan tagged IGMPv3 general query packets sent"
+	log_test "Vlan 10 tagged IGMPv3 general query sent"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_mld_version 2
+	check_err $? "Could not set mcast_mld_version in vlan 10"
+	log_test "Vlan 10 mcast_mld_version option changed to 2"
+
+	RET=0
+	vlmc_check_query mld 2 $swp1 1 1
+	check_err $? "No vlan tagged MLDv2 general query packets sent"
+	log_test "Vlan 10 tagged MLDv2 general query sent"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_igmp_version 2
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_mld_version 1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1


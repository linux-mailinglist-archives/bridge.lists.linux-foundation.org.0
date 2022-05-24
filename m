Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61585532D3E
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 17:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC2576122E;
	Tue, 24 May 2022 15:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19DArowq1C05; Tue, 24 May 2022 15:22:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6753461228;
	Tue, 24 May 2022 15:22:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 175ADC007E;
	Tue, 24 May 2022 15:22:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B970C002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78FC684089
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTAVHbuS8gu2 for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 15:22:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 878168408D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:13 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id bu29so31462380lfb.0
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 08:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=FgEZaD+qaBUQURDZcatdSAcmpukEK3yyWD1n5B1AlNE=;
 b=Dqj8l9wZWDZHC1yP3YJCdmoXSjz9VdQZ0nXh27JmdifHCAIdkhRbRZVQrIejbZ3WjQ
 Facd+POgcmZoA1cdq73VcsPdCaQaAaTKVp5LHtYw4L1/E/nOU22l7xsISjb2Rwn5mTYS
 B/K02m5GurI9+HcZsANOpX/kFRKW5mQsMTRHcVgCKPiJVvMYxxxks6npgJp87DTTWKCo
 0zfjBUBu4SaIPElyMYzh2zUvhVknUjvzJ6sSEPM6AE3Lwg4DdaLTqZDWzfgdvPOLmSW1
 K7UQILzLUgJSIWLuPfcMrf+Kum4zLz5TvwBScXCaxb0/192mPsaw8vZoKo3dhGaOiHST
 a3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=FgEZaD+qaBUQURDZcatdSAcmpukEK3yyWD1n5B1AlNE=;
 b=KiPoLBTLexSoxbW0G/ahDpvu9FKLTVJ8f+/pNpFzF6kk2LMVJhtRTbcj05KDUf31uQ
 iUb4rAL1B/MaTBtjol1DV4hp/tTyjC4g93PECSxaevBTuTVOpR0/aqx/qzDwxoiDxlXC
 17S5pnRcclHcF1ESztFTk79SMTKQiL9qxrFqaCBX9oFztMI5R8fgA98+Z2q/32H3mNOt
 ms7q8CYNTo519YKFUow4P1eoyRrYc3XdCxZtUPMoP66bqiAwHKXr7QbWOD2wYPW9dkzy
 1BCotf64/ZI2zB/Rx/ITuFoaE2QGg6E+5XCLzzTrS8EDNqXOq08fgONVXparw7vKKujl
 Q7Cg==
X-Gm-Message-State: AOAM533NxFws+Qn8A1uQ/yNpc1X1+TYgGjAjxmPDfueUtalvogJQ4FbZ
 uDT3o4TgKaLlLCwp036JWSk=
X-Google-Smtp-Source: ABdhPJxDH5QbQwWSsc4CHoBv8PDLSvGdn1OPRFrwKo67di2vK6AqwBhM00lt3/n2SEU2ZLuAtpjeLA==
X-Received: by 2002:a05:6512:150b:b0:43b:3539:e215 with SMTP id
 bq11-20020a056512150b00b0043b3539e215mr19370076lfb.573.1653405731360; 
 Tue, 24 May 2022 08:22:11 -0700 (PDT)
Received: from wse-c0127.westermo.com
 (2-104-116-184-cable.dk.customer.tdc.net. [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a2e3316000000b00253deeaeb3dsm2441404ljc.131.2022.05.24.08.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 08:22:11 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 24 May 2022 17:21:44 +0200
Message-Id: <20220524152144.40527-5-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH V3 net-next 4/4] selftests: forwarding: add test of
	MAC-Auth Bypass to locked port tests
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

Verify that the MAC-Auth mechanism works by adding a FDB entry with the
locked flag set. denying access until the FDB entry is replaced with a
FDB entry without the locked flag set.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 .../net/forwarding/bridge_locked_port.sh      | 42 ++++++++++++++++---
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index 5b02b6b60ce7..50b9048d044a 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
+ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
 NUM_NETIFS=4
 CHECK_TC="no"
 source lib.sh
@@ -94,13 +94,13 @@ locked_port_ipv4()
 	ping_do $h1 192.0.2.2
 	check_fail $? "Ping worked after locking port, but before adding FDB entry"
 
-	bridge fdb add `mac_get $h1` dev $swp1 master static
+	bridge fdb replace `mac_get $h1` dev $swp1 master static
 
 	ping_do $h1 192.0.2.2
 	check_err $? "Ping did not work after locking port and adding FDB entry"
 
 	bridge link set dev $swp1 locked off
-	bridge fdb del `mac_get $h1` dev $swp1 master static
+	bridge fdb del `mac_get $h1` dev $swp1 master
 
 	ping_do $h1 192.0.2.2
 	check_err $? "Ping did not work after unlocking port and removing FDB entry."
@@ -124,13 +124,13 @@ locked_port_vlan()
 	ping_do $h1.100 198.51.100.2
 	check_fail $? "Ping through vlan worked after locking port, but before adding FDB entry"
 
-	bridge fdb add `mac_get $h1` dev $swp1 vlan 100 master static
+	bridge fdb replace `mac_get $h1` dev $swp1 master static
 
 	ping_do $h1.100 198.51.100.2
 	check_err $? "Ping through vlan did not work after locking port and adding FDB entry"
 
 	bridge link set dev $swp1 locked off
-	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master static
+	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master
 
 	ping_do $h1.100 198.51.100.2
 	check_err $? "Ping through vlan did not work after unlocking port and removing FDB entry"
@@ -153,7 +153,8 @@ locked_port_ipv6()
 	ping6_do $h1 2001:db8:1::2
 	check_fail $? "Ping6 worked after locking port, but before adding FDB entry"
 
-	bridge fdb add `mac_get $h1` dev $swp1 master static
+	bridge fdb replace `mac_get $h1` dev $swp1 master static
+
 	ping6_do $h1 2001:db8:1::2
 	check_err $? "Ping6 did not work after locking port and adding FDB entry"
 
@@ -166,6 +167,35 @@ locked_port_ipv6()
 	log_test "Locked port ipv6"
 }
 
+locked_port_mab()
+{
+	RET=0
+	check_locked_port_support || return 0
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+	bridge link set dev $swp1 learning on
+
+	bridge fdb del `mac_get $h1` dev $swp1 master
+
+	ping_do $h1 192.0.2.2
+	check_fail $? "MAB: Ping worked on locked port without FDB entry"
+
+	bridge fdb show | grep `mac_get $h1` | grep -q "locked"
+	check_err $? "MAB: No locked fdb entry after ping on locked port"
+
+	bridge fdb replace `mac_get $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
+
+	bridge fdb del `mac_get $h1` dev $swp1 master
+	bridge link set dev $swp1 locked off
+
+	log_test "Locked port MAB"
+}
 trap cleanup EXIT
 
 setup_prepare
-- 
2.30.2


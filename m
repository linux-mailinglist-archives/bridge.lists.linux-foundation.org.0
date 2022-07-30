Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA2058675A
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 12:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99C9682AA9;
	Mon,  1 Aug 2022 10:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99C9682AA9
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=MKFggB8o
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtZ7BY6-Kg1M; Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 08581817EB;
	Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08581817EB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F1942C0086;
	Mon,  1 Aug 2022 10:25:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7ADBC002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A03E7417B9
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A03E7417B9
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MKFggB8o
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ul7BRgT6dQz for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:03:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DDEA417B5
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DDEA417B5
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:55 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id o1so5675150qkg.9
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qLzw+p0S78/HSEdQ7LBwxStiGJCgHNO2kd5yQe6cZ1o=;
 b=MKFggB8oiN4zKc2x0wkJ6tyvhwP2F+SpKt/g8ysZkswPoTRLd8TGnHZST9O1QdQUGP
 5axm0ZkwMHkbAW94Fg4GCyM+iFetWv+6YNLrMIYiaNjAs2Gy6bRY8Ztot5v193jOn+Mz
 sufiLomkHEpZM2ejntx+bcY1nTh8exS3sAZaR0hdRiMCfAvt/dyfx+T8x2x24Z1BjuUw
 OPDbxlwlE7q9p/qVrTQ7s8urQkdTkLNS2LehHSNV9b3EyfBISqESwhEKyd1acvDOEwUd
 A5EuzFTotFp3hqiFd3vGwYxLdk2Xr6Y/rnD20bgvzumT5ijD2fsyC4uFFfKX7ZagZN4s
 xEqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qLzw+p0S78/HSEdQ7LBwxStiGJCgHNO2kd5yQe6cZ1o=;
 b=k7fLpU/j/kZriUeQUbljWOyYJFiec32hAKNtYfLti/uURclgck314bQVvLvC6Eqmjm
 2K5Hdc/JfUpKhmmtZRvDX2Ravo4eqfiT1ZouocelUMJNedyK1s++08g5CWQrvFe9T2/B
 25Kd3CSnC640Rn7nSg1Hsw7EYDZn3BXn4AkFdI1ZA8UwyZ8R60foukCzzNRY5TSiSwUu
 OiuiIFAntpTzCEac3FffC1FYKz0yNEQ9zQQMVWgzHZN/8OEfcOcBGJLqaw2BUrhh5ClQ
 f9QgncSJgokyGKXabE6dZ510zZzU0eJewAlGG3xDv2oxK7eH1j7d8idVaax69+SzRg+p
 mGmg==
X-Gm-Message-State: AJIora9oaEz1Umcc7uKOfu68oFLxayP/OmhY99T+EbFjctqzlamR/1vY
 UAyVJILRvYjAWVHpralXnII=
X-Google-Smtp-Source: AGRyM1uDRcFu6F/JhirJPEqanfOY+Kduw/8YivoJYjVgn7Ihv3i41gAhQ7yaXEI2FLc3lzfqKa5pVw==
X-Received: by 2002:a05:620a:290d:b0:6b5:cecc:1cab with SMTP id
 m13-20020a05620a290d00b006b5cecc1cabmr6446562qkp.465.1659197033916; 
 Sat, 30 Jul 2022 09:03:53 -0700 (PDT)
Received: from ada ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 c3-20020ac85a83000000b0031ec83851ccsm4449728qtc.38.2022.07.30.09.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jul 2022 09:03:53 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: aroulin@nvidia.com
Date: Sat, 30 Jul 2022 12:03:32 -0400
Message-Id: <222e04a7b4647a57afbad89447f239564af39d24.1659195179.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
References: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 01 Aug 2022 10:25:24 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 3/3] selftests: net: tests for bridge
	binding behavior
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

This patch adds two tests in a single file. The first of these is in
function run_test_late_bridge_binding_set, which tests that when a
vlan interface is created with bridge binding turned off, and later
bridge binding is turned on (using ip link set... command), the vlan
interface behaves accordingly, that is, it tracks the status of the
ports in its vlan.

The second test, which is in function run_test_multiple_vlan, tests
that when there are two vlan interfaces with bridge binding turned on,
turning off the bridge binding in one of the vlan interfaces does not
affect the bridge binding on the other interface.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Andy Roulin <aroulin@nvidia.com>
Reviewed-by: Roopa Prabhu <roopa@nvidia.com>
---
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
 2 files changed, 144 insertions(+)
 create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftests/net/Makefile
index 80628bf8413a..f3ac4cb01695 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -40,6 +40,7 @@ TEST_PROGS += arp_ndisc_evict_nocarrier.sh
 TEST_PROGS += ndisc_unsolicited_na_test.sh
 TEST_PROGS += arp_ndisc_untracked_subnets.sh
 TEST_PROGS += stress_reuseport_listen.sh
+TEST_PROGS += bridge_vlan_binding_test.sh
 TEST_PROGS_EXTENDED := in_netns.sh setup_loopback.sh setup_veth.sh
 TEST_PROGS_EXTENDED += toeplitz_client.sh toeplitz.sh
 TEST_GEN_FILES =  socket nettest
diff --git a/tools/testing/selftests/net/bridge_vlan_binding_test.sh b/tools/testing/selftests/net/bridge_vlan_binding_test.sh
new file mode 100755
index 000000000000..d094d847800c
--- /dev/null
+++ b/tools/testing/selftests/net/bridge_vlan_binding_test.sh
@@ -0,0 +1,143 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+cleanup() {
+	# Remove interfaces created by the previous run
+	ip link delete veth10 2>/dev/null
+	ip link delete veth20 2>/dev/null
+	ip link delete veth30 2>/dev/null
+	ip link delete br_default 2>/dev/null
+}
+
+trap cleanup EXIT
+
+setup() {
+	cleanup
+
+	# Create a bridge and add three ports to it.
+	ip link add dev br_default type bridge
+	ip link add dev veth10 type veth peer name veth11
+	ip link add dev veth20 type veth peer name veth21
+	ip link add dev veth30 type veth peer name veth31
+	ip link set dev veth10 master br_default
+	ip link set dev veth20 master br_default
+	ip link set dev veth30 master br_default
+
+	# Create VLAN 10 and VLAN 20.
+	bridge vlan add vid 10 dev br_default self
+	bridge vlan add vid 20 dev br_default self
+
+	# Add veth10 to VLAN 10 and veth20 to VLAN 20.
+	bridge vlan add vid 10 dev veth10
+	bridge vlan add vid 20 dev veth20
+
+	# Bring up the ports and the bridge.
+	ip link set veth10 up
+	ip link set veth11 up
+	ip link set veth20 up
+	ip link set veth21 up
+	ip link set veth30 up
+	ip link set veth31 up
+	ip link set br_default up
+}
+
+# This test checks that when a vlan interface is created with bridge
+# binding off, and then bridge binding turned on using "ip link set"
+# command, bridge binding is actually turned on -- this hasn't been
+# the case in the past.
+run_test_late_bridge_binding_set() {
+	setup
+
+	# Add VLAN interface vlan10 to VLAN 10 with bridge binding off.
+	ip link add link br_default name vlan10 type vlan id 10 protocol \
+		802.1q bridge_binding off
+
+	# Bring up  VLAN interface.
+	ip link set vlan10 up
+
+	# Turn bridge binding on for vlan10.
+	ip link set vlan10 type vlan bridge_binding on
+
+	# Bring down the port in vlan 10.
+	ip link set veth10 down
+
+	# Since bridge binding is turned on for vlan10 interface, it
+	# should be tracking only the port, veth10 in its vlan. Since
+	# veth10 is down, vlan10 should be down as well.
+	if ! ip link show vlan10 | grep -q 'state LOWERLAYERDOWN'; then
+	    echo "FAIL - vlan10 should be LOWERLAYERDOWN but it is not"
+	    exit 1
+	fi
+
+	# Bringe the port back up.
+	ip link set veth10 up
+
+	# The vlan 10 interface should be up now.
+	if ! ip link show vlan10 | grep -q 'state UP'; then
+	    echo "FAIL - vlan10 should be UP but it is not"
+	    exit 1
+	fi
+
+	echo "OK"
+}
+
+# This test checks that when there are multiple vlan interfaces with
+# bridge binding on, turning off bride binding in one of the vlan
+# interfaces does not affect the bridge binding of the other
+# interface.
+run_test_multiple_vlan() {
+	setup
+
+	# Add VLAN interface vlan10 to VLAN 10 with bridge binding on.
+	ip link add link br_default name vlan10 type vlan id 10 protocol \
+		802.1q bridge_binding on
+	# Add VLAN interface vlan20 to VLAN 20 with bridge binding on.
+	ip link add link br_default name vlan20 type vlan id 20 protocol \
+		802.1q bridge_binding on
+
+	# Bring up  VLAN interfaces.
+	ip link set vlan10 up
+	ip link set vlan20 up
+
+	# Turn bridge binding off for vlan10.
+	ip link set vlan10 type vlan bridge_binding off
+
+	# Bring down the ports in vlans 10 and 20.
+	ip link set veth10 down
+	ip link set veth20 down
+
+	# Since bridge binding is off for vlan10 interface, it should
+	# be tracking all of the ports in the bridge; since veth30 is
+	# still up, vlan10 should also be up.
+	if ! ip link show vlan10 | grep -q 'state UP'; then
+	    echo "FAIL - vlan10 should be UP but it is not"
+	    exit 1
+	fi
+
+	# Since bridge binding is on for vlan20 interface, it should
+	# be tracking only the ports in its vlan. This port is veth20,
+	# and it is down; therefore, vlan20 should be down as well.
+	if ! ip link show vlan20 | grep -q 'state LOWERLAYERDOWN'; then
+	    echo "FAIL - vlan20 should be LOWERLAYERDOWN but it is not"
+	    exit 1
+	fi
+
+	# Bring the ports back up.
+	ip link set veth10 up
+	ip link set veth20 up
+
+	# Both vlan interfaces should be up now.
+	if ! ip link show vlan10 | grep -q 'state UP'; then
+	    echo "FAIL - vlan10 should be UP but it is not"
+	    exit 1
+	fi
+	if ! ip link show vlan20 | grep -q 'state UP' ; then
+	    echo "FAIL - vlan20 should be UP but it is not"
+	    exit 1
+	fi
+
+	echo "OK"
+}
+
+run_test_late_bridge_binding_set
+run_test_multiple_vlan
-- 
2.25.1


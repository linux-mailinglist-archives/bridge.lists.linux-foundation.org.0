Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDE75BBA3B
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C5D8416C6;
	Sat, 17 Sep 2022 20:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C5D8416C6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FZ7G+W/t
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPN9u3nzkxyH; Sat, 17 Sep 2022 20:18:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7900840528;
	Sat, 17 Sep 2022 20:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7900840528
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F297C0078;
	Sat, 17 Sep 2022 20:18:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDD0DC002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC3E14166C
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC3E14166C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eiatKRKl2SFT for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C73EA41658
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C73EA41658
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:20 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id s13so19162897qvq.10
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=00Tw4Iguiga6FIJOQTAU2+b9Codsgvfv3AG/3wKNVqM=;
 b=FZ7G+W/tFDZsg5m8et+ZfWZX+4PjaCgi1eksG5u4CCRchWpmUEt0I9eG42xBA6HxzT
 QrStOK1km8P3bBa6dBMtGK8g5roVU03R/aPWl2v+GNYPN+NQAXum8o6fWr6UGnN4DEKS
 4pUa6MJqvPGMaE95CrmUwMhtL9PlDy6kvS+rWlujoGhNcCMe/rfMjIwSYeTQ8/SvcOud
 gGCSxfMpapJPzvRqtt+CXvjcoc5ftKp/egs1LDyErvMbwJs9/yyUVmyDqyU0d6To4HQy
 JudEstUVnQdsOG3q55dmFOlfRmqZa6iEMFQ9CiVeeil4neoDiRXj1IlqAi4mxb1KAJCl
 TxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=00Tw4Iguiga6FIJOQTAU2+b9Codsgvfv3AG/3wKNVqM=;
 b=oExrAvYQRk36j5AsfOK35cz3jPkSx6jjkEVJTa1YmFrDSjHRS4w/cZpWU3r7srUL1E
 vuTozph7mv4s2z562crAeXPkS9l4n+zaPuozIzbOA0o5/szqzb4P7gfQvs/WvnHu8+04
 BCGvNq2Qw3DNDPCHK6hHDR5FBaCB+l+8A4/KyTg7WXE+WOADUdztDKgqihkJvBy57q1P
 YATSUx3aQA1SDGnP6wn564ASc73yxQ8GFkNCF/b6GGC9oOAY1drsFGxp+iz6wQhI0R10
 CtWLI/Iz+bAyJa5HdNbcygxSG+mUi6J7cJxJVSCQ9VtHKAuHS0BloRBH29H9jdcaKpj8
 g9gw==
X-Gm-Message-State: ACrzQf0nCeOI1UfdjMyGZKsXKukMUDjxKdotMN1OUfEEYqRdVBMFV4I1
 vb8FfrYnfKZewpBAMSVguuo=
X-Google-Smtp-Source: AMsMyM6idTlZ53YB1hY5TEa6/BimH2eRTDY7cE0gD3aQdMJGBGm3G32SrIhP0qOGJiE3SkIvTMSUtA==
X-Received: by 2002:a05:6214:4006:b0:48d:3f52:52e7 with SMTP id
 kd6-20020a056214400600b0048d3f5252e7mr9262865qvb.113.1663445899504; 
 Sat, 17 Sep 2022 13:18:19 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 x8-20020ac85388000000b0035bafecff78sm7280790qtp.74.2022.09.17.13.18.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:19 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:18:01 -0400
Message-Id: <eaf0aa288dcfee4e36fcfa6ba7c3b8bcc584f0bf.1663445339.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 5/5] selftests: net: tests for bridge
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
---
 tools/testing/selftests/net/Makefile          |   1 +
 .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
 2 files changed, 144 insertions(+)
 create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftests/net/Makefile
index f5ac1433c301..48443928c3dd 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -44,6 +44,7 @@ TEST_PROGS += arp_ndisc_untracked_subnets.sh
 TEST_PROGS += stress_reuseport_listen.sh
 TEST_PROGS += l2_tos_ttl_inherit.sh
 TEST_PROGS += bind_bhash.sh
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
2.34.1


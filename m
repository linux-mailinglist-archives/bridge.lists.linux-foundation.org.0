Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7706B58E537
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 05:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EFBF41514;
	Wed, 10 Aug 2022 03:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EFBF41514
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=MTOYxRdy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVkO6tA4vVFF; Wed, 10 Aug 2022 03:11:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DD75D41507;
	Wed, 10 Aug 2022 03:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD75D41507
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8A31BC002D;
	Wed, 10 Aug 2022 03:11:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3451AC002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01A53819BC
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01A53819BC
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MTOYxRdy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LexmtCDljZ4g for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 03:11:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EB5281B7B
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EB5281B7B
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 03:11:52 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id h22so10314896qta.3
 for <bridge@lists.linux-foundation.org>; Tue, 09 Aug 2022 20:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=/oN8Y19YBePd6dfiaSMZlRcrDJkNGp/MObmKR7ElbaE=;
 b=MTOYxRdyHIOAmsdXbK/rwmKqXXCb9RNNnPUuyhHyHX53WZnINbPj+z/QIWLjlDWar6
 2C8M+EQG8m5tBOSQQ62wttblFj5a7+k4QrnncFtL7fofzoXYHDJi7+coAXFaOi53l3Bc
 Us0XuMhPYWpwSq96RY7CW6DPRLVXDHRfJyPOLHuQ6eAYqXuGG7UYaXYAkBUD2fsFTe4L
 m/6TMpMD4xU3XsvPqEZdTeBbdVEElLVIjLIjePczE0NVlN6wVxdcAzDEgDu0tfEaJ9Gb
 FhlVGMVwbty1YdiQpp3QkdII6s21s48NYPBaeHsiR6CWKarGWLz5nmnW4srDvEeRKfCX
 /VcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=/oN8Y19YBePd6dfiaSMZlRcrDJkNGp/MObmKR7ElbaE=;
 b=37q+6LRKIdPbjY/DrQOw4H+RzF8cAJy/uV9gfcVzRv/zhg81A/ChrmCHo+LsTfmyR4
 /ZU1D/XAng/x2f/Wh+pvFsCIhgRd+DcLoFl8f63aTah0i0jJfdQa55m42Z/5rnGRqIOU
 E/GjJnzyKuJgn+VdhlyQ0oEhQvlRIqtRWdpiTPjWnRCEaMSPlNlyeVsgPcaWA5fcZg5p
 dw8KGopOzOdcR61NUA6j+DzgYWsfQhSqAEW/vc0Owzwep/0UKLqZ9ooTClKiIS6/OEvp
 epzV3mYb0nb8X1BYjYtEjHxdHEL3WVEfevG95nolpFVs1kSOQrs7EgrxOA+BjZanM77r
 1QWQ==
X-Gm-Message-State: ACgBeo32/uNiZxxWBB196whEjtDCvuVuo8C65UZZcakSzi674+DPz7zL
 t9H6G5pkdFPcKTSb12d/Vhs=
X-Google-Smtp-Source: AA6agR4GOXlXnmebVX5gh9j6MStsvFH16AsGHH1nXRpjQlPUF8gosV1CZUwAr/WFOE19qz8Fz+YeXg==
X-Received: by 2002:a05:622a:1a26:b0:343:583a:14e0 with SMTP id
 f38-20020a05622a1a2600b00343583a14e0mr1149847qtb.27.1660101110807; 
 Tue, 09 Aug 2022 20:11:50 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 t1-20020a05620a450100b006b59f02224asm13588722qkp.60.2022.08.09.20.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Aug 2022 20:11:50 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Tue,  9 Aug 2022 23:11:21 -0400
Message-Id: <07490aafa3eb8fc725199e53b0c5a1cf704e6ad0.1660100506.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 3/3] selftests: net: tests for bridge
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
index db05b3764b77..91e86a47ce49 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -39,6 +39,7 @@ TEST_PROGS += vrf_strict_mode_test.sh
 TEST_PROGS += arp_ndisc_evict_nocarrier.sh
 TEST_PROGS += ndisc_unsolicited_na_test.sh
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


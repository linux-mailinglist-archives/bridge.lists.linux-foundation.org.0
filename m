Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CBA7C03C1
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4676741DC5;
	Tue, 10 Oct 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4676741DC5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=j2ApeW2x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNykoYkcEa0k; Tue, 10 Oct 2023 18:53:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B0D8A41750;
	Tue, 10 Oct 2023 18:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D8A41750
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E51B1C0DD3;
	Tue, 10 Oct 2023 18:53:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2F20C0032
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91A6F4051B
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91A6F4051B
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=j2ApeW2x
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqA4tBf9fnMH for <bridge@lists.linux-foundation.org>;
 Wed, 27 Sep 2023 08:06:43 +0000 (UTC)
X-Greylist: delayed 528 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 27 Sep 2023 08:06:43 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FBEE4014D
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FBEE4014D
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 08:06:43 +0000 (UTC)
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B73593F641
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 07:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1695801472;
 bh=ip6/ccZiNvOX6hccEjrHN08lTPqfzJb4ULfAfkXBgJM=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=j2ApeW2x05hDbbSseCK5OFJGwMUDtu7AwAqJibNbPWR8XMRLfgg94QcaUW82WUhmE
 6epeOkdojGKynyxY1++uET1fEvanGgi4+A6WX2420PfkBgCkpBt2WirEgBpA7IXvKB
 +5phKPvUMOPtzunDXweVwbaVfN/A2qpT2jvLo6nBg6PtmT7eHqGMaby5Ao7d0LzfLe
 WDdJdgLvezfI5E/elZJON385pzSYxffqGhDB33HBLZeVdPLB2+/nBKkc1DNCEZmTpp
 KpQTGr0d3eH5Nk+eJQXgNjkLqCD8eYhVa4toP3UhUWuiO04FxiZ69jXfXYm5tAc5Cd
 2ZuNLkB+Lv9vQ==
Received: by mail-pf1-f197.google.com with SMTP id
 d2e1a72fcca58-690cd1e39a6so12023743b3a.3
 for <bridge@lists.linux-foundation.org>; Wed, 27 Sep 2023 00:57:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695801471; x=1696406271;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ip6/ccZiNvOX6hccEjrHN08lTPqfzJb4ULfAfkXBgJM=;
 b=bhloMTS8KK/NMEGXwR0QGI22/c71pQq9gfrpQBWQ7i+KSSfmUN7a91hNfAgp+9xE4u
 AiqR6VUwa/FBGuKpSokf51TJmNtpYnfNJHY9VSEjmpl4SWUQ4dcFEkl+XRWGR8AKs+1P
 X0058S628LGksFu9OnUSWUYpPpkGIE3i38iv4HJ8JU62LDRuw7sYQflC9fDwrvrW0Vmm
 XktChOiUmkD2v/JDLyGoL8B4Ps0B3LgDMkI18EkxNG0jbnaBCv96ZuL37N9wzArGhiYg
 UOoYRNLNyiZkiH0+CvaG/GFHn5addy0m3DfrkFxaBR3j8E5wrJuIPaYIY/cqe3qIr009
 E/nQ==
X-Gm-Message-State: AOJu0YwDZC7p7vVd5rx1pOzHFMKlqvES96giaEeKX4x0ULL/87ARue16
 k4PpBY8albJMp32rCaSC8R6e8a9L2x2+zaNJSvfVtWZEWN3itgGzYvtHMFtQ2DRRbcySozQH2U1
 Erd8w8uSuZY/P0gI+Rs3sCDjMqge2draO7UjOK4+EeKuHdVtt
X-Received: by 2002:a05:6a00:3908:b0:68b:e6e0:5047 with SMTP id
 fh8-20020a056a00390800b0068be6e05047mr1315126pfb.14.1695801470956; 
 Wed, 27 Sep 2023 00:57:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHx/mG27sIh93gB6l2LsEMvHdKnrXh9xI6T0JaEJiOHd6Tv23J+iWR3GET7sPIMo+r+pFJuyQ==
X-Received: by 2002:a05:6a00:3908:b0:68b:e6e0:5047 with SMTP id
 fh8-20020a056a00390800b0068be6e05047mr1315106pfb.14.1695801470608; 
 Wed, 27 Sep 2023 00:57:50 -0700 (PDT)
Received: from zlab.. ([2403:5814:1313:1:68e8:66ff:feab:9acb])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a056a00178400b00692b6fe1c7asm8660643pfg.179.2023.09.27.00.57.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Sep 2023 00:57:50 -0700 (PDT)
From: Trent Lloyd <trent.lloyd@canonical.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>
Date: Wed, 27 Sep 2023 07:57:12 +0000
Message-Id: <20230927075713.1253681-1-trent.lloyd@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Trent Lloyd <trent.lloyd@canonical.com>, linux-kselftest@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [Bridge] [PATCH] bridge: MTU auto tuning ignores IFLA_MTU on NEWLINK
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

Commit 804b854d374e ("net: bridge: disable bridge MTU auto tuning if it
was set manually") disabled auto-tuning of the bridge MTU when the MTU
was explicitly set by the user, however that would only happen when the
MTU was set after creation. This commit ensures auto-tuning is also
disabled when the MTU is set during bridge creation.

Currently when the br_netdev_ops br_change_mtu function is called, the
flag BROPT_MTU_SET_BY_USER is set. However this function is only called
when the MTU is changed after interface creation and is not called if
the MTU is specified during creation with IFLA_MTU (br_dev_newlink).

br_change_mtu also does not get called if the MTU is set to the same
value it currently has, which makes it difficult to work around this
issue (especially for the default MTU of 1500) as you have to first
change the MTU to some other value and then back to the desired value.

Add new selftests to ensure the bridge MTU is handled correctly:
 - Bridge created with user-specified MTU (1500)
 - Bridge created with user-specified MTU (2000)
 - Bridge created without user-specified MTU
 - Bridge created with user-specified MTU set after creation (2000)

Regression risk: Any workload which erroneously specified an MTU during
creation but accidentally relied upon auto-tuning to a different value
may be broken by this change.

Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2034099
Fixes: 804b854d374e ("net: bridge: disable bridge MTU auto tuning if it was set manually")
Signed-off-by: Trent Lloyd <trent.lloyd@canonical.com>
---
 net/bridge/br_netlink.c                       |   3 +
 .../selftests/drivers/net/bridge/Makefile     |  10 ++
 .../drivers/net/bridge/bridge-user-mtu.sh     | 148 ++++++++++++++++++
 .../drivers/net/bridge/net_forwarding_lib.sh  |   1 +
 4 files changed, 162 insertions(+)
 create mode 100644 tools/testing/selftests/drivers/net/bridge/Makefile
 create mode 100755 tools/testing/selftests/drivers/net/bridge/bridge-user-mtu.sh
 create mode 120000 tools/testing/selftests/drivers/net/bridge/net_forwarding_lib.sh

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 10f0d33d8ccf..8aff7d077848 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1559,6 +1559,9 @@ static int br_dev_newlink(struct net *src_net, struct net_device *dev,
 		spin_unlock_bh(&br->lock);
 	}
 
+	if (tb[IFLA_MTU])
+		br_opt_toggle(br, BROPT_MTU_SET_BY_USER, true);
+
 	err = br_changelink(dev, tb, data, extack);
 	if (err)
 		br_dev_delete(dev, NULL);
diff --git a/tools/testing/selftests/drivers/net/bridge/Makefile b/tools/testing/selftests/drivers/net/bridge/Makefile
new file mode 100644
index 000000000000..23e407c75a7f
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/bridge/Makefile
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0
+# Makefile for net selftests
+
+TEST_PROGS := \
+	bridge-user-mtu.sh
+
+TEST_FILES := \
+	net_forwarding_lib.sh
+
+include ../../../lib.mk
diff --git a/tools/testing/selftests/drivers/net/bridge/bridge-user-mtu.sh b/tools/testing/selftests/drivers/net/bridge/bridge-user-mtu.sh
new file mode 100755
index 000000000000..07e0ac972b00
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/bridge/bridge-user-mtu.sh
@@ -0,0 +1,148 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+#
+# Ensure a bridge MTU does not automatically change when it has been specified
+# by the user.
+#
+# To run independently:
+# make TARGETS=drivers/net/bridge kselftest
+
+ALL_TESTS="
+	bridge_created_with_user_specified_mtu
+	bridge_created_without_user_specified_mtu
+	bridge_with_late_user_specified_mtu
+"
+
+REQUIRE_MZ=no
+NUM_NETIFS=0
+lib_dir=$(dirname "$0")
+source "${lib_dir}"/net_forwarding_lib.sh
+
+setup_prepare()
+{
+	for i in 1 3 5; do
+		ip link add "vtest${i}" mtu 9000 type veth peer name "vtest${i}b" mtu 9000
+	done
+}
+
+cleanup()
+{
+	for interface in vtest1 vtest3 vtest5 br-test0 br-test1 br-test2; do
+		if [[ -d "/sys/class/net/${interface}" ]]; then
+			ip link del "${interface}" &> /dev/null
+		fi
+	done
+}
+
+check_mtu()
+{
+	cur_mtu=$(<"/sys/class/net/$1/mtu")
+	[[ ${cur_mtu} -eq $2 ]]
+	exit_status=$?
+	return "${exit_status}"
+}
+
+check_bridge_user_specified_mtu()
+{
+	if [[ -z $1 ]]
+	then
+		exit 1
+	fi
+	mtu=$1
+
+	RET=0
+
+	ip link add dev br-test0 mtu "${mtu}" type bridge
+	ip link set br-test0 up
+	check_mtu br-test0 "${mtu}"
+	check_err $? "Bridge was not created with the user-specified MTU"
+
+	check_mtu vtest1 9000
+	check_err $? "vtest1 does not have MTU 9000"
+
+	ip link set dev vtest1 master br-test0
+	check_mtu br-test0 "${mtu}"
+	check_err $? "Bridge user-specified MTU incorrectly changed after adding an interface"
+
+	log_test "Bridge created with user-specified MTU (${mtu})"
+
+	ip link del br-test0
+}
+
+bridge_created_with_user_specified_mtu() {
+	# Check two user-specified MTU values
+	# - 1500: To ensure the default MTU (1500) is not special-cased, you
+	#         should be able to lock a bridge to the default MTU.
+	# - 2000: Ensure bridges are actually created with a user-specified MTU
+	check_bridge_user_specified_mtu 1500
+	check_bridge_user_specified_mtu 2000
+}
+
+bridge_created_without_user_specified_mtu()
+{
+	RET=0
+	ip link add dev br-test1 type bridge
+	ip link set br-test1 up
+	check_mtu br-test1 1500
+	check_err $? "Bridge was not created with the user-specified MTU"
+
+	ip link set dev vtest3 master br-test1
+	check_mtu br-test1 9000
+	check_err $? "Bridge without user-specified MTU did not change MTU"
+
+	log_test "Bridge created without user-specified MTU"
+
+	ip link del br-test1
+}
+
+check_bridge_late_user_specified_mtu()
+{
+	if [[ -z $1 ]]
+	then
+		exit 1
+	fi
+	mtu=$1
+
+	RET=0
+	ip link add dev br-test2 type bridge
+	ip link set br-test2 up
+	check_mtu br-test2 1500
+	check_err $? "Bridge was not created with default MTU (1500)"
+
+	ip link set br-test2 mtu "${mtu}"
+	check_mtu br-test2 "${mtu}"
+	check_err $? "User-specified MTU set after creation was not set"
+	check_mtu vtest5 9000
+	check_err $? "vtest5 does not have MTU 9000"
+
+	ip link set dev vtest5 master br-test2
+	check_mtu br-test2 "${mtu}"
+	check_err $? "Bridge late-specified MTU incorrectly changed after adding an interface"
+
+	log_test "Bridge created without user-specified MTU and changed after (${mtu})"
+
+	ip link del br-test2
+}
+
+bridge_with_late_user_specified_mtu()
+{
+	# Note: Unfortunately auto-tuning is not disabled when you set the MTU
+	# to it's current value, including the default of 1500. The reason is
+	# that dev_set_mtu_ext skips notifying any handlers if the MTU is set
+	# to the current value. Normally that makes sense, but is confusing
+	# since you might expect "ip link set br0 mtu 1500" to lock the MTU to
+	# 1500 but that will only happen if the MTU was not already 1500. So we
+	# only check a non-default value of 2000 here unlike the earlier
+	# bridge_created_with_user_specified_mtu test
+
+	# Check one user-specified MTU value
+	# - 2000: Ensure bridges actually change to a user-specified MTU
+	check_bridge_late_user_specified_mtu 2000
+}
+
+trap cleanup EXIT
+
+setup_prepare
+tests_run
+
+exit "${EXIT_STATUS}"
diff --git a/tools/testing/selftests/drivers/net/bridge/net_forwarding_lib.sh b/tools/testing/selftests/drivers/net/bridge/net_forwarding_lib.sh
new file mode 120000
index 000000000000..39c96828c5ef
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/bridge/net_forwarding_lib.sh
@@ -0,0 +1 @@
+../../../net/forwarding/lib.sh
\ No newline at end of file
-- 
2.34.1


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D62C793B
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 14:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 530B587694;
	Sun, 29 Nov 2020 13:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJGHZEoRbqXi; Sun, 29 Nov 2020 13:05:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93ECA876EB;
	Sun, 29 Nov 2020 13:05:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 61DBEC0052;
	Sun, 29 Nov 2020 13:05:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2120C0052
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B92B9876C9
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiHn55f8Uyzn for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80AA887694
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 13:05:54 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id ECC3D5806EE;
 Sun, 29 Nov 2020 07:54:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 29 Nov 2020 07:54:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=+1rM72rUS1RwxEMSKX+3Qq9La+Y4Jk9RXUti7lKs6eY=; b=KokFreLG
 NFnDksRq3ZCXH6eIIZ1QEUz3kOVegoUCk4jh9jlTrMXvJmfcH3RQ+9OkJgjAxrCL
 6mQfB9WPSUIo+tCxHCKTI5vrneayOiWt0IVVeBOfk1WMATwle18Dul0ndNqqrulK
 uKqV6LjEbcrb9xs4RHN1Ig5DjTa63TulpFqvZpbqjrqgj4MTsayfG8TBmwm/UIew
 zSPqNKBPnud6jdYbchAYWh78UGYFBNSbQnPwgWsyE2cnPNYP7HrGJG90lrzgATRu
 BjxemdChsP2iG8VHy8B4vIw2Q2vPhev+YBCW0ypM3325uq+KtlO6gzupTIqzXM42
 8Pmord64zwQZbA==
X-ME-Sender: <xms:I5rDX8-iWaJtMO2yWDuKfcroWJZTk_MN4XK6tqfIVKzLTkdjUpVmQA>
 <xme:I5rDX0toOon9-h-wZNVS8XcPmNdphInq3ce1-erpjmUwfZrjTWrlkmV-h2YKS7v3h
 WAq_whkdd_fy5U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudehkedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepudetieevffffveelkeeljeffkefhke
 ehgfdtffethfelvdejgffghefgveejkefhnecukfhppeekgedrvddvledrudehgedrudeg
 jeenucevlhhushhtvghrufhiiigvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:I5rDXyAiFg5yAFuOCzHDyoIkMnjQu4MsO-xgMEYXob5a1k0elOG2UQ>
 <xmx:I5rDX8ezeFziFIdg4pAt-Le52qb8o0UFituzhvRz8BmqgcVk2fdVpQ>
 <xmx:I5rDXxMaoVrxKLvm3cd4pqlOBBZ-ip-bhAX-79WSeYfIsA9TvTx7Xw>
 <xmx:I5rDX0pUTp9qxpGN0-7WIhfDvH8u8lX9T55Y6DvHTQ0T5ipiFOlJ2g>
Received: from shredder.lan (igld-84-229-154-147.inter.net.il [84.229.154.147])
 by mail.messagingengine.com (Postfix) with ESMTPA id D08FC3064AAA;
 Sun, 29 Nov 2020 07:54:57 -0500 (EST)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Sun, 29 Nov 2020 14:54:07 +0200
Message-Id: <20201129125407.1391557-10-idosch@idosch.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201129125407.1391557-1-idosch@idosch.org>
References: <20201129125407.1391557-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, petrm@nvidia.com, amcohen@nvidia.com,
 danieller@nvidia.com, mlxsw@nvidia.com, Ido Schimmel <idosch@nvidia.com>,
 jiri@nvidia.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 9/9] selftests: forwarding: Add QinQ veto
	testing
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

From: Danielle Ratson <danieller@nvidia.com>

Test that each veto that was added in the previous patch, is indeed
vetoed.

$ ./q_in_q_veto.sh

TEST: create 802.1ad vlan upper on top of a front panel             [ OK ]
TEST: create 802.1ad vlan upper on top of a bridge port             [ OK ]
TEST: create 802.1ad vlan upper on top of a lag                     [ OK ]
TEST: create 802.1ad vlan upper on top 802.1q bridge                [ OK ]
TEST: create 802.1ad vlan upper on top 802.1ad bridge               [ OK ]
TEST: create 802.1q vlan upper on top 802.1ad bridge                [ OK ]
TEST: create vlan upper on top of front panel enslaved to 802.1ad bridge
[ OK ]
TEST: create vlan upper on top of lag enslaved to 802.1ad bridge    [ OK ]
TEST: enslave front panel with vlan upper to 802.1ad bridge         [ OK ]
TEST: enslave lag with vlan upper to 802.1ad bridge                 [ OK ]
TEST: IP address addition to 802.1ad bridge                         [ OK ]
TEST: switch bridge protocol                                        [ OK ]

Signed-off-by: Danielle Ratson <danieller@nvidia.com>
Reviewed-by: Petr Machata <petrm@nvidia.com>
Signed-off-by: Ido Schimmel <idosch@nvidia.com>
---
 .../drivers/net/mlxsw/q_in_q_veto.sh          | 296 ++++++++++++++++++
 1 file changed, 296 insertions(+)
 create mode 100755 tools/testing/selftests/drivers/net/mlxsw/q_in_q_veto.sh

diff --git a/tools/testing/selftests/drivers/net/mlxsw/q_in_q_veto.sh b/tools/testing/selftests/drivers/net/mlxsw/q_in_q_veto.sh
new file mode 100755
index 000000000000..7edaed8eb86a
--- /dev/null
+++ b/tools/testing/selftests/drivers/net/mlxsw/q_in_q_veto.sh
@@ -0,0 +1,296 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0
+
+lib_dir=$(dirname $0)/../../../net/forwarding
+
+ALL_TESTS="
+	create_8021ad_vlan_upper_on_top_front_panel_port
+	create_8021ad_vlan_upper_on_top_bridge_port
+	create_8021ad_vlan_upper_on_top_lag
+	create_8021ad_vlan_upper_on_top_bridge
+	create_8021ad_vlan_upper_on_top_8021ad_bridge
+	create_vlan_upper_on_top_8021ad_bridge
+	create_vlan_upper_on_top_front_panel_enslaved_to_8021ad_bridge
+	create_vlan_upper_on_top_lag_enslaved_to_8021ad_bridge
+	enslave_front_panel_with_vlan_upper_to_8021ad_bridge
+	enslave_lag_with_vlan_upper_to_8021ad_bridge
+	add_ip_address_to_8021ad_bridge
+	switch_bridge_protocol_from_8021q_to_8021ad
+"
+NUM_NETIFS=2
+source $lib_dir/lib.sh
+
+setup_prepare()
+{
+	swp1=${NETIFS[p1]}
+	swp2=${NETIFS[p2]}
+
+	ip link set dev $swp1 up
+	ip link set dev $swp2 up
+
+	sleep 10
+}
+
+cleanup()
+{
+	pre_cleanup
+
+	ip link set dev $swp2 down
+	ip link set dev $swp1 down
+}
+
+create_vlan_upper_on_top_of_bridge()
+{
+	RET=0
+
+	local bridge_proto=$1; shift
+	local netdev_proto=$1; shift
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol $bridge_proto vlan_default_pvid 0 mcast_snooping 0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 master br0
+
+	ip link add name br0.100 link br0 type vlan \
+		protocol $netdev_proto id 100 2>/dev/null
+	check_fail $? "$netdev_proto vlan upper creation on top of an $bridge_proto bridge not rejected"
+
+	ip link add name br0.100 link br0 type vlan \
+		protocol $netdev_proto id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "$netdev_proto vlan upper creation on top of an $bridge_proto bridge rejected without extack"
+
+	log_test "create $netdev_proto vlan upper on top $bridge_proto bridge"
+
+	ip link del dev br0
+}
+
+create_8021ad_vlan_upper_on_top_front_panel_port()
+{
+	RET=0
+
+	ip link add name $swp1.100 link $swp1 type vlan \
+		protocol 802.1ad id 100 2>/dev/null
+	check_fail $? "802.1ad vlan upper creation on top of a front panel not rejected"
+
+	ip link add name $swp1.100 link $swp1 type vlan \
+		protocol 802.1ad id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "802.1ad vlan upper creation on top of a front panel rejected without extack"
+
+	log_test "create 802.1ad vlan upper on top of a front panel"
+}
+
+create_8021ad_vlan_upper_on_top_bridge_port()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_default_pvid 0 mcast_snooping 0
+
+	ip link set dev $swp1 master br0
+	ip link set dev br0 up
+
+	ip link add name $swp1.100 link $swp1 type vlan \
+		protocol 802.1ad id 100 2>/dev/null
+	check_fail $? "802.1ad vlan upper creation on top of a bridge port not rejected"
+
+	ip link add name $swp1.100 link $swp1 type vlan \
+		protocol 802.1ad id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "802.1ad vlan upper creation on top of a bridge port rejected without extack"
+
+	log_test "create 802.1ad vlan upper on top of a bridge port"
+
+	ip link del dev br0
+}
+
+create_8021ad_vlan_upper_on_top_lag()
+{
+	RET=0
+
+	ip link add name bond1 type bond mode 802.3ad
+	ip link set dev $swp1 down
+	ip link set dev $swp1 master bond1
+
+	ip link add name bond1.100 link bond1 type vlan \
+		protocol 802.1ad id 100 2>/dev/null
+	check_fail $? "802.1ad vlan upper creation on top of a lag not rejected"
+
+	ip link add name bond1.100 link bond1 type vlan \
+		protocol 802.1ad id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "802.1ad vlan upper creation on top of a lag rejected without extack"
+
+	log_test "create 802.1ad vlan upper on top of a lag"
+
+	ip link del dev bond1
+}
+
+create_8021ad_vlan_upper_on_top_bridge()
+{
+	RET=0
+
+	create_vlan_upper_on_top_of_bridge "802.1q" "802.1ad"
+}
+
+create_8021ad_vlan_upper_on_top_8021ad_bridge()
+{
+	RET=0
+
+	create_vlan_upper_on_top_of_bridge "802.1ad" "802.1ad"
+}
+
+create_vlan_upper_on_top_8021ad_bridge()
+{
+	RET=0
+
+	create_vlan_upper_on_top_of_bridge "802.1ad" "802.1q"
+}
+
+create_vlan_upper_on_top_front_panel_enslaved_to_8021ad_bridge()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+	ip link set dev br0 up
+
+	ip link set dev $swp1 master br0
+
+	ip link add name $swp1.100 link $swp1 type vlan id 100 2>/dev/null
+	check_fail $? "vlan upper creation on top of front panel enslaved to 802.1ad bridge not rejected"
+
+	ip link add name $swp1.100 link $swp1 type vlan id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "vlan upper creation on top of front panel enslaved to 802.1ad bridge rejected without extack"
+
+	log_test "create vlan upper on top of front panel enslaved to 802.1ad bridge"
+
+	ip link del dev br0
+}
+
+create_vlan_upper_on_top_lag_enslaved_to_8021ad_bridge()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+	ip link set dev br0 up
+
+	ip link add name bond1 type bond mode 802.3ad
+	ip link set dev $swp1 down
+	ip link set dev $swp1 master bond1
+	ip link set dev bond1 master br0
+
+	ip link add name bond1.100 link bond1 type vlan id 100 2>/dev/null
+	check_fail $? "vlan upper creation on top of lag enslaved to 802.1ad bridge not rejected"
+
+	ip link add name bond1.100 link bond1 type vlan id 100 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "vlan upper creation on top of lag enslaved to 802.1ad bridge rejected without extack"
+
+	log_test "create vlan upper on top of lag enslaved to 802.1ad bridge"
+
+	ip link del dev bond1
+	ip link del dev br0
+}
+
+enslave_front_panel_with_vlan_upper_to_8021ad_bridge()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+	ip link set dev br0 up
+
+	ip link add name $swp1.100 link $swp1 type vlan id 100
+
+	ip link set dev $swp1 master br0 2>/dev/null
+	check_fail $? "front panel with vlan upper enslavemnt to 802.1ad bridge not rejected"
+
+	ip link set dev $swp1 master br0 2>&1 >/dev/null | grep -q mlxsw_spectrum
+	check_err $? "front panel with vlan upper enslavemnt to 802.1ad bridge rejected without extack"
+
+	log_test "enslave front panel with vlan upper to 802.1ad bridge"
+
+	ip link del dev $swp1.100
+	ip link del dev br0
+}
+
+enslave_lag_with_vlan_upper_to_8021ad_bridge()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+	ip link set dev br0 up
+
+	ip link add name bond1 type bond mode 802.3ad
+	ip link set dev $swp1 down
+	ip link set dev $swp1 master bond1
+	ip link add name bond1.100 link bond1 type vlan id 100
+
+	ip link set dev bond1 master br0 2>/dev/null
+	check_fail $? "lag with vlan upper enslavemnt to 802.1ad bridge not rejected"
+
+	ip link set dev bond1 master br0 2>&1 >/dev/null \
+		| grep -q mlxsw_spectrum
+	check_err $? "lag with vlan upper enslavemnt to 802.1ad bridge rejected without extack"
+
+	log_test "enslave lag with vlan upper to 802.1ad bridge"
+
+	ip link del dev bond1
+	ip link del dev br0
+}
+
+
+add_ip_address_to_8021ad_bridge()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 master br0
+
+	ip addr add dev br0 192.0.2.17/28 2>/dev/null
+	check_fail $? "IP address addition to 802.1ad bridge not rejected"
+
+	ip addr add dev br0 192.0.2.17/28 2>&1 >/dev/null | grep -q mlxsw_spectrum
+	check_err $? "IP address addition to 802.1ad bridge rejected without extack"
+
+	log_test "IP address addition to 802.1ad bridge"
+
+	ip link del dev br0
+}
+
+switch_bridge_protocol_from_8021q_to_8021ad()
+{
+	RET=0
+
+	ip link add dev br0 type bridge vlan_filtering 1 \
+		vlan_protocol 802.1ad vlan_default_pvid 0 mcast_snooping 0
+
+	ip link set dev br0 up
+	ip link set dev $swp1 master br0
+
+	ip link set dev br0 type bridge vlan_protocol 802.1q 2>/dev/null
+	check_fail $? "switching bridge protocol from 802.1q to 802.1ad not rejected"
+
+	log_test "switch bridge protocol"
+
+	ip link del dev br0
+}
+
+
+trap cleanup EXIT
+
+setup_prepare
+setup_wait
+
+tests_run
+
+exit $EXIT_STATUS
-- 
2.28.0


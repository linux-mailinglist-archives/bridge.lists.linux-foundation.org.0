Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FA4BCD71
	for <lists.bridge@lfdr.de>; Sun, 20 Feb 2022 10:13:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 745C3605E8;
	Sun, 20 Feb 2022 09:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sq2f_QU7cFy0; Sun, 20 Feb 2022 09:13:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 50F3E60B63;
	Sun, 20 Feb 2022 09:13:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB5E4C0073;
	Sun, 20 Feb 2022 09:12:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7851C0033
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FF6260B60
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZI7Khyoec2rW for <bridge@lists.linux-foundation.org>;
 Sun, 20 Feb 2022 09:12:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4B6460B5F
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:12:57 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5E123580161;
 Sun, 20 Feb 2022 04:12:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 20 Feb 2022 04:12:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=I/zojRZvTUsxCxK+q
 zyFQV0GgixUlcPgJMI4gO/Q7Rg=; b=NH8MFPr0TbVkzALXm+qXtPThk2EtBYxAs
 EyXvAI1q2+VwSjm1PRO5kb0WUYLnbBI9YPC2WxX0AbccB6K6mqUHi5qz58v+467l
 ho8cUzY9o+rHIftLJPPNYinNcY1rMnE1l8XwL6MeMevdWZxO+lKZOAcqY8PjPxan
 kj+vQ0BH2wLYJP7a8OoET7m4pZ7OR+iq0a1aGJBz/QVB3Ui5OMfjrVX+pnWDpvAD
 mXjMM6ci5YIzoq6iTRyT1KvNXaUYFVpE41IQ6+lQVfSrCjlDaZkGjmDUy/rZNwtw
 AWjgwbnP4KQhDQ1C2sKQfWex4jN78ogLT9koYhOmdmeeySfkaEMCw==
X-ME-Sender: <xms:FgYSYvIQOdJ7H4k5AxTL9GXFKFYnA9lsccXdhOKdlrwd6cfx26egcA>
 <xme:FgYSYjK_k4qjoHYsUA3wghR5AuR5onKlDjG1-xiprEFVHenroV0j22-k8YaBdb0of
 ujRek95BuXnFF4>
X-ME-Received: <xmr:FgYSYnusJ1RGN4zFjsyVwqR6eSpGNwRRO0Am-oSjb7BEnnhux4LjJHt_3RoEWkk_pi5UhG-aPzyi393gpHAUM2Ydei0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeeggddtudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtrodttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnhepgfejvefhvdegiedukeetudevgeeujeefffeffeetkeekueeuheejudeltdejuedu
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:FgYSYoZeImoQxvugMUoL2zp8JXciQqu6w9uJUqowCrlIrp6TT7A1tg>
 <xmx:FgYSYmZnWqUx4Gh5J5HloijXynfa9wpFbKnpmJOb7kiBeOXCiksmZg>
 <xmx:FgYSYsBGUud_e5NbzcqOFJZhqnyn7tnPpFL2KM-MMjlMAi9sj7MX6g>
 <xmx:FwYSYuMKOIy9_e4bhHPfm-QsM2XmTPt4wNZmTbylSEcyxlJ-nb0vVQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Feb 2022 04:12:53 -0500 (EST)
Date: Sun, 20 Feb 2022 11:12:50 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YhIGEvAeNpSDDRKU@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 5/5] selftests: forwarding: tests
 of locked port feature
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

On Fri, Feb 18, 2022 at 04:51:48PM +0100, Hans Schultz wrote:
> These tests check that the basic locked port feature works, so that no 'host'
> can communicate (ping) through a locked port unless the MAC address of the
> 'host' interface is in the forwarding database of the bridge.

Thanks for adding the test. I assume this was tested with both mv88e6xxx
and veth?

> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  .../testing/selftests/net/forwarding/Makefile |   1 +
>  .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
>  tools/testing/selftests/net/forwarding/lib.sh |  16 ++
>  3 files changed, 191 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> 
> diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/testing/selftests/net/forwarding/Makefile
> index 72ee644d47bf..8fa97ae9af9e 100644
> --- a/tools/testing/selftests/net/forwarding/Makefile
> +++ b/tools/testing/selftests/net/forwarding/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0+ OR MIT
>  
>  TEST_PROGS = bridge_igmp.sh \
> +	bridge_locked_port.sh \
>  	bridge_port_isolation.sh \
>  	bridge_sticky_fdb.sh \
>  	bridge_vlan_aware.sh \
> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> new file mode 100755
> index 000000000000..d2805441b325
> --- /dev/null
> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> @@ -0,0 +1,174 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +
> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
> +NUM_NETIFS=4
> +CHECK_TC="no"
> +source lib.sh
> +
> +h1_create()
> +{
> +	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
> +	vrf_create "vrf-vlan-h1"
> +        ip link set dev vrf-vlan-h1 up
> +        vlan_create $h1 100 vrf-vlan-h1 192.0.3.1/24 2001:db8:3::1/64

In the tests we try to use only addresses specified in RFC 5737. Instead
of 192.0.3.0/24 I suggest 198.51.100.0/24

> +}
> +
> +h1_destroy()
> +{
> +	vlan_destroy $h1 100
> +	simple_if_fini $h1 192.0.2.1/24 2001:db8:1::1/64
> +}
> +
> +h2_create()
> +{
> +	simple_if_init $h2 192.0.2.2/24 2001:db8:1::2/64
> +	vrf_create "vrf-vlan-h2"
> +	ip link set dev vrf-vlan-h2 up
> +	vlan_create $h2 100 vrf-vlan-h2 192.0.3.2/24 2001:db8:3::2/64
> +}
> +
> +h2_destroy()
> +{
> +	vlan_destroy $h2 100
> +	simple_if_fini $h2 192.0.2.2/24 2001:db8:1::2/64
> +}
> +
> +switch_create()
> +{
> +	ip link add dev br0 type bridge vlan_filtering 1
> +
> +	ip link set dev $swp1 master br0
> +	ip link set dev $swp2 master br0
> +
> +	ip link set dev br0 up
> +	ip link set dev $swp1 up
> +	ip link set dev $swp2 up
> +
> +	bridge link set dev $swp1 learning off
> +}
> +
> +switch_destroy()
> +{
> +	ip link set dev $swp2 down
> +	ip link set dev $swp1 down
> +
> +	ip link del dev br0
> +}
> +
> +setup_prepare()
> +{
> +	h1=${NETIFS[p1]}
> +	swp1=${NETIFS[p2]}
> +
> +	swp2=${NETIFS[p3]}
> +	h2=${NETIFS[p4]}
> +
> +	vrf_prepare
> +
> +	h1_create
> +	h2_create
> +
> +	switch_create
> +}
> +
> +cleanup()
> +{
> +	pre_cleanup
> +
> +	switch_destroy
> +
> +	h2_destroy
> +	h1_destroy
> +
> +	vrf_cleanup
> +}
> +
> +ifaddr()

We already have mac_get()

> +{
> +	ip -br link show dev "$1" | awk '{ print($3); }'
> +}
> +
> +locked_port_ipv4()
> +{
> +	RET=0
> +
> +	check_locked_port_support || return 0
> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "Ping didn't work when it should have"

Better to use unique error messages that pinpoint the problem:

"Ping did not work before locking port"

> +
> +	bridge link set dev $swp1 locked on
> +
> +	ping_do $h1 192.0.2.2
> +	check_fail $? "Ping worked when it should not have"

"Ping worked after locking port, but before adding a FDB entry"

> +
> +	bridge fdb add `ifaddr $h1` dev $swp1 master static

bridge fdb add $(mac_get $h1) dev $swp1 master static

> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "Ping didn't work when it should have"

"Ping did not work after locking port and adding a FDB entry"

> +
> +	bridge link set dev $swp1 locked off
> +	bridge fdb del `ifaddr $h1` dev $swp1 master static

I suggest to add another test case here to see that ping works after
unlocking the port and removing the FDB entry

Same comments on the other test cases

> +	log_test "Locked port ipv4"
> +}
> +
> +locked_port_vlan()
> +{
> +	RET=0
> +
> +	check_locked_port_support || return 0
> +	check_vlan_filtering_support || return 0

Why this check is needed? The bridge was already created with
"vlan_filtering 1"

> +
> +	bridge vlan add vid 100 dev $swp1 tagged

Not familiar with "tagged" keyword. I believe iproute2 ignores it.
Please drop it

> +	bridge vlan add vid 100 dev $swp2 tagged
> +
> +	ping_do $h1.100 192.0.3.2
> +	check_err $? "Ping didn't work when it should have"
> +
> +	bridge link set dev $swp1 locked on
> +	ping_do $h1.100 192.0.3.2
> +	check_fail $? "Ping worked when it should not have"
> +
> +	bridge fdb add `ifaddr $h1` dev $swp1 vlan 100 master static
> +
> +	ping_do $h1.100 192.0.3.2
> +	check_err $? "Ping didn't work when it should have"
> +
> +	bridge link set dev $swp1 locked off
> +	bridge vlan del vid 100 dev $swp1
> +	bridge vlan del vid 100 dev $swp2
> +	bridge fdb del `ifaddr $h1` dev $swp1 vlan 100 master static
> +	log_test "Locked port vlan"
> +}
> +
> +locked_port_ipv6()
> +{
> +	RET=0
> +	check_locked_port_support || return 0
> +
> +	ping6_do $h1 2001:db8:1::2
> +	check_err $? "Ping6 didn't work when it should have"
> +
> +	bridge link set dev $swp1 locked on
> +
> +	ping6_do $h1 2001:db8:1::2
> +	check_fail $? "Ping worked when it should not have"
> +
> +	bridge fdb add `ifaddr $h1` dev $swp1 master static
> +	ping6_do $h1 2001:db8:1::2
> +	check_err $? "Ping didn't work when it should have"
> +
> +	bridge link set dev $swp1 locked off
> +	bridge fdb del `ifaddr $h1` dev $swp1 master static
> +	log_test "Locked port ipv6"
> +}
> +
> +trap cleanup EXIT
> +
> +setup_prepare
> +setup_wait
> +
> +tests_run
> +
> +exit $EXIT_STATUS
> diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
> index 7da783d6f453..9ded90f17ead 100644
> --- a/tools/testing/selftests/net/forwarding/lib.sh
> +++ b/tools/testing/selftests/net/forwarding/lib.sh
> @@ -125,6 +125,22 @@ check_ethtool_lanes_support()
>  	fi
>  }
>  
> +check_locked_port_support()
> +{
> +        if ! bridge -d link show | grep -q " locked"; then
> +                echo "SKIP: iproute2 too old; Locked port feature not supported."
> +                return $ksft_skip
> +        fi
> +}
> +
> +check_vlan_filtering_support()
> +{
> +	if ! bridge -d vlan show | grep -q "state forwarding"; then
> +		echo "SKIP: vlan filtering not supported."
> +		return $ksft_skip
> +	fi
> +}
> +
>  if [[ "$(id -u)" -ne 0 ]]; then
>  	echo "SKIP: need root privileges"
>  	exit $ksft_skip
> -- 
> 2.30.2
> 

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E6F4BD87A
	for <lists.bridge@lfdr.de>; Mon, 21 Feb 2022 10:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C111400C7;
	Mon, 21 Feb 2022 09:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-ADA82UGb4C; Mon, 21 Feb 2022 09:20:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BA41D40186;
	Mon, 21 Feb 2022 09:20:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81340C0036;
	Mon, 21 Feb 2022 09:20:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0AD05C0011
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 09:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE7E14019F
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 09:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rhhae41slUdI for <bridge@lists.linux-foundation.org>;
 Mon, 21 Feb 2022 09:20:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5E0840186
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 09:20:54 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 j9-20020a05600c190900b0037bff8a24ebso13013265wmq.4
 for <bridge@lists.linux-foundation.org>; Mon, 21 Feb 2022 01:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=xOwU+K0IyQufJMECa89pEPENTu9ixAQIy50sb6UwndA=;
 b=ZMML3ehHzkeaTdYE8yFEPqU9E+IPzyBx0LSGTKZ3v7nKnhxh9fVWWo9j9zOFVnCAmT
 3s43q9zmf+lm36i47TVvjpvqPZp1OUczKRS1c61algW5nwWp2Zd9RgzJNqvQMJJ8W2S0
 tP20I1Z/dO+dgkDsYcmaJ3wt7YEsvLieaeQfOUvhC0M5cGcpwHML5WdWKC6zBnlFOIHK
 Foq+gBqO9+0HDX3bOooIl2gxJG7iu4EYJsdPyFiKxKFqn0EOu0QO+7dFVuwQm70OgiNU
 gHhZ9WDR8Liz9C9c+VT/O2M7K01PpGyLVcnonF3IB7db5clGYjZg9M+e/aHT5IFhnkW6
 O6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=xOwU+K0IyQufJMECa89pEPENTu9ixAQIy50sb6UwndA=;
 b=w1zqxbpJaffka49R/JpN0GQjb9g6BdxkP86H2LRO9ru5w0yw71UGK8vTYZlC8QOhKL
 i/uVg0OjQHzfKSmJaDA7izX2EdpKBzMBsiB4awNxTpO/LOCtDj42FCb2KZenFOqQCw3T
 LeuwKv8MJ5Jim73igGB8LlWMvvXDxEQUTzaoWQVT77lmpPl7VJ692EjZA7aoOLB8L2O3
 3a4HQ+GpuLv7VxjyiMYkdMZh9ui39oYjr58MkDRQJInJPYSRJgIUfzPoJ2VGIN/Lfs4W
 EoEaSJvNLBMRgurOvyFqla2/9AoEsAkGYhBSya+EOok0fhmkwT9r0ep/HN+7sly9iMBM
 RRpg==
X-Gm-Message-State: AOAM531gyOsgrgMxdzWPFLWCrZxEnegs/FP6lOAHa51vMX9IZTxQpgok
 Hk9KcPnPxs1nhlU5d5YLSxs=
X-Google-Smtp-Source: ABdhPJxsIfQQNPe/o20tIB5QTBuO3jJ3S4Zx1keBxoRlhW7tkfGDbg0XJIAuA7NQjasuPy0+nXH+ZA==
X-Received: by 2002:a05:600c:1e0a:b0:37d:342c:36ac with SMTP id
 ay10-20020a05600c1e0a00b0037d342c36acmr16911396wmb.168.1645435252929; 
 Mon, 21 Feb 2022 01:20:52 -0800 (PST)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id l15sm6959447wmi.29.2022.02.21.01.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 01:20:52 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YhIGEvAeNpSDDRKU@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-6-schultz.hans+netdev@gmail.com>
 <YhIGEvAeNpSDDRKU@shredder>
Date: Mon, 21 Feb 2022 10:20:50 +0100
Message-ID: <864k4spoct.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
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

On s=C3=B6n, feb 20, 2022 at 11:12, Ido Schimmel <idosch@idosch.org> wrote:
> On Fri, Feb 18, 2022 at 04:51:48PM +0100, Hans Schultz wrote:
>> These tests check that the basic locked port feature works, so that no '=
host'
>> can communicate (ping) through a locked port unless the MAC address of t=
he
>> 'host' interface is in the forwarding database of the bridge.
>
> Thanks for adding the test. I assume this was tested with both mv88e6xxx
> and veth?
>
Yes, both cases have been tested. :-)

>>=20
>> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
>> ---
>>  .../testing/selftests/net/forwarding/Makefile |   1 +
>>  .../net/forwarding/bridge_locked_port.sh      | 174 ++++++++++++++++++
>>  tools/testing/selftests/net/forwarding/lib.sh |  16 ++
>>  3 files changed, 191 insertions(+)
>>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_locked=
_port.sh
>>=20
>> diff --git a/tools/testing/selftests/net/forwarding/Makefile b/tools/tes=
ting/selftests/net/forwarding/Makefile
>> index 72ee644d47bf..8fa97ae9af9e 100644
>> --- a/tools/testing/selftests/net/forwarding/Makefile
>> +++ b/tools/testing/selftests/net/forwarding/Makefile
>> @@ -1,6 +1,7 @@
>>  # SPDX-License-Identifier: GPL-2.0+ OR MIT
>>=20=20
>>  TEST_PROGS =3D bridge_igmp.sh \
>> +	bridge_locked_port.sh \
>>  	bridge_port_isolation.sh \
>>  	bridge_sticky_fdb.sh \
>>  	bridge_vlan_aware.sh \
>> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.s=
h b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> new file mode 100755
>> index 000000000000..d2805441b325
>> --- /dev/null
>> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
>> @@ -0,0 +1,174 @@
>> +#!/bin/bash
>> +# SPDX-License-Identifier: GPL-2.0
>> +
>> +ALL_TESTS=3D"locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
>> +NUM_NETIFS=3D4
>> +CHECK_TC=3D"no"
>> +source lib.sh
>> +
>> +h1_create()
>> +{
>> +	simple_if_init $h1 192.0.2.1/24 2001:db8:1::1/64
>> +	vrf_create "vrf-vlan-h1"
>> +        ip link set dev vrf-vlan-h1 up
>> +        vlan_create $h1 100 vrf-vlan-h1 192.0.3.1/24 2001:db8:3::1/64
>
> In the tests we try to use only addresses specified in RFC 5737. Instead
> of 192.0.3.0/24 I suggest 198.51.100.0/24
>
>> +}
>> +
>> +h1_destroy()
>> +{
>> +	vlan_destroy $h1 100
>> +	simple_if_fini $h1 192.0.2.1/24 2001:db8:1::1/64
>> +}
>> +
>> +h2_create()
>> +{
>> +	simple_if_init $h2 192.0.2.2/24 2001:db8:1::2/64
>> +	vrf_create "vrf-vlan-h2"
>> +	ip link set dev vrf-vlan-h2 up
>> +	vlan_create $h2 100 vrf-vlan-h2 192.0.3.2/24 2001:db8:3::2/64
>> +}
>> +
>> +h2_destroy()
>> +{
>> +	vlan_destroy $h2 100
>> +	simple_if_fini $h2 192.0.2.2/24 2001:db8:1::2/64
>> +}
>> +
>> +switch_create()
>> +{
>> +	ip link add dev br0 type bridge vlan_filtering 1
>> +
>> +	ip link set dev $swp1 master br0
>> +	ip link set dev $swp2 master br0
>> +
>> +	ip link set dev br0 up
>> +	ip link set dev $swp1 up
>> +	ip link set dev $swp2 up
>> +
>> +	bridge link set dev $swp1 learning off
>> +}
>> +
>> +switch_destroy()
>> +{
>> +	ip link set dev $swp2 down
>> +	ip link set dev $swp1 down
>> +
>> +	ip link del dev br0
>> +}
>> +
>> +setup_prepare()
>> +{
>> +	h1=3D${NETIFS[p1]}
>> +	swp1=3D${NETIFS[p2]}
>> +
>> +	swp2=3D${NETIFS[p3]}
>> +	h2=3D${NETIFS[p4]}
>> +
>> +	vrf_prepare
>> +
>> +	h1_create
>> +	h2_create
>> +
>> +	switch_create
>> +}
>> +
>> +cleanup()
>> +{
>> +	pre_cleanup
>> +
>> +	switch_destroy
>> +
>> +	h2_destroy
>> +	h1_destroy
>> +
>> +	vrf_cleanup
>> +}
>> +
>> +ifaddr()
>
> We already have mac_get()
>
>> +{
>> +	ip -br link show dev "$1" | awk '{ print($3); }'
>> +}
>> +
>> +locked_port_ipv4()
>> +{
>> +	RET=3D0
>> +
>> +	check_locked_port_support || return 0
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "Ping didn't work when it should have"
>
> Better to use unique error messages that pinpoint the problem:
>
> "Ping did not work before locking port"
>
>> +
>> +	bridge link set dev $swp1 locked on
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_fail $? "Ping worked when it should not have"
>
> "Ping worked after locking port, but before adding a FDB entry"
>
>> +
>> +	bridge fdb add `ifaddr $h1` dev $swp1 master static
>
> bridge fdb add $(mac_get $h1) dev $swp1 master static
>
>> +
>> +	ping_do $h1 192.0.2.2
>> +	check_err $? "Ping didn't work when it should have"
>
> "Ping did not work after locking port and adding a FDB entry"
>
>> +
>> +	bridge link set dev $swp1 locked off
>> +	bridge fdb del `ifaddr $h1` dev $swp1 master static
>
> I suggest to add another test case here to see that ping works after
> unlocking the port and removing the FDB entry
>
> Same comments on the other test cases
>
>> +	log_test "Locked port ipv4"
>> +}
>> +
>> +locked_port_vlan()
>> +{
>> +	RET=3D0
>> +
>> +	check_locked_port_support || return 0
>> +	check_vlan_filtering_support || return 0
>
> Why this check is needed? The bridge was already created with
> "vlan_filtering 1"
>
>> +
>> +	bridge vlan add vid 100 dev $swp1 tagged
>
> Not familiar with "tagged" keyword. I believe iproute2 ignores it.
> Please drop it
>
>> +	bridge vlan add vid 100 dev $swp2 tagged
>> +
>> +	ping_do $h1.100 192.0.3.2
>> +	check_err $? "Ping didn't work when it should have"
>> +
>> +	bridge link set dev $swp1 locked on
>> +	ping_do $h1.100 192.0.3.2
>> +	check_fail $? "Ping worked when it should not have"
>> +
>> +	bridge fdb add `ifaddr $h1` dev $swp1 vlan 100 master static
>> +
>> +	ping_do $h1.100 192.0.3.2
>> +	check_err $? "Ping didn't work when it should have"
>> +
>> +	bridge link set dev $swp1 locked off
>> +	bridge vlan del vid 100 dev $swp1
>> +	bridge vlan del vid 100 dev $swp2
>> +	bridge fdb del `ifaddr $h1` dev $swp1 vlan 100 master static
>> +	log_test "Locked port vlan"
>> +}
>> +
>> +locked_port_ipv6()
>> +{
>> +	RET=3D0
>> +	check_locked_port_support || return 0
>> +
>> +	ping6_do $h1 2001:db8:1::2
>> +	check_err $? "Ping6 didn't work when it should have"
>> +
>> +	bridge link set dev $swp1 locked on
>> +
>> +	ping6_do $h1 2001:db8:1::2
>> +	check_fail $? "Ping worked when it should not have"
>> +
>> +	bridge fdb add `ifaddr $h1` dev $swp1 master static
>> +	ping6_do $h1 2001:db8:1::2
>> +	check_err $? "Ping didn't work when it should have"
>> +
>> +	bridge link set dev $swp1 locked off
>> +	bridge fdb del `ifaddr $h1` dev $swp1 master static
>> +	log_test "Locked port ipv6"
>> +}
>> +
>> +trap cleanup EXIT
>> +
>> +setup_prepare
>> +setup_wait
>> +
>> +tests_run
>> +
>> +exit $EXIT_STATUS
>> diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testi=
ng/selftests/net/forwarding/lib.sh
>> index 7da783d6f453..9ded90f17ead 100644
>> --- a/tools/testing/selftests/net/forwarding/lib.sh
>> +++ b/tools/testing/selftests/net/forwarding/lib.sh
>> @@ -125,6 +125,22 @@ check_ethtool_lanes_support()
>>  	fi
>>  }
>>=20=20
>> +check_locked_port_support()
>> +{
>> +        if ! bridge -d link show | grep -q " locked"; then
>> +                echo "SKIP: iproute2 too old; Locked port feature not s=
upported."
>> +                return $ksft_skip
>> +        fi
>> +}
>> +
>> +check_vlan_filtering_support()
>> +{
>> +	if ! bridge -d vlan show | grep -q "state forwarding"; then
>> +		echo "SKIP: vlan filtering not supported."
>> +		return $ksft_skip
>> +	fi
>> +}
>> +
>>  if [[ "$(id -u)" -ne 0 ]]; then
>>  	echo "SKIP: need root privileges"
>>  	exit $ksft_skip
>> --=20
>> 2.30.2
>>=20

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB59C4DC966
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 15:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDD6C84740;
	Thu, 17 Mar 2022 14:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rp-BsE04urhq; Thu, 17 Mar 2022 14:57:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 897B084796;
	Thu, 17 Mar 2022 14:57:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39427C0082;
	Thu, 17 Mar 2022 14:57:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC31EC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A74DB60ACA
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nmxe1SsSHbxm for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 14:57:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DDED60A97
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:57:21 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 033ED5C0164;
 Thu, 17 Mar 2022 10:57:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 17 Mar 2022 10:57:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=dn5WetjsAweDFdDrV
 E4l3jAwTI6fbXOJu2TtvBSryHA=; b=LPpPYa+uaec9c9tSWDa/a1qlX0DXYY3jS
 RzshbqmdO7dVF5xENoH4gUmkN1VmVq71AeGh5/2aKK3C3/wkIQ3ltbJ3zZ3ZNI0q
 RCzcsWxvFuG2hNRV9pgsfdRmzrFDnPUMZqmgKSF9/pD5PDg9Mc9rS7x5iCccEqFt
 RWORpzNXsgm1ZJuULqEpBFfmU6cjr7dYAHL8lNt5o7Ew26AISo6jHxUpdUYb2+Y7
 kHivUhf54VhAKl40e7KSIMzPOlUsMHx9xNm2VB073ZQbUKxcIiI3QJoWjkCrQm8W
 V0fLprnZFEnyIdy86Tnd0+8u7nTPvEfOsHnBUgEctlov3U1h2LCYA==
X-ME-Sender: <xms:UEwzYnx8imVwNadmf9T5wmcXeTk_PiuAmRVc_L5qdXd0OBqYxo6VVw>
 <xme:UEwzYvSEFDr2fBOQb0O0fO831TEMLfAxbOq_lkPNefK3AQalsIsrg27K70Hw7braY
 _zttmgu50q2p8A>
X-ME-Received: <xmr:UEwzYhUsgErk4upt7LyYekkhnE6P3mZhbi0qGRKL4FOIWudK7tyjYZmCjs-rL1IwHxzr5h1RLr1UPSVqdMJTVuZb2ms>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudefgedgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:UEwzYhgPbf42vYVNC2Lp84jwwoa8QY0GAZ9udVRHc52zl5coCa5FUg>
 <xmx:UEwzYpDBYkbViPfRJK2TYF3eECYQ-bXa8oRvhq9e_I0RStB2Xa0VtA>
 <xmx:UEwzYqJmmoNuj_puZPQYNtACEfbiLNnTgz6c3WfPmyaZrPOMmdvQrg>
 <xmx:UEwzYrxsnMax2EWyvttA0B0uHw6-yv4e3EhSltgziVUXynPmsm0FiQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 17 Mar 2022 10:57:19 -0400 (EDT)
Date: Thu, 17 Mar 2022 16:57:15 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YjNMS6aFG+93ejj5@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-5-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220317093902.1305816-5-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 4/4] selftests: forwarding: add
 test of MAC-Auth Bypass to locked port tests
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

On Thu, Mar 17, 2022 at 10:39:02AM +0100, Hans Schultz wrote:
> Verify that the MAC-Auth mechanism works by adding a FDB entry with the
> locked flag set. denying access until the FDB entry is replaced with a
> FDB entry without the locked flag set.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  .../net/forwarding/bridge_locked_port.sh      | 29 ++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> index 6e98efa6d371..2f9519e814b6 100755
> --- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> @@ -1,7 +1,7 @@
>  #!/bin/bash
>  # SPDX-License-Identifier: GPL-2.0
>  
> -ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
>  NUM_NETIFS=4
>  CHECK_TC="no"
>  source lib.sh
> @@ -170,6 +170,33 @@ locked_port_ipv6()
>  	log_test "Locked port ipv6"
>  }
>  
> +locked_port_mab()
> +{
> +	RET=0
> +	check_locked_port_support || return 0
> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "MAB: Ping did not work before locking port"
> +
> +	bridge link set dev $swp1 locked on
> +	bridge link set dev $swp1 learning on
> +
> +	ping_do $h1 192.0.2.2
> +	check_fail $? "MAB: Ping worked on port just locked"
> +
> +	if ! bridge fdb show | grep `mac_get $h1` | grep -q "locked"; then
> +		RET=1
> +		retmsg="MAB: No locked fdb entry after ping on locked port"
> +	fi

bridge fdb show | grep `mac_get $h1 | grep -q "locked"
check_err $? "MAB: No locked fdb entry after ping on locked port"

> +
> +	bridge fdb del `mac_get $h1` dev $swp1 master
> +	bridge fdb add `mac_get $h1` dev $swp1 master static

bridge fdb replace `mac_get $h1` dev $swp1 master static

> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
> +
> +	log_test "Locked port MAB"

Clean up after the test to revert to initial state:

bridge fdb del `mac_get $h1` dev $swp1 master
bridge link set dev $swp1 locked off


> +}
>  trap cleanup EXIT
>  
>  setup_prepare
> -- 
> 2.30.2
> 

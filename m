Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B33D535095
	for <lists.bridge@lfdr.de>; Thu, 26 May 2022 16:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C807661487;
	Thu, 26 May 2022 14:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YuvINsSEGP0U; Thu, 26 May 2022 14:27:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4563661482;
	Thu, 26 May 2022 14:27:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 249F6C0081;
	Thu, 26 May 2022 14:27:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60692C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EE16606EB
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xkBv0_OtvZM for <bridge@lists.linux-foundation.org>;
 Thu, 26 May 2022 14:27:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92EA461482
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:27:52 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id BBC6A3200258;
 Thu, 26 May 2022 10:27:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 26 May 2022 10:27:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1653575269; x=1653661669; bh=StrlpIYajUUCDicQmIv6vQpHKNJZ
 suJXBuDoYzce0XU=; b=mnurwjAcVnldsgZxi5JsRrqsPfBzzO+n+pBlmvIxIEGS
 kCvlFvVteXMu2KLrIDvuFFxLoIOYwZEkZQag4qZizXF1Z1w7TqZzqZnmjhkto+Cj
 NAQRgqf6yPtmOuTNvU8WpivNyc0eKwfhfWyvXlRnY5VyWzfAxN/0rpB7sAqH0DD/
 C5sibS8yfugBPbOuVPNnwgH/hoSUawgsItougUcqFjjubuiGMTyj+DGgLNuF00Pp
 TjwtixybLl7hvTYO5a6tIOTnWwa1qaO8H71ToAicqxlrOAqa2TKMTSjNZjRlV/5d
 rvzxH+MHDNkGPcjUH2Ky9FZuUjs9Zh9KqTI4RvdOQw==
X-ME-Sender: <xms:ZI6PYsj9-lGfCcktnJMYvwdjZJvG-R2VgT54-_H3pFkLd0dP1yj52Q>
 <xme:ZI6PYlDaNRT0UvC2JuNaSIM9S42hecCUg_zdfnpKWRRjHS7nM5N8tJjGOrGqV_-Wn
 wHPvVOZzB5v6XE>
X-ME-Received: <xmr:ZI6PYkEsMpaEriXO3REaQVKHsCZnqGnfAi7zrGMUtPEtngRdCmFwsF4JprAdGkEfIEFTyCXDBJXPdj2GtKNINHTHoatEiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrjeejgdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:ZI6PYtSp7nXI7Me_4H6_3FIgV29oSnLPHc7lIxggZUJ-QoXD5O-2mQ>
 <xmx:ZI6PYpyL5kbIvBmI00ulXuEbzBlZFEELdV3mR1DzhVvmLJm0nCXiMQ>
 <xmx:ZI6PYr41Ts6Tco_zDGOk7gfVM-N2_G698tfN5utgWoJkDZ6O9h4WLA>
 <xmx:ZY6PYqohC4uJX-0Kk2MNsWzIYvaiCq9AtC0t5NZIZeUn1ClV6zay5w>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 May 2022 10:27:47 -0400 (EDT)
Date: Thu, 26 May 2022 17:27:44 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <Yo+OYN/rjdB7wfQu@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-5-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220524152144.40527-5-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 4/4] selftests: forwarding: add
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

On Tue, May 24, 2022 at 05:21:44PM +0200, Hans Schultz wrote:
> Verify that the MAC-Auth mechanism works by adding a FDB entry with the
> locked flag set. denying access until the FDB entry is replaced with a
> FDB entry without the locked flag set.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  .../net/forwarding/bridge_locked_port.sh      | 42 ++++++++++++++++---
>  1 file changed, 36 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> index 5b02b6b60ce7..50b9048d044a 100755
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
> @@ -94,13 +94,13 @@ locked_port_ipv4()
>  	ping_do $h1 192.0.2.2
>  	check_fail $? "Ping worked after locking port, but before adding FDB entry"
>  
> -	bridge fdb add `mac_get $h1` dev $swp1 master static
> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>  
>  	ping_do $h1 192.0.2.2
>  	check_err $? "Ping did not work after locking port and adding FDB entry"
>  
>  	bridge link set dev $swp1 locked off
> -	bridge fdb del `mac_get $h1` dev $swp1 master static
> +	bridge fdb del `mac_get $h1` dev $swp1 master
>  
>  	ping_do $h1 192.0.2.2
>  	check_err $? "Ping did not work after unlocking port and removing FDB entry."
> @@ -124,13 +124,13 @@ locked_port_vlan()
>  	ping_do $h1.100 198.51.100.2
>  	check_fail $? "Ping through vlan worked after locking port, but before adding FDB entry"
>  
> -	bridge fdb add `mac_get $h1` dev $swp1 vlan 100 master static
> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
>  
>  	ping_do $h1.100 198.51.100.2
>  	check_err $? "Ping through vlan did not work after locking port and adding FDB entry"
>  
>  	bridge link set dev $swp1 locked off
> -	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master static
> +	bridge fdb del `mac_get $h1` dev $swp1 vlan 100 master
>  
>  	ping_do $h1.100 198.51.100.2
>  	check_err $? "Ping through vlan did not work after unlocking port and removing FDB entry"
> @@ -153,7 +153,8 @@ locked_port_ipv6()
>  	ping6_do $h1 2001:db8:1::2
>  	check_fail $? "Ping6 worked after locking port, but before adding FDB entry"
>  
> -	bridge fdb add `mac_get $h1` dev $swp1 master static
> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
> +
>  	ping6_do $h1 2001:db8:1::2
>  	check_err $? "Ping6 did not work after locking port and adding FDB entry"
>  
> @@ -166,6 +167,35 @@ locked_port_ipv6()
>  	log_test "Locked port ipv6"
>  }

Why did you change s/add/replace/? Also, from the subject and commit
message I understand the patch is about adding a new test, not changing
existing ones.

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
> +	bridge fdb del `mac_get $h1` dev $swp1 master

Why the delete is needed? Aren't you getting errors on trying to delete
a non-existing entry? In previous test cases learning is disabled and it
seems the FDB entry is cleaned up.

> +
> +	ping_do $h1 192.0.2.2
> +	check_fail $? "MAB: Ping worked on locked port without FDB entry"
> +
> +	bridge fdb show | grep `mac_get $h1` | grep -q "locked"
> +	check_err $? "MAB: No locked fdb entry after ping on locked port"
> +
> +	bridge fdb replace `mac_get $h1` dev $swp1 master static
> +
> +	ping_do $h1 192.0.2.2
> +	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
> +
> +	bridge fdb del `mac_get $h1` dev $swp1 master

bridge link set dev $swp1 learning off

> +	bridge link set dev $swp1 locked off
> +
> +	log_test "Locked port MAB"
> +}
>  trap cleanup EXIT
>  
>  setup_prepare
> -- 
> 2.30.2
> 

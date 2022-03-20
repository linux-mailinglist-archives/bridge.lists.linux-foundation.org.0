Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FEA4E1AB4
	for <lists.bridge@lfdr.de>; Sun, 20 Mar 2022 08:52:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D2B18402F5;
	Sun, 20 Mar 2022 07:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AexIcZHsiXao; Sun, 20 Mar 2022 07:52:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0E58840339;
	Sun, 20 Mar 2022 07:52:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7D2CC0082;
	Sun, 20 Mar 2022 07:52:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 46E69C000B
 for <bridge@lists.linux-foundation.org>; Sun, 20 Mar 2022 07:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DB1160B1F
 for <bridge@lists.linux-foundation.org>; Sun, 20 Mar 2022 07:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QgIUxv2v93HT for <bridge@lists.linux-foundation.org>;
 Sun, 20 Mar 2022 07:52:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2A2160B1C
 for <bridge@lists.linux-foundation.org>; Sun, 20 Mar 2022 07:52:41 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id E8DB85C0116;
 Sun, 20 Mar 2022 03:52:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 20 Mar 2022 03:52:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5S1Qz9qa8y5v6pn+6
 hPiVyR9fbOW9nCX+ik34wPrsIw=; b=GR4U9PbXRmwKlG+92UM35IdYDLE1UnrK7
 Ld0eXeTAX/uq+p5Fc/9ZoksjqPgGZiSpV6ROvs5hTVAqwg7Tr2+I9ClVUMIf1gw6
 Nd4Q5VhefO0IaNXa2OzHrlr4va1hUuM+J6dmJMWx1rQk1pNLLoUPar4yqWHhGchI
 tDdBttofIPw+uIPGAhN4loJ50CoPyybCcFjoZ5qHUL9iFqXOQ643z7LP889vGkPq
 v+3Pmq2E7OXWZv0cSKl/f8Ffr1jVvO3a7Y/rbIHN0fDTkP7v58BS07KKMCkskUG7
 rTPrp+jinp67KmciT0vJHFrcQsbAicJn7KXknDl2WEjI12WPUEW+Q==
X-ME-Sender: <xms:Rd02YlAJD1ycEJbkLRMM0KRY1lDvwGfvGBClIeKGAwuYgY-HM9HNnQ>
 <xme:Rd02YjjzevJC-HgUmG0HrhVAfVILN18yq7Bv5tw05ggk4d7STE8NnJpO4lvR_lBim
 6Hj4eVHk4KKHzk>
X-ME-Received: <xmr:Rd02Ygk33nNO4FUMv2-vySsaqev1qpuzZW2Jcu9_5dkPG_NIAUjrvAqpmRucXTs56jsnzw_cEy4BVHAsY8Zm4h4Tjbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudegtddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:Rd02YvzwPsopQaTOv0s9xyRhEaTH9tDkKCEJi5ru5QmnSzqjeBupcw>
 <xmx:Rd02YqTH4pWwiDel8_YY2xrIDSeh4juCtvRvBHVZb5Tj7qDdvxXDeA>
 <xmx:Rd02Yib1AlUzy3TCPVkOFvuapZ5IVI5hvwqvgtuVH6Nzs_K2gOkNig>
 <xmx:Rd02YvhB7qS8uctbcKFyh_JQZBVebQgpvrp2AY-Z7P6OicfFSEMiYQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Mar 2022 03:52:36 -0400 (EDT)
Date: Sun, 20 Mar 2022 09:52:33 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YjbdQUVYkhkbdp3L@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-5-schultz.hans+netdev@gmail.com>
 <YjNMS6aFG+93ejj5@shredder> <86mthnw9gr.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86mthnw9gr.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
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

On Fri, Mar 18, 2022 at 04:45:24PM +0100, Hans Schultz wrote:
> On tor, mar 17, 2022 at 16:57, Ido Schimmel <idosch@idosch.org> wrote:
> > On Thu, Mar 17, 2022 at 10:39:02AM +0100, Hans Schultz wrote:
> >> Verify that the MAC-Auth mechanism works by adding a FDB entry with the
> >> locked flag set. denying access until the FDB entry is replaced with a
> >> FDB entry without the locked flag set.
> >> 
> >> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> >> ---
> >>  .../net/forwarding/bridge_locked_port.sh      | 29 ++++++++++++++++++-
> >>  1 file changed, 28 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> >> index 6e98efa6d371..2f9519e814b6 100755
> >> --- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> >> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> >> @@ -1,7 +1,7 @@
> >>  #!/bin/bash
> >>  # SPDX-License-Identifier: GPL-2.0
> >>  
> >> -ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
> >> +ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
> >>  NUM_NETIFS=4
> >>  CHECK_TC="no"
> >>  source lib.sh
> >> @@ -170,6 +170,33 @@ locked_port_ipv6()
> >>  	log_test "Locked port ipv6"
> >>  }
> >>  
> >> +locked_port_mab()
> >> +{
> >> +	RET=0
> >> +	check_locked_port_support || return 0
> >> +
> >> +	ping_do $h1 192.0.2.2
> >> +	check_err $? "MAB: Ping did not work before locking port"
> >> +
> >> +	bridge link set dev $swp1 locked on
> >> +	bridge link set dev $swp1 learning on
> >> +
> >> +	ping_do $h1 192.0.2.2
> >> +	check_fail $? "MAB: Ping worked on port just locked"
> >> +
> >> +	if ! bridge fdb show | grep `mac_get $h1` | grep -q "locked"; then
> >> +		RET=1
> >> +		retmsg="MAB: No locked fdb entry after ping on locked port"
> >> +	fi
> >
> > bridge fdb show | grep `mac_get $h1 | grep -q "locked"
> > check_err $? "MAB: No locked fdb entry after ping on locked port"
> >
> >> +
> >> +	bridge fdb del `mac_get $h1` dev $swp1 master
> >> +	bridge fdb add `mac_get $h1` dev $swp1 master static
> >
> > bridge fdb replace `mac_get $h1` dev $swp1 master static
> >
> Unfortunately for some reason 'replace' does not work in several of the
> tests, while when replaced with 'del+add', they work.

Is it because the 'locked' flag is not removed following the replace? At
least I don't see where it's handled in fdb_add_entry(). If so, please
fix it and use "bridge fdb replace" in the test.

> 
> >> +
> >> +	ping_do $h1 192.0.2.2
> >> +	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
> >> +
> >> +	log_test "Locked port MAB"
> >
> > Clean up after the test to revert to initial state:
> >
> > bridge fdb del `mac_get $h1` dev $swp1 master
> > bridge link set dev $swp1 locked off
> >
> >
> >> +}
> >>  trap cleanup EXIT
> >>  
> >>  setup_prepare
> >> -- 
> >> 2.30.2
> >> 

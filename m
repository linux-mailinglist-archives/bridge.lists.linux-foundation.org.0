Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A834D8887
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 16:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7107C8144D;
	Mon, 14 Mar 2022 15:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Ah_msxMv_H4; Mon, 14 Mar 2022 15:50:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 026D8823EB;
	Mon, 14 Mar 2022 15:50:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C7FBC000B;
	Mon, 14 Mar 2022 15:50:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EF900C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF36B823EB
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jhu-wF2jh4co for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 15:50:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45D808144D
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:50:45 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id B67863201F96;
 Mon, 14 Mar 2022 11:50:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 14 Mar 2022 11:50:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=nD1zjfgHJtc84ORON
 Qo90iFLDqy65e7NHPqJ7KGjDrw=; b=XtmsdeDB97EvQUiWEzAglCxyC9pkGLcJV
 X9hGE0DTnL+idBbquV/+wf6rG6WpWRWt7UtKncp4H1qRGTb7j6RXk1U8LXlSWojh
 u1bbpEJykrDKgrnhamAzEY4pXVavZHH7pkZjuBJbRtRKDO2FrqvUV0pqq6Su7xWp
 rUW2GGEFnPwyW9jYYS0K8weMSq3cmomGOsciAXA2ULBV3+oGt6mGystLNUfsxUjb
 iOfPpg9saZdcBnAys9912BaYkOMgnktC6tbLBT0zBIdpAiGDRZ3Lo/ONTq5v+RAX
 clZCe+LkzpET2kNxdExq40bF0G+5A8EDRk4vPpusTzdA3x/WBosHQ==
X-ME-Sender: <xms:UWQvYr3JSYPu3GlB1Gqj4B52a8IBcWQ5tu3BaUtjjpYa7h3E6PXUzA>
 <xme:UWQvYqHP3FkB9z0rggXVEqPDsYgDm51vbjl40X9Tvcb7K45QvfKwz3R0zhRZb4AmQ
 F3aaCpl5sVN2mQ>
X-ME-Received: <xmr:UWQvYr5lW6P8tT-3mYZDT9wJqLsGLp-1WHBfG457wmlknoloh1i81mQcHvwm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddvkedgkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:UWQvYg1yXn-E5b0o6Etk98vYmwGFEOekuV2eRWvyqh-E1IlZh2nf-Q>
 <xmx:UWQvYuEB7rsep2I_xj8WHVBeS46QozzW8BWBThN2xTfcZ4x4OyfbQA>
 <xmx:UWQvYh-PWTTsWfCboHYz8vcvZqUToqDi1_kC5vUDRI-ZmMDlYFyIQg>
 <xmx:UmQvYreJeymYaMxqbTh4SUb9HTq-m8r1crJXzsxRfZRp_vCPmmFlpA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Mar 2022 11:50:41 -0400 (EDT)
Date: Mon, 14 Mar 2022 17:50:38 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <Yi9kTh6XZu3OiCz0@shredder>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/3] Extend locked port feature with
 FDB locked flag (MAC-Auth/MAB)
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

On Thu, Mar 10, 2022 at 03:23:17PM +0100, Hans Schultz wrote:
> This patch set extends the locked port feature for devices
> that are behind a locked port, but do not have the ability to
> authorize themselves as a supplicant using IEEE 802.1X.
> Such devices can be printers, meters or anything related to
> fixed installations. Instead of 802.1X authorization, devices
> can get access based on their MAC addresses being whitelisted.
> 
> For an authorization daemon to detect that a device is trying
> to get access through a locked port, the bridge will add the
> MAC address of the device to the FDB with a locked flag to it.
> Thus the authorization daemon can catch the FDB add event and
> check if the MAC address is in the whitelist and if so replace
> the FDB entry without the locked flag enabled, and thus open
> the port for the device.
> 
> This feature is known as MAC-Auth or MAC Authentication Bypass
> (MAB) in Cisco terminology, where the full MAB concept involves
> additional Cisco infrastructure for authorization. There is no
> real authentication process, as the MAC address of the device
> is the only input the authorization daemon, in the general
> case, has to base the decision if to unlock the port or not.
> 
> With this patch set, an implementation of the offloaded case is
> supplied for the mv88e6xxx driver. When a packet ingresses on
> a locked port, an ATU miss violation event will occur. When

When do you get an ATU miss violation? In case there is no FDB entry for
the SA or also when there is an FDB entry, but it points to a different
port? I see that the bridge will only create a "locked" FDB entry in
case there is no existing entry, but it will not transition an existing
entry to "locked" state. I guess ATU miss refers to an actual miss and
not mismatch.

The HW I work with doesn't have the ability to generate such
notifications, but it can trap packets on MISS (no entry) or MISMATCH
(exists, but with different port). I believe that in order to support
this feature we need to inject MISS-ed packets to the Rx path so that
eventually the bridge itself will create the "locked" entry as opposed
to notifying the bridge about the entry as in your case.

> handling such ATU miss violation interrupts, the MAC address of
> the device is added to the FDB with a zero destination port
> vector (DPV) and the MAC address is communicated through the
> switchdev layer to the bridge, so that a FDB entry with the
> locked flag enabled can be added.
> 
> Hans Schultz (3):
>   net: bridge: add fdb flag to extent locked port feature
>   net: switchdev: add support for offloading of fdb locked flag
>   net: dsa: mv88e6xxx: mac-auth/MAB implementation

Please extend tools/testing/selftests/net/forwarding/bridge_locked_port.sh
with new test cases for this code.

> 
>  drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
>  drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
>  drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
>  drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
>  drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
>  drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
>  drivers/net/dsa/mv88e6xxx/port.h              |  1 +
>  include/net/switchdev.h                       |  3 +-
>  include/uapi/linux/neighbour.h                |  1 +
>  net/bridge/br.c                               |  3 +-
>  net/bridge/br_fdb.c                           | 13 +++-
>  net/bridge/br_input.c                         | 11 ++-
>  net/bridge/br_private.h                       |  5 +-
>  15 files changed, 167 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
> 
> -- 
> 2.30.2
> 

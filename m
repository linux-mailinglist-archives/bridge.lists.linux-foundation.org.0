Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1384FB536
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 09:47:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A986D83E84;
	Mon, 11 Apr 2022 07:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6U46PULiL--d; Mon, 11 Apr 2022 07:47:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DD25B83E60;
	Mon, 11 Apr 2022 07:47:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C336C0088;
	Mon, 11 Apr 2022 07:47:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8CC2DC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 07:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ABFE415AC
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 07:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiChK0YNaCQ0 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 07:47:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BD53415A1
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 07:47:39 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CB028320206D;
 Mon, 11 Apr 2022 03:47:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 11 Apr 2022 03:47:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649663257; x=
 1649749657; bh=aeCglxf3m0Z/ur1F6Av+nbXh7GfbEdpar1vW63Rquvc=; b=l
 Cr9mxxPOsoUY/xGlRGDDO7uYCNaQiDmX1pnCEbZYpVDmpoEkF5nrNJXafl3rgCuJ
 hWrCcIvJVQy45n7o8bMoHsrI3U/TPN/QPyqgEHdSgX6Z60a+Rg/R2al0fwflklB5
 oKQZhenuRcCl+yg78fajA5PGJljGBSPhC/Nel6MoPISGqwP1ILdfuRIZ2/0zFB5s
 wp/t9vAANgzB/HuLqPKSa044FwVB1O5eTfIPYKAwalkcAjH7vrNd2f2qrHlhILpd
 FBcjwZTjCDhk/ATcU8wBcrsNdaqt3gMvrXkKrPOb2391J2ohCMkuke6yDQlUlqvY
 1ZDxY5nYECTw3XtpjV8lA==
X-ME-Sender: <xms:Gd1TYkxlj_Gmq1c1-58aymsID-Fof1LPdBMXHBxagREWguTl-_3rFA>
 <xme:Gd1TYoSFFkH6tEE4iP2BMlrg0HOM4eZiQLKM_feg9WJtF3yjeNLNtNACiQDdbpMHO
 HTzJOq48qE2Y50>
X-ME-Received: <xmr:Gd1TYmXJm3eijSDtJBxUZCHt4jJoQq2aDvLbowEJcODeoX9P-SGivJBwemvx>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekhedguddulecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefkughoucfutghhihhmmhgvlhcuoehiughoshgthhesihgu
 ohhstghhrdhorhhgqeenucggtffrrghtthgvrhhnpedtffekkeefudffveegueejffejhf
 etgfeuuefgvedtieehudeuueekhfduheelteenucevlhhushhtvghrufhiiigvpedtnecu
 rfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:Gd1TYijqRGjBApaQKF7kbvFkl8nZljUxgBzE4mDVlISMEJB1I2K9bA>
 <xmx:Gd1TYmBn2xiORSQUdMU-blb4eK42ApMW8nvyFnRz3h1VcMwgeK6h8A>
 <xmx:Gd1TYjLgscGezHEHmAmiPL098WzLiPav1HnYIevqYck3L_QMiNKgyg>
 <xmx:Gd1TYhNaD81wqNGvgqWVG7NzdzCsrnkziNclZX__-7uJ_5UsL8j5Qw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 03:47:36 -0400 (EDT)
Date: Mon, 11 Apr 2022 10:47:33 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlPdFS//hYbBSAkT@shredder>
References: <20220409105857.803667-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/6] net: bridge: add flush filtering
	support
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

On Sat, Apr 09, 2022 at 01:58:51PM +0300, Nikolay Aleksandrov wrote:
> Hi,
> This patch-set adds support to specify filtering conditions for a flush
> operation. Initially only FDB flush filtering is added, later MDB
> support will be added as well. Some user-space applications need a way
> to delete only a specific set of entries, e.g. mlag implementations need
> a way to flush only dynamic entries excluding externally learned ones
> or only externally learned ones without static entries etc. Also apps
> usually want to target only a specific vlan or port/vlan combination.
> The current 2 flush operations (per port and bridge-wide) are not
> extensible and cannot provide such filtering, so a new bridge af
> attribute is added (IFLA_BRIDGE_FLUSH) which contains the filtering
> information for each object type which has to be flushed.
> An example structure for fdbs:
>      [ IFLA_BRIDGE_FLUSH ]
>       `[ BRIDGE_FDB_FLUSH ]
>         `[ FDB_FLUSH_NDM_STATE ]
>         `[ FDB_FLUSH_NDM_FLAGS ]
> 
> I decided against embedding these into the old flush attributes for
> multiple reasons - proper error handling on unsupported attributes,
> older kernels silently flushing all, need for a second mechanism to
> signal that the attribute should be parsed (e.g. using boolopts),
> special treatment for permanent entries.
> 
> Examples:
> $ bridge fdb flush dev bridge vlan 100 static
> < flush all static entries on vlan 100 >
> $ bridge fdb flush dev bridge vlan 1 dynamic
> < flush all dynamic entries on vlan 1 >
> $ bridge fdb flush dev bridge port ens16 vlan 1 dynamic
> < flush all dynamic entries on port ens16 and vlan 1 >
> $ bridge fdb flush dev bridge nooffloaded nopermanent
> < flush all non-offloaded and non-permanent entries >
> $ bridge fdb flush dev bridge static noextern_learn
> < flush all static entries which are not externally learned >
> $ bridge fdb flush dev bridge permanent
> < flush all permanent entries >

IIUC, the new IFLA_BRIDGE_FLUSH attribute is supposed to be passed in
RTM_SETLINK messages, but the current 'bridge fdb' commands all
correspond to RTM_{NEW,DEL,GET}NEIGH messages. To continue following
this pattern, did you consider turning the above examples to the
following?

$ ip link set dev bridge type bridge fdb_flush vlan 100 static
$ ip link set dev bridge type bridge fdb_flush vlan 1 dynamic
$ ip link set dev ens16 type bridge_slave fdb_flush vlan 1 dynamic
$ ip link set dev bridge type bridge fdb_flush nooffloaded nopermanent
$ ip link set dev bridge type bridge fdb_flush static noextern_learn
$ ip link set dev bridge type bridge fdb_flush permanent

It's not critical, but I like the correspondence between iproute2
commands and the underlying netlink messages.

> 
> Note that all flags have their negated version (static vs nostatic etc)
> and there are some tricky cases to handle like "static" which in flag
> terms means fdbs that have NUD_NOARP but *not* NUD_PERMANENT, so the
> mask matches on both but we need only NUD_NOARP to be set. That's
> because permanent entries have both set so we can't just match on
> NUD_NOARP. Also note that this flush operation doesn't treat permanent
> entries in a special way (fdb_delete vs fdb_delete_local), it will
> delete them regardless if any port is using them. We can extend the api
> with a flag to do that if needed in the future.
> 
> Patches in this set:
>  1. adds the new IFLA_BRIDGE_FLUSH bridge af attribute
>  2. adds a basic structure to describe an fdb flush filter
>  3. adds fdb netlink flush call via BRIDGE_FDB_FLUSH attribute
>  4 - 6. add support for specifying various fdb fields to filter
> 
> Patch-sets (in order):
>  - Initial flush infra and fdb flush filtering (this set)
>  - iproute2 support
>  - selftests
> 
> Future work:
>  - mdb flush support
> 
> Thanks,
>  Nik
> 
> Nikolay Aleksandrov (6):
>   net: bridge: add a generic flush operation
>   net: bridge: fdb: add support for fine-grained flushing
>   net: bridge: fdb: add new nl attribute-based flush call
>   net: bridge: fdb: add support for flush filtering based on ndm flags
>     and state
>   net: bridge: fdb: add support for flush filtering based on ifindex
>   net: bridge: fdb: add support for flush filtering based on vlan id
> 
>  include/uapi/linux/if_bridge.h |  22 ++++++
>  net/bridge/br_fdb.c            | 128 +++++++++++++++++++++++++++++++--
>  net/bridge/br_netlink.c        |  59 ++++++++++++++-
>  net/bridge/br_private.h        |  12 +++-
>  net/bridge/br_sysfs_br.c       |   6 +-
>  5 files changed, 215 insertions(+), 12 deletions(-)
> 
> -- 
> 2.35.1
> 

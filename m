Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1AE7AEB62
	for <lists.bridge@lfdr.de>; Tue, 26 Sep 2023 13:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87A6B60BE1;
	Tue, 26 Sep 2023 11:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87A6B60BE1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=cKtLQu23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hN2-FEU8y2f8; Tue, 26 Sep 2023 11:22:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 022F260C19;
	Tue, 26 Sep 2023 11:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 022F260C19
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6687C008C;
	Tue, 26 Sep 2023 11:22:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23F81C0032
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C52C441ECF
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C52C441ECF
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=cKtLQu23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XntDvqiYBTC6 for <bridge@lists.linux-foundation.org>;
 Tue, 26 Sep 2023 11:22:54 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D80AA401DB
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D80AA401DB
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 17C8E320047A;
 Tue, 26 Sep 2023 07:22:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 26 Sep 2023 07:22:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695727367; x=1695813767; bh=+JlMwL7peYxkx
 bAOj7Omdxd33gxKlbj7HQtEwxgZzWE=; b=cKtLQu23NwBKm/8ULa+QXLjcUNspZ
 wW75f+V9km5/McnePuQ8zxBaVc1EUavIkjlNmr9ed6/0nWKDmB4t69EI62hnQoLc
 OskoRIIVRcs/cxPjRZEwX2ImPVQW9hhZwPpYj9xjZ7oeNn5lgrH+jQ7eG08rltjm
 rMhcL4q6EyFQBDBqnd5IyIwz8/dU3sDJNE2GRvWwTZySynVdwcrqnbAB1Sf9kFBV
 6bIVnKw1vm3EHdIKD7MKO2ZJ0X+b1oXfWN8h8wz8unZoTYmwDVAJC0A2iz2HGsZV
 Mmkj8R8N8S4nyOPEbc1r2u5jUqrj23+6L1OunXCD8vjqbQf29o5/pHH+w==
X-ME-Sender: <xms:Br8SZZnRxR3i8BF83N90OG3khcU2X-wsCZ5RfY4-jZiXSnJbnLmeoQ>
 <xme:Br8SZU3Qi5ZG2GquKPSJ8JWIr8k2FTWitHdwElYmImeZmc-qQPTIyKAi5H7HmJWQW
 MJVHH-6CNlmMmA>
X-ME-Received: <xmr:Br8SZfo2CXtSl-oPJW0pmWV2HRnV0rU4NhIdPUzY_smwJdQxwXlOuKAnFdshKTVNEaRPgGI6M5L3-SQs2Nwn7UvJPL0JxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvjedrtddtgdduudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:B78SZZlwrGnrRS4gZwpkpdDoNQdPEydVfSlgKf47CizoL5_RzgYHXg>
 <xmx:B78SZX0r5aKMHBoJbvq8ShHhKXTL7k900RBssAZlJeayAfY470Ti8g>
 <xmx:B78SZYtuyD6OlsdcDI9GCNlDzO9VPwfWeUfbKXh-A4yK7q3dovLt8w>
 <xmx:B78SZe3j76nG1OCKI-nGeo_DuePqsApH62Pfn_zmrL1hKJ5UFZRNpg>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 Sep 2023 07:22:46 -0400 (EDT)
Date: Tue, 26 Sep 2023 14:22:42 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <ZRK/ArWPNHgjVvWA@shredder>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-3-39f0293807b8@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919-fdb_limit-v4-3-39f0293807b8@avm.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 3/6] net: bridge: Track and limit
 dynamically learned FDB entries
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

On Tue, Sep 19, 2023 at 10:12:50AM +0200, Johannes Nixdorf wrote:
> A malicious actor behind one bridge port may spam the kernel with packets
> with a random source MAC address, each of which will create an FDB entry,
> each of which is a dynamic allocation in the kernel.
> 
> There are roughly 2^48 different MAC addresses, further limited by the
> rhashtable they are stored in to 2^31. Each entry is of the type struct
> net_bridge_fdb_entry, which is currently 128 bytes big. This means the
> maximum amount of memory allocated for FDB entries is 2^31 * 128B =
> 256GiB, which is too much for most computers.
> 
> Mitigate this by maintaining a per bridge count of those automatically
> generated entries in fdb_n_learned, and a limit in fdb_max_learned. If
> the limit is hit new entries are not learned anymore.
> 
> For backwards compatibility the default setting of 0 disables the limit.
> 
> User-added entries by netlink or from bridge or bridge port addresses
> are never blocked and do not count towards that limit.
> 
> Introduce a new fdb entry flag BR_FDB_DYNAMIC_LEARNED to keep track of
> whether an FDB entry is included in the count. The flag is enabled for
> dynamically learned entries, and disabled for all other entries. This
> should be equivalent to BR_FDB_ADDED_BY_USER and BR_FDB_LOCAL being unset,
> but contrary to the two flags it can be toggled atomically.
> 
> Atomicity is required here, as there are multiple callers that modify the
> flags, but are not under a common lock (br_fdb_update is the exception
> for br->hash_lock, br_fdb_external_learn_add for RTNL).
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

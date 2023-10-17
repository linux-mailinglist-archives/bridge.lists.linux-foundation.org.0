Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC04D7CC19F
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 13:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91836402A7;
	Tue, 17 Oct 2023 11:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91836402A7
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=uub9dAta
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id duacql5GG9FZ; Tue, 17 Oct 2023 11:15:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DDE4F40A1F;
	Tue, 17 Oct 2023 11:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDE4F40A1F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BD85C0DD3;
	Tue, 17 Oct 2023 11:15:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A8735C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 905F840977
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 905F840977
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=uub9dAta
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpnPoh5vvof0 for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 11:15:49 +0000 (UTC)
X-Greylist: delayed 569 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 17 Oct 2023 11:15:48 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E92FE404F7
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E92FE404F7
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 11:15:48 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 3A5CB5C0308;
 Tue, 17 Oct 2023 07:06:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 17 Oct 2023 07:06:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1697540774; x=1697627174; bh=gk4uH597iCVOZ
 ZIrN/RdNf7XGlip0tVQ+qETf0YnWnM=; b=uub9dAtaSbqCsb5DHt/7NzLuERclT
 ci/W/XwyQ6GgWFzejlhKNAEcIuZ4ZVgq9dUL7DthXYE+X7aBjqhXvIqbq8kGeTXz
 xaQD+E9I1513hcuio8WWpWBhicj9ER/J/7T5dQN+kiRahW5hIFHLfOkaHsi1+Vb1
 /cC1UcSp9TZ+GgrF7sCUWRE2QGVcTRDdS2GEt0EYzFj7/Fb5Xwu3II2IDc+yxs03
 9ZLzu19qbcYUJ2WDf7lJV2JDSAu+6V3qHY+aplIaRSoTPWM/x7BZyr4/Qd8MTV2r
 N45iHMctDsCZharssV6oaB9TFaMQZOOplSOC9ApQl94xCq7lqNiqSuL6g==
X-ME-Sender: <xms:pWouZfyC30nDYgKei5x4q2ult-hfe1uovSMU8Jcks8o3XSX-_uAcfg>
 <xme:pWouZXRJH9RYHFyr8qT9WOlhN6k5NNQtYw7yYIaw6c2S8sZhdoU2r_zbRpDAB9Elo
 gPBAUW3SJxdS9w>
X-ME-Received: <xmr:pWouZZXWoLPz3OgbvniINxQD1w8FRz9NbkhqRuYmcWJMC95t9OzrzD5E2C_eROi9zW3mGOmb6eoyPwKTgm3FA_ZIKJucyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedvgdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:pWouZZinhEjKprpqjCn_Q6M_45y6YXUt3GG3UShyf8c5ss-fYPpgxQ>
 <xmx:pWouZRCwcZuVDGxXSQeQ_AU2p7BGSH60Z39MfgZbM36iB2qlOj_eOg>
 <xmx:pWouZSLzPAM3iLZRbNQjnA_GdEzJdSnd-O9xnH8sZZ2t9J9PG_U4KQ>
 <xmx:pmouZbSK5L9yxQI7I4oQ3NPPUHZ2_uP9ygtjzvDhCZac0mKM7oxu-Q>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Oct 2023 07:06:12 -0400 (EDT)
Date: Tue, 17 Oct 2023 14:06:07 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <ZS5qn0cv8InB/qn+@shredder>
References: <20231016-fdb_limit-v5-0-32cddff87758@avm.de>
 <20231016-fdb_limit-v5-3-32cddff87758@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016-fdb_limit-v5-3-32cddff87758@avm.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v5 3/5] net: bridge: Add netlink knobs
 for number / max learned FDB entries
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

On Mon, Oct 16, 2023 at 03:27:22PM +0200, Johannes Nixdorf wrote:
> The previous patch added accounting and a limit for the number of
> dynamically learned FDB entries per bridge. However it did not provide
> means to actually configure those bounds or read back the count. This
> patch does that.
> 
> Two new netlink attributes are added for the accounting and limit of
> dynamically learned FDB entries:
>  - IFLA_BR_FDB_N_LEARNED (RO) for the number of entries accounted for
>    a single bridge.
>  - IFLA_BR_FDB_MAX_LEARNED (RW) for the configured limit of entries for
>    the bridge.
> 
> The new attributes are used like this:
> 
>  # ip link add name br up type bridge fdb_max_learned 256
>  # ip link add name v1 up master br type veth peer v2
>  # ip link set up dev v2
>  # mausezahn -a rand -c 1024 v2
>  0.01 seconds (90877 packets per second
>  # bridge fdb | grep -v permanent | wc -l
>  256
>  # ip -d link show dev br
>  13: br: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 [...]
>      [...] fdb_n_learned 256 fdb_max_learned 256
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

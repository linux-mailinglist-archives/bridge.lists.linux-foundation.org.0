Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD82B4BFF88
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 18:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C96EC60EE0;
	Tue, 22 Feb 2022 17:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYNLlmMK4o2k; Tue, 22 Feb 2022 17:00:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6382960EE2;
	Tue, 22 Feb 2022 17:00:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25272C0073;
	Tue, 22 Feb 2022 17:00:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0390BC0011
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 17:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D817481B71
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 17:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id az2w-O4DGKxJ for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 17:00:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D7DC8132F
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 17:00:53 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 797D65803B7;
 Tue, 22 Feb 2022 12:00:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 22 Feb 2022 12:00:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=HtCItNyhGVUgQ9zYx
 8y8HwkSSNP7qG6erjhX3gp1Vas=; b=GtZc3a+Qfwr7g0xbB/r/BXPgspmACWS5G
 0OGqRVvN6z11OqHVovHGRWCIY+6qwMtxF85hTXbUfkCrF+fnjHoeZnPCv0XXOJla
 0JkgBu9WCWEnKJottlEKs/Q4JTZdyLmnRmhTbDr+/rVr0IPN2yxgwBw/wMgTVpG8
 C9DoX4S/LL3KjKX65DZDCRznCURUQokspAfI6u2Fi3Fx8wU6QTNyq8N5GoT7nieO
 Yhhv/C7ifwD/9umjdWpzeNwMitCll2oBCOj6sJ8t/mdGGx5OHFJ+xV/TdaC/1R0N
 6AUjtVDxl/Y72YPEjJVL0il7EKgeRDlxX1hKjl3laKNHeOagby5aA==
X-ME-Sender: <xms:wRYVYiV488PJ8dsyWXC2-qZX4Ec6K41Dsf4gR_5L-9d82sciAItPsQ>
 <xme:wRYVYumBrUxVr8yJp28gXjHjH6idO1Ji3PhD6ODs9V4bVAf8CwKGf-myJP2AHBedc
 jQyhpQuubrzuUs>
X-ME-Received: <xmr:wRYVYmb-w1BGYM1gutgPONq5dR0QQG6p26CwXhoUD4DKQDnERE5vPOkh4d_7pU4ztW3VGAKMjf_r8oAuyqgkzbGcag0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeekgdelfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:whYVYpVh7rh-btnjQECit2ixdjjH1xEQgpb0OQe732sLUJXzafy88w>
 <xmx:whYVYskuy1ClagUaAi7TsEOtjRvTRcRyXCCXBfOPZhK_9PsMx-ELbw>
 <xmx:whYVYucdvuL-RBwSfTBPxtNiwaIxsdnMxtpGFdKjt1-cJflnmCUyjw>
 <xmx:whYVYqpPNokjYGIilBHrkHosAHqdWOFV-0p14_H7TjNh5i0VZ3gNjw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Feb 2022 12:00:48 -0500 (EST)
Date: Tue, 22 Feb 2022 19:00:46 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YhUWvhkhRVY+/Osd@shredder>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
 <20220222132818.1180786-6-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220222132818.1180786-6-schultz.hans+netdev@gmail.com>
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
Subject: Re: [Bridge] [PATCH net-next v4 5/5] selftests: forwarding: tests
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

On Tue, Feb 22, 2022 at 02:28:18PM +0100, Hans Schultz wrote:
> diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> new file mode 100755
> index 000000000000..a8800e531d07
> --- /dev/null
> +++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
> @@ -0,0 +1,180 @@
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
> +	ip link set dev vrf-vlan-h1 up
> +	vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24 ::ffff:c633:6401/64

Hi,

Why did you change it from 2001:db8:3::1/64 to ::ffff:c633:6401/64? It
was actually OK the first time...

Anyway, looking at locked_port_vlan() I see that you are only testing
IPv4 so you can just drop this address:

vlan_create $h1 100 vrf-vlan-h1 198.51.100.1/24

Same for $h2

LGTM otherwise. Feel free to add my tag to the next version


> +}

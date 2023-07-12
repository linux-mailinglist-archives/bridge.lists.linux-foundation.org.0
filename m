Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD8C750DC7
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 18:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F20A605E3;
	Wed, 12 Jul 2023 16:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F20A605E3
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=cWdEMFNE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5NxprX195V5m; Wed, 12 Jul 2023 16:14:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AF8276129F;
	Wed, 12 Jul 2023 16:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF8276129F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 48A55C0DD4;
	Wed, 12 Jul 2023 16:14:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37D79C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 16:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0656418BB
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 16:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0656418BB
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=cWdEMFNE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2DC0kMj974WS for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 16:14:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7412417D0
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7412417D0
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 16:14:53 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id E9C8D5C00D3;
 Wed, 12 Jul 2023 12:14:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 12 Jul 2023 12:14:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1689178491; x=1689264891; bh=65HYPJVnC3Dun
 dRznANcrTpdyqqmDNHjpqvmQrnP+nU=; b=cWdEMFNEqC8Au0EfKRNw7JCCLNGo0
 IvgSyrZ68knCNfzf5s0OnoYgH1jvBXnbDnjKaxA6sqqMeUu8WmngXq0qXixXAxyV
 X/NVxydIWUYgLwQpJaIk1ReSJAvfEEnTClrSAz2lBw15tOgk3xe0dEQaPhQj2Pgs
 C6fICBpUsh5Yjx1bOXiUVcxZKdGKM/I1cGZijtaRvBZGA3vT9XNBVy5FEXnZsKow
 hM0DkO0xgIL+4fpyed6xXIohcyyRTnGECwA2+VS7NEAPxHvAHUSqnY8+s3WF5E8b
 nCTjiDyue5KbagHo4iXnpuTTfJWxjU+luGOSZ+mkeEc2s9qpXGxtpBMhA==
X-ME-Sender: <xms:e9GuZDV9HPmkNW7ESPM6R76BynOco_41OAekjgWoVXlr69XVX0Pn2A>
 <xme:e9GuZLkJcVQXGV9fLxZqwy4o-CmI-i0qUIry9Srdkg1INboLJuxUorWooRjcurLkm
 8j8pl-B60R4zcQ>
X-ME-Received: <xmr:e9GuZPaxyd4GcobgDXD07ITXT_CkzGlRq8Usw1NdgayRh9CAehFUqr_K72N76M0g_TmeWP7UUCa7cw2qNY1_xivNslA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedvgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeehhfdtjedviefffeduuddvffegteeiieeguefgudffvdfftdefheeijedthfej
 keenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:e9GuZOU1b7km81Y_p3ba8uDHvEwG9VwEagtcoyCwgly4avrqrPK3lQ>
 <xmx:e9GuZNl0JWDj5s1MGz91z-fIXpThT1E0901WL4_CVXOnFy6YBVEzJQ>
 <xmx:e9GuZLdS4P1J2sPmshWmLiB_UHJsjHXtBm5A_VnjUtb42w4BctqsLw>
 <xmx:e9GuZOiZgVzAgSXM1LQpS7U697jVu7qQZOT7ebJuALCAyn5d2tmtjA>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jul 2023 12:14:50 -0400 (EDT)
Date: Wed, 12 Jul 2023 19:14:46 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Message-ID: <ZK7RdhQ6fBkOY/F+@shredder>
References: <20230712154449.6093-1-kuniyu@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230712154449.6093-1-kuniyu@amazon.com>
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Kuniyuki Iwashima <kuni1840@gmail.com>,
 Harry Coin <hcoin@quietfountain.com>, Eric Dumazet <edumazet@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net] bridge: Add extack warning when
 enabling STP in netns.
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

On Wed, Jul 12, 2023 at 08:44:49AM -0700, Kuniyuki Iwashima wrote:
> When we create an L2 loop on a bridge in netns, we will see packets storm
> even if STP is enabled.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link add veth0 type veth peer name veth1
>   # ip link set veth0 master br0 up
>   # ip link set veth1 master br0 up
>   # ip link set br0 type bridge stp_state 1
>   # ip link set br0 up
>   # sleep 30
>   # ip -s link show br0
>   2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
>       link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
>       RX: bytes  packets  errors  dropped missed  mcast
>       956553768  12861249 0       0       0       12861249  <-. Keep
>       TX: bytes  packets  errors  dropped carrier collsns     |  increasing
>       1027834    11951    0       0       0       0         <-'   rapidly
> 
> This is because llc_rcv() drops all packets in non-root netns and BPDU
> is dropped.
> 
> Let's add extack warning when enabling STP in netns.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link set br0 type bridge stp_state 1
>   Warning: bridge: STP does not work in non-root netns.
> 
> Note this commit will be reverted later when we namespacify the whole LLC
> infra.
> 
> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
> Suggested-by: Harry Coin <hcoin@quietfountain.com>
> Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
> Suggested-by: Ido Schimmel <idosch@idosch.org>
> Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

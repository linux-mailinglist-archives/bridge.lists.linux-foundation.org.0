Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E1F3E9A77
	for <lists.bridge@lfdr.de>; Wed, 11 Aug 2021 23:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33C0040205;
	Wed, 11 Aug 2021 21:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LGCGjbIpw0wn; Wed, 11 Aug 2021 21:39:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EDFDB403A6;
	Wed, 11 Aug 2021 21:39:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99361C001F;
	Wed, 11 Aug 2021 21:39:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C7B6C000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C6A883A98
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnh9_O2uvf5j for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 21:39:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7FC983A93
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:39:02 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id C9EE45C00B0;
 Wed, 11 Aug 2021 17:39:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 11 Aug 2021 17:39:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=46gsBV
 2j973bcXk58Yhoh6T8qA9awpQNF3grGouu5fs=; b=LEmXRq4gE48Ra1Yw4mS0b+
 ojXjF41Nyu1tPJnG8hqPyeJSjrGWhaUF3OjcuayiuVQwCWqV6AHjdQUEOl7UBWwq
 qolJ6xWMywEog1bPksUMXYytedDbqaMmeCftEe2SG9s23h1uDopwzeXxa/ffgiT1
 wTkC0OKgzH1Dk0vyow3X/e362EpdXBklTd4/bak1a9lI1EefSc0D3IYg0+3HhTjV
 9QBd2k926dKN4soU1kOiuaQBXgK5chdgojk+Xni/vcePpHc/xW63+qQe+ZNCU8zM
 nAeJC9gepPlNFiQmgfVycjguV9xBXxvn4wQtygQ8AmE6lE4OtcUOnvd2xAQ7lHfQ
 ==
X-ME-Sender: <xms:dUMUYU5FhnG8r-34O3-Tq65kT81T-rFvJnLuaduRQuiZL2n19ArVKQ>
 <xme:dUMUYV6yTcjctUBoK221QiFRQAVmQCDoOu2XTZAIV3h3M_laok3Xb2DnwzVwWKUGX
 yUXC24SaHd1fpw>
X-ME-Received: <xmr:dUMUYTe-XQFB4ZgTIb1SL0LSqHGaUmGCcLNNkPcJdIm8H3vYT3nLTm1QD9RCIteuxMgoEmFyz7RgyxK649onauQYzF0Nkw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkedugdduiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdortddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpefgjeevhfdvgeeiudekteduveegueejfefffeefteekkeeuueehjeduledtjeeu
 udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:dUMUYZLTZh_J3_PMXZ9NjMtXAn-A88ojeSRUNDpVOVUW-hCLI27hRA>
 <xmx:dUMUYYIFuaPb7ChYfZBEBw1FbUfjmxMVA5ylOzz9cfBlveAyNXu6MQ>
 <xmx:dUMUYazAeEEM06Q0N8iQE5NR-FggE2lygpZPvLnUtjr6Dy9K0XCYBQ>
 <xmx:dUMUYRqQIHymy-_lRizn108PVhM7yUSvAoJ6i_uxvdbW0EBXRueYrw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Aug 2021 17:39:00 -0400 (EDT)
Date: Thu, 12 Aug 2021 00:38:56 +0300
From: Ido Schimmel <idosch@idosch.org>
To: DENG Qingfang <dqfext@gmail.com>
Message-ID: <YRRDcGWaWHgBkNhQ@shredder>
References: <20210811135247.1703496-1-dqfext@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811135247.1703496-1-dqfext@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
 isolation to be offloaded
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

On Wed, Aug 11, 2021 at 09:52:46PM +0800, DENG Qingfang wrote:
> Add BR_ISOLATED flag to BR_PORT_FLAGS_HW_OFFLOAD, to allow switchdev
> drivers to offload port isolation.
> 
> Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
>  net/bridge/br_switchdev.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 6bf518d78f02..898257153883 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -71,7 +71,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
>  
>  /* Flags that can be offloaded to hardware */
>  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | \
> +				  BR_ISOLATED)

Why add it now and not as part of a patchset that actually makes use of
the flag in a driver that offloads port isolation?

>  
>  int br_switchdev_set_port_flag(struct net_bridge_port *p,
>  			       unsigned long flags,
> -- 
> 2.25.1
> 

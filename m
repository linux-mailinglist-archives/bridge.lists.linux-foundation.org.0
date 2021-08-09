Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C023E4577
	for <lists.bridge@lfdr.de>; Mon,  9 Aug 2021 14:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F0DE60794;
	Mon,  9 Aug 2021 12:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9SqUAcc_S95E; Mon,  9 Aug 2021 12:16:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1B6C26076D;
	Mon,  9 Aug 2021 12:16:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D580BC001F;
	Mon,  9 Aug 2021 12:16:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0460CC000E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 12:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E549140116
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 12:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fF8D1zEKHNNl for <bridge@lists.linux-foundation.org>;
 Mon,  9 Aug 2021 12:16:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90CD940105
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 12:16:51 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id C0D6D580D7B;
 Mon,  9 Aug 2021 08:16:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 09 Aug 2021 08:16:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vBxCLD
 8Z9lSYgq7+MTO7O7SI2l1GNxu2hWV7szFNHTw=; b=h22xYJ/DTwMWQIQGejc4cA
 588jMPBczATNQ2fXqhKHjaiTBJ17BpEVE6Edk+vjPBbzhagBjMDjlL8eQ1pCw6Pl
 N3jdL8oI8RTLNkVuc36NyGKn5YKMchJWSxDEdUJ8iOvDBglL3DUB93qhl7SFsDp0
 5Wo13H4sbAYrLTtc/8278pZCuk1eEY1DkId1U0G5+9MUzncerjjVxV8DoevUzona
 z2zS9sZewRLouLOwT2/5hfr6dpJfq13fNvT58IuQVlaGlsU5hdiaNU6ml94LxbzY
 e/NQfXAFeSn/Euf57H/4Dlin4GoKl7kkrEtlvWgw83ehG4W5jPv+f2kyeI2Qrb9g
 ==
X-ME-Sender: <xms:rRwRYX7f2r4GaKcVw1F7nSPmtGVWfaKF7EOo3tjsJtkgVphr9YKPag>
 <xme:rRwRYc54GnyJMjA02cfx4yskR3Dwhx-rGYW6R79R-sxUYaaAcIz41ncqLMjy4XbLf
 gNEvo1HlURqcl0>
X-ME-Received: <xmr:rRwRYefbFpluhYg5-pNuUV3e6JQOozDytEXoksKfH2JDWNNutuOAoZvUM_zxi9KRdrdTwdfwahpNngybWO436mHPmnZjxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeejgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:rRwRYYKXJAg4HjPvNbnkWSLZrjYURDIpsSEnUKTB0mp8lBuAi_i1iw>
 <xmx:rRwRYbISz_uCI4dF5hiqmQt68g6pbK732TFhY9atyD3WlcMcDkNCHg>
 <xmx:rRwRYRx-9VrOAsKIgoA9cpSLbIgQByFvzrJhs8hVdrBnb1Y52T0WFg>
 <xmx:rhwRYS-M4Ih6jd0Iqr8sMubFVxmeUSJAcqsGOkPO1aDl0bz4rTTkVA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Aug 2021 08:16:45 -0400 (EDT)
Date: Mon, 9 Aug 2021 15:16:40 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, nikolay@nvidia.com
Message-ID: <YREcqAdU+6IpT0+w@shredder>
References: <20210801231730.7493-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210801231730.7493-1-vladimir.oltean@nxp.com>
Cc: syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: validate the NUD_PERMANENT
 bit when adding an extern_learn FDB entry
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

On Mon, Aug 02, 2021 at 02:17:30AM +0300, Vladimir Oltean wrote:
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index ef743f94254d..bbab9984f24e 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
>  	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
>  		fdb_info = ptr;
>  		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
> -						fdb_info->vid, false);
> +						fdb_info->vid,
> +						fdb_info->is_local, false);

When 'is_local' was added in commit 2c4eca3ef716 ("net: bridge:
switchdev: include local flag in FDB notifications") it was not
initialized in all the call sites that emit
'SWITCHDEV_FDB_ADD_TO_BRIDGE' notification, so it can contain garbage.

>  		if (err) {
>  			err = notifier_from_errno(err);
>  			break;

[...]

> @@ -1281,6 +1292,10 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  
>  		if (swdev_notify)
>  			flags |= BIT(BR_FDB_ADDED_BY_USER);
> +
> +		if (is_local)
> +			flags |= BIT(BR_FDB_LOCAL);

I have at least once selftest where I forgot the 'static' keyword:

bridge fdb add de:ad:be:ef:13:37 dev $swp1 master extern_learn vlan 1

This patch breaks the test when run against both the kernel and hardware
data paths. I don't mind patching these tests, but we might get more
reports in the future.

Nik, what do you think?

> +
>  		fdb = fdb_create(br, p, addr, vid, flags);
>  		if (!fdb) {
>  			err = -ENOMEM;
> @@ -1307,6 +1322,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
>  		if (swdev_notify)
>  			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  
> +		if (is_local)
> +			set_bit(BR_FDB_LOCAL, &fdb->flags);
> +
>  		if (modified)
>  			fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
>  	}
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 2b48b204205e..aa64d8d63ca3 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -711,7 +711,7 @@ int br_fdb_get(struct sk_buff *skb, struct nlattr *tb[], struct net_device *dev,
>  int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
>  void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
>  int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
> -			      const unsigned char *addr, u16 vid,
> +			      const unsigned char *addr, u16 vid, bool is_local,
>  			      bool swdev_notify);
>  int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
>  			      const unsigned char *addr, u16 vid,
> -- 
> 2.25.1
> 

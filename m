Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D8D661FB8
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 09:11:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F6BE60D61;
	Mon,  9 Jan 2023 08:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F6BE60D61
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=mzxOVgnY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSOAx5sN7Sww; Mon,  9 Jan 2023 08:11:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BAF4160D5F;
	Mon,  9 Jan 2023 08:11:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF4160D5F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 59E61C0078;
	Mon,  9 Jan 2023 08:11:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD8A8C002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 08:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E63381B7B
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 08:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E63381B7B
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=mzxOVgnY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPEl16HlxRnt for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 08:11:22 +0000 (UTC)
X-Greylist: delayed 00:05:19 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 085F681BB2
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 085F681BB2
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 08:11:21 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CD49832006F5;
 Mon,  9 Jan 2023 03:05:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 09 Jan 2023 03:06:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1673251558; x=1673337958; bh=hObozgfzpCa4NJkSvRz0TIjGKTPe
 jFUvHPU4Z0aahqk=; b=mzxOVgnYUmn1wqkvAoWZNnNN7BUjMblm39y8OWSvfmWq
 v3yc/JIaIn8ehELmCz5BW/SbUKx2+l3nl8SWKpCptAqZMqDNQOm3f7oWtNk0fnIf
 cECuWF/EThU6YipnukTdmxsSz4VKplC3izMcBUceGP/Y+gmYAb0yTWaYYCRDi2eL
 CBxayCahGbY3xW9Sc9ZabOZ/mg4/DS3OoljyhOOBV6f+mqAvs5BXAtWy8Y2X4Xtc
 QlKNITAK0OyTqIPwNTH9e8rLr/t+Drpov8608l6NgFpFHyn4X885BThpWUDNMXDU
 izE8b3OI056CdOZBeSGeMDY5JT72dwD9sWtT/qp7/Q==
X-ME-Sender: <xms:5Mq7YytZlZplwJfDtbuesa0O1WMdYg9q1hSK1tzIPxXWw2zcUFRYng>
 <xme:5Mq7Y3e1TcWXAtFD5O-sa8ur2aJ4bCItOOgngqx9vVXykQ8kKrNDqu5RUb30Xh-zs
 ga-jVxc0wNdSvA>
X-ME-Received: <xmr:5Mq7Y9yFM0anXC5ynhOYYZdvVEsg8Q3ShghOBOs1Ep4geYGynfpScqz3lnOR>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrkeehgdduudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvddufeevkeehueegfedtvdevfefgudeifeduieefgfelkeehgeelgeejjeeg
 gefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:5cq7Y9MS56HIeTtcom6nUJDwXQVJU62rwPO_h14v5NtK2e3yfC79UQ>
 <xmx:5cq7Yy9aFBuFoxaZ7_hPj9br6SV9K75kb8mo2HfNGlgQJAxOKeiWKw>
 <xmx:5cq7Y1U86zafTr0ETPOgPY9kWu7bz2hrt80zVUNGzy9QnY0dghiB-A>
 <xmx:5sq7YyPQTkniyAfP52LwE0OQzIiQ77B9SCBqJ37sHX9yRlTePTo4RQ>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jan 2023 03:05:56 -0500 (EST)
Date: Mon, 9 Jan 2023 10:05:53 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <Y7vK4T18pOZ9KAKE@shredder>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316150857.2442916-2-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v5 net-next 01/15] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On Wed, Mar 16, 2022 at 04:08:43PM +0100, Tobias Waldekranz wrote:
> +DEFINE_STATIC_KEY_FALSE(br_mst_used);

[...]

> +int br_mst_set_enabled(struct net_bridge *br, bool on,
> +		       struct netlink_ext_ack *extack)
> +{
> +	struct net_bridge_vlan_group *vg;
> +	struct net_bridge_port *p;
> +
> +	list_for_each_entry(p, &br->port_list, list) {
> +		vg = nbp_vlan_group(p);
> +
> +		if (!vg->num_vlans)
> +			continue;
> +
> +		NL_SET_ERR_MSG(extack,
> +			       "MST mode can't be changed while VLANs exist");
> +		return -EBUSY;
> +	}
> +
> +	if (br_opt_get(br, BROPT_MST_ENABLED) == on)
> +		return 0;
> +
> +	if (on)
> +		static_branch_enable(&br_mst_used);
> +	else
> +		static_branch_disable(&br_mst_used);
> +
> +	br_opt_toggle(br, BROPT_MST_ENABLED, on);
> +	return 0;
> +}

Hi,

I'm not actually using MST, but I ran into this code and was wondering
if the static key usage is correct. The static key is global (not
per-bridge), so what happens when two bridges have MST enabled and then
it is disabled on one? I believe it would be disabled for both. If so,
maybe use static_branch_inc() / static_branch_dec() instead?

Thanks

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AF04B6D98
	for <lists.bridge@lfdr.de>; Tue, 15 Feb 2022 14:35:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 013924016A;
	Tue, 15 Feb 2022 13:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYztog0MFV89; Tue, 15 Feb 2022 13:35:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4AA5D4038B;
	Tue, 15 Feb 2022 13:35:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DA1A2C0073;
	Tue, 15 Feb 2022 13:35:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48747C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 13:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27DA84163F
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 13:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKbkfd-zq4Lh for <bridge@lists.linux-foundation.org>;
 Tue, 15 Feb 2022 13:35:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8E9D41637
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 13:35:02 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id DFBE05C02F4;
 Tue, 15 Feb 2022 08:35:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 15 Feb 2022 08:35:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MqEd8VO3pWd8SQKjx
 AoofoUTvP3sevVVpQLDzXC7wFE=; b=Pz+oyQxsNY3rMYGN2rUE8Q/ggVHBOL389
 VPPg6q4vxv1/NB5s1IFK6IvK2F+gN0mYWxciGiORo9QCBfL0QKdQYw8zpwcLA/Rm
 ylmUHvu1g2dUrtWoV+1lgT7RRyTZQ6azCc9MdwAHuZ2wc2cf+kHZUa7mTSBFp+GR
 QsPA1yuwLoOjlRAtIGlBJ77vnBKyhZjXKLdDhOq4hnyWxikoK+2Gt629AWMdWIpM
 0eYF6pV/gVz+TWla6ocFX0uQmny1P6BLnzxpoYsrgC8UPFQglhULmRvQgznaKB8z
 SFDnWqphhZyOYmCap08dwCoA1V+6OIdYcfiMgqv6g6xVbGJ1V2t3A==
X-ME-Sender: <xms:BawLYo8EBx_jRMog3T9Tku2muQqLbSNNt3FaxQgq6Z32GDmK9IeyHQ>
 <xme:BawLYguH3wH-v6UxtDi3bkVE50PY2g_2vfnubMsL1-wx8h5Yy376Mxcg5N4ozyjXZ
 ZMns7PWJcvytao>
X-ME-Received: <xmr:BawLYuC5BJ9tjNWxVBJ23BRLkX5_SwV-0M8RuAR7BjDtYnMPkhrIEB3hFQh4hKm3J9z9A-VkM7qFZx6nvp5Q2fg9T5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrjeeggdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:BawLYofQZdPdGm9tAINYRMvAUBRKNSvuje8rRXxQ9TbLCN3NgZV8Hg>
 <xmx:BawLYtPXagadaZzZEWEehaICbtHMD-Xy9X1A4EkV7QwoKbzH9QNe9w>
 <xmx:BawLYikT0Cq0yQdHvAXwiXov_1cLxd37o7hPC6WdCx-kTpTSIDn0YA>
 <xmx:BawLYg0LCk-IXsQ-uwquKCqS1k7Lqc-586uGuwIyXndR2B10mq-Ekg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 15 Feb 2022 08:35:00 -0500 (EST)
Date: Tue, 15 Feb 2022 15:34:56 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Oleksandr Mazur <oleksandr.mazur@plvision.eu>
Message-ID: <YgusADHmOIwQiI3a@shredder>
References: <20220211131426.5433-1-oleksandr.mazur@plvision.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211131426.5433-1-oleksandr.mazur@plvision.eu>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net: bridge: multicast: notify switchdev
 driver whenever MC processing gets disabled
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

On Fri, Feb 11, 2022 at 03:14:26PM +0200, Oleksandr Mazur wrote:
> Whenever bridge driver hits the max capacity of MDBs, it disables
> the MC processing (by setting corresponding bridge option), but never
> notifies switchdev about such change (the notifiers are called only upon
> explicit setting of this option, through the registered netlink interface).
> 
> This could lead to situation when Software MDB processing gets disabled,
> but this event never gets offloaded to the underlying Hardware.
> 
> Fix this by adding a notify message in such case.
> 
> Signed-off-by: Oleksandr Mazur <oleksandr.mazur@plvision.eu>
> ---
>  net/bridge/br_multicast.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index de2409889489..d53c08906bc8 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -82,6 +82,9 @@ static void br_multicast_find_del_pg(struct net_bridge *br,
>  				     struct net_bridge_port_group *pg);
>  static void __br_multicast_stop(struct net_bridge_mcast *brmctx);
>  
> +static int br_mc_disabled_update(struct net_device *dev, bool value,
> +				 struct netlink_ext_ack *extack);
> +
>  static struct net_bridge_port_group *
>  br_sg_port_find(struct net_bridge *br,
>  		struct net_bridge_port_group_sg_key *sg_p)
> @@ -1156,6 +1159,8 @@ struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
>  		return mp;
>  
>  	if (atomic_read(&br->mdb_hash_tbl.nelems) >= br->hash_max) {
> +		err = br_mc_disabled_update(br->dev, false, NULL);
> +		WARN_ON(err && err != -EOPNOTSUPP);

What is the purpose of the WARN_ON()? There are a lot of operations that
can fail in rollback paths, but we never WARN_ON() there

I suggest:

br_mc_disabled_update(br->dev, false, NULL);

>  		br_opt_toggle(br, BROPT_MULTICAST_ENABLED, false);
>  		return ERR_PTR(-E2BIG);
>  	}
> -- 
> 2.17.1
> 

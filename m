Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9D266257C
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 13:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75BC481A5F;
	Mon,  9 Jan 2023 12:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75BC481A5F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=DFepMdID
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3crV6I4jtHK; Mon,  9 Jan 2023 12:25:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EE48F81D16;
	Mon,  9 Jan 2023 12:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE48F81D16
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 85478C007B;
	Mon,  9 Jan 2023 12:25:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D5377C002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A28C660EFD
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A28C660EFD
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=DFepMdID
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ijbQsXxXZgf3 for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 12:25:50 +0000 (UTC)
X-Greylist: delayed 00:05:40 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D771760784
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D771760784
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:25:49 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3AF0E5C017C;
 Mon,  9 Jan 2023 07:20:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 09 Jan 2023 07:20:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1673266807; x=1673353207; bh=BoRrhg2qoLX8AzR5nlod213O8Dn0
 cuabW6bstFyKh6g=; b=DFepMdIDoB+mlolDcbW2KqnE5pmmpY+RdAochu7RfvCA
 9oc+Bv2B0P8Dg4MCtPhAY3VvbvVNwAVqI62ZqJsY5fE0bZmyJ62KC9TA2OhnxS01
 InOGx5C8ZAmsKMmOJBsN4qNUud9CcI0iWUYZ+qD8plQ2AxLmmLtniJggTgFuK8mg
 YVFYYonVCZ2uRj3qXJ+AkeDxlA5Lr0I/2PX00UNM5cKrK/8+25ehqQ4g76akEOBV
 cd/l23v3UYN/q+CfUEeyGKnQrrVktiHsgbO1d9iP+5+VrT0WG7TOQuBJBBuBt1nj
 6hsAQCXix7tobllTf1RJqzut1NlyA8f8Z/+geLEmUg==
X-ME-Sender: <xms:dga8Yz1ReIIltK9pzTLj6bSSZTehDwu7jHAVCQF2QrX-6UlDQK8_KQ>
 <xme:dga8YyGBabh3yyPSPb0evluedcIrvgg2VPuCz6onLDpjhbXfZP4xm2mF-SRww4FcN
 TJ6p3Y5abwPV4Q>
X-ME-Received: <xmr:dga8Yz75u-6TDPL8G-VLd72loWskqy_DS7rlTVCv3AfMoaUTRDuGVRKn1HDp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrkeeigdeffecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:dga8Y40_AlbgasMdsRg9ai2Jgl9gABwOzVTiiuBbugagczAGwTzVsQ>
 <xmx:dga8Y2GBTbx74x3id7r1CWI4XSpg9mtX5AiKb7sd-geQ1mc3nUql7Q>
 <xmx:dga8Y5_Yj7M9ABOA_XR31RpF_dsE6QyvbckO_k0iwKiG4lWNWlQuUQ>
 <xmx:dwa8Y0U6TOsJAr_nsPB5UsXPtKrZN19XANsBv4f6zuAPyjfFtseUhQ>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jan 2023 07:20:05 -0500 (EST)
Date: Mon, 9 Jan 2023 14:20:02 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y7wGct6VWmbuWs5F@shredder>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
 <Y7vK4T18pOZ9KAKE@shredder> <20230109100236.euq7iaaorqxrun7u@skbuf>
 <Y7v98s8lC1WUvsSO@shredder> <20230109115653.6yjijaj63n2v35lw@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109115653.6yjijaj63n2v35lw@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Tobias Waldekranz <tobias@waldekranz.com>
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

On Mon, Jan 09, 2023 at 01:56:53PM +0200, Vladimir Oltean wrote:
> On Mon, Jan 09, 2023 at 01:43:46PM +0200, Ido Schimmel wrote:
> > OK, thanks for confirming. Will send a patch later this week if Tobias
> > won't take care of it by then. First patch will probably be [1] to make
> > sure we dump the correct MST state to user space. It will also make it
> > easier to show the problem and validate the fix.
> > 
> > [1]
> > diff --git a/net/bridge/br.c b/net/bridge/br.c
> > index 4f5098d33a46..f02a1ad589de 100644
> > --- a/net/bridge/br.c
> > +++ b/net/bridge/br.c
> > @@ -286,7 +286,7 @@ int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
> >  	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
> >  		return br_opt_get(br, BROPT_MCAST_VLAN_SNOOPING_ENABLED);
> >  	case BR_BOOLOPT_MST_ENABLE:
> > -		return br_opt_get(br, BROPT_MST_ENABLED);
> > +		return br_mst_is_enabled(br);
> 
> Well, this did report the correct MST state despite the incorrect static
> branch state, no? The users of br_mst_is_enabled(br) are broken, not
> those of br_opt_get(br, BROPT_MST_ENABLED).

I should have said "actual"/"effective" instead of "correct". IMO, it's
better to use the same conditional in the both the data and control
paths to eliminate discrepancies. Without the patch, a user will see
that MST is supposedly enabled when it is actually disabled in the data
path.

> 
> Anyway, I see there's a br_mst_is_enabled() and also a br_mst_enabled()?!
> One is used in the fast path and the other in the slow path. They should
> probably be merged, I guess. They both exist probably because somebody
> thought that the "if (!netif_is_bridge_master(dev))" test is redundant
> in the fast path.

The single user of br_mst_enabled() (DSA) is not affected by the bug
(only the SW data path is), so I suggest making this consolidation in
net-next after the bug is fixed. OK?

> 
> >  	default:
> >  		/* shouldn't be called with unsupported options */
> >  		WARN_ON(1);
> > diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> > index 75aff9bbf17e..7f0475f62d45 100644
> > --- a/net/bridge/br_private.h
> > +++ b/net/bridge/br_private.h
> > @@ -1827,7 +1827,7 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
> >  /* br_mst.c */
> >  #ifdef CONFIG_BRIDGE_VLAN_FILTERING
> >  DECLARE_STATIC_KEY_FALSE(br_mst_used);
> > -static inline bool br_mst_is_enabled(struct net_bridge *br)
> > +static inline bool br_mst_is_enabled(const struct net_bridge *br)
> >  {
> >  	return static_branch_unlikely(&br_mst_used) &&
> >  		br_opt_get(br, BROPT_MST_ENABLED);
> > @@ -1845,7 +1845,7 @@ int br_mst_fill_info(struct sk_buff *skb,
> >  int br_mst_process(struct net_bridge_port *p, const struct nlattr *mst_attr,
> >  		   struct netlink_ext_ack *extack);
> >  #else
> > -static inline bool br_mst_is_enabled(struct net_bridge *br)
> > +static inline bool br_mst_is_enabled(const struct net_bridge *br)
> >  {
> >  	return false;
> >  }

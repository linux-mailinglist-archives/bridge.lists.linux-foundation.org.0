Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3505466247D
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 12:44:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC00540425;
	Mon,  9 Jan 2023 11:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC00540425
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Wx0NqN6y
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0LYsMXU4PvR; Mon,  9 Jan 2023 11:44:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1184F401FD;
	Mon,  9 Jan 2023 11:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1184F401FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 98BADC007B;
	Mon,  9 Jan 2023 11:44:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0F8BC002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A97760EA1
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A97760EA1
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=Wx0NqN6y
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hfue4UxxaZai for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 11:43:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E37A607BC
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E37A607BC
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 11:43:58 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id A5BC23200564;
 Mon,  9 Jan 2023 06:43:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 09 Jan 2023 06:43:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1673264630; x=1673351030; bh=bboapEA3vdgSLWm56a8XSVtdTYNt
 0MFJHdjnyOsqZws=; b=Wx0NqN6ygqqa2SxoxoROtpr3/Hkbs+nwqruUtIS5aAHG
 16wXZLBSnARXMXgHHSxdbG2ij4c9Yya9lLt1jOBREFxoQh+M3NJgjcj27pGEzhcn
 YIJcw3o8XqWiGakmWB90s0YiZI0zZ4T9wPRsSy0A1niEpuI+uuIyViMCFnYfZ6/x
 BYDqMF4Up7zindbrNkHZcZqD1Y+38daStRBtr7/c0VBgcoo3PEfHqcC/rXda5Fov
 wom76CULKqAEh5HbBGGHmMuhxiEZYKaKz8kDKDE1osJPHqDf5tqP5/fgHj4K7ddA
 AmEbhnuCFUHqqcH6a0HTR7Hk+6HvVQ3n1TezoqHh6A==
X-ME-Sender: <xms:9f27Y-TjfLmKYEwVPyf2MPXgO0X59RDge9gbLFPDRjO20rjSuFa4Bg>
 <xme:9f27Yzz8EUV86Udz3xr2ExsWh2Hqe8eZO3VUUh_-oKpww-S0t8oOQ6wMWKjEaChYb
 IRkzfJle96-znI>
X-ME-Received: <xmr:9f27Y72l9hfsrMUtSPQkmYY56zIFmOVQU3R-5fzla3puwtsjVeCZWcd6Us2u>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrkeeigddviecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:9f27Y6DLC8IVapo5aEDWg9K6uHY2f1iZSGQ1En9ZpFjfCWEW_X-IDA>
 <xmx:9f27Y3g3u-t3wQGNUhzNM-ofVwQzrPHgYZFsFmYKX7mqJPC9oNxM2Q>
 <xmx:9f27Y2oKE0bBx-1oDQdvRu-UyCRKYXdPqB2yKLu0jBQMyGGHxukX6g>
 <xmx:9v27Y2RtKMsY481dORoYQwVAFlLZwbc9_S1Sg15uvYJgNp4tQrKP1g>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jan 2023 06:43:48 -0500 (EST)
Date: Mon, 9 Jan 2023 13:43:46 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y7v98s8lC1WUvsSO@shredder>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
 <Y7vK4T18pOZ9KAKE@shredder> <20230109100236.euq7iaaorqxrun7u@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109100236.euq7iaaorqxrun7u@skbuf>
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

On Mon, Jan 09, 2023 at 12:02:36PM +0200, Vladimir Oltean wrote:
> On Mon, Jan 09, 2023 at 10:05:53AM +0200, Ido Schimmel wrote:
> > > +	if (on)
> > > +		static_branch_enable(&br_mst_used);
> > > +	else
> > > +		static_branch_disable(&br_mst_used);
> > 
> > Hi,
> > 
> > I'm not actually using MST, but I ran into this code and was wondering
> > if the static key usage is correct. The static key is global (not
> > per-bridge), so what happens when two bridges have MST enabled and then
> > it is disabled on one? I believe it would be disabled for both. If so,
> > maybe use static_branch_inc() / static_branch_dec() instead?
> 
> Sounds about right. FWIW, br_switchdev_tx_fwd_offload does use
> static_branch_inc() / static_branch_dec().

OK, thanks for confirming. Will send a patch later this week if Tobias
won't take care of it by then. First patch will probably be [1] to make
sure we dump the correct MST state to user space. It will also make it
easier to show the problem and validate the fix.

[1]
diff --git a/net/bridge/br.c b/net/bridge/br.c
index 4f5098d33a46..f02a1ad589de 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -286,7 +286,7 @@ int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
 	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
 		return br_opt_get(br, BROPT_MCAST_VLAN_SNOOPING_ENABLED);
 	case BR_BOOLOPT_MST_ENABLE:
-		return br_opt_get(br, BROPT_MST_ENABLED);
+		return br_mst_is_enabled(br);
 	default:
 		/* shouldn't be called with unsupported options */
 		WARN_ON(1);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 75aff9bbf17e..7f0475f62d45 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1827,7 +1827,7 @@ static inline bool br_vlan_state_allowed(u8 state, bool learn_allow)
 /* br_mst.c */
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
 DECLARE_STATIC_KEY_FALSE(br_mst_used);
-static inline bool br_mst_is_enabled(struct net_bridge *br)
+static inline bool br_mst_is_enabled(const struct net_bridge *br)
 {
 	return static_branch_unlikely(&br_mst_used) &&
 		br_opt_get(br, BROPT_MST_ENABLED);
@@ -1845,7 +1845,7 @@ int br_mst_fill_info(struct sk_buff *skb,
 int br_mst_process(struct net_bridge_port *p, const struct nlattr *mst_attr,
 		   struct netlink_ext_ack *extack);
 #else
-static inline bool br_mst_is_enabled(struct net_bridge *br)
+static inline bool br_mst_is_enabled(const struct net_bridge *br)
 {
 	return false;
 }

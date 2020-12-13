Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404E2D8E0E
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 15:55:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30658872D7;
	Sun, 13 Dec 2020 14:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9MQgWLPPPP8; Sun, 13 Dec 2020 14:55:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E650A87303;
	Sun, 13 Dec 2020 14:55:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C14AAC1DA2;
	Sun, 13 Dec 2020 14:55:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DBBCC013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 14:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2810F87303
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 14:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umbB4ty-VoEV for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 14:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E487F872D7
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 14:55:49 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D158758032E;
 Sun, 13 Dec 2020 09:55:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 13 Dec 2020 09:55:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=dpcwTT
 z/sesD3B1rZoBYSQwgGPQNjssdt5XLEtahVEc=; b=HosWXGNIaVwtkVUadRZphf
 vpGtRomJMH/cvw37j0NuQLej2sw8tqNCj9GFX9+Mg03v+Bk34NG37Po68y14S1s9
 gtje7ny4yNPNulCrcApDMja4srFBDpTzz9q5+/A8KKThMczApn5Y8qoWp/XdF+ay
 oE4safZdDFaCtLrv7kgXZLTEWtyP2IZ6KcSfgsx5T9L6dumu83jXTNVrb4gJWpIe
 wlk7BCyyM5Mdz2+6E6vWvmA6GEK2G0b7G6tQbgSxB9KaEglCrNl2eFOnORiMpO1g
 nqAEskOoS8nvrY63A8yj78ZefU02Qq4fg/4Xx4rnJmAGdIiBwQzwBdVJohAApAiQ
 ==
X-ME-Sender: <xms:civWX_INofMYSLDeo9a-pXLqhRdVTvASyltTSSbW9J3GPnMGSKfPWw>
 <xme:civWXzJ4KG2NadP5GQmFgRYJZBfYLsxKGEMBlUkQES679EPsmPx37CE8ZuVdWelPD
 -wzGpj1dQ85uDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekiedgjedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepkeegrddvvdelrdduhedvrddvjeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:civWX3txsPdj8soGqTHXvWqAqnOtW1-6ZLkNzkxD81m99myoBtHBkw>
 <xmx:civWX4Y_XIivAyt3NKavMS9BSUxTEz6ORzo3mWUtyEBoR_IJFZ6rQA>
 <xmx:civWX2Y0JfCkNjq3893pdIBdRW9EF2UtuyL6CW8UbbsIi6wGans3RQ>
 <xmx:dCvWX7Ku_M9SovOxHfJ4-zuE8WpDH3q4eEaNQbRl97Icxq1xS9AsAA>
Received: from localhost (igld-84-229-152-27.inter.net.il [84.229.152.27])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC8C2108005C;
 Sun, 13 Dec 2020 09:55:45 -0500 (EST)
Date: Sun, 13 Dec 2020 16:55:43 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201213145543.GA2539586@shredder.lan>
References: <20201213140710.1198050-1-vladimir.oltean@nxp.com>
 <20201213140710.1198050-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201213140710.1198050-2-vladimir.oltean@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <marek.behun@nic.cz>,
 Vivien Didelot <vivien.didelot@gmail.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v3 net-next 1/7] net: bridge: notify switchdev
 of disappearance of old FDB entry upon migration
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

On Sun, Dec 13, 2020 at 04:07:04PM +0200, Vladimir Oltean wrote:
> Currently the bridge emits atomic switchdev notifications for
> dynamically learnt FDB entries. Monitoring these notifications works
> wonders for switchdev drivers that want to keep their hardware FDB in
> sync with the bridge's FDB.
> 
> For example station A wants to talk to station B in the diagram below,
> and we are concerned with the behavior of the bridge on the DUT device:
> 
>                    DUT
>  +-------------------------------------+
>  |                 br0                 |
>  | +------+ +------+ +------+ +------+ |
>  | |      | |      | |      | |      | |
>  | | swp0 | | swp1 | | swp2 | | eth0 | |
>  +-------------------------------------+
>       |        |                  |
>   Station A    |                  |
>                |                  |
>          +--+------+--+    +--+------+--+
>          |  |      |  |    |  |      |  |
>          |  | swp0 |  |    |  | swp0 |  |
>  Another |  +------+  |    |  +------+  | Another
>   switch |     br0    |    |     br0    | switch
>          |  +------+  |    |  +------+  |
>          |  |      |  |    |  |      |  |
>          |  | swp1 |  |    |  | swp1 |  |
>          +--+------+--+    +--+------+--+
>                                   |
>                               Station B
> 
> Interfaces swp0, swp1, swp2 are handled by a switchdev driver that has
> the following property: frames injected from its control interface bypass
> the internal address analyzer logic, and therefore, this hardware does
> not learn from the source address of packets transmitted by the network
> stack through it. So, since bridging between eth0 (where Station B is
> attached) and swp0 (where Station A is attached) is done in software,
> the switchdev hardware will never learn the source address of Station B.
> So the traffic towards that destination will be treated as unknown, i.e.
> flooded.
> 
> This is where the bridge notifications come in handy. When br0 on the
> DUT sees frames with Station B's MAC address on eth0, the switchdev
> driver gets these notifications and can install a rule to send frames
> towards Station B's address that are incoming from swp0, swp1, swp2,
> only towards the control interface. This is all switchdev driver private
> business, which the notification makes possible.
> 
> All is fine until someone unplugs Station B's cable and moves it to the
> other switch:
> 
>                    DUT
>  +-------------------------------------+
>  |                 br0                 |
>  | +------+ +------+ +------+ +------+ |
>  | |      | |      | |      | |      | |
>  | | swp0 | | swp1 | | swp2 | | eth0 | |
>  +-------------------------------------+
>       |        |                  |
>   Station A    |                  |
>                |                  |
>          +--+------+--+    +--+------+--+
>          |  |      |  |    |  |      |  |
>          |  | swp0 |  |    |  | swp0 |  |
>  Another |  +------+  |    |  +------+  | Another
>   switch |     br0    |    |     br0    | switch
>          |  +------+  |    |  +------+  |
>          |  |      |  |    |  |      |  |
>          |  | swp1 |  |    |  | swp1 |  |
>          +--+------+--+    +--+------+--+
>                |
>            Station B
> 
> Luckily for the use cases we care about, Station B is noisy enough that
> the DUT hears it (on swp1 this time). swp1 receives the frames and
> delivers them to the bridge, who enters the unlikely path in br_fdb_update
> of updating an existing entry. It moves the entry in the software bridge
> to swp1 and emits an addition notification towards that.
> 
> As far as the switchdev driver is concerned, all that it needs to ensure
> is that traffic between Station A and Station B is not forever broken.
> If it does nothing, then the stale rule to send frames for Station B
> towards the control interface remains in place. But Station B is no
> longer reachable via the control interface, but via a port that can
> offload the bridge port learning attribute. It's just that the port is
> prevented from learning this address, since the rule overrides FDB
> updates. So the rule needs to go. The question is via what mechanism.

Can you please clarify why the FDB replacement notification is not
enough? Is it because the hardware you are working with manages MACs to
CPU in a separate table from its FDB table? I assume that's why you
refer to it as a "rule" instead of FDB entry? How common is this with
DSA switches?

Asking because it is not clear to me from the commit message. The patch
looks fine.

> 
> It sure would be possible for this switchdev driver to keep track of all
> addresses which are sent to the control interface, and then also listen
> for bridge notifier events on its own ports, searching for the ones that
> have a MAC address which was previously sent to the control interface.
> But this is cumbersome and inefficient. Instead, with one small change,
> the bridge could notify of the address deletion from the old port, in a
> symmetrical manner with how it did for the insertion. Then the switchdev
> driver would not be required to monitor learn/forget events for its own
> ports. It could just delete the rule towards the control interface upon
> bridge entry migration. This would make hardware address learning be
> possible again. Then it would take a few more packets until the hardware
> and software FDB would be in sync again.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

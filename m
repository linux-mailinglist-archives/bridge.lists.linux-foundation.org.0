Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCED7AEBA4
	for <lists.bridge@lfdr.de>; Tue, 26 Sep 2023 13:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33D7E8230D;
	Tue, 26 Sep 2023 11:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33D7E8230D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=GoXutLAl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mERGYQvbfsNL; Tue, 26 Sep 2023 11:43:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D15128230E;
	Tue, 26 Sep 2023 11:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D15128230E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA8ADC0032;
	Tue, 26 Sep 2023 11:43:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D0CBC0032
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE4DD8230F
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:43:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE4DD8230F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RqoSEjBJjWa for <bridge@lists.linux-foundation.org>;
 Tue, 26 Sep 2023 11:43:06 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF6F82309
 for <bridge@lists.linux-foundation.org>; Tue, 26 Sep 2023 11:43:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF6F82309
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B004B3200930;
 Tue, 26 Sep 2023 07:43:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 26 Sep 2023 07:43:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695728583; x=1695814983; bh=rAbItrXU3DjBe
 WT6zjvCvCs+hZImWYb77PlbQjt+Gtk=; b=GoXutLAlWTYBq2WBbmt9rkR/5Ww66
 o8C17Gcf06+SBEzqQfA3ajzVDLeipwbokWndu6Rwg4GPzMr+nMG28FAOHL/JKpoV
 yjuh6TrHDn7OWEsItqBYSQU3ZzjfmB+aifDxy9Sfw3aBGB+ye58hIYuKlIkZILFi
 BFI0Hb+AJhowyZB8peVw5pmsu9tsR63yr3xQEpkbighP+KIVuhASXp/VyL6B+FH/
 PYe54U/Dyyt0dZu6NsOo3sZ4SXmsQ/NRgUzFprRosDDbEW5HSPmMIRZi/uaBJYdP
 Wrv2MhvhYAhWz3xDevbdmi9glU07EUJ1J66cLZYYkh0ritk8PZCqV9+vQ==
X-ME-Sender: <xms:xsMSZRP876q_BHVbbi-YNj1T9XOhylRXDJjHTIAUEQeXURn8ASz9pg>
 <xme:xsMSZT-CIYij4BwVmZUps6kyFyUB7LY58CabWbqKlRhnZbrXVsoQ6iBZ8c6ijwXvA
 ky5GSaQfI1nvdU>
X-ME-Received: <xmr:xsMSZQRnvbwEfdTULcKCvoMt6bGrwEiMajp48z_pv9L2hGVa0uQXJejxIPduZkiVLbxMtNGBTMryrOpP3_6sYk8cRsf_Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvjedrtddtgdduhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:xsMSZdvgxTuLwdLisWHUolZ3Q_fVXaOa-Iv_MJvViPHfDqCsyysvEQ>
 <xmx:xsMSZZdDbauG14716H_adsIGMSGk19f1MN9QqTO7sUrt3f9KS7JfcQ>
 <xmx:xsMSZZ0NWuqq7INlywIQ_YCcESf2DmaORKTsrXSEBrB1uSiZUr28MA>
 <xmx:x8MSZZ8Sr0UIqXFwQD96dVXBwB7O3j1Ht-MG1I4v26vrqi1JxfP-6Q>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 Sep 2023 07:43:02 -0400 (EDT)
Date: Tue, 26 Sep 2023 14:42:59 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZRLDw45mpeU6tBaK@shredder>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-5-39f0293807b8@avm.de>
 <cc14cd4a-f3bb-3d6f-5b38-ec73cad32570@blackwall.org>
 <ZQv5aNbgqxCuOKyr@u-jnixdorf.ads.avm.de>
 <50814314-55a3-6cff-2e9e-2abf93fa5f1b@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50814314-55a3-6cff-2e9e-2abf93fa5f1b@blackwall.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 5/6] net: bridge: Add a
 configurable default FDB learning limit
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

On Thu, Sep 21, 2023 at 01:19:44PM +0300, Nikolay Aleksandrov wrote:
> I'm not strongly against, just IMO it is unnecessary. I won't block the set
> because of this, but it would be nice to get input from others as
> well. If you can recompile your kernel to set a limit, it should be easier
> to change your app to set the same limit via netlink, but I'm not familiar
> with your use case.

I agree with keeping it out. We don't have it for similar knobs (e.g.,
MDB limits) and it would create a precedence for other bridge options
instead of simply using netlink and improving user space applications.

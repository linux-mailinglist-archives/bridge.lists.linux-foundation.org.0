Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2843CFBFA
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 16:25:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEA61404C8;
	Tue, 20 Jul 2021 14:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gZT3bpcrKkCS; Tue, 20 Jul 2021 14:25:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 50F7F404ED;
	Tue, 20 Jul 2021 14:25:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06BD9C0022;
	Tue, 20 Jul 2021 14:25:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F85AC000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E66A883993
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7B9b6GNfWR3x for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 14:25:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04FD68379F
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 14:25:16 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 17D085817C0;
 Tue, 20 Jul 2021 10:25:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 20 Jul 2021 10:25:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=oKT1WX
 Jb/HN94UGHcLFzU5g6VlqwSc1m1B9YQun33OY=; b=GQgHzO7TrAUYpGsJLVp0o0
 CwKqVARMvtwiYdLx/oHzRSuyVo0WBe9zpDc1mKSRBHRT+G+z3HBa+t5jeLwOsQMJ
 YjJ5hiiBy2TOKgmDqEUeVabaYOY5lyG4E7i73Us41m8/I3m/M1WTkC8hAd3udrUg
 gHhCKIWPcwcJZsPuZtn4nspNqhIbmvbhQrXX+V33QkvTg77zHrPg8csEGp40LrFX
 YOXLWIwllIJ9LCSO6u+zQUNWEfxaTh5CMBV1JQBmpTG+gpQj6KrvzYkz2QPnK0PW
 p5Vu4M1G9+W9Ixm63q7VwDCgL+HZHnq1va/kIpCrP29aueVJqJgSrpdIBefuiXzQ
 ==
X-ME-Sender: <xms:x9z2YPdS219NtScv6Fu-R1q-_UqJxNpRwcuORoRXewlJbGbq-gToeg>
 <xme:x9z2YFNZltK7SPaWEaUJaih6jR406Kn8SpEL9H83Ql8DIOeOJGDogYQyYyTJN8hIp
 6n-6xXLAPyPXvM>
X-ME-Received: <xmr:x9z2YIjyKAgDzCgp2nja4ObYh9Vy1xS6JTifhqvHFpwNl09f6V9xH1PyrSajck_dJmo7MVRYMdHKEzNJfR0XngSCMQwKWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfedvgdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtrodttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnhepgfejvefhvdegiedukeetudevgeeujeefffeffeetkeekueeuheejudeltdejuedu
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:x9z2YA_gmA1DMWTO6HiWKFyTy3UCIhBfUB3UR9kzV0K5A5dcx2uNLg>
 <xmx:x9z2YLukfO8USii_u6H4ySoTdQWsUo1mqMkPzmUebSy5aIWdzvhpSw>
 <xmx:x9z2YPHBXHuASDPZKpC0O3R1Y7i3dkvME1k4bdkbbmsYMujzs7xFgQ>
 <xmx:ytz2YEMvVonEKcl9dS70ERWIERKiB0jfaUbXBvYXG6vCSAoinbqTTg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 10:25:11 -0400 (EDT)
Date: Tue, 20 Jul 2021 17:25:08 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YPbcxPKjbDxChnlK@shredder>
References: <20210720134655.892334-1-vladimir.oltean@nxp.com>
 <YPbXTKj4teQZ1QRi@shredder> <20210720141200.xgk3mlipp2mzerjl@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210720141200.xgk3mlipp2mzerjl@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, DENG Qingfang <dqfext@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 00/10] Let switchdev drivers
 offload and unoffload bridge ports at their own convenience
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

On Tue, Jul 20, 2021 at 02:12:01PM +0000, Vladimir Oltean wrote:
> On Tue, Jul 20, 2021 at 05:01:48PM +0300, Ido Schimmel wrote:
> > > The patches were split from a larger series for easier review:
> > 
> > This is not what I meant. I specifically suggested to get the TX
> > forwarding offload first and then extending the API with an argument to
> > opt-in for the replay / cleanup:
> 
> Yeah, ok, I did not get that and I had already reposted by the time you
> clarified, sorry.
> 
> Anyway, is it so bad that we cannot look at the patches in the order
> that they are in right now (even if this means that maybe a few more
> days would pass)? To me it makes a bit more sense anyway to first
> consolidate the code that is already in the tree right now, before
> adding new logic. And I don't really want to rebase the patches again to
> change the ordering and risk a build breakage without a good reason.

If you don't want to change the order, then at least make the
replay/cleanup optional and set it to 'false' for mlxsw. This should
mean that the only change in mlxsw should be adding calls to
switchdev_bridge_port_offload() / switchdev_bridge_port_unoffload() in
mlxsw_sp_bridge_port_create() / mlxsw_sp_bridge_port_destroy(),
respectively.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD67315650
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 19:51:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE49486A84;
	Tue,  9 Feb 2021 18:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-L9Wn2KmA0n; Tue,  9 Feb 2021 18:51:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6592686A24;
	Tue,  9 Feb 2021 18:51:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4705BC013A;
	Tue,  9 Feb 2021 18:51:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BB291C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7C8D6F4A4
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSAn6MfJOxhU for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 18:51:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0DBF86F537; Tue,  9 Feb 2021 18:51:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A61D6F52B
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:51:07 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 367E9580310;
 Tue,  9 Feb 2021 13:51:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 09 Feb 2021 13:51:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yab2wm
 v6Wl9fFfxmQTboj1nEHw/37YL9zHWD6ZhbdHM=; b=P0a7X4kL8bJqhrpJAdamOb
 0i6LxuNNnMztcel+ytRDNDsFLepneY8Mc49QE2m5Oq3DDNuWFKlK91QevpYZisuk
 bxFkIPG7d6P/1VjyJTk5d0wc+C2rnks+fgDdpwdvAxursDr6q737F46MxruiQaQe
 22LMoTBRphwNt1OMxmYqrxsTN7MpjwchyykWnBdp6n9elWxZEmPdIG/3do6WhNm+
 w8wSQf7B30l3gSjfGii4RMAYxskNMXYmHcmrRQ7GV5gk6XkJM8fxcD1//oazn1cD
 on5Ie7fcdjFQEdJf21BlVmCBBoPPR0aKWzQ6I6xkKjso9CQtyLn2qJ/JNJryh+Xw
 ==
X-ME-Sender: <xms:l9kiYIfHN2hy2xkT2FeE25HMEi992P6W0bHF2p1pUbxXExR0SRhCSg>
 <xme:l9kiYPlRYgfP_cbAqh7FhsFXTHAzjAZ_Tt7MPV6_i5F7ULpO5A88inmz_I6040R2j
 q7obSz-6TAHbTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheehgdduudekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepkeegrddvvdelrdduheefrdeggeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:l9kiYJuDOxXHFzFe1ftwzAAhS7eJzjpsaDOLJoZNP0krzvJeWwEH1Q>
 <xmx:l9kiYN_diuJkA3BqFCbzEbPzdWcOCdLUMfi9fqNjwBjOFR1nXS_MDA>
 <xmx:l9kiYDP8q6mB6vcKZaEZaxUjrjJbHs_VRdzF8HfrB0Avovsfcj14Wg>
 <xmx:mdkiYM2ojVv5HkVRTpkgQfRG9NBN2hpnutWKXlDO9KErLSs5EVp-hw>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id BD09C24005C;
 Tue,  9 Feb 2021 13:51:02 -0500 (EST)
Date: Tue, 9 Feb 2021 20:51:00 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210209185100.GA266253@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209151936.97382-5-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net-next 04/11] net: bridge: offload initial
 and final port flags through switchdev
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

On Tue, Feb 09, 2021 at 05:19:29PM +0200, Vladimir Oltean wrote:
> So switchdev drivers operating in standalone mode should disable address
> learning. As a matter of practicality, we can reduce code duplication in
> drivers by having the bridge notify through switchdev of the initial and
> final brport flags. Then, drivers can simply start up hardcoded for no
> address learning (similar to how they already start up hardcoded for no
> forwarding), then they only need to listen for
> SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS and their job is basically done, no
> need for special cases when the port joins or leaves the bridge etc.

How are you handling the case where a port leaves a LAG that is linked
to a bridge? In this case the port becomes a standalone port, but will
not get this notification.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4147315581
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 19:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E67886B41;
	Tue,  9 Feb 2021 18:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XU5SC-U78Gqm; Tue,  9 Feb 2021 18:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD5F486B50;
	Tue,  9 Feb 2021 18:00:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC7F2C1834;
	Tue,  9 Feb 2021 18:00:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F7F0C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0642A86BA6
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3jeTLlayIdo for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 18:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7417886B50
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:00:28 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5660C5802DA;
 Tue,  9 Feb 2021 13:00:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 09 Feb 2021 13:00:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=apMIh8
 1zHTwrdiLkYm/FdsFavFVD8+FsPBR4HWhPa2U=; b=TeOeHWpIBlLMsdNiMMUs19
 cQ52jAyJcvO/gFYpHT4LKstRXjXlP+KZTXE2jmEJulRJBm2G+kWiuiXiC0GPoTjV
 V7b+MMxWxtC8nGDsNXAr7LXOsKJ3/Y96SxktYrBKxLf4PQ1PZU/QQxRc8OYsRHzi
 t1HfCb9Z5A+XmCLkJkD5iQX9ITZjSKCCroI4Z/kz/AEnphvke8KffOmt7izQDX9H
 kyl2/WitQ9QmObM+Y/PLEly5PHhKtvteG8Zt29HJRFrrbHZcHncbecpRTQNLHNBk
 pdqJMm4onota2IWfcztPN3tXcRoMUttvgPlUJ3cY4Zrlr38oQ+3MDcRYqqO6nVmA
 ==
X-ME-Sender: <xms:uM0iYLn2jAXoGYPTRNtJxwXdF5KM8bwb4Yq12fwbCU2k-L3rKh7YMw>
 <xme:uM0iYO1eMSvDiETvzYTmrwwV8XJH99ACpQpwo5OXQgmvMKT0hL3vlwo0uCOP5z3QM
 HKEXB-HkJrBO38>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheehgddutdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucfkphepkeegrddvvdelrdduheefrdeggeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:uM0iYBqxKr_eSnGWqXgOaJRGutiEJpBmkSdXEOA8g00Wf6MbAZIC3w>
 <xmx:uM0iYDkwJtWJIxnFCfVjC-W0okkmy7xMvQCOfCBxMIu2SGwaBZK3Sg>
 <xmx:uM0iYJ2CZS-2sh4j4gcXrzlri7P0xINrHGgiUW8IPZUCpE17pX2-YQ>
 <xmx:u80iYF6YKAbIP052gotWsGfb737pdMzYpkzg7Ya66r1ik1RKes7roQ>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id 766FF24005C;
 Tue,  9 Feb 2021 13:00:24 -0500 (EST)
Date: Tue, 9 Feb 2021 20:00:20 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210209180020.GA262892@shredder.lan>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-2-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209151936.97382-2-olteanv@gmail.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 01/11] net: switchdev: propagate
 extack to port attributes
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

On Tue, Feb 09, 2021 at 05:19:26PM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> When a struct switchdev_attr is notified through switchdev, there is no
> way to report informational messages, unlike for struct switchdev_obj.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>

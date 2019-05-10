Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE9E1A96B
	for <lists.bridge@lfdr.de>; Sat, 11 May 2019 22:31:58 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 643E5E89;
	Sat, 11 May 2019 20:31:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 330D2B9E
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 02:57:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBE29709
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 02:57:35 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 052E221C46;
	Thu,  9 May 2019 22:57:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Thu, 09 May 2019 22:57:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=P0E+vg
	w7gVRhrh8/UI9GOpgCdpeDnUgHcsc0wsgCABU=; b=hWfK03kaNW7Ohu10St/HLh
	wuLsm4DJNPEP7VHvtse/oH/duT+siM0gUEPsKB9Ls2IzHjTZJntjWyWHbPa5Z4QK
	/1pJF4xj5SymqPMXgnOtbeZWuPZTLfMnC4H3UDb9h+sQSnUJOYM3mlPjVQHifPBH
	6zF1IOWBmGkgCmAxvGSrIRaoSlYLKOYwX52MQ4CUrH+9WtwjQ17Obh8KCIIVQtbc
	K0D0ZjhQZBSRHfcs5wJUftuOsIM4vy2EJf57LJ6MUSJDFdX6uqR9QkFLYb+HdQ4V
	6PgMcGGGpxIGgsFJblZXDJLayynxOGB7pDVxpums+6Jj7d6yDfkIttD8rYz8orqg
	==
X-ME-Sender: <xms:nejUXFX_Q43KL53FLlaHUqufjQ6X-SFdIKyPKz5Js5pp3wwJoc4a7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrkeeigdduieelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	goteeftdduqddtudculdduhedmnecujfgurhepfffhvffukfhfgggtuggjofgfsehttder
	tdforedvnecuhfhrohhmpedfvfhosghinhcuvedrucfjrghrughinhhgfdcuoehtohgsih
	hnsehkvghrnhgvlhdrohhrgheqnecukfhppeduvdegrddujedurddvuddrhedvnecurfgr
	rhgrmhepmhgrihhlfhhrohhmpehtohgsihhnsehkvghrnhgvlhdrohhrghenucevlhhush
	htvghrufhiiigvpedt
X-ME-Proxy: <xmx:nujUXH0ZhFTU65I-EcVfmRis3pett1tHFJ2l6YCOrz32guLO3gDt7Q>
	<xmx:nujUXDoEpXskTuMcvuJUiwfrSe7urfxXcdnXbzaxt_2To1p1dpSRWg>
	<xmx:nujUXOVWNqfmGgQ2ntI4yDMxAow3UMRKBRSLIOyFNbTNCk_wGe6o8Q>
	<xmx:nujUXCTEKWE3S_HvjcmtNvgk3oSVx6Fl3ULiQZ3aZZj5TlSen4cKzA>
Received: from localhost (124-171-21-52.dyn.iinet.net.au [124.171.21.52])
	by mail.messagingengine.com (Postfix) with ESMTPA id 43B6C10379;
	Thu,  9 May 2019 22:57:33 -0400 (EDT)
Date: Fri, 10 May 2019 12:57:02 +1000
From: "Tobin C. Harding" <tobin@kernel.org>
To: "Tobin C. Harding" <tobin@kernel.org>
Message-ID: <20190510025702.GA10709@eros.localdomain>
References: <20190510025212.10109-1-tobin@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190510025212.10109-1-tobin@kernel.org>
X-Mailer: Mutt 1.11.4 (2019-03-13)
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Sat, 11 May 2019 20:31:18 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	Tyler Hicks <tyhicks@canonical.com>, netdev@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2] bridge: Fix error path for
	kobject_init_and_add()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Fri, May 10, 2019 at 12:52:12PM +1000, Tobin C. Harding wrote:

Please ignore - I forgot about netdev procedure and the merge window.
My bad.

Will re-send when you are open.

thanks,
Tobin.

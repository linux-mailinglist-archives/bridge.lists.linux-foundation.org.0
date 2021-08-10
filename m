Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AE03E53CD
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 08:46:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ADA54045B;
	Tue, 10 Aug 2021 06:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7XC-2w5PXWg; Tue, 10 Aug 2021 06:46:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CFC9A4042E;
	Tue, 10 Aug 2021 06:46:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 831CBC001F;
	Tue, 10 Aug 2021 06:46:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FC08C000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 06:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C58D607D1
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 06:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNJ3jqyZgQXm for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 06:46:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21A1760685
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 06:46:40 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 09F125C00DA;
 Tue, 10 Aug 2021 02:46:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 10 Aug 2021 02:46:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=JN+veN
 zxNu2yCry5BzS6GnnIFcdXcsuA3+5PUKwFlcc=; b=BoZoRpgnt+WDl8BD71cTnt
 7+BSt/lBzqXPG6bIDKHYFpMCqZjm66hBSO2UH09b53Th92wtPMTdJmf5VXOzw729
 vH5+g08CY/1HNoP1WJnQuZ8MH1q6gjJTP60B6R7DPaT6ZtRQqSpUTVDlYA7i8fR2
 fFFals9tLuBpY1kl8yoypuOM9LmqTNiNh/A/27YM5iEQltPcsj7T3HVu61cLltVF
 GFYB9cwoC0z/W0+EEHdWWhS70blb532RycTUfV2O8i2Tk/3TFbWL/k7Q6tgRDUpi
 GQdv0Itn4ZTYaZu0nnPgH4XYW1jpNvzjomNX/9tVX9FQnceVuZqO2s6/NF1An+YQ
 ==
X-ME-Sender: <xms:ziASYcBB5dSltBqSmw_JDrrgwpsv7-mYJWfx-mfFNAbIsOpK-2FJWQ>
 <xme:ziASYeiapQMMWSX8etxmjqs8jfDW8ynFazw9cERJ1un0j2wVhpTcPA1QrMUwCHt0r
 _LtHf6n-wabWSo>
X-ME-Received: <xmr:ziASYfm870syRJiw3-TmmqSN0pIppJ9vF7FmNwBzs2dGhJeRC9FqYOATTYE6uVKKxSKJ1TzoL5Kd7nrxutfsotsiq6-Sww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdduuddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:ziASYSyYSiGjB0dkA6JrRzz24bQUqi6HoIZrJ6esfI8Q9lc6_E16Tg>
 <xmx:ziASYRQXTt5Zh_pRcpSyfS4pAkqTAosvO-ryyv_fQo0gHPmmhcr5PA>
 <xmx:ziASYdZnUu-GxAcf8APzExRiW4ZoyIOZXmUCOosyZuF_Pg7mwCf4wQ>
 <xmx:zyASYSSvy1uQ3lBNBE9HnWlc7dlx6H51DryCBzxkK9zO0DBAIGw6eA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 02:46:37 -0400 (EDT)
Date: Tue, 10 Aug 2021 09:46:34 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YRIgynudgTsOpe5q@shredder>
References: <20210801231730.7493-1-vladimir.oltean@nxp.com>
 <YREcqAdU+6IpT0+w@shredder> <20210809160521.audhnv7o2tugwtmp@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809160521.audhnv7o2tugwtmp@skbuf>
Cc: "syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com"
 <syzbot+9ba1174359adba5a5b7c@syzkaller.appspotmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: validate the NUD_PERMANENT
 bit when adding an extern_learn FDB entry
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

On Mon, Aug 09, 2021 at 04:05:22PM +0000, Vladimir Oltean wrote:
> On Mon, Aug 09, 2021 at 03:16:40PM +0300, Ido Schimmel wrote:
> > I have at least once selftest where I forgot the 'static' keyword:
> >
> > bridge fdb add de:ad:be:ef:13:37 dev $swp1 master extern_learn vlan 1
> >
> > This patch breaks the test when run against both the kernel and hardware
> > data paths. I don't mind patching these tests, but we might get more
> > reports in the future.
> 
> Is it the 'static' keyword that you forgot, or 'dynamic'? The
> tools/testing/selftests/net/forwarding/bridge_vlan_aware.sh selftest
> looks to me like it's testing the behavior of an FDB entry which should
> roam, and which without the extern_learn flag would be ageable.

static - no aging, no roaming
dynamic - aging, roaming
extern_learn - no aging, roaming

So these combinations do not make any sense and the kernel will ignore
static/dynamic when extern_learn is specified. It's needed to work
around iproute2 behavior of "assume permanent"

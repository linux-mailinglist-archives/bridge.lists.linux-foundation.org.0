Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 076444AC02C
	for <lists.bridge@lfdr.de>; Mon,  7 Feb 2022 14:53:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 424A380BE9;
	Mon,  7 Feb 2022 13:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHYOTZ5yHkps; Mon,  7 Feb 2022 13:53:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E386D80BE7;
	Mon,  7 Feb 2022 13:53:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88F28C0073;
	Mon,  7 Feb 2022 13:53:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2D1FC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 13:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8411C80BE9
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 13:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zp43frA2-FvE for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 13:53:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B705A80BE7
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=ZCBQfIgsaaqGa9NdTBKby2K4luKCO2x9ltO+P32Dy1E=; b=ZQvMoWmrRru7q2T1QO7Q5DY945
 INsEvCnlxHc53LgeQB7iZK2L/tRVPegucijhvHQqRM0tcryCYciDk5ehjRhxBTgklPMWc1M1hwcep
 J6001389zlRq0WJ1gXvPebIKhQm+OxtecXRCxDHiEZS10LnSSwLo+bjo6Wl58ueAV0Qc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nH4SS-004dvH-6g; Mon, 07 Feb 2022 14:53:32 +0100
Date: Mon, 7 Feb 2022 14:53:32 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <YgEkXARS160I9Ooe@lunn.ch>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
 <20220207100742.15087-2-schultz.hans+netdev@gmail.com>
 <YgD5MglBy/UbN0uX@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YgD5MglBy/UbN0uX@shredder>
Cc: netdev@vger.kernel.org, Hans Schultz <schultz.hans@gmail.com>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: Add support for
 bridge port in locked mode
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

> > +	if (p->flags & BR_PORT_LOCKED) {
> > +		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> > +		if (!(fdb_entry && fdb_entry->dst == p))
> > +			goto drop;
> 
> I'm not familiar with 802.1X so I have some questions:

Me neither.

> 
> 1. Do we need to differentiate between no FDB entry and an FDB entry
> pointing to a different port than we expect?

And extending that question, a static vs a dynamic entry?

    Andrew

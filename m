Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 119E1290E5A
	for <lists.bridge@lfdr.de>; Sat, 17 Oct 2020 02:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79B9E88A69;
	Sat, 17 Oct 2020 00:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m6xiAH5L7Ko7; Sat, 17 Oct 2020 00:44:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6715A88A38;
	Sat, 17 Oct 2020 00:44:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 490DBC1AD6;
	Sat, 17 Oct 2020 00:44:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67993C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 05:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6277787B72
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 05:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnPYqmy7HXIz for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 05:42:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0199F876AA
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 05:42:54 +0000 (UTC)
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 936BB2177B;
 Wed, 14 Oct 2020 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602654174;
 bh=w10HAUvHzI4K2dPPA6eBw0IIFtp11qCCa0wUzKaUmD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cKsoRdZk0/7P9W5KQIcB78oxj7gSK1YWQM+hrVcStVlKqV5euxdawGaIKjsJO+YUU
 /usInNdGonQCzHNv/4cuzYg3D1kAHdZbtEGHplDqaWK5j6M3yEug5qW6hLhVGcPu6C
 Ur12VOGAV45LDfAlhlt9kErfzTLPyFZ2XWjKnbEc=
Date: Wed, 14 Oct 2020 08:42:50 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201014054250.GB6305@unreal>
References: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
 <20201013173951.25677bcc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201013173951.25677bcc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Sat, 17 Oct 2020 00:44:26 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>,
 =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 00/12] net: add and use function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
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

On Tue, Oct 13, 2020 at 05:39:51PM -0700, Jakub Kicinski wrote:
> On Mon, 12 Oct 2020 10:00:11 +0200 Heiner Kallweit wrote:
> > In several places the same code is used to populate rtnl_link_stats64
> > fields with data from pcpu_sw_netstats. Therefore factor out this code
> > to a new function dev_fetch_sw_netstats().
> >
> > v2:
> > - constify argument netstats
> > - don't ignore netstats being NULL or an ERRPTR
> > - switch to EXPORT_SYMBOL_GPL
>
> Applied, thank you!

Jakub,

Is it possible to make sure that changelogs are not part of the commit
messages? We don't store previous revisions in the git repo, so it doesn't
give too much to anyone who is looking on git log later. The lore link
to the patch is more than enough.

44fa32f008ab ("net: add function dev_fetch_sw_netstats for fetching pcpu_sw_netstats")

Thanks

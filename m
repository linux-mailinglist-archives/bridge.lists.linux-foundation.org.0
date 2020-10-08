Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3012884DA
	for <lists.bridge@lfdr.de>; Fri,  9 Oct 2020 10:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8067F876F1;
	Fri,  9 Oct 2020 08:05:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wr6HFZy4cFNH; Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79934876E5;
	Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C39AC0051;
	Fri,  9 Oct 2020 08:05:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 56E51C0051
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 17:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C1A4874E3
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 17:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wgH0bxKrp8E for <bridge@lists.linux-foundation.org>;
 Thu,  8 Oct 2020 17:09:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A48F5874F5
 for <bridge@lists.linux-foundation.org>; Thu,  8 Oct 2020 17:09:33 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B03D21D7D;
 Thu,  8 Oct 2020 17:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602176973;
 bh=l3Ku9JFIHQGNe0VmKNt0x5IrBgG8HLewr8rKBi37cFA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=us34OUj79l3vj0g6GntnxnAc/JnhYXjlKlCCHYk/D8Fd2wXCH29OoxZCm67gfIWKL
 WRiTnSbVKDZLzK2S7saP5yoTLDfb/XgpWdjQNOdNRtnFRJbyAejW6z+Byp9KkCiBLo
 KVp2ZFKKpDGKBhaxut9BgvTMpHBNQFbNDopTC8jA=
Date: Thu, 8 Oct 2020 10:09:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201008100930.1e5fca41@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <585c251204d3c09150e9fcb60f560c599567688a.camel@nvidia.com>
References: <20201007120700.2152699-1-henrik.bjoernlund@microchip.com>
 <32183f25a3d7ee8c148db42fbed9dd2a6e0a1f92.camel@nvidia.com>
 <585c251204d3c09150e9fcb60f560c599567688a.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 09 Oct 2020 08:05:40 +0000
Cc: "  <linux-kernel@vger.kernel.org>, "@osuosl.org,
 "  <netdev@vger.kernel.org>, "@osuosl.org, netdev@vger.kernel.org,
 " <horatiu.vultur@microchip.com>"@osuosl.org,
 "bridge@lists.linux-foundation.org\" <bridge@lists.linux-foundation.org>,
 "@osuosl.org, linux-kernel@vger.kernel.org, "  <davem@davemloft.net>,
 "@osuosl.org, "  <henrik.bjoernlund@microchip.com>, "@osuosl.org,
 "  <UNGLinuxDriver@microchip.com>, Roopa Prabhu <roopa@nvidia.com>,
 "@osuosl.org, henrik.bjoernlund@microchip.com, UNGLinuxDriver@microchip.com,
 horatiu.vultur@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] bridge: Netlink interface fix.
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

On Thu, 8 Oct 2020 10:18:09 +0000 Nikolay Aleksandrov wrote:
> On Wed, 2020-10-07 at 14:49 +0000, Nikolay Aleksandrov wrote:
> > On Wed, 2020-10-07 at 12:07 +0000, Henrik Bjoernlund wrote:  
> > > This commit is correcting NETLINK br_fill_ifinfo() to be able to
> > > handle 'filter_mask' with multiple flags asserted.
> > > 
> > > Fixes: 36a8e8e265420 ("bridge: Extend br_fill_ifinfo to return MPR status")
> > > 
> > > Signed-off-by: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
> > > Reviewed-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > > Suggested-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> > > Tested-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > > ---
> > >  net/bridge/br_netlink.c | 26 +++++++++++---------------
> > >  1 file changed, 11 insertions(+), 15 deletions(-)
> > >   
> > 
> > The patch looks good, please don't separate the Fixes tag from the others.
> > Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> >   
> 
> TBH, this does change a user facing api (the attribute nesting), but I think
> in this case it's acceptable due to the format being wrong and MRP being new, so
> I doubt anyone is yet dumping it mixed with vlan filter_mask and checking for
> two identical attributes, i.e. in the old/broken case parsing the attributes
> into a table would hide one of them and you'd have to walk over all attributes
> to catch that.

To be clear - this changes the uAPI as far as 5.9-rcs are concerned. 
So if this change was to hit 5.9 final there would be no uAPI breakage,
right?

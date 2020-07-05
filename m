Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DD2214EFD
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 21:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14C5688575;
	Sun,  5 Jul 2020 19:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OupX91wYa86M; Sun,  5 Jul 2020 19:49:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D89E488572;
	Sun,  5 Jul 2020 19:49:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C07D4C08A9;
	Sun,  5 Jul 2020 19:49:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 847CDC016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6CC4F88575
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXbBwxqYShvs for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 19:49:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 907CA88572
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:49:19 +0000 (UTC)
Date: Sun, 5 Jul 2020 21:49:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1593978556;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nKHluXxwUVzurMKE6PUs6fbpMqBoqqTeZ7p5ILBCNf0=;
 b=nLmzWjczwQSgfZJJDP856kNnRZO0Dg5HeFABdFqkVbnIv2qTovOJEIsv2+aMQW4t+AVtBC
 P7LatRyPUuuTZrzJCbIxKsVEYrpl5qkQA849wBGxqO7Ib79joFGqJQtvPK5mAgmY3/NDo7
 VrhHn2XvixQ6zxwpGSv8EAOkpQa82ETkxTleK9tv9zImAp1m48rWREXy3i9ECssE7WRGea
 G/v2lrL4BkSYcrGzqnEPOPQrOAZERqMuehaKgPgwBIbHE63rtK/FINX0oXw/N/EaXzkkEr
 1ixqhgJoos1Ag5wdmuMzmtvbBYfKZH7XVufaE/wqIs6gP5xSp7USewr/jRCfMA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200705194915.GD2648@otheros>
References: <20200705182234.10257-1-linus.luessing@c0d3.blue>
 <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
 <20200705190851.GC2648@otheros>
 <4728ef5e-0036-7de6-8b6f-f29885d76473@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4728ef5e-0036-7de6-8b6f-f29885d76473@cumulusnetworks.com>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Cc: Martin Weinelt <martin@linuxlounge.net>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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

On Sun, Jul 05, 2020 at 10:11:39PM +0300, Nikolay Aleksandrov wrote:
> On 7/5/20 10:08 PM, Linus Lüssing wrote:
> > On Sun, Jul 05, 2020 at 09:33:13PM +0300, Nikolay Aleksandrov wrote:
> > > On 05/07/2020 21:22, Linus Lüssing wrote:
> > > > Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
> > > > igmp3/mld2 report handling") introduced a small bug which would potentially
> > > > lead to accepting an MLD2 Report with a broken IPv6 header payload length
> > > > field.
> > > > 
> > > > The check needs to take into account the 2 bytes for the "Number of
> > > > Sources" field in the "Multicast Address Record" before reading it.
> > > > And not the size of a pointer to this field.
> > > > 
> > > > Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
> > > > Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
> > > > ---
> > > >   net/bridge/br_multicast.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > 
> > > I'd rather be more concerned with it rejecting a valid report due to wrong size. The ptr
> > > size would always be bigger. :)
> > > 
> > > Thanks!
> > > Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> > 
> > Aiy, you're right, it's the other way round. I'll update the
> > commit message and send a v2 in a minute, with your Acked-by
> > included.
> > 
> 
> By the way, I can't verify at the moment, but I think we can drop that whole
> hunk altogether since skb_header_pointer() is used and it will simply return
> an error if there isn't enough data for nsrcs.
> 

Hm, while unlikely, the IPv6 packet / header payload length might be
shorter than the frame / skb size.

And even though it wouldn't crash reading over the IPv6 packet
length, especially as skb_header_pointer() is used, I think we should
still avoid reading over the size indicated by the IPv6 header payload
length field, to stay protocol compliant.

Does that make sense?

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156794FC54A
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 21:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B41B4038E;
	Mon, 11 Apr 2022 19:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKuYS8PIKIrO; Mon, 11 Apr 2022 19:49:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9F5E040420;
	Mon, 11 Apr 2022 19:49:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58166C0084;
	Mon, 11 Apr 2022 19:49:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8CC5C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 19:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6F3983279
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 19:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVaeY1KP52io for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 19:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D5DD83231
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 19:49:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C9046B8186F;
 Mon, 11 Apr 2022 19:49:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 415F5C385A3;
 Mon, 11 Apr 2022 19:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649706551;
 bh=gZxB0KdeZCuJ/fKDoX2iVL6LT+jLWDmJDtAdRJgkmVs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OoL0z4lSmg4RpqE5Ukiax339HSlBW6XQ1JxlZRa/WcHBzg6Jhlc/0sCqLh+pQV6Qi
 BzqMpLDb4aVwZgR+Ix9vZNvdDiqWVBEjk4WkQHjn1HZtnpwU3nnfDgpCcGqNkumVXH
 zc5c9WD3RcNV8YGW54eDW22L595OowxGXBDu4Y5qC+Lv63E3bzHEjPDa/Yk+54dfDA
 6B5RUNofiNpMdS2y46kEBZ+AvUoR9TbDKYfnX22a2k40Ilti5S+xL58oPmHmXnxhaQ
 kkuCRtdsHoWZjm6U9WgWFw66dCSONJL+/8RzzxUqgD75l62fzalznS8qUPxGMk53ml
 EofReIvm1bBwQ==
Date: Mon, 11 Apr 2022 12:49:10 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <20220411124910.772dc7a0@kernel.org>
In-Reply-To: <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
 <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
 <92f578b7-347e-22c7-be83-cae4dce101f6@blackwall.org>
 <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, idosch@idosch.org
Subject: Re: [Bridge] [PATCH net-next v2 0/8] net: bridge: add flush
 filtering support
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

On Mon, 11 Apr 2022 12:22:24 -0700 Roopa Prabhu wrote:
> >> I thought about that option, but I didn't like overloading delneigh like that.
> >> del currently requires a mac address and we need to either signal the device supports> a null mac, or we should push that verification to ndo_fdb_del users. Also we'll have  
> > that's the only thing, overloading delneigh with a flush-behaviour (multi-del or whatever)
> > would require to push the mac check to ndo_fdb_del implementers
> >
> > I don't mind going that road if others agree that we should do it through delneigh
> > + a bit/option to signal flush, instead of a new rtm type.
> >  
> >> attributes which are flush-specific and will work only when flushing as opposed to when
> >> deleting a specific mac, so handling them in the different cases can become a pain.  
> > scratch the specific attributes, those can be adapted for both cases
> >  
> >> MDBs will need DELMDB to be modified in a similar way.
> >>
> >> IMO a separate flush op is cleaner, but I don't have a strong preference.
> >> This can very easily be adapted to delneigh with just a bit more mechanical changes
> >> if the mac check is pushed to the ndo implementers.
> >>
> >> FLUSHNEIGH can easily work for neighs, just need another address family rtnl_register
> >> that implements it, the new ndo is just for PF_BRIDGE. :)  
> 
> all great points. My only reason to explore RTM_DELNEIGH is to see if we 
> can find a recipe to support similar bulk deletes of other objects 
> handled via rtm msgs in the future. Plus, it allows you to maintain 
> symmetry between flush requests and object delete notification msg types.
> 
> Lets see if there are other opinions.

I'd vote for reusing RTM_DELNEIGH, but that's purely based on
intuition, I don't know this code. I'd also lean towards core
creating struct net_bridge_fdb_flush_desc rather than piping
raw netlink attrs thru. Lastly feels like fdb ops should find 
a new home rather than ndos, but that's largely unrelated..

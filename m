Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0423B51DDFE
	for <lists.bridge@lfdr.de>; Fri,  6 May 2022 18:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DF2683004;
	Fri,  6 May 2022 16:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZC10YhQ2G_N; Fri,  6 May 2022 16:58:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1212482FA5;
	Fri,  6 May 2022 16:58:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B0010C0081;
	Fri,  6 May 2022 16:58:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92242C002D
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 16:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78E9740422
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 16:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kg3kGIKVqpIs for <bridge@lists.linux-foundation.org>;
 Fri,  6 May 2022 16:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2141D40362
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 16:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=X1Z9IR3ee1uLnZkYJAlLEPfHnAGa9eV36iTxpDaZ1ks=; b=ZoTQ0OmAGEK5pIMJcAg2BVf1ur
 vp2gdhyfFXKk+TX61BuEJIsWXnFwF4tuX+Rsztf3T5I7EvAKu2oJR5FsaFpq3aMvvYbFBw4afyT4O
 /+KoxwUDJlwEZ6iIKnI+z89yt94hMEBD228crIQIN3/8ilm7ehXbK2pm3bivlHJ6/Q+M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nn1Ht-001YC4-K6; Fri, 06 May 2022 18:58:41 +0200
Date: Fri, 6 May 2022 18:58:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <YnVTwbPH8YU4kciG@lunn.ch>
References: <20220505225904.342388-1-andrew@lunn.ch>
 <20220506143644.mzfffht44t3glwci@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220506143644.mzfffht44t3glwci@skbuf>
Cc: Ido Schimmel <idosch@mellanox.com>, netdev <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>
Subject: Re: [Bridge] [PATCH RFC] net: bridge: Clear offload_fwd_mark when
 passing frame up bridge interface.
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

> Some safer alternatives to this patch are based on the idea that we
> could ignore skb->offload_fwd_mark coming from an unoffloaded bridge
> port (i.e. treat this condition at br1, not at br0). We could:
> - clear skb->offload_fwd_mark in br_handle_frame_finish(), if p->hwdom is 0
> - change nbp_switchdev_allowed_egress() to return true if cb->src_hwdom == 0

O.K, i will try out these solutions.

Thanks
     Andrew

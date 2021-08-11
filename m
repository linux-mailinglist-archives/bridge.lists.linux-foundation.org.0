Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA083E9AA6
	for <lists.bridge@lfdr.de>; Wed, 11 Aug 2021 23:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E6EA40380;
	Wed, 11 Aug 2021 21:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JLeQZlIIEU0L; Wed, 11 Aug 2021 21:58:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7C1F1402D5;
	Wed, 11 Aug 2021 21:58:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18CA3C001F;
	Wed, 11 Aug 2021 21:58:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5336DC000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 294D2605AD
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khAyzSEg5svt for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 21:58:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D67F600B8
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 21:58:37 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id i6so6116485edu.1
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 14:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oqaYnk/BlOEVZwhZgFl0HlIbiKCRb2HikYJeEVtrpsU=;
 b=G+Jh5JTKtzuPm2ZSNCT48dtg4MkLnPfZn61RKWMryCZuvjJW59wBUJ7GoGVCLpoKju
 drUH7LhE231uHGCesRgD2PLlS1gMSdfavrCZhX5eUKhHQWxu3Kxxfz90aPnv3lz9dp9r
 0tCCpblpht9JAhlaYMfSmiHhrMobuaRPeixBB2PfBrRvxmMeSVa6Qgm/kGnfTGmh9bWF
 M+fq0UxCkAvdn9Uqm0+/NadxcUFbbrHOutGOze2Zd988K+4FXHfQ9omxX0Po2d2AzAr3
 LYWCtAocFksvCF9LYUSQmBjqGOLHk3Ylv1JAKDVWeUSOqFFbGHgUDrjiHOmHEVpytaBh
 U8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oqaYnk/BlOEVZwhZgFl0HlIbiKCRb2HikYJeEVtrpsU=;
 b=Oo/vYkMhpRUcgK1fypMQt+Vf1N+hHmjS/nPGid2qbAJpZF2Oo/WFSUf1PzY5E6okHi
 IJ2/FyCpCQdxsW/dWqRqlt0SEfLWrMzeE0LoDM/4TZK8eThiVNnA5HGX/EnVRkzvdfx9
 AMqPWbCGco7mI4GGdNEwmrDFkl+VLk4JEShvdIi07LYUdcBx7L3mKh9L7y268j5jQNtp
 ccbMA37a1YhmTKExp5ejzk4SvXsm6ppCddLm+BIYZSbyeobbZhPhetOLG9sBQUdzimUy
 JB2Ucgu+jtqt6FI0J5b4QfYeOnRT1lw/iUJZ66sjdx7PYoeruci5TQWcue2fUkL5dZ87
 gK1Q==
X-Gm-Message-State: AOAM530cOH8T4mK+rrU36a0ZrOBkCexTdMyANsIMfHA1AMNdXmrYsUBn
 Se0ASViarkPaHfFMpLuwD5M=
X-Google-Smtp-Source: ABdhPJyJAi9thw66oG77nCI4SgRcCEoibHonBPxvlBWiZP5LiB8Y9I9MFyXs+oXnyS18h2Jiv93SZQ==
X-Received: by 2002:a05:6402:30b6:: with SMTP id
 df22mr1273432edb.375.1628719115308; 
 Wed, 11 Aug 2021 14:58:35 -0700 (PDT)
Received: from skbuf ([188.25.144.60])
 by smtp.gmail.com with ESMTPSA id n26sm217363eds.63.2021.08.11.14.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Aug 2021 14:58:34 -0700 (PDT)
Date: Thu, 12 Aug 2021 00:58:33 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210811215833.yst5tzgfvih2q4y2@skbuf>
References: <20210811135247.1703496-1-dqfext@gmail.com>
 <YRRDcGWaWHgBkNhQ@shredder> <20210811214506.4pf5t3wgabs5blqj@skbuf>
 <YRRGsL60WeDGQOnv@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YRRGsL60WeDGQOnv@shredder>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, DENG Qingfang <dqfext@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
 isolation to be offloaded
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

On Thu, Aug 12, 2021 at 12:52:48AM +0300, Ido Schimmel wrote:
> On Thu, Aug 12, 2021 at 12:45:06AM +0300, Vladimir Oltean wrote:
> > On Thu, Aug 12, 2021 at 12:38:56AM +0300, Ido Schimmel wrote:
> > > On Wed, Aug 11, 2021 at 09:52:46PM +0800, DENG Qingfang wrote:
> > > > Add BR_ISOLATED flag to BR_PORT_FLAGS_HW_OFFLOAD, to allow switchdev
> > > > drivers to offload port isolation.
> > > >
> > > > Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> > > > Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> > > > ---
> > > >  net/bridge/br_switchdev.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > > > index 6bf518d78f02..898257153883 100644
> > > > --- a/net/bridge/br_switchdev.c
> > > > +++ b/net/bridge/br_switchdev.c
> > > > @@ -71,7 +71,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
> > > >
> > > >  /* Flags that can be offloaded to hardware */
> > > >  #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
> > > > -				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
> > > > +				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | \
> > > > +				  BR_ISOLATED)
> > >
> > > Why add it now and not as part of a patchset that actually makes use of
> > > the flag in a driver that offloads port isolation?
> > 
> > The way the information got transmitted is a bit unfortunate.
> > 
> > Making BR_ISOLATED part of BR_PORT_FLAGS_HW_OFFLOAD is a matter of
> > correctness when switchdev offloads the data path. Since this feature
> > will not work correctly without driver intervention, it makes sense that
> > drivers should reject it currently, which is exactly what this patch
> > accomplishes - it makes the code path go through the
> > SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
> > -EINVAL for everything they don't recognize.
> 
> If the purpose is correctness, then this is not the only flag that was
> missed. BR_HAIRPIN_MODE is also relevant for the data path, for example.

I never wanted to suggest that I'm giving a comprehensive answer, I just
answered Qingfang's punctual question here:
https://lore.kernel.org/netdev/CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com/

Tobias also pointed out the same issue about BR_MULTICAST_TO_UNICAST in
conjunction with tx_fwd_offload (although the same is probably true even
without it):
https://patchwork.kernel.org/project/netdevbpf/cover/20210426170411.1789186-1-tobias@waldekranz.com/

> Anyway, the commit message needs to be reworded to reflect the true
> purpose of the patch.

Agree, and potentially extended with all the bridge port flags which are
broken without switchdev driver intervention.

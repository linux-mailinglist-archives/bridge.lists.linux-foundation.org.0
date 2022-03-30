Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6444EC8CB
	for <lists.bridge@lfdr.de>; Wed, 30 Mar 2022 17:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FA3B61076;
	Wed, 30 Mar 2022 15:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hh-Mxr7djPe9; Wed, 30 Mar 2022 15:52:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0CC33611E5;
	Wed, 30 Mar 2022 15:52:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2494C0082;
	Wed, 30 Mar 2022 15:52:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39FCBC0012
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 15:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F35441C86
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 15:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cQkRPrFY1tc for <bridge@lists.linux-foundation.org>;
 Wed, 30 Mar 2022 15:51:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F227441C72
 for <bridge@lists.linux-foundation.org>; Wed, 30 Mar 2022 15:51:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9B82B61757;
 Wed, 30 Mar 2022 15:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7001EC340EC;
 Wed, 30 Mar 2022 15:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648655516;
 bh=1pUS2wJLudc1jkoub3g8WBHIEAC+pseXQcvY3pZfMu0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Am+WCxZTX2ITKAVP1o3qsr1gOdGMuaYiyHkH/+EeJjkLJMeHxAGQjWSYSmKc1pcKC
 4SOCgd+UMk5FsYlLEu+tu3mg47i11olIyeGVD9pvutsC6gjIrFX9olST43xxIAu1qU
 Hc62eLt3TXXNEagEoDSBjwTjg++wOKoA+wrDBXyK1llsJjD5E+QCCUeySXEov7u4MM
 s7XONWYwwKb1GwB5ytvtdcT6Q6znOaTj7ERLF2P8m3baOlOi68j0oHOkEvzV5/bNgL
 CvZWHhZRHwJG9HFnmojGDwQ5DPqx3fbVYne3oKRmKZHLVktVGOTnWqx4b2BLST7h7V
 jz0t7rEqBEVjg==
Date: Wed, 30 Mar 2022 08:51:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexandra Winter <wintera@linux.ibm.com>, Nikolay Aleksandrov
 <razor@blackwall.org>
Message-ID: <20220330085154.34440715@kernel.org>
In-Reply-To: <c1ec0612-063b-dbfa-e10a-986786178c93@linux.ibm.com>
References: <20220329114052.237572-1-wintera@linux.ibm.com>
 <20220329175421.4a6325d9@kernel.org>
 <d2e45c4a-ed34-10d3-58cd-01b1c19bd004@blackwall.org>
 <c1ec0612-063b-dbfa-e10a-986786178c93@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-s390@vger.kernel.org, netdev@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Hangbin Liu <liuhangbin@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Jiri Pirko <jiri@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2] veth: Support bonding events
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

On Wed, 30 Mar 2022 13:14:12 +0200 Alexandra Winter wrote:
> >> This patch in no way addresses (2). But then, again, if we put 
> >> a macvlan on top of a bridge master it will shotgun its GARPS all 
> >> the same. So it's not like veth would be special in that regard.
> >>
> >> Nik, what am I missing?
> > 
> > If we're talking about macvlan -> bridge -> bond then the bond flap's
> > notify peers shouldn't reach the macvlan.

Hm, right. I'm missing a step in my understanding. As you say bridge
does not seem to be re-broadcasting the event to its master. So how
does Alexandra catch this kind of an event? :S

	case NETDEV_NOTIFY_PEERS:
		/* propagate to peer of a bridge attached veth */
		if (netif_is_bridge_master(dev)) {  

IIUC bond will notify with dev == bond netdev. Where is the event with
dev == br generated?

> > Generally broadcast traffic
> > is quite expensive for the bridge, I have patches that improve on the
> > technical side (consider ports only for the same bcast domain), but you also
> > wouldn't want unnecessary bcast packets being sent around. :)
> > There are setups with tens of bond devices and propagating that to all would be
> > very expensive, but most of all unnecessary. It would also hurt setups with
> > a lot of vlan devices on the bridge. There are setups with hundreds of vlans
> > and hundreds of macvlans on top, propagating it up would send it to all of
> > them and that wouldn't scale at all, these mostly have IP addresses too.

Ack.

> > Perhaps we can enable propagation on a per-port or per-bridge basis, then we
> > can avoid these walks. That is, make it opt-in.

Maybe opt-out? But assuming the event is only generated on
active/backup switch over - when would it be okay to ignore
the notification?

> >>> It also seems difficult to avoid re-bouncing the notifier.  
> >>
> >> syzbot will make short work of this patch, I think the potential
> >> for infinite loops has to be addressed somehow. IIUC this is the 
> >> first instance of forwarding those notifiers to a peer rather
> >> than within a upper <> lower device hierarchy which is a DAG.  
> 
> My concern was about the Hangbin's alternative proposal to notify all
> bridge ports. I hope in my porposal I was able to avoid infinite loops.

Possibly I'm confused as to where the notification for bridge master
gets sent..

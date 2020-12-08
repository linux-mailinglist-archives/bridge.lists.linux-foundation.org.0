Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 821102D1FE0
	for <lists.bridge@lfdr.de>; Tue,  8 Dec 2020 02:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31A2387B07;
	Tue,  8 Dec 2020 01:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jg_Wz51c6ALH; Tue,  8 Dec 2020 01:20:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACEA7874E7;
	Tue,  8 Dec 2020 01:20:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 888DBC013B;
	Tue,  8 Dec 2020 01:20:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8FDDC013B
 for <bridge@lists.linux-foundation.org>; Tue,  8 Dec 2020 01:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD5F287D2B
 for <bridge@lists.linux-foundation.org>; Tue,  8 Dec 2020 01:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVJchZ+UQJFh for <bridge@lists.linux-foundation.org>;
 Tue,  8 Dec 2020 01:20:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 555E3806F2
 for <bridge@lists.linux-foundation.org>; Tue,  8 Dec 2020 01:20:17 +0000 (UTC)
Date: Mon, 7 Dec 2020 17:20:15 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607390416;
 bh=PBUakZSI/8fHqIXDH5E3y18maLAa5mtKjoEIZuFHY+M=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=BhqtjXk6xWeLrCwKwGYXVkfULXcIt3S2h/OvxHAJZUNY7uVskIk3frX3CFUWK/Sgx
 51oR0fz61/NPW4KE3Fe61xV00FzipnOi4sJG6Uogltxs+N8ANiOzgGwHam/C/6qL5e
 5k88Lrs8gunDw81G3XlDFuRu5aNjU79iv6xnL9sdDEczeVcuAGHb9R9xtYWdocksjS
 zFHcswSpXza05xnRa2uM+Uj7wEi8mUIGOzP91CtMHlFCigkKpyftX5AztJI7dKOizx
 yw2YJU3wjtgpiD1G5Iv9NXgjblUqQDNyn6niCGuZ5b/4Is0g0ZInjB0Moems87kYth
 3lx2KTvxiDw3w==
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, Joseph Huang
 <Joseph.Huang@garmin.com>
Message-ID: <20201207172015.1f5a70b0@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <f16d76ed-5d93-d15b-e7da-5133e3b6c3e7@nvidia.com>
References: <20201201214047.128948-1-Joseph.Huang@garmin.com>
 <20201204235628.50653-1-Joseph.Huang@garmin.com>
 <f16d76ed-5d93-d15b-e7da-5133e3b6c3e7@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH v3] bridge: Fix a deadlock when enabling
 multicast snooping
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

On Sat, 5 Dec 2020 10:56:45 +0200 Nikolay Aleksandrov wrote:
> On 05/12/2020 01:56, Joseph Huang wrote:
> > When enabling multicast snooping, bridge module deadlocks on multicast_lock
> > if 1) IPv6 is enabled, and 2) there is an existing querier on the same L2
> > network.
> > 
> > The deadlock was caused by the following sequence: While holding the lock,
> > br_multicast_open calls br_multicast_join_snoopers, which eventually causes
> > IP stack to (attempt to) send out a Listener Report (in igmp6_join_group).
> > Since the destination Ethernet address is a multicast address, br_dev_xmit
> > feeds the packet back to the bridge via br_multicast_rcv, which in turn
> > calls br_multicast_add_group, which then deadlocks on multicast_lock.
> > 
> > The fix is to move the call br_multicast_join_snoopers outside of the
> > critical section. This works since br_multicast_join_snoopers only deals
> > with IP and does not modify any multicast data structures of the bridge,
> > so there's no need to hold the lock.
> > 
> > Steps to reproduce:
> > 1. sysctl net.ipv6.conf.all.force_mld_version=1
> > 2. have another querier
> > 3. ip link set dev bridge type bridge mcast_snooping 0 && \
> >    ip link set dev bridge type bridge mcast_snooping 1 < deadlock >
> > 
> > A typical call trace looks like the following:

> > Fixes: 4effd28c1245 ("bridge: join all-snoopers multicast address")
> > Signed-off-by: Joseph Huang <Joseph.Huang@garmin.com>
> 
> LGTM, thanks!
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied, thank you!

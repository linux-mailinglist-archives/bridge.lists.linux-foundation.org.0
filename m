Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 367D72CDD58
	for <lists.bridge@lfdr.de>; Thu,  3 Dec 2020 19:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D798787D48;
	Thu,  3 Dec 2020 18:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xo9uFvEcNiuF; Thu,  3 Dec 2020 18:28:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E7F387C8B;
	Thu,  3 Dec 2020 18:28:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3F3F0C0FA7;
	Thu,  3 Dec 2020 18:28:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB0B2C0FA7
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 18:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C892387B32
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 18:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcSIqbLX1qJI for <bridge@lists.linux-foundation.org>;
 Thu,  3 Dec 2020 18:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63FE387B30
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 18:28:04 +0000 (UTC)
Date: Thu, 3 Dec 2020 10:28:02 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607020083;
 bh=79pVmEiGY09uStaLdHgvpv8VoidOztdyQWlxY1kgCwA=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=A06Bm35mVRT0NBoRGsjIZQoIWX4hX325fHqCGBaEwR25QoJ9Q2UtEamABN2nliHl4
 ump2zDNxgagmbC3XrzMg2+xW3zNMSX75zQKoh0Fv4bOKLa01gNNCKuhjzO2kBelZfa
 uTxqeLVYTmaLL2IVLjL0frhVg/q0RKSzC6V7yKcdLwf8eqTfrPDPEn2Xg1V6DHQdat
 lez353KoHeaKE4+6Kud9rQ4ugNwA7KGd8gQSHO0Rd+FKHCuByIeR3aUgxvyX05E3ep
 tnxZNBsK8ogPXwRGPIFDWL074hiivScxOP5RsJ7xx0R8SjCTXr4c7ioF6ra9t9Kgqu
 UxeWEJoOC4amQ==
From: Jakub Kicinski <kuba@kernel.org>
To: Joseph Huang <Joseph.Huang@garmin.com>
Message-ID: <20201203102802.62bc86ba@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201201214047.128948-1-Joseph.Huang@garmin.com>
References: <20201201214047.128948-1-Joseph.Huang@garmin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] bridge: Fix a deadlock when enabling multicast
	snooping
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

On Tue, 1 Dec 2020 16:40:47 -0500 Joseph Huang wrote:
> When enabling multicast snooping, bridge module deadlocks on multicast_lock
> if 1) IPv6 is enabled, and 2) there is an existing querier on the same L2
> network.
> 
> The deadlock was caused by the following sequence: While holding the lock,
> br_multicast_open calls br_multicast_join_snoopers, which eventually causes
> IP stack to (attempt to) send out a Listener Report (in igmp6_join_group).
> Since the destination Ethernet address is a multicast address, br_dev_xmit
> feeds the packet back to the bridge via br_multicast_rcv, which in turn
> calls br_multicast_add_group, which then deadlocks on multicast_lock.
> 
> The fix is to move the call br_multicast_join_snoopers outside of the
> critical section. This works since br_multicast_join_snoopers only deals
> with IP and does not modify any multicast data structures of the bridge,
> so there's no need to hold the lock.
> 
> Fixes: 4effd28c1245 ("bridge: join all-snoopers multicast address")
> 
> Signed-off-by: Joseph Huang <Joseph.Huang@garmin.com>

Nik, Linus - how does this one look?

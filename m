Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B092605AC
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 22:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B7D5221C6;
	Mon,  7 Sep 2020 20:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkoGbl+UTd8Y; Mon,  7 Sep 2020 20:27:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id EEFF820385;
	Mon,  7 Sep 2020 20:27:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE55AC0051;
	Mon,  7 Sep 2020 20:27:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFBF2C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 20:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A03192042B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 20:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mVpu16uAGL2 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 20:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E3F7320385
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 20:27:19 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27C7821556;
 Mon,  7 Sep 2020 20:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599510439;
 bh=nKy/rzLAWRf54aoPo+PrRowJ1euqWN4cWkwUgQ9wVQU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MHqV1K+eSoZXTqutpE73tF/indnyd5zB18ZGfKs7+tzfjr14/eotE5g3WCzEHJcF0
 pcfwfRvNa7Kh5rBXqzIkFfD/T/Jg7oBaN25jbSle7WZ8sTbvNrGX797etkoN6WT3nZ
 wE/l6rELydzqdaicPGbkn+327KHu7QgufkcKb4Mg=
Date: Mon, 7 Sep 2020 13:27:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200907132717.5fdb04d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v4 00/15] net: bridge: mcast: initial
 IGMPv3/MLDv2 support (part 1)
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

On Mon,  7 Sep 2020 12:56:04 +0300 Nikolay Aleksandrov wrote:
> Hi all,
> This patch-set implements the control plane for initial IGMPv3/MLDv2
> support which takes care of include/exclude sets and state transitions
> based on the different report types.
> Patch 01 arranges the structure better by moving the frequently used
> fields together, patch 02 factors out the port group deletion code which is
> used in a few places. Patches 03 and 04 add support for source lists and
> group modes per port group which are dumped. Patch 05 adds support for
> group-and-source specific queries required for IGMPv3/MLDv2. Then patch 06
> adds support for group and group-and-source query retransmissions via a new
> rexmit timer. Patches 07 and 08 make use of the already present mdb fill
> functions when sending notifications so we can have the full mdb entries'
> state filled in (with sources, mode etc). Patch 09 takes care of port group
> expiration, it switches the group mode to include and deletes it if there
> are no sources with active timers. Patches 10-13 are the core changes which
> add support for IGMPv3/MLDv2 reports and handle the source list set
> operations as per RFCs 3376 and 3810, all IGMPv3/MLDv2 report types with
> their transitions should be supported after these patches. I've used RFCs
> 3376, 3810 and FRR as a reference implementation. The source lists are
> capped at 32 entries, we can remove that limitation at a later point which
> would require a better data structure to hold them. IGMPv3 processing is
> hidden behind the bridge's multicast_igmp_version option which must be set
> to 3 in order to enable it. MLDv2 processing is hidden behind the bridge's
> multicast_mld_version which must be set to 2 in order to enable it.
> Patch 14 improves other querier processing a bit (more about this below).
> And finally patch 15 transforms the src gc so it can be used with all mcast
> objects since now we have multiple timers that can be running and we
> need to make sure they have all finished before freeing the objects.
> This is part 1, it only adds control plane support and doesn't change
> the fast path. A following patch-set will take care of that.

Applied thank you.

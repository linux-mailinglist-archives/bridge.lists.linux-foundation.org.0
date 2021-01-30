Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DB309242
	for <lists.bridge@lfdr.de>; Sat, 30 Jan 2021 06:37:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A36387132;
	Sat, 30 Jan 2021 05:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRze4-luHxxS; Sat, 30 Jan 2021 05:37:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8315E87103;
	Sat, 30 Jan 2021 05:37:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6359EC013A;
	Sat, 30 Jan 2021 05:37:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D4A1C013A
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 05:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27052203E9
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 05:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjJ8xXL9i-Ab for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jan 2021 05:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 21EE9203CC
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 05:37:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 98D0164DDE;
 Sat, 30 Jan 2021 05:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611985063;
 bh=O7gUiLmThPz3xqnmNCVRJznYl1bUntj77i5W4NKUpg0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H+WWnduVgWEoI/Y94mLSkT9rzX342RY/50HH5Hpc7idI1m+eOeynVjQNWFddUHtwt
 Nun1L3YBvUelcBUKJ2GhvRGtnkgAL+bWK4WeFUrNkVuKapJRM7JlzJo8AhwT17j/SN
 h41lzk2KRqrxz2YgONx3xYiJyRl2T8tUAlWTLMQ910f+72unp3ZEuLJXQkgdJKPZwP
 Z8SN7y0AypGI/WX7cX9Ehe1x/Pdqu8wBu3OIsFsceYlA9weuzQOwZHo0gLin/uZy0g
 77ctOhwKzGgZ5Mi/nMSW8oSVDX8N2AYRsebjSNCjzhKu+yp0Y7BW+bhdUaURFnRomp
 SidOnHWo/yXfw==
Date: Fri, 29 Jan 2021 21:37:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210129213742.7da125ee@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <e0c38c2a-3e72-2ee0-c48d-900e63227528@nvidia.com>
References: <20210129115142.188455-1-razor@blackwall.org>
 <e0c38c2a-3e72-2ee0-c48d-900e63227528@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/2] net: bridge: drop hosts limit
 sysfs and add a comment
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

On Fri, 29 Jan 2021 13:55:24 +0200 Nikolay Aleksandrov wrote:
> On 29/01/2021 13:51, Nikolay Aleksandrov wrote:
> > From: Nikolay Aleksandrov <nikolay@nvidia.com>
> > 
> > Hi,
> > As recently discussed[1] we should stop extending the bridge sysfs
> > support for new options and move to using netlink only, so patch 01
> > drops the recently added hosts limit sysfs support which is still in
> > net-next only and patch 02 adds comments in br_sysfs_br/if.c to warn
> > against adding new sysfs options.
> > 
> > Thanks,
> >  Nik
> > 
> > Nikolay Aleksandrov (2):
> >   net: bridge: mcast: drop hosts limit sysfs support
> >   net: bridge: add warning comments to avoid extending sysfs
> > 
> >  net/bridge/br_sysfs_br.c |  4 ++++
> >  net/bridge/br_sysfs_if.c | 30 ++++--------------------------
> >  2 files changed, 8 insertions(+), 26 deletions(-)
> >   
> 
> Oops :) the [1] addendum should be:
> 
> [1] https://lore.kernel.org/netdev/20210128105201.7c6bed82@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/T/#mda7265b2e57b52bdab863f286efa85291cf83822
> 
> Since this is in the cover letter I don't think v2 is needed.
> Please let me know if you'd like me to resend.

Seems that vger ate the cover letter completely, but not the patches,
so I was putting the merge commit message together by hand, anyway :)

Applied, thanks!

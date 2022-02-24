Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35AC4C30EE
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 17:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F36940A10;
	Thu, 24 Feb 2022 16:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xBDiBR_msltu; Thu, 24 Feb 2022 16:06:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B4CAE40A13;
	Thu, 24 Feb 2022 16:06:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72987C0037;
	Thu, 24 Feb 2022 16:06:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B67B9C0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D874C83E19
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adz8QGXDMKOb for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 16:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E205A83E13
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:06:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BEBC5616A0;
 Thu, 24 Feb 2022 16:06:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAC1FC340E9;
 Thu, 24 Feb 2022 16:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645718773;
 bh=6WN+LQVBZezsAh7KVD4VaWoSKM/ZTRQU90sZ5yKY33s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SQYBEdvFu9oSHN+ebTqdV5/BHZdCpZA/fMR9ZcLuszdMt48Snk1hhPZZbJHaQoxav
 h7ATGC1X9EvXWBbgND4GOeXs7hWBJRFPiHZzuRSGRPS1SGhrgH5z49uM563aRkTf2a
 6Xb2NQXEaxnAl6sBwmGNajxiJLSZ5abyjQXmZk7dQ3ghYCVptcRdRV3zKzIZPFZXYD
 cyKYxgTEWuD7gMjsd8/A34tuARQToUZd0u6v2u3dVfvSR4liFNigMmOz64KFPBJY9K
 1wOFejqne3p3dR2MQIXTDxQ8uApTdkl4o5/xBlWuNKQB7a85kqFlKxOev6m+KOfPZV
 WXgvR0ptD9/Ww==
Date: Thu, 24 Feb 2022 08:06:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220224080611.4e32bac3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Joachim Wiberg <troglobit@gmail.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, "David S .
 Miller" <davem@davemloft.net>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host
 l2 mdb entries
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

On Thu, 24 Feb 2022 13:26:22 +0200 Nikolay Aleksandrov wrote:
> On 23/02/2022 19:24, Joachim Wiberg wrote:
> > This patch expands on the earlier work on layer-2 mdb entries by adding
> > support for host entries.  Due to the fact that host joined entries do
> > not have any flag field, we infer the permanent flag when reporting the
> > entries to userspace, which otherwise would be listed as 'temp'.
> > 
> > Before patch:
> > 
> >     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
> >     Error: bridge: Flags are not allowed for host groups.
> >     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee
> >     Error: bridge: Only permanent L2 entries allowed.
> > 
> > After patch:
> > 
> >     ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
> >     ~# bridge mdb show
> >     dev br0 port br0 grp 01:00:00:c0:ff:ee permanent vid 1
> > 
> > Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
>
> It would be nice to add a selftest for L2 entries. You can send it as a follow-up.

Let's wait for that, also checkpatch says you need to balance brackets
to hold kernel coding style.

> Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

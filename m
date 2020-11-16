Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E5A2B555D
	for <lists.bridge@lfdr.de>; Tue, 17 Nov 2020 00:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2B0D86FAA;
	Mon, 16 Nov 2020 23:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jPkAPot7vhH0; Mon, 16 Nov 2020 23:50:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 514AC86FB3;
	Mon, 16 Nov 2020 23:50:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 341CCC07FF;
	Mon, 16 Nov 2020 23:50:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75E18C07FF
 for <bridge@lists.linux-foundation.org>; Mon, 16 Nov 2020 23:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D98185F0F
 for <bridge@lists.linux-foundation.org>; Mon, 16 Nov 2020 23:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lnDotJtTn_Ol for <bridge@lists.linux-foundation.org>;
 Mon, 16 Nov 2020 23:50:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF31085EB4
 for <bridge@lists.linux-foundation.org>; Mon, 16 Nov 2020 23:50:36 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24D1924641;
 Mon, 16 Nov 2020 23:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605570636;
 bh=revZMqDAKvfAcrUyCPRAeYx6moZKw5JnA44m4JeGMTE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h+EpHgMkUfqxXUZ3mXGyslpE/q6cYzWQPBWkOGHJKqlV0kaDxcq2M+mnMiep3Gy08
 RxDT0VeWuv2pnGt35DfjxBvPZqewxbsoC6APeyUZ/Zxuat0eQk/XLapB5y+vLXC0JI
 iYCWPTqrj+EjEMFvIXuJ53HkUNBWKKm3nYVxUZsw=
Date: Mon, 16 Nov 2020 15:50:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201116155035.7f9e761c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <58ea9963-77ad-a7cf-8dfd-fc95ab95f606@gmail.com>
References: <58ea9963-77ad-a7cf-8dfd-fc95ab95f606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net] net: bridge: add missing counters to
 ndo_get_stats64 callback
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

On Fri, 13 Nov 2020 10:27:27 +0100 Heiner Kallweit wrote:
> In br_forward.c and br_input.c fields dev->stats.tx_dropped and
> dev->stats.multicast are populated, but they are ignored in
> ndo_get_stats64.
> 
> Fixes: 28172739f0a2 ("net: fix 64 bit counters on 32 bit arches")
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> Patch will not apply cleanly on kernel versions that don't have
> dev_fetch_sw_netstats() yet.

Looks straightforward enough, I'll backport manually.

Applied, thanks!

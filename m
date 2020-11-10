Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6742ACA1B
	for <lists.bridge@lfdr.de>; Tue, 10 Nov 2020 02:11:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE3C686FEC;
	Tue, 10 Nov 2020 01:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZecLY7GZde8r; Tue, 10 Nov 2020 01:11:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 245B986FE2;
	Tue, 10 Nov 2020 01:11:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0AD1DC1AD8;
	Tue, 10 Nov 2020 01:11:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2952C016F
 for <bridge@lists.linux-foundation.org>; Tue, 10 Nov 2020 01:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC78786FE2
 for <bridge@lists.linux-foundation.org>; Tue, 10 Nov 2020 01:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lUcHeCo-KQuf for <bridge@lists.linux-foundation.org>;
 Tue, 10 Nov 2020 01:11:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5D58E86FCA
 for <bridge@lists.linux-foundation.org>; Tue, 10 Nov 2020 01:11:31 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 517DA206D8;
 Tue, 10 Nov 2020 01:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604970690;
 bh=VIZZlsx0jAouiq3t1QoP1KOVqGLlr6W8TTq9SFQmF3M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZDdpsC4f8aqGBsvCk04lvbv0d6EX6OwnUZQ8Kn2DH/eYK5s0qyuLyqh/40P72GSHj
 gO0NKtOZBSE+OKHVkTt1hcu6PVLpjT418GiUss1boJKJbeEDnWiUS4IxsIZOA1W48X
 DFJ4X+AOo3vhe5aICWqcYtc919Zb/8mpCVdi7sGE=
Date: Mon, 9 Nov 2020 17:11:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20201109171129.6b156947@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201106215049.1448185-1-horatiu.vultur@microchip.com>
References: <20201106215049.1448185-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: mrp: Use hlist_head instead
 of list_head for mrp
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

On Fri, 6 Nov 2020 22:50:49 +0100 Horatiu Vultur wrote:
> Replace list_head with hlist_head for MRP list under the bridge.
> There is no need for a circular list when a linear list will work.
> This will also decrease the size of 'struct net_bridge'.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Applied, thanks!

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB552B8990
	for <lists.bridge@lfdr.de>; Thu, 19 Nov 2020 02:27:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C11058729B;
	Thu, 19 Nov 2020 01:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ0+QyOS-6E2; Thu, 19 Nov 2020 01:27:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BB0F872AB;
	Thu, 19 Nov 2020 01:27:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D6CAC07FF;
	Thu, 19 Nov 2020 01:27:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0217AC07FF
 for <bridge@lists.linux-foundation.org>; Thu, 19 Nov 2020 01:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D66342047C
 for <bridge@lists.linux-foundation.org>; Thu, 19 Nov 2020 01:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qa5u5o8QP-VC for <bridge@lists.linux-foundation.org>;
 Thu, 19 Nov 2020 01:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D9C4B203EF
 for <bridge@lists.linux-foundation.org>; Thu, 19 Nov 2020 01:27:26 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0BD6246C0;
 Thu, 19 Nov 2020 01:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605749246;
 bh=ruN/fazh+ZYXqMcXIkuyqUm+o6MpFy89SaMV9Dvmj1Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xc/MwMP1ZlJjtBAKv6iZ4/uyWGRy4F1dwSc1dAaklacTGNCz+aFLdMHvOX9rbmv/J
 x/s/m9LDoNwvsfSJ15cvxJJx3X5a8myn3Sa5+MaHqiZz3kb/amskLkx1LY3PWrmosD
 sOvfwpHl/Tvx7uNaN0bnB7DXzMc6czWQmL4uYFRg=
Date: Wed, 18 Nov 2020 17:27:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201118172724.3c8e0092@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <04d25c3d-c5f6-3611-6d37-c2f40243dae2@gmail.com>
References: <04d25c3d-c5f6-3611-6d37-c2f40243dae2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: replace struct
 br_vlan_stats with pcpu_sw_netstats
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

On Tue, 17 Nov 2020 21:25:42 +0100 Heiner Kallweit wrote:
> Struct br_vlan_stats duplicates pcpu_sw_netstats (apart from
> br_vlan_stats not defining an alignment requirement), therefore
> switch to using the latter one.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Applied, thanks!

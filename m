Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B0D2BC27A
	for <lists.bridge@lfdr.de>; Sat, 21 Nov 2020 23:42:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7763920402;
	Sat, 21 Nov 2020 22:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id daf4jhVA-yV7; Sat, 21 Nov 2020 22:41:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A6652203E0;
	Sat, 21 Nov 2020 22:41:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C262C1DA2;
	Sat, 21 Nov 2020 22:41:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 24B5CC0891
 for <bridge@lists.linux-foundation.org>; Sat, 21 Nov 2020 22:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C43586081
 for <bridge@lists.linux-foundation.org>; Sat, 21 Nov 2020 22:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4K0Dm8fZQfuN for <bridge@lists.linux-foundation.org>;
 Sat, 21 Nov 2020 22:41:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 042EC85FDE
 for <bridge@lists.linux-foundation.org>; Sat, 21 Nov 2020 22:41:55 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 101BA2151B;
 Sat, 21 Nov 2020 22:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605998515;
 bh=qomVMm2MeRDCKHvedwhIgYBadhiY7UIQ36rqjlMxvkM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BDnmp4j34qJ0g/oajusdvGqiqXHQUgSg7prTt+uOVdh9jJszcS8aZ4ZDFV0ASgDSU
 +1Vee89nbbvUS8i2Oo63pjPA6spHEta2mVl3ChF5Tn0JCQWEAL4dZCWbL85ot4f+QA
 ykFT6zvQsMGa4ixgfE3AbYRa3Bka/WlyHn3AN9rU=
Date: Sat, 21 Nov 2020 14:41:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201121144154.03696203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <9bad2be2-fd84-7c6e-912f-cee433787018@gmail.com>
References: <9bad2be2-fd84-7c6e-912f-cee433787018@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switch to net core
 statistics counters handling
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

On Fri, 20 Nov 2020 12:22:23 +0100 Heiner Kallweit wrote:
> Use netdev->tstats instead of a member of net_bridge for storing
> a pointer to the per-cpu counters. This allows us to use core
> functionality for statistics handling.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Applied, thanks!

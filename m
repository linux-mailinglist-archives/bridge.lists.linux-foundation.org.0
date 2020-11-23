Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D73A2C1893
	for <lists.bridge@lfdr.de>; Mon, 23 Nov 2020 23:41:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E209A85DF9;
	Mon, 23 Nov 2020 22:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWR7BxR3VES1; Mon, 23 Nov 2020 22:41:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8061485DF6;
	Mon, 23 Nov 2020 22:41:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 636F8C0052;
	Mon, 23 Nov 2020 22:41:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0507BC0052
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0659867D3
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mww+sieo3eps for <bridge@lists.linux-foundation.org>;
 Mon, 23 Nov 2020 22:41:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D72D867AC
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:41:39 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74211206B7;
 Mon, 23 Nov 2020 22:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606171298;
 bh=63QX6xzI0bDnVsnkfl4UNC4w2nSOAWn/TWg3heNzFO4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=niymz3KIHbCG4Kt8zM9DlfDIrxm7N90S7vWopXVTHtCotlwxFUJzfrPvILG1eSPak
 BnMpX7Es1Q89vDHv8Zq1ACudYueyU78TrCoLXHIhEsYorTdtwxTkneqxghXFC4QHOC
 RJsgTpS9nBkgF4TGgzyVXPZp6ZuKpHkc8fIBARt8=
Date: Mon, 23 Nov 2020 14:41:37 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20201123144137.16459e9c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201123223148.gvexo37ibzophobl@soft-dev3.localdomain>
References: <20201123111401.136952-1-horatiu.vultur@microchip.com>
 <5ffa6f9f-d1f3-adc7-ddb8-e8107ea78da5@nvidia.com>
 <20201123123132.uxvec6uwuegioc25@soft-dev3.localdomain>
 <13cef7c2-cacc-2c24-c0d5-e462b0e3b4df@nvidia.com>
 <20201123140519.3bb3db16@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20201123223148.gvexo37ibzophobl@soft-dev3.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: mrp: Implement LC mode for MRP
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

On Mon, 23 Nov 2020 23:31:48 +0100 Horatiu Vultur wrote:
> > The existing structs are only present in net-next as well, so if you
> > don't mind Horatiu it'd be good to follow up and remove the unused ones
> > and move the ones (if any) which are only used by the kernel but not by
> > the user space <-> kernel API communication out of include/uapi.  
> 
> Maybe we don't refer to the same structs, but I could see that they are
> already in net and in Linus' tree. For example the struct
> 'br_mrp_ring_topo_hdr'. Or am I missunderstanding something?

Ah, scratch that, I thought this was HSR, I should have paid more
attention. Nothing we can do about the existing ones, then.

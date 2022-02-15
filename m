Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F594B6252
	for <lists.bridge@lfdr.de>; Tue, 15 Feb 2022 06:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63B4E60E52;
	Tue, 15 Feb 2022 05:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSPM-ImH_tGx; Tue, 15 Feb 2022 05:13:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F196660E55;
	Tue, 15 Feb 2022 05:13:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9AB27C0073;
	Tue, 15 Feb 2022 05:13:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A3FFC000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 05:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D7B4400D1
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 05:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQYoodlfTNnl for <bridge@lists.linux-foundation.org>;
 Tue, 15 Feb 2022 05:13:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA247400C8
 for <bridge@lists.linux-foundation.org>; Tue, 15 Feb 2022 05:13:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D5DC8612FD;
 Tue, 15 Feb 2022 05:13:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0486AC340F0;
 Tue, 15 Feb 2022 05:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644901990;
 bh=5G1G+iYda0ASt2hoy/703UMcV7F/fJHwIIgyIs2HQ98=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MqFqeMqptslXxyLRQR+fn0lmy5fzANcj33vTrFvQIuslIPE3p7WheSnyQqIMF0Z8B
 TX4liZDUUDGGLdD8J8LxNjK3lGkNN9Sh/ICYMCnUzb4J7qwJTSNDYjg7s2GYEwZURu
 7HshVtxvfyBINL5dxW78vwy+4SAdhF6HNzMJd1vGCWcKaAGxukfbsOdSXfdU/cBMft
 yaylW0h6CX7XPBySjJSsyJuthyyFk9cPyQXs0aHF+fgoaKA5blcN+K2F7Ug5GOa8YL
 ZZrhLDtthSqP6m/hGq0TYbLnqkUFfuGTn2czrr1MtqJxw+EsC21j8rFlRHIYJO+MQ6
 s6qAfFupCaOmw==
Date: Mon, 14 Feb 2022 21:13:09 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksandr Mazur <oleksandr.mazur@plvision.eu>
Message-ID: <20220214211309.261bd9d6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220211131426.5433-1-oleksandr.mazur@plvision.eu>
References: <20220211131426.5433-1-oleksandr.mazur@plvision.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net: bridge: multicast: notify switchdev
 driver whenever MC processing gets disabled
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

On Fri, 11 Feb 2022 15:14:26 +0200 Oleksandr Mazur wrote:
> Whenever bridge driver hits the max capacity of MDBs, it disables
> the MC processing (by setting corresponding bridge option), but never
> notifies switchdev about such change (the notifiers are called only upon
> explicit setting of this option, through the registered netlink interface).
> 
> This could lead to situation when Software MDB processing gets disabled,
> but this event never gets offloaded to the underlying Hardware.
> 
> Fix this by adding a notify message in such case.

Any comments on this one?

We have drivers offloading mdb so presumably this should have a Fixes
tag and go to net, right?

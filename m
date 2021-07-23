Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 802E13D3CCC
	for <lists.bridge@lfdr.de>; Fri, 23 Jul 2021 17:51:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BDCA40134;
	Fri, 23 Jul 2021 15:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fd60CmSzs4ru; Fri, 23 Jul 2021 15:50:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8B5A44049C;
	Fri, 23 Jul 2021 15:50:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 160BCC001F;
	Fri, 23 Jul 2021 15:50:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77828C000E
 for <bridge@lists.linux-foundation.org>; Fri, 23 Jul 2021 15:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 582C740584
 for <bridge@lists.linux-foundation.org>; Fri, 23 Jul 2021 15:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUOE85AlT-_0 for <bridge@lists.linux-foundation.org>;
 Fri, 23 Jul 2021 15:50:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 647C24012E
 for <bridge@lists.linux-foundation.org>; Fri, 23 Jul 2021 15:50:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E1F5760EE2;
 Fri, 23 Jul 2021 15:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627055405;
 bh=+K3ROxkv2Wdhl+4C12AmUCoCtE1n0FYZaWBOSEgVLoQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=So8b3PFkoJKPh6LD1CVplGqsSECVNu8GymqlBgiHp6zdZLROCDBtlIIPCEFjYUkAX
 vL7pP7VXhx0jw6nzNobtxtL1bbYJTouvabcosDas+tHVFs619Vg4PI67MuAEVgHHSD
 cOw8yiluVzJNtWXzY251eliVUFAWY6qLRgBLamwXTIuVB/wX3aheDZEvBUYU09WXhy
 N8e2LFZvUuNwaZZG+Fu56uoEVfq4U0rHdVfBOnGuHR9do44a1p60AeOSxU2oAM0Yf7
 89Uyzce6/RBMb/h7FTEj+Ur5dgotC9/Us1ZtoaTkXRQaarvWI76SlNuWa7iihjzdtd
 VmwHWzPPGVnlA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D69C260972;
 Fri, 23 Jul 2021 15:50:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162705540587.23511.775470565736247308.git-patchwork-notify@kernel.org>
Date: Fri, 23 Jul 2021 15:50:05 +0000
References: <20210722155542.2897921-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210722155542.2897921-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, idosch@idosch.org,
 ioana.ciornei@nxp.com, kabel@blackhole.sk, f.fainelli@gmail.com,
 davem@davemloft.net, Steen.Hegelund@microchip.com,
 bridge@lists.linux-foundation.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, vivien.didelot@gmail.com, grygorii.strashko@ti.com,
 jiri@resnulli.us, vkochan@marvell.com, dqfext@gmail.com,
 claudiu.manoil@nxp.com, lars.povlsen@microchip.com, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, tchornyi@marvell.com, tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH v5 net-next 0/5] Allow TX forwarding for the
 software bridge data path to be offloaded to capable devices
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

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Thu, 22 Jul 2021 18:55:37 +0300 you wrote:
> On RX, switchdev drivers have the ability to mark packets for the
> software bridge as "already forwarded in hardware" via
> skb->offload_fwd_mark. This instructs the nbp_switchdev_allowed_egress()
> function to perform software forwarding of that packet only to the bridge
> ports that are not in the same hardware domain as the source packet.
> 
> This series expands the concept for TX, in the sense that we can trust
> the accelerator to:
> (a) look up its FDB (which is more or less in sync with the software
>     bridge FDB) for selecting the destination ports for a packet
> (b) replicate the frame in hardware in case it's a multicast/broadcast,
>     instead of the software bridge having to clone it and send the
>     clones to each net device one at a time. This reduces the bandwidth
>     needed between the CPU and the accelerator, as well as the CPU time
>     spent.
> 
> [...]

Here is the summary with links:
  - [v5,net-next,1/5] net: bridge: switchdev: allow the TX data plane forwarding to be offloaded
    https://git.kernel.org/netdev/net-next/c/472111920f1c
  - [v5,net-next,2/5] net: dsa: track the number of switches in a tree
    https://git.kernel.org/netdev/net-next/c/5b22d3669f2f
  - [v5,net-next,3/5] net: dsa: add support for bridge TX forwarding offload
    https://git.kernel.org/netdev/net-next/c/123abc06e74f
  - [v5,net-next,4/5] net: dsa: mv88e6xxx: map virtual bridges with forwarding offload in the PVT
    https://git.kernel.org/netdev/net-next/c/ce5df6894a57
  - [v5,net-next,5/5] net: dsa: tag_dsa: offload the bridge forwarding process
    https://git.kernel.org/netdev/net-next/c/d82f8ab0d874

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



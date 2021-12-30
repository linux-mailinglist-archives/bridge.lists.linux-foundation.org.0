Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B9948184C
	for <lists.bridge@lfdr.de>; Thu, 30 Dec 2021 03:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11ED4605DB;
	Thu, 30 Dec 2021 02:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rygKJZcvTDh7; Thu, 30 Dec 2021 02:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 89BF0606EB;
	Thu, 30 Dec 2021 02:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30F2DC0070;
	Thu, 30 Dec 2021 02:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DF7A3C0012
 for <bridge@lists.linux-foundation.org>; Thu, 30 Dec 2021 02:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B71BF606EB
 for <bridge@lists.linux-foundation.org>; Thu, 30 Dec 2021 02:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cDEQFs-8XEy for <bridge@lists.linux-foundation.org>;
 Thu, 30 Dec 2021 02:00:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CE1B605DB
 for <bridge@lists.linux-foundation.org>; Thu, 30 Dec 2021 02:00:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7667F615C9;
 Thu, 30 Dec 2021 02:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65C6CC36AE1;
 Thu, 30 Dec 2021 02:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640829611;
 bh=r+7At58GAqPK0C4GwxpSddBgEjWnuwMGZO/F9d/1SD4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=XTfq9CqmPTS6uh+bbmOzmBwyKyN8owYn+L3qqpc/1cVICoFUDVw1gGi9pdSfKvcBs
 MGpuWSXD7yoTUHHHlswk4grQG9/UN4VFo7cfuLj1IiQc7wSLxVDQridaEDqcnXtbyE
 yI3wV/HRLhvx++tLqpWT1R1j3vGCQPjPQTY6jGDTXrrVUV92u5e3rh89/1QrX//NKq
 X7jL6lJbm9pbEyHE1LkVjJEIUWCY8IaYnjDJKN4Y8tkexprW0TGcmMZMYKKmjS7UXl
 qpUVATpsaUd7xrysDI6lUTQTPxIZrYkIyyY69aHl9xZZNrTIcQXYMpdSofNuIggi0p
 vGyJ348cO/aPA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4CBC5C395E5; Thu, 30 Dec 2021 02:00:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164082961129.30206.7745851458626854957.git-patchwork-notify@kernel.org>
Date: Thu, 30 Dec 2021 02:00:11 +0000
References: <20211228153142.536969-1-nikolay@nvidia.com>
In-Reply-To: <20211228153142.536969-1-nikolay@nvidia.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net v2] net: bridge: mcast: fix
 br_multicast_ctx_vlan_global_disabled helper
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

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 28 Dec 2021 17:31:42 +0200 you wrote:
> We need to first check if the context is a vlan one, then we need to
> check the global bridge multicast vlan snooping flag, and finally the
> vlan's multicast flag, otherwise we will unnecessarily enable vlan mcast
> processing (e.g. querier timers).
> 
> Fixes: 7b54aaaf53cb ("net: bridge: multicast: add vlan state initialization and control")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> [...]

Here is the summary with links:
  - [net,v2] net: bridge: mcast: fix br_multicast_ctx_vlan_global_disabled helper
    https://git.kernel.org/netdev/net/c/168fed986b3a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



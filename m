Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D724B531A
	for <lists.bridge@lfdr.de>; Mon, 14 Feb 2022 15:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD73260B5F;
	Mon, 14 Feb 2022 14:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_cynZJIlquC; Mon, 14 Feb 2022 14:20:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5E07260D4E;
	Mon, 14 Feb 2022 14:20:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0CDE6C0073;
	Mon, 14 Feb 2022 14:20:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85935C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 14:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 741E640909
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 14:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKc4S__y3BeY for <bridge@lists.linux-foundation.org>;
 Mon, 14 Feb 2022 14:20:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0488408FE
 for <bridge@lists.linux-foundation.org>; Mon, 14 Feb 2022 14:20:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F3F17B8100B;
 Mon, 14 Feb 2022 14:20:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40EC340EE;
 Mon, 14 Feb 2022 14:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644848409;
 bh=oD33EPNYYdslmTQdMUulkS9RJvF2DRgt4Q++mIVda8k=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=efLHh3uPmWW8FVdSLoN4RexJW2MGJW0QSzuwkNXxcfox2iZZo/VDyYuVXSfSHYLQK
 Adaw0ebmJESfUo6HYfzGqJU6XW0p4k7nXkSG1ivyBF6gWsxIxh3k3VSWf99gN9SfvL
 k7bNd0JglhGe0eDX0Vfj1IkXy09/ZBEnOvBduwEDGDBgt1SKmdZapSfINIs18eHAyi
 rOzGyxwIZTI7iWuGk4BtI+mi7lgvz6iKZbVHq/iFdfHkDSGvZkQWJ019+gnnl0/tv6
 6aQTxXenY3gkOQfMGc60GugTbDqY3+WpZ04EC39NVJ9yeyvLSePAU1csEUW8tdO+3Y
 yksUCItgDLMgg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 88759E6D447; Mon, 14 Feb 2022 14:20:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164484840955.14634.9842780506195787827.git-patchwork-notify@kernel.org>
Date: Mon, 14 Feb 2022 14:20:09 +0000
References: <20220214112332.3330923-1-nikolay@nvidia.com>
In-Reply-To: <20220214112332.3330923-1-nikolay@nvidia.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] MAINTAINERS: bridge: update my email
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
by David S. Miller <davem@davemloft.net>:

On Mon, 14 Feb 2022 13:23:32 +0200 you wrote:
> I'm leaving NVIDIA and my email account will stop working in a week, update
> it with my personal account.
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
> Routing through -net to get merged in net-next so there are no
> discrepancies. It applies also to net-next if that is preferred.
> 
> [...]

Here is the summary with links:
  - [net] MAINTAINERS: bridge: update my email
    https://git.kernel.org/netdev/net/c/603c692d5741

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



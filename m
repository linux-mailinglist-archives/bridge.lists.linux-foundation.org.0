Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCF76E8BB8
	for <lists.bridge@lfdr.de>; Thu, 20 Apr 2023 09:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16B6F401D8;
	Thu, 20 Apr 2023 07:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B6F401D8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=O6PaxSi2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4QaCa7dUi2w7; Thu, 20 Apr 2023 07:50:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A14E340364;
	Thu, 20 Apr 2023 07:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A14E340364
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D4F2C008C;
	Thu, 20 Apr 2023 07:50:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78E02C002A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 07:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50F4042718
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 07:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50F4042718
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=O6PaxSi2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXkzlNu9E42i for <bridge@lists.linux-foundation.org>;
 Thu, 20 Apr 2023 07:50:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7784042722
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7784042722
 for <bridge@lists.linux-foundation.org>; Thu, 20 Apr 2023 07:50:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5905364568;
 Thu, 20 Apr 2023 07:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22D4C4339B;
 Thu, 20 Apr 2023 07:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681977018;
 bh=Zex/PHqNKlzuqAb5IKI38cfJjF9+sZcpSyiYt2IgbdE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=O6PaxSi2uEIQi8YDcQHElp+rn3lkbiN/7ej31a2vyTF/ZgCSzg98dqgK4f8btz+8z
 id81Q/PYJ8nRHy96/kU9sCi0WJqwtGhYISQG8dqFXwMjKNq0DJ7jR4HyrsRqnoaBL3
 ceDfwjPuEPUHQ5VLMThnRnWQrJWvqbkCRsw9Z47NdS7BaG+i9CQVIDjvdVBHeLJx9C
 swN/8z/x1GH3TnizoSHIMMPob+veFvEO48/TtO4mpgsdhhA4hkdYwyNW2RRynQhUiZ
 mC4pNNy9rbKxewJICmXaHQriI0Sp5WBbRg3BgNSz6nUX0+vNKIIWH/bxpokmNLNZMY
 ZDXT/eZfMqb0g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 962A7E50D63; Thu, 20 Apr 2023 07:50:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168197701861.16164.10630611699563272591.git-patchwork-notify@kernel.org>
Date: Thu, 20 Apr 2023 07:50:18 +0000
References: <20230418155902.898627-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230418155902.898627-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org, jiri@resnulli.us,
 netdev@vger.kernel.org, razor@blackwall.org, netdev@kapio-technology.com,
 roopa@nvidia.com, jesse.brandeburg@intel.com, edumazet@google.com,
 idosch@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: switchdev: don't notify
 FDB entries with "master dynamic"
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

This patch was applied to netdev/net.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Tue, 18 Apr 2023 18:59:02 +0300 you wrote:
> There is a structural problem in switchdev, where the flag bits in
> struct switchdev_notifier_fdb_info (added_by_user, is_local etc) only
> represent a simplified / denatured view of what's in struct
> net_bridge_fdb_entry :: flags (BR_FDB_ADDED_BY_USER, BR_FDB_LOCAL etc).
> Each time we want to pass more information about struct
> net_bridge_fdb_entry :: flags to struct switchdev_notifier_fdb_info
> (here, BR_FDB_STATIC), we find that FDB entries were already notified to
> switchdev with no regard to this flag, and thus, switchdev drivers had
> no indication whether the notified entries were static or not.
> 
> [...]

Here is the summary with links:
  - [v2,net] net: bridge: switchdev: don't notify FDB entries with "master dynamic"
    https://git.kernel.org/netdev/net/c/927cdea5d209

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 178424FCD5C
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 06:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DF678332A;
	Tue, 12 Apr 2022 04:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PBHxfRAH5uR8; Tue, 12 Apr 2022 04:00:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E8BB583323;
	Tue, 12 Apr 2022 04:00:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91CB2C0084;
	Tue, 12 Apr 2022 04:00:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F95AC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 04:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 664E660F23
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 04:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpcJedZx0-T8 for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 04:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5097360ED1
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 04:00:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D1405B819FF;
 Tue, 12 Apr 2022 04:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F8FFC385AA;
 Tue, 12 Apr 2022 04:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649736015;
 bh=cb2IK7ZCUYg0hCj+u3irAlPf2Mq2DTpvNrFIhw03YWc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=DQMSiuzyHCR16iZFZW04LRwCMFM6zgQ6caKxUaG8/R81nQpqtLhLkz6poEnh2R2tf
 Sg938W+z0ihaazpAHZF909HczsHCYXLPZ7w/LtVBG6FQD5Tm3KV4KetKJGmH0Sk0xV
 QycatjgzX0xUY8jw+sDejG0i9xlkLXhHiDh1BWPX4GPQ3+NC1uGQhysGUSKqIYFK9l
 LYzfTdcFT+7idcqIZ928xl7JZwo5D9Tu4/jtg5bCFnnjW1/u+XuczaU4PpkUdPsRef
 bQNWQi8lamVvonXFYYakI51/HpGcQypqAldiMPEN619pA5ycnAsnCKuklsfzML6OFZ
 YSnz9cjGnoTiQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 16879E8DD64; Tue, 12 Apr 2022 04:00:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164973601508.30868.14748692315248046303.git-patchwork-notify@kernel.org>
Date: Tue, 12 Apr 2022 04:00:15 +0000
References: <20220410134227.18810-1-arinc.unal@arinc9.com>
In-Reply-To: <20220410134227.18810-1-arinc.unal@arinc9.com>
To: =?utf-8?b?QXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPg==?=@ci.codeaurora.org
Cc: olteanv@gmail.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: offload BR_HAIRPIN_MODE,
 BR_ISOLATED, BR_MULTICAST_TO_UNICAST
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

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Sun, 10 Apr 2022 16:42:27 +0300 you wrote:
> Add BR_HAIRPIN_MODE, BR_ISOLATED and BR_MULTICAST_TO_UNICAST port flags to
> BR_PORT_FLAGS_HW_OFFLOAD so that switchdev drivers which have an offloaded
> data plane have a chance to reject these bridge port flags if they don't
> support them yet.
> 
> It makes the code path go through the
> SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
> -EINVAL for everything they don't recognize.
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: offload BR_HAIRPIN_MODE, BR_ISOLATED, BR_MULTICAST_TO_UNICAST
    https://git.kernel.org/netdev/net-next/c/c3976a3f8445

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



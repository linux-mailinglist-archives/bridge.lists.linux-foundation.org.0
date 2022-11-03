Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15788617556
	for <lists.bridge@lfdr.de>; Thu,  3 Nov 2022 05:00:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F7B607D1;
	Thu,  3 Nov 2022 04:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49F7B607D1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=GSP4jZIH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L8Qa-jwx6YBb; Thu,  3 Nov 2022 04:00:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2C5346076C;
	Thu,  3 Nov 2022 04:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C5346076C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BFF17C007B;
	Thu,  3 Nov 2022 04:00:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E2223C002D
 for <bridge@lists.linux-foundation.org>; Thu,  3 Nov 2022 04:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9A988176C
 for <bridge@lists.linux-foundation.org>; Thu,  3 Nov 2022 04:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9A988176C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GSP4jZIH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KaSmT8TfqBAq for <bridge@lists.linux-foundation.org>;
 Thu,  3 Nov 2022 04:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD39281490
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD39281490
 for <bridge@lists.linux-foundation.org>; Thu,  3 Nov 2022 04:00:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D0176B82667;
 Thu,  3 Nov 2022 04:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72466C433D6;
 Thu,  3 Nov 2022 04:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1667448015;
 bh=37hrWeSpl3u5uDYuGFIDYqDHDgUtcWr43DcEZGl1e9Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=GSP4jZIHpAJl/Ho2uafCJzRibRqa1GgIlTubvMrkjKZl/PZ7Ejm9O1PJ6Na0myjE2
 LBcIXgZ/tDun9ArloP43JYhAomKBflTICZTCaGZP+5VhPdNsS71Ir6ZKjOGaPAMlcw
 cObtMFVMSdH3TXTvdoD6S1Ohu7PR5Fg7mgSis0BgjM7b3pOHfj6etIMpdE80goryki
 r93GJo8l1AvoWHwBj/QJZ5p0u2MPqP1t+8tUXqyPeKkgGOVgjZuJgtyNGW5qQieuck
 cWgOUhFEWmVV2g2gx3ONtN5xbFLb1qC4d4N+UeUEXK6AUbnAJe8x6H7mBm5rLfjQhm
 oAviMCI40zvRw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 55DE8E270D3; Thu,  3 Nov 2022 04:00:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166744801534.16768.7709737010968160926.git-patchwork-notify@kernel.org>
Date: Thu, 03 Nov 2022 04:00:15 +0000
References: <20221101185753.2120691-1-idosch@nvidia.com>
In-Reply-To: <20221101185753.2120691-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] bridge: Fix flushing of dynamic FDB entries
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

On Tue,  1 Nov 2022 20:57:53 +0200 you wrote:
> The following commands should result in all the dynamic FDB entries
> being flushed, but instead all the non-local (non-permanent) entries are
> flushed:
> 
>  # bridge fdb add 00:aa:bb:cc:dd:ee dev dummy1 master static
>  # bridge fdb add 00:11:22:33:44:55 dev dummy1 master dynamic
>  # ip link set dev br0 type bridge fdb_flush
>  # bridge fdb show brport dummy1
>  00:00:00:00:00:01 master br0 permanent
>  33:33:00:00:00:01 self permanent
>  01:00:5e:00:00:01 self permanent
> 
> [...]

Here is the summary with links:
  - [net] bridge: Fix flushing of dynamic FDB entries
    https://git.kernel.org/netdev/net/c/628ac04a75ed

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



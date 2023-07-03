Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E72C874572F
	for <lists.bridge@lfdr.de>; Mon,  3 Jul 2023 10:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A44C81B7B;
	Mon,  3 Jul 2023 08:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A44C81B7B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=JOvpxdIG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQEFWQ9KteaW; Mon,  3 Jul 2023 08:20:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BD56881AC1;
	Mon,  3 Jul 2023 08:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD56881AC1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A586C008C;
	Mon,  3 Jul 2023 08:20:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89D63C0032
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 08:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48AEA409FE
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 08:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48AEA409FE
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JOvpxdIG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bnu4hFe7Oupx for <bridge@lists.linux-foundation.org>;
 Mon,  3 Jul 2023 08:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 174DE40935
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 174DE40935
 for <bridge@lists.linux-foundation.org>; Mon,  3 Jul 2023 08:20:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6FC2E60E9E;
 Mon,  3 Jul 2023 08:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E17C43215;
 Mon,  3 Jul 2023 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688372422;
 bh=GAdkZrdoKWD7YyzDP8ANymefO04wUe7jKXHOYI0JvAo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=JOvpxdIGeaV0pdDRSr0O5u0avi/sD+ggbLk1bJO5icXqWRlhcCGWiUmErpMum5SN2
 UmenbWL94IdusSUdkoxIcOmb8uFVJVDSvRrFWDFyvfuKGj4+UkEdb4O3cBOZ67sFOs
 X4k0VsnwUdlE7L4UN+C8F0yolhb5FkqbVPq8VmNtHUDZ/4LiOlYT0BbrXwvjut4iM/
 4b8kECPQ41MhyrEat0zPWUnaBjOG4pdlfO5HN36CjEZqu2SFZVWKbS0mZOLsJjF1u+
 N3qbafx/sjDRzdgsXrMPXwWN+uhFVVLMVKjGBV08nyDdUK55oh2E/ECNlxWn8+0PaN
 V2s7G2bqmU4OA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 8D0ACC691F1; Mon,  3 Jul 2023 08:20:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168837242257.9798.3078714826638477204.git-patchwork-notify@kernel.org>
Date: Mon, 03 Jul 2023 08:20:22 +0000
References: <20230630164118.1526679-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230630164118.1526679-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: vyasevic@redhat.com, mst@redhat.com, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: keep ports without
 IFF_UNICAST_FLT in BR_PROMISC mode
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
by David S. Miller <davem@davemloft.net>:

On Fri, 30 Jun 2023 19:41:18 +0300 you wrote:
> According to the synchronization rules for .ndo_get_stats() as seen in
> Documentation/networking/netdevices.rst, acquiring a plain spin_lock()
> should not be illegal, but the bridge driver implementation makes it so.
> 
> After running these commands, I am being faced with the following
> lockdep splat:
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: keep ports without IFF_UNICAST_FLT in BR_PROMISC mode
    https://git.kernel.org/netdev/net/c/6ca3c005d060

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



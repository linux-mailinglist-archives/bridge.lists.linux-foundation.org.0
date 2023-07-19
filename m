Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10CF7592A0
	for <lists.bridge@lfdr.de>; Wed, 19 Jul 2023 12:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD6DB400BF;
	Wed, 19 Jul 2023 10:19:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD6DB400BF
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=odSk7cwk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txAU3i0KllNR; Wed, 19 Jul 2023 10:19:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1E8524151C;
	Wed, 19 Jul 2023 10:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E8524151C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B3233C008D;
	Wed, 19 Jul 2023 10:19:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01D8BC0032
 for <bridge@lists.linux-foundation.org>; Wed, 19 Jul 2023 10:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C457B81FC0
 for <bridge@lists.linux-foundation.org>; Wed, 19 Jul 2023 10:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C457B81FC0
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=odSk7cwk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PdpA1g50rZGA for <bridge@lists.linux-foundation.org>;
 Wed, 19 Jul 2023 10:19:55 +0000 (UTC)
X-Greylist: delayed 570 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 10:19:54 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B425F81FBF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B425F81FBF
 for <bridge@lists.linux-foundation.org>; Wed, 19 Jul 2023 10:19:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A551E6138B;
 Wed, 19 Jul 2023 10:10:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D67C433C7;
 Wed, 19 Jul 2023 10:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1689761421;
 bh=Szvpo3jPm6xFX2CjBL67LKjIExmiX39UOjbELPu04do=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=odSk7cwk85Y6E1GTrYTfQD1t32H3n/cthps7bvDWi6t9BU8kCbHvF248DGEJp5OJa
 2e+VMlRR+dzd8d/bLuuHVgh7uKBnPVJ/8hdWGqKzoDbl+YyfNgf5xEdaokISiASd3H
 B+9MYyYcx7znGy0E+pSf+7xpUDks6W4jIBrDehtwH9Qo5qKxMHP+UMo1BqeIJYjeuE
 VLn0sbvBWaVHoT0wc3wKqTU0BPV91hQLqPj9EZTHI3ukWznUWI6q+8s6mwxaUs7l+S
 5bu5+IkfiEwLHUrIFRcG1EWiXFeecPx7gD2y5qz9a+E2wcoSyzf/nKxtqM1xoxi8To
 aZcATMuwohoGg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 AD025C6445A; Wed, 19 Jul 2023 10:10:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168976142170.5988.10461851053537614919.git-patchwork-notify@kernel.org>
Date: Wed, 19 Jul 2023 10:10:21 +0000
References: <20230717081229.81917-1-idosch@nvidia.com>
In-Reply-To: <20230717081229.81917-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: petrm@nvidia.com, dsahern@gmail.com, taspelund@nvidia.com,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/4] Add backup nexthop ID support
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

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Mon, 17 Jul 2023 11:12:25 +0300 you wrote:
> tl;dr
> =====
> 
> This patchset adds a new bridge port attribute specifying the nexthop
> object ID to attach to a redirected skb as tunnel metadata. The ID is
> used by the VXLAN driver to choose the target VTEP for the skb. This is
> useful for EVPN multi-homing, where we want to redirect local
> (intra-rack) traffic upon carrier loss through one of the other VTEPs
> (ES peers) connected to the target host.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/4] ip_tunnels: Add nexthop ID field to ip_tunnel_key
    https://git.kernel.org/netdev/net-next/c/8bb5e82589f0
  - [net-next,v2,2/4] vxlan: Add support for nexthop ID metadata
    https://git.kernel.org/netdev/net-next/c/d977e1c8e3a1
  - [net-next,v2,3/4] bridge: Add backup nexthop ID support
    https://git.kernel.org/netdev/net-next/c/29cfb2aaa442
  - [net-next,v2,4/4] selftests: net: Add bridge backup port and backup nexthop ID test
    https://git.kernel.org/netdev/net-next/c/b408453053fb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



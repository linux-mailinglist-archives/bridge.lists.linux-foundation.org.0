Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F873DF6FF
	for <lists.bridge@lfdr.de>; Tue,  3 Aug 2021 23:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D78560726;
	Tue,  3 Aug 2021 21:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJB-mhMsdnGF; Tue,  3 Aug 2021 21:40:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 91FC960673;
	Tue,  3 Aug 2021 21:40:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5A2A6C001F;
	Tue,  3 Aug 2021 21:40:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9671C000E
 for <bridge@lists.linux-foundation.org>; Tue,  3 Aug 2021 21:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B600540384
 for <bridge@lists.linux-foundation.org>; Tue,  3 Aug 2021 21:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DAediKfDS90 for <bridge@lists.linux-foundation.org>;
 Tue,  3 Aug 2021 21:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0505740248
 for <bridge@lists.linux-foundation.org>; Tue,  3 Aug 2021 21:40:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 7B25E61100;
 Tue,  3 Aug 2021 21:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628026806;
 bh=HSjp7yTfMWSo9/m1hJfmmC8BGuirWnw6EQI7FTh6pEs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=mOB5Q5w+z/9ybQugkcsUY8cOW0Z1G/NW4j2vNzu3XQYLBtOHk985RWvmuruHyg97D
 wsMN/qvlC6jhTngfO9ZTtfP182PVQyAIIHcoD0K6Vj10ryexoVT1BvZa3Ur8FeZ2FL
 nu3QqFvSnR3C+G+QtUHVZUCJoVxWpIK+yZUU+/SgMZhkn9sYS1j4DWHb3/H27cYUSZ
 FeLDOezR0epEQDEEmz0pB3cdJ1oiDxAJsahd0iXJbpYVKc3jlwivTwh08qWNG94xHb
 JOAv5smT3ohBrL1P25oq5oyDfuUZkTjqyfYL8vXT7W968kOXHbeJNFASAf955ObFVB
 zDW6zef5SFRvg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 73A5460A45;
 Tue,  3 Aug 2021 21:40:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162802680646.18812.7948023061004183994.git-patchwork-notify@kernel.org>
Date: Tue, 03 Aug 2021 21:40:06 +0000
References: <20210802113633.189831-1-vladimir.oltean@nxp.com>
In-Reply-To: <20210802113633.189831-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 idosch@idosch.org, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: fix incorrect
 use of FDB flags when picking the dst device
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

This patch was applied to netdev/net-next.git (refs/heads/master):

On Mon,  2 Aug 2021 14:36:33 +0300 you wrote:
> Nikolay points out that it is incorrect to assume that it is impossible
> to have an fdb entry with fdb->dst == NULL and the BR_FDB_LOCAL bit in
> fdb->flags not set. This is because there are reader-side places that
> test_bit(BR_FDB_LOCAL, &fdb->flags) without the br->hash_lock, and if
> the updating of the FDB entry happens on another CPU, there are no
> memory barriers at writer or reader side which would ensure that the
> reader sees the updates to both fdb->flags and fdb->dst in the same
> order, i.e. the reader will not see an inconsistent FDB entry.
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: switchdev: fix incorrect use of FDB flags when picking the dst device
    https://git.kernel.org/netdev/net-next/c/2e19bb35ce15

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



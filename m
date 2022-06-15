Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F754C3AC
	for <lists.bridge@lfdr.de>; Wed, 15 Jun 2022 10:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4798D606E6;
	Wed, 15 Jun 2022 08:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3FRLHoXSY6p; Wed, 15 Jun 2022 08:40:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BD5F9605AF;
	Wed, 15 Jun 2022 08:40:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6830BC0081;
	Wed, 15 Jun 2022 08:40:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BEFE1C002D
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F4FF4018F
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fval2sU5uJLt for <bridge@lists.linux-foundation.org>;
 Wed, 15 Jun 2022 08:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D04824015A
 for <bridge@lists.linux-foundation.org>; Wed, 15 Jun 2022 08:40:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 20514619B0;
 Wed, 15 Jun 2022 08:40:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A146C385A5;
 Wed, 15 Jun 2022 08:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655282414;
 bh=1j1QlHsweRQpSIOaeIQBsKEDbgMrSyrzc3tKZkj01H8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=roFPwdylpj8k5wOUNUIw6kRjxY4Ja4UmUGFwuQ3K8gRfapYOPYH7XnUKKMauOEml5
 oBq9tnoD7wpwTZT0XnLeK3r42+XqscrPH/ECZDimRC3ovozzAbvQ8Co/NMjLYHzLID
 epDDZvPmrOU59XYPTQ5oRo8fqruYw7hDjcbhmMp6L3uMrZ4KAXrV+1W4Qr9kyTgqzi
 OLLT8tgfzXSbKhAMtmwu+dNl1XAa/DAuxMp8keMVPvxxLHGMb5629mwTeKXP4CyvM8
 7Mn4/IjEo4teKNRKoN9+bpxujQKswNg4m8Oh+aITrnhOwJ6g1bDZv2Xd/Piw2z1cms
 jpXejrhaA/stA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 27FF9E73856; Wed, 15 Jun 2022 08:40:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165528241416.21469.7301652675572375354.git-patchwork-notify@kernel.org>
Date: Wed, 15 Jun 2022 08:40:14 +0000
References: <20220614063223.zvtrdrh7pbkv3b4v@wse-c0155>
In-Reply-To: <20220614063223.zvtrdrh7pbkv3b4v@wse-c0155>
To: Casper Andersson <casper.casan@gmail.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, roopa@nvidia.com,
 troglobit@gmail.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: allow add/remove
 permanent mdb entries on disabled ports
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
by David S. Miller <davem@davemloft.net>:

On Tue, 14 Jun 2022 08:32:23 +0200 you wrote:
> Adding mdb entries on disabled ports allows you to do setup before
> accepting any traffic, avoiding any time where the port is not in the
> multicast group.
> 
> Signed-off-by: Casper Andersson <casper.casan@gmail.com>
> ---
>  net/bridge/br_mdb.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)

Here is the summary with links:
  - [net-next] net: bridge: allow add/remove permanent mdb entries on disabled ports
    https://git.kernel.org/netdev/net-next/c/2aa4abed3792

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



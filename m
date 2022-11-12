Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F9626744
	for <lists.bridge@lfdr.de>; Sat, 12 Nov 2022 07:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3474400C8;
	Sat, 12 Nov 2022 06:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3474400C8
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=j/Rl8ccG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZaIZxX4SaOV; Sat, 12 Nov 2022 06:00:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2003340145;
	Sat, 12 Nov 2022 06:00:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2003340145
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC62DC0077;
	Sat, 12 Nov 2022 06:00:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D027C002D
 for <bridge@lists.linux-foundation.org>; Sat, 12 Nov 2022 06:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E8E2408BF
 for <bridge@lists.linux-foundation.org>; Sat, 12 Nov 2022 06:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8E2408BF
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j/Rl8ccG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0hkEhkBKYS6j for <bridge@lists.linux-foundation.org>;
 Sat, 12 Nov 2022 06:00:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B059D4089F
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B059D4089F
 for <bridge@lists.linux-foundation.org>; Sat, 12 Nov 2022 06:00:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 415D4B828F1;
 Sat, 12 Nov 2022 06:00:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44676C4347C;
 Sat, 12 Nov 2022 06:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668232818;
 bh=GEKv9FokRcaiEDaEwMPRK38n9n8GnCFECbCRomwVT8s=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=j/Rl8ccG+tqAwXBswhdjyai6PncKdGnIWY0fb7KbKZhUWKbKWTyg3Nf9NGnHbAv46
 sNilgF6oWwyWO5Lx7KzsU55bEAEImKZTA3jx8ig26k+Lo4iPjtDcfvJe1BFrWMfKce
 0jWFgYe98hztOM8wEym5Ae0oWGdEode+XPY9ykTLNlVB1dJSyxBAlLlV8hJBdjj2dF
 AQtdxfN3OaCwPi1sQrOQlKep3f+9ooAOrd60iZyOAuJ7GeN7GNFd/6rDDJFw3vUtN0
 kT2s+ExNPdPmjDPM2dsWYrAuuJ9RWFLxXWZt1WIJuVtB56AF/VuV30g3YOTsIg+Bhp
 C1MHd1YQLCnJw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 21F00E4D022; Sat, 12 Nov 2022 06:00:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166823281813.10181.5447638832386414958.git-patchwork-notify@kernel.org>
Date: Sat, 12 Nov 2022 06:00:18 +0000
References: <20221110085422.521059-1-idosch@nvidia.com>
In-Reply-To: <20221110085422.521059-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: petrm@nvidia.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: Add missing parentheses
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

On Thu, 10 Nov 2022 10:54:22 +0200 you wrote:
> No changes in generated code.
> 
> Reported-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_input.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] bridge: Add missing parentheses
    https://git.kernel.org/netdev/net-next/c/3e35f26d3397

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



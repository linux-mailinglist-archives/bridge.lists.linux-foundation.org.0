Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090D94E57D2
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 18:50:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A0C3400C4;
	Wed, 23 Mar 2022 17:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bY5klWhqjgdz; Wed, 23 Mar 2022 17:50:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CAD2340164;
	Wed, 23 Mar 2022 17:50:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E1E3C0073;
	Wed, 23 Mar 2022 17:50:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58E6EC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 17:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4075360A8B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 17:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eopL_FHvYcgE for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 17:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B647608D8
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 17:50:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B669960FF6;
 Wed, 23 Mar 2022 17:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29768C340F5;
 Wed, 23 Mar 2022 17:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648057812;
 bh=rZ70td1sUS/GDoOuxgtxbnB3REa3lkh0/GuoF5TNc80=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=A8A7Rf/9WDlEbpiwDY0XgD9WpXagdbvWELls5xCw9GlhtOjaks+wbUu1rjvILhaGX
 BWReAfs4/hKOsPgAW69Z1jx8cWdjwlBGlAt7OYTdq+NYCqttMEeLeG7jLMEf6MTifn
 rv3FoXwFGuICDwujwm7lnr+lQphjAsaBnsbJ+ZhUXZaVOE6Fom41RpNYTuINtRpHRT
 Omm1PO68b5Cfm/J4cy1p8La7UlDF8c1slY3KSmFyl+0tl7/XzU4ISkh3FofS7BCyB5
 3LjtnmQAbhCanE027Uq8/5XAcaEV7Qe5kSPC1fekz9JkPrrFiCWGKFRm9EW5IcdLZW
 vs6eHqROz6bIQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 0D77BF03842; Wed, 23 Mar 2022 17:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164805781205.23946.3779643017453826471.git-patchwork-notify@kernel.org>
Date: Wed, 23 Mar 2022 17:50:12 +0000
References: <20220322133001.16181-1-tobias@waldekranz.com>
In-Reply-To: <20220322133001.16181-1-tobias@waldekranz.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net: bridge: mst: Restrict info size
 queries to bridge ports
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

On Tue, 22 Mar 2022 14:30:01 +0100 you wrote:
> Ensure that no bridge masters are ever considered for MST info
> dumping. MST states are only supported on bridge ports, not bridge
> masters - which br_mst_info_size relies on.
> 
> Fixes: 122c29486e1f ("net: bridge: mst: Support setting and reporting MST port states")
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: mst: Restrict info size queries to bridge ports
    https://git.kernel.org/netdev/net-next/c/a911ad18a56a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



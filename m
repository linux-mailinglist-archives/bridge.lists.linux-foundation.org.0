Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2245F7B4
	for <lists.bridge@lfdr.de>; Sat, 27 Nov 2021 01:56:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76220828E3;
	Sat, 27 Nov 2021 00:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5OesFIVhLlg; Sat, 27 Nov 2021 00:56:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 057158290B;
	Sat, 27 Nov 2021 00:56:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBD93C003C;
	Sat, 27 Nov 2021 00:56:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 22ED6C000A
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 00:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1755E401D8
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 00:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7n9Q7YhsLJ1i for <bridge@lists.linux-foundation.org>;
 Sat, 27 Nov 2021 00:56:32 +0000 (UTC)
X-Greylist: delayed 00:06:18 by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CC0E4011A
 for <bridge@lists.linux-foundation.org>; Sat, 27 Nov 2021 00:56:32 +0000 (UTC)
Received: from mail.kernel.org (unknown [198.145.29.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 515A2623D7;
 Sat, 27 Nov 2021 00:50:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 196CE601FC;
 Sat, 27 Nov 2021 00:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637974211;
 bh=v8BOn7EPv3xrqT4+YqYoa4aVCb5AluDB5tNqp1286cE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=X0qeK9kERWhhQzgiD/PBi3Vp/QahRo2qmWaX2Kzkw1q0p6DKR52RLCkK1TuZgEQ91
 iA0YYKA2b6l/bDDwj8KklPw6gNWcLi37rvXrRfpLyZZNZQEaYcVmeVWg/RQgokCRkx
 5xXBNoCpnOoljA2np78oqp+AEZZVfJ6sgk15SKWhym/yDCVCh1tIat0DKBYFmGiLDj
 xIKLiuioEtv1WGfioRwASgjbRoBLtMR3l4mSF0O+1tgcLs9VWCRY6Wn0kZb658WXXP
 oqgsMFaMCKrU7pRgp8IwzI70Xy8YQlyZ2iG40sGU9q5ZJvP957rowAMce8VuOn+ZsK
 7TJdZdZ9Itg1g==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 0B58D60BC9;
 Sat, 27 Nov 2021 00:50:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163797421104.20298.2423972399369533865.git-patchwork-notify@kernel.org>
Date: Sat, 27 Nov 2021 00:50:11 +0000
References: <4e35f415226765e79c2a11d2c96fbf3061c486e2.1637782773.git.lucien.xin@gmail.com>
In-Reply-To: <4e35f415226765e79c2a11d2c96fbf3061c486e2.1637782773.git.lucien.xin@gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 christophe.jaillet@wanadoo.fr, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: use __set_bit in
	__br_vlan_set_default_pvid
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

On Wed, 24 Nov 2021 14:39:33 -0500 you wrote:
> The same optimization as the one in commit cc0be1ad686f ("net:
> bridge: Slightly optimize 'find_portno()'") is needed for the
> 'changed' bitmap in __br_vlan_set_default_pvid().
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>  net/bridge/br_vlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Here is the summary with links:
  - [net-next] bridge: use __set_bit in __br_vlan_set_default_pvid
    https://git.kernel.org/netdev/net-next/c/442b03c32ca1

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



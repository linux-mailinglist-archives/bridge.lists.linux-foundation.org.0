Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC7F3E8438
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 22:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA87140012;
	Tue, 10 Aug 2021 20:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IXG3SCG3cOlW; Tue, 10 Aug 2021 20:20:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2C08A40332;
	Tue, 10 Aug 2021 20:20:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7A4CC0022;
	Tue, 10 Aug 2021 20:20:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 351BBC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 101BD4022E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPh0zsZQWifD for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 20:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6578140144
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 20:20:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id DC17960F94;
 Tue, 10 Aug 2021 20:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628626805;
 bh=VdV1s6LdLnj+V2FiURRO+XOlJpDjgTL7v60lLLPRBtE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=oTQiehzL1H2R98IZi14TSEzpO9GkS9DtbNfteH1q0DejubQavTYqyC1oBwn7aYzbD
 BC8uzx6/M+ujn6QDUCiNimTM+kBUzFWa1OS+lnkXnjQChMxHjSf2OBiUe2XVJJdXj7
 S3KT60K0JN4hHKE1+EjtyRkOGLHyKSx06siF9VriaGtDHiYE7p+pH9ztFwuNzINOuv
 48RCfjxp60N6ezYpmgueRf74VvhUC7ffBGd/VezzLcZ70F0MbC/PFmUO8vxGY14Sn0
 7POMKak5eGX033uI5wT0sBA1Ai2Ysk7+Gzx63ya5msXVPNPou43q0FRQqSPh645xGJ
 yFBhsn1vsxMGw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id CEBB560A3B;
 Tue, 10 Aug 2021 20:20:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162862680584.11744.11028894548739295364.git-patchwork-notify@kernel.org>
Date: Tue, 10 Aug 2021 20:20:05 +0000
References: <20210810110010.43859-1-razor@blackwall.org>
In-Reply-To: <20210810110010.43859-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: vladimir.oltean@nxp.com, idosch@nvidia.com,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, nikolay@nvidia.com,
 netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH net v2] net: bridge: fix flags interpretation
 for extern learn fdb entries
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

This patch was applied to netdev/net.git (refs/heads/master):

On Tue, 10 Aug 2021 14:00:10 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Ignore fdb flags when adding port extern learn entries and always set
> BR_FDB_LOCAL flag when adding bridge extern learn entries. This is
> closest to the behaviour we had before and avoids breaking any use cases
> which were allowed.
> 
> [...]

Here is the summary with links:
  - [net,v2] net: bridge: fix flags interpretation for extern learn fdb entries
    https://git.kernel.org/netdev/net/c/45a687879b31

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA7F7CFE23
	for <lists.bridge@lfdr.de>; Thu, 19 Oct 2023 17:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E67784302E;
	Thu, 19 Oct 2023 15:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E67784302E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ohVx8xPM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1o_nnv37W8id; Thu, 19 Oct 2023 15:40:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7F25240A46;
	Thu, 19 Oct 2023 15:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F25240A46
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 334FAC0DD3;
	Thu, 19 Oct 2023 15:40:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 731A8C0032
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3966C42094
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3966C42094
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ohVx8xPM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myKXiBbW_yBv for <bridge@lists.linux-foundation.org>;
 Thu, 19 Oct 2023 15:40:26 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EAAC41D70
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EAAC41D70
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 1BA75B82A1F;
 Thu, 19 Oct 2023 15:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7682FC433C8;
 Thu, 19 Oct 2023 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697730022;
 bh=RXleMGUABnXctBgs2bSXk7hwLIx2O6aidlEwNJw1R+8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ohVx8xPMSLc2bJXDB8tRTPnIZXsFXaen/7bBgD4Cb/I9idU7Whp0Tdl7dCXsuukt5
 bPXq9P7cRyGyPP+OIp57xhvozjhA4nBv0fHTbapsx82MvEY/cQoTs/KvZYH5u/YYS5
 pIaidIolo2KuoNgQuM8hl34nDAi3Ii11qlpm/FBbQyQZTClZCCgf1eqL4LKUCH9M5e
 GHhT336wd9IutVscEpOe8zNMyX3GP1AkK2q+equEUw0PSZvaa8ykEPVpw4XXp4KYeZ
 VK+MPz3TxNVVxL8kcCW7tH5sn9m2rtRn54zQfslJaNYEEIFPBD03dikMglZuOA71WI
 eb2dqfBYiTmpQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 58FEFC595CE; Thu, 19 Oct 2023 15:40:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169773002236.10915.7572793107235329470.git-patchwork-notify@kernel.org>
Date: Thu, 19 Oct 2023 15:40:22 +0000
References: <20231018-fdb_limit-v5-1-7ca3b3eb7c1f@avm.de>
In-Reply-To: <20231018-fdb_limit-v5-1-7ca3b3eb7c1f@avm.de>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Cc: petrm@nvidia.com, dsahern@gmail.com, idosch@nvidia.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH iproute2-next v5] iplink: bridge: Add support
 for bridge FDB learning limits
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

This patch was applied to iproute2/iproute2-next.git (main)
by David Ahern <dsahern@kernel.org>:

On Wed, 18 Oct 2023 09:04:43 +0200 you wrote:
> Support setting the FDB limit through ip link. The arguments is:
>  - fdb_max_learned: A 32-bit unsigned integer specifying the maximum
>                     number of learned FDB entries, with 0 disabling
>                     the limit.
> 
> Also support reading back the current number of learned FDB entries in
> the bridge by this count. The returned value's name is:
>  - fdb_n_learned: A 32-bit unsigned integer specifying the current number
>                   of learned FDB entries.
> 
> [...]

Here is the summary with links:
  - [iproute2-next,v5] iplink: bridge: Add support for bridge FDB learning limits
    https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=48cb4320487a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



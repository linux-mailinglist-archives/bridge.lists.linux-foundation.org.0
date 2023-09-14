Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 786547A0945
	for <lists.bridge@lfdr.de>; Thu, 14 Sep 2023 17:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8907C60DA5;
	Thu, 14 Sep 2023 15:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8907C60DA5
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=V7ZpHgLH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAk69AJrOXCb; Thu, 14 Sep 2023 15:30:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E6EBB60FE6;
	Thu, 14 Sep 2023 15:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6EBB60FE6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B82BEC0032;
	Thu, 14 Sep 2023 15:30:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A104DC0032
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8362960FAD
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:30:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8362960FAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJcxqBFR8gvw for <bridge@lists.linux-foundation.org>;
 Thu, 14 Sep 2023 15:30:32 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64F2560DA5
 for <bridge@lists.linux-foundation.org>; Thu, 14 Sep 2023 15:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F2560DA5
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 86EB0CE27B0;
 Thu, 14 Sep 2023 15:30:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA83C433C9;
 Thu, 14 Sep 2023 15:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1694705426;
 bh=Q3w4ykEz2lEoSofN+SUjn3Lth1qicuxOdvzXmwjElDc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=V7ZpHgLH0+pP0LQ20nb4Po9U5jDnLjpSoKh6Lz9Q+aE5oVg6Vu1mIJfsaS9u6S4SD
 wy0WFNXZQ23HUUZ+VXyPosavhhRxlzBUs5kVtLFBbqScHWC93u4puDUQ0uSVfIdtxG
 4vp/1WhIcStzgokacvADnZxW6NA35CC74Ik7aSFB4Y8ZO67fMOnypWjMv86T2YhQ/J
 gBfJy8P63xcosxGKx08L3h5GTaBZGiJRWV7oH9Qi0D1r4XMsWgw/bJfA2EkYEkNNOB
 KX/vRGhYYA0zjMtYrn6fbYbE7a6OYbxFOVJu1hfzAetJAwVHvJfTLql0hHaNVCGLch
 a+1G1xEFHiTgg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 B0A25E1C28E; Thu, 14 Sep 2023 15:30:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169470542671.22890.15589088948266236796.git-patchwork-notify@kernel.org>
Date: Thu, 14 Sep 2023 15:30:26 +0000
References: <cover.1694625043.git.aclaudi@redhat.com>
In-Reply-To: <cover.1694625043.git.aclaudi@redhat.com>
To: Andrea Claudi <aclaudi@redhat.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, dsahern@gmail.com
Subject: Re: [Bridge] [PATCH iproute2-next 0/2] configure: add support for
	color
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

This series was applied to iproute2/iproute2-next.git (main)
by David Ahern <dsahern@kernel.org>:

On Wed, 13 Sep 2023 19:58:24 +0200 you wrote:
> This series add support for the color parameter in iproute2 configure
> script. The idea is to make it possible for iproute2 users and packagers
> to set a default value for the color option different from the current
> one, COLOR_OPT_NEVER, while maintaining the current default behaviour.
> 
> Patch 1 add the color option to the configure script. Users can set
> three different values, never, auto and always, with the same meanings
> they have for the -c / -color ip option. Default value is 'never', which
> results in ip, tc and bridge to maintain their current output behaviour
> (i.e. colorless output).
> 
> [...]

Here is the summary with links:
  - [iproute2-next,1/2] configure: add the --color option
    https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=5e704f4b5ba2
  - [iproute2-next,2/2] treewide: use configured value as the default color output
    https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=b5d0273fdbab

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



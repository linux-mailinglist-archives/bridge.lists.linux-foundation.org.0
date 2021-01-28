Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA83306B3E
	for <lists.bridge@lfdr.de>; Thu, 28 Jan 2021 03:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 941DF860CF;
	Thu, 28 Jan 2021 02:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sn7BlHspNPnc; Thu, 28 Jan 2021 02:50:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DA92860F6;
	Thu, 28 Jan 2021 02:50:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14C24C013A;
	Thu, 28 Jan 2021 02:50:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04A96C013A
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 02:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2EF986DD0
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 02:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2sZnrXTGYwA for <bridge@lists.linux-foundation.org>;
 Thu, 28 Jan 2021 02:50:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 159E886BBE
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 02:50:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id E609064DD6;
 Thu, 28 Jan 2021 02:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611802210;
 bh=vii+OCZ5Nl2HePoyD10UsBIj2kCrR8hpfV4ficfZ7w8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=SvPVAwdccF0zoNRlq0q/7mQMXiBM89Xjp71jYn/2Lx+gL1nfZhTeY0v9L5VXqOK/C
 rZIOh4CfJgYiymWwSRMJ5YajsHgGp9R1iJngG4Egn4/wXFV8NWA4emWilxZzxdFiIm
 58kumg8BoJJqjuIKkMN4GhhJgLKSHVB2IctI6ulb3PcLHSE1oqz6qk2udtH8BGVl82
 iyonObTU70Qq0rVqQhg9eZsu+2zTnLiK0MpIQXsQe4jBIDGJVF3sCTq+xjjhNbTbTQ
 gSlduQ/ZwnB6oDqhpCKUnr/vMAuqPiT8XThASXWWEWEishjrZ/zhkalVH+yq5AKFUW
 lZfBq/ZS1yH5Q==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D584961E3D;
 Thu, 28 Jan 2021 02:50:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161180221086.27895.14934580567433280199.git-patchwork-notify@kernel.org>
Date: Thu, 28 Jan 2021 02:50:10 +0000
References: <20210126093533.441338-1-razor@blackwall.org>
In-Reply-To: <20210126093533.441338-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/2] net: bridge: multicast:
 per-port EHT hosts limit
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Tue, 26 Jan 2021 11:35:31 +0200 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This set adds a simple configurable per-port EHT tracked hosts limit.
> Patch 01 adds a default limit of 512 tracked hosts per-port, since the EHT
> changes are still only in net-next that shouldn't be a problem. Then
> patch 02 adds the ability to configure and retrieve the hosts limit
> and to retrieve the current number of tracked hosts per port.
> Let's be on the safe side and limit the number of tracked hosts by
> default while allowing the user to increase that limit if needed.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/2] net: bridge: multicast: add per-port EHT hosts limit
    https://git.kernel.org/netdev/net-next/c/89268b056ed1
  - [net-next,v2,2/2] net: bridge: multicast: make tracked EHT hosts limit configurable
    https://git.kernel.org/netdev/net-next/c/2dba407f994e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



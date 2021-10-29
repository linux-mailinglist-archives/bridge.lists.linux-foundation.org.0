Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CA743FCA1
	for <lists.bridge@lfdr.de>; Fri, 29 Oct 2021 14:50:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2194C40018;
	Fri, 29 Oct 2021 12:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NbVeE1fKVRkQ; Fri, 29 Oct 2021 12:50:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6E3C8400E9;
	Fri, 29 Oct 2021 12:50:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24755C0021;
	Fri, 29 Oct 2021 12:50:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8EBCC000E
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C301E400E9
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hzI2cUOL25x1 for <bridge@lists.linux-foundation.org>;
 Fri, 29 Oct 2021 12:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE78C40018
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 12:50:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 7EBD66117A;
 Fri, 29 Oct 2021 12:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635511808;
 bh=8A7jVNKhe8n8XuPnA2FudeVKdnsBoqU4jLdS3VqA9qY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=MO+MMIoX1Xef2V56xXg0iplJ3Lsbgv5Khn1yzzgmbbBikRlUPsT3VMA5HcM8hwzcD
 06up2y94ZXTxsTopa2oqAaxpMcfWjm866Ol/C5S12+CukDJkB+VPUBn1E/pErAV0Y9
 prOD6k2UO6GaMAwZul1TA5k/w10U+S+WrZ9HF6ioZS/QXKhg0pBCLVHnk9cf1eBUM7
 SMec7DoQB03j7QfLGbZhmvp1aHxxZ3hN69c4P0LDNymyDeaywSdX2STrJVqYV1+RXf
 X3xI3mya+Y3luPNdpeznFT+4burC3/lBcEQzNVUEw2EMb1Z72TB6eJIEazeUkhwU53
 RNsV/ntpNdehA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 67C0A60AA4;
 Fri, 29 Oct 2021 12:50:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163551180842.32606.14897066407826010805.git-patchwork-notify@kernel.org>
Date: Fri, 29 Oct 2021 12:50:08 +0000
References: <20211028155835.2134753-1-ivecera@redhat.com>
In-Reply-To: <20211028155835.2134753-1-ivecera@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, horatiu.vultur@microchip.com,
 henrik.bjoernlund@microchip.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v2] net: bridge: fix uninitialized
 variables when BRIDGE_CFM is disabled
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

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu, 28 Oct 2021 17:58:35 +0200 you wrote:
> Function br_get_link_af_size_filtered() calls br_cfm_{,peer}_mep_count()
> that return a count. When BRIDGE_CFM is not enabled these functions
> simply return -EOPNOTSUPP but do not modify count parameter and
> calling function then works with uninitialized variables.
> Modify these inline functions to return zero in count parameter.
> 
> Fixes: b6d0425b816e ("bridge: cfm: Netlink Notifications.")
> Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> 
> [...]

Here is the summary with links:
  - [net,v2] net: bridge: fix uninitialized variables when BRIDGE_CFM is disabled
    https://git.kernel.org/netdev/net/c/829e050eea69

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



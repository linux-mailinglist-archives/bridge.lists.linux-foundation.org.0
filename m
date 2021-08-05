Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281C3E12CD
	for <lists.bridge@lfdr.de>; Thu,  5 Aug 2021 12:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3687402FA;
	Thu,  5 Aug 2021 10:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnP3bnStAlUh; Thu,  5 Aug 2021 10:40:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 23436402FC;
	Thu,  5 Aug 2021 10:40:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE045C001F;
	Thu,  5 Aug 2021 10:40:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3620AC000E
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 10:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1896F606C5
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 10:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zikuk1mU6g9p for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 10:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16A1E605D8
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 10:40:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id B3F286105A;
 Thu,  5 Aug 2021 10:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628160006;
 bh=LhqQugWyEtFPfVHlTMB1zuu+3ElXURLnc+tNxE3iQ/A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Iim5TFr8cWPPMlSz5AwA2Uoom71hsnhD71qMwfHYxuA22agOtuaCBNN0bC63ncxEf
 UA5Nat1hsV7llk0Q9G5KuVPJpGW8lBx7uUE8EtRrqwDUZS4EgGMqAP+IyyDi3dna3h
 RbDuIkSf9T4kJQKnbdN7cPQxOb/K7RbxPPHKUqpRpn8WatkSwcN5V5blsthL1J2vqd
 n9t5uHQz79Flu1vUvCFBAaD8ZdafELUcgARSpUz75c9GFHD+dOVCTQTn8PDE0k985N
 ymmxRtT8GqwQkMz3Kda8fHY7GTwhSUNS3wc7EpkEMCzlvcD5mtK00mvuLDHiNmgQGV
 xXnGJPyIscLqQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id A34C160A72;
 Thu,  5 Aug 2021 10:40:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162816000666.17050.13699886393043128255.git-patchwork-notify@kernel.org>
Date: Thu, 05 Aug 2021 10:40:06 +0000
References: <20210805082903.711396-1-razor@blackwall.org>
In-Reply-To: <20210805082903.711396-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, arnd@arndb.de, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/3] net: bridge: fix recent ioctl
	changes
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

On Thu,  5 Aug 2021 11:29:00 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> These are three fixes for the recent bridge removal of ndo_do_ioctl
> done by commit ad2f99aedf8f ("net: bridge: move bridge ioctls out of
> .ndo_do_ioctl"). Patch 01 fixes a deadlock of the new bridge ioctl
> hook lock and rtnl by taking a netdev reference and always taking the
> bridge ioctl lock first then rtnl from within the bridge hook.
> Patch 02 fixes old_deviceless() bridge calls device name argument, and
> patch 03 checks in dev_ifsioc()'s SIOCBRADD/DELIF cases if the netdevice is
> actually a bridge before interpreting its private ptr as net_bridge.
> 
> [...]

Here is the summary with links:
  - [net-next,1/3] net: bridge: fix ioctl locking
    https://git.kernel.org/netdev/net-next/c/893b19587534
  - [net-next,2/3] net: bridge: fix ioctl old_deviceless bridge argument
    https://git.kernel.org/netdev/net-next/c/cbd7ad29a507
  - [net-next,3/3] net: core: don't call SIOCBRADD/DELIF for non-bridge devices
    https://git.kernel.org/netdev/net-next/c/9384eacd80f3

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



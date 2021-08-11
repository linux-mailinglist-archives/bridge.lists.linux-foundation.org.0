Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E28673E9B2E
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 01:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5259A608AA;
	Wed, 11 Aug 2021 23:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6NgDBkew-Bgj; Wed, 11 Aug 2021 23:20:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 570566079A;
	Wed, 11 Aug 2021 23:20:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F34FC001F;
	Wed, 11 Aug 2021 23:20:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70C3BC000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 23:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D21C40236
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 23:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UTsAnsp3_mTc for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 23:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3EA94049D
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 23:20:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 397A26101E;
 Wed, 11 Aug 2021 23:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628724006;
 bh=YpmWvW0Qk3w8BFLnyW33YKDX1CeI/iRDbDtSbLHoiJo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=iwMOsUREf/GPaPrpmyjVx/rP7LulAsoVxRRVmPqtUppDAQQ4ss89ij7wkuHShfxij
 AbpidJMLut4r+BHyVYfwVzU4mbm7IjSSzhjp4+pittUMsgYcKGi7qJ+12M4K5K6rMi
 4oCqinwRty/GV8HUtOS938+oKzgqhKfVM6o1sd3nar3eTVEW5Wgc3d46DhJi0NFVFP
 CyidOn5JvWuqjxBivM9iskN44GzHufIheZHthVSxFG5Mk6wPTdypiLRt4Mo4nb/sc1
 qXAaIjBQMG/H6DHn+DcMt94bBu8PA8EW/wBQPBz6QjlSzvsXBTG+gtdDb/degmA2Ld
 6Qi4JYXTAsFIw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 2A70C60A3B;
 Wed, 11 Aug 2021 23:20:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162872400616.25017.15203791570168450663.git-patchwork-notify@kernel.org>
Date: Wed, 11 Aug 2021 23:20:06 +0000
References: <20210810092139.11700-1-razor@blackwall.org>
In-Reply-To: <20210810092139.11700-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next] net: bridge: vlan: fix global vlan
 option range dumping
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

This patch was applied to netdev/net-next.git (refs/heads/master):

On Tue, 10 Aug 2021 12:21:39 +0300 you wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> When global vlan options are equal sequentially we compress them in a
> range to save space and reduce processing time. In order to have the
> proper range end id we need to update range_end if the options are equal
> otherwise we get ranges with the same end vlan id as the start.
> 
> [...]

Here is the summary with links:
  - [net-next] net: bridge: vlan: fix global vlan option range dumping
    https://git.kernel.org/netdev/net-next/c/6c4110d9f499

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



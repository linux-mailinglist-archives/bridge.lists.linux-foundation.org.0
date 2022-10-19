Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCF6604677
	for <lists.bridge@lfdr.de>; Wed, 19 Oct 2022 15:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA4960D4B;
	Wed, 19 Oct 2022 13:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EA4960D4B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=SpR3p+oR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vHTtLri3Z99T; Wed, 19 Oct 2022 13:10:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 03D2A611BE;
	Wed, 19 Oct 2022 13:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03D2A611BE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93037C007C;
	Wed, 19 Oct 2022 13:10:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7FBF8C002D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47757418F7
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47757418F7
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SpR3p+oR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBs4lyX8oQpU for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 13:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC16A41A58
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC16A41A58
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 13:10:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id CBAE7B8248F;
 Wed, 19 Oct 2022 13:10:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DCAC433C1;
 Wed, 19 Oct 2022 13:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666185019;
 bh=zC9XA18YC6b4UQw3YuHcfGSILD1ps1/Q+PfUXGFqrkc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=SpR3p+oRqpIE0RT6JN4dDKObbuG899v4Uz+1u93yDXO4skeJ/DfZDmpfz98jAg3Ry
 ZekPFnlok7zbwuPenPOZTtAXnHHEW77qkkU19FwTsNsftr6fisAZjnDkxziDNEKlkp
 oi/qC84737aIJyna898FEsMjMJBBiCcV37NxII1FRBzzgUzm9qL4uNw3zdWJfFkaL1
 SzsG9J13v7BIeOLtzLuXA/u9PAxxkrfhw0qBRfFAsREKgIcmLvmGYXdtEDsVGtppke
 eoaGqWQjoi7CvYbYRcnUv55TC0467UMKxStnKpcVRMqVCcz5O5Zc3FdPWswWyno1VS
 1lnXxx1SAJtzg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6EEBBE4D007; Wed, 19 Oct 2022 13:10:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166618501944.21602.8884811342175634772.git-patchwork-notify@kernel.org>
Date: Wed, 19 Oct 2022 13:10:19 +0000
References: <20221018064001.518841-1-idosch@nvidia.com>
In-Reply-To: <20221018064001.518841-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/4] bridge: A few multicast cleanups
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

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Tue, 18 Oct 2022 09:39:57 +0300 you wrote:
> Clean up a few issues spotted while working on the bridge multicast code
> and running its selftests.
> 
> Ido Schimmel (4):
>   selftests: bridge_vlan_mcast: Delete qdiscs during cleanup
>   selftests: bridge_igmp: Remove unnecessary address deletion
>   bridge: mcast: Use spin_lock() instead of spin_lock_bh()
>   bridge: mcast: Simplify MDB entry creation
> 
> [...]

Here is the summary with links:
  - [net-next,1/4] selftests: bridge_vlan_mcast: Delete qdiscs during cleanup
    https://git.kernel.org/netdev/net-next/c/6fb1faa1b92b
  - [net-next,2/4] selftests: bridge_igmp: Remove unnecessary address deletion
    https://git.kernel.org/netdev/net-next/c/b526b2ea1454
  - [net-next,3/4] bridge: mcast: Use spin_lock() instead of spin_lock_bh()
    https://git.kernel.org/netdev/net-next/c/262985fad1bd
  - [net-next,4/4] bridge: mcast: Simplify MDB entry creation
    https://git.kernel.org/netdev/net-next/c/d1942cd47dbd

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



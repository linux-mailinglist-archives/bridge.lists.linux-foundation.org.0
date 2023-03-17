Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A26BE38A
	for <lists.bridge@lfdr.de>; Fri, 17 Mar 2023 09:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E07DF61352;
	Fri, 17 Mar 2023 08:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E07DF61352
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Dg5vl+q4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHY-XmzLWTvF; Fri, 17 Mar 2023 08:30:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 331356132F;
	Fri, 17 Mar 2023 08:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 331356132F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D867CC007F;
	Fri, 17 Mar 2023 08:30:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59AEEC0032
 for <bridge@lists.linux-foundation.org>; Fri, 17 Mar 2023 08:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B14F60F41
 for <bridge@lists.linux-foundation.org>; Fri, 17 Mar 2023 08:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B14F60F41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fmsuDp65NCN5 for <bridge@lists.linux-foundation.org>;
 Fri, 17 Mar 2023 08:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD0FF60BED
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD0FF60BED
 for <bridge@lists.linux-foundation.org>; Fri, 17 Mar 2023 08:30:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F1D93B824C9;
 Fri, 17 Mar 2023 08:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F7E2C4339B;
 Fri, 17 Mar 2023 08:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679041821;
 bh=cbl/8kY59m0VJBtiWs1fFUFoxkXKmWi7XtVc3FRjM5Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Dg5vl+q4w0KSsLyQ7H3KLJ0yT3HK/NFNZwrnJx22uO521jyy/7WkWgPIQdV+cBdsW
 nSgpbbvZfM1mDIk5EBvZaZSv2WWAkEozhpbEPzNQS+Ptg1QaoPf6A6FJHc7L2+MlrR
 wL0lGgin3YRvWQNJG++d/1wumutsR7m9BQJKhKWHHL31pmwTD97Wir9b4llW2GLGZd
 w0FCiZ8Z15+lP29U+TYh1SICxAaIJJXvr/AOL1IKkfbeM8HDTqrYls8nClFp1jZiVM
 wfZy/hrmJzJD4glvwC7SMm9KK723R3TT1jAZDNsQ1PH0yHrYXCs/7FLyhUyExs7RLJ
 yEwe2dfVTsm5Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 736D7E21EE9; Fri, 17 Mar 2023 08:30:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167904182146.13932.7277544520750366068.git-patchwork-notify@kernel.org>
Date: Fri, 17 Mar 2023 08:30:21 +0000
References: <20230315131155.4071175-1-idosch@nvidia.com>
In-Reply-To: <20230315131155.4071175-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: petrm@nvidia.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 00/11] vxlan: Add MDB support
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

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 15 Mar 2023 15:11:44 +0200 you wrote:
> tl;dr
> =====
> 
> This patchset implements MDB support in the VXLAN driver, allowing it to
> selectively forward IP multicast traffic to VTEPs with interested
> receivers instead of flooding it to all the VTEPs as BUM. The motivating
> use case is intra and inter subnet multicast forwarding using EVPN
> [1][2], which means that MDB entries are only installed by the user
> space control plane and no snooping is implemented, thereby avoiding a
> lot of unnecessary complexity in the kernel.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,01/11] net: Add MDB net device operations
    https://git.kernel.org/netdev/net-next/c/8c44fa12c8fa
  - [net-next,v2,02/11] bridge: mcast: Implement MDB net device operations
    https://git.kernel.org/netdev/net-next/c/c009de1061b5
  - [net-next,v2,03/11] rtnetlink: bridge: mcast: Move MDB handlers out of bridge driver
    https://git.kernel.org/netdev/net-next/c/cc7f5022f810
  - [net-next,v2,04/11] rtnetlink: bridge: mcast: Relax group address validation in common code
    https://git.kernel.org/netdev/net-next/c/da654c80a0eb
  - [net-next,v2,05/11] vxlan: Move address helpers to private headers
    https://git.kernel.org/netdev/net-next/c/f307c8bf37a3
  - [net-next,v2,06/11] vxlan: Expose vxlan_xmit_one()
    https://git.kernel.org/netdev/net-next/c/6ab271aaad25
  - [net-next,v2,07/11] vxlan: mdb: Add MDB control path support
    https://git.kernel.org/netdev/net-next/c/a3a48de5eade
  - [net-next,v2,08/11] vxlan: mdb: Add an internal flag to indicate MDB usage
    https://git.kernel.org/netdev/net-next/c/bc6c6b013ffe
  - [net-next,v2,09/11] vxlan: Add MDB data path support
    https://git.kernel.org/netdev/net-next/c/0f83e69f44bf
  - [net-next,v2,10/11] vxlan: Enable MDB support
    https://git.kernel.org/netdev/net-next/c/08f876a7d79e
  - [net-next,v2,11/11] selftests: net: Add VXLAN MDB test
    https://git.kernel.org/netdev/net-next/c/62199e3f1658

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



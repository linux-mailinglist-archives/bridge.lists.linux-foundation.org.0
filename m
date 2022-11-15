Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D1A62997E
	for <lists.bridge@lfdr.de>; Tue, 15 Nov 2022 14:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2E560BAF;
	Tue, 15 Nov 2022 13:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E2E560BAF
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=IOc4juoS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id stMKkjftZob0; Tue, 15 Nov 2022 13:00:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6905260C14;
	Tue, 15 Nov 2022 13:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6905260C14
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 000A8C0077;
	Tue, 15 Nov 2022 13:00:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3DE6EC002D
 for <bridge@lists.linux-foundation.org>; Tue, 15 Nov 2022 13:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B74660C14
 for <bridge@lists.linux-foundation.org>; Tue, 15 Nov 2022 13:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B74660C14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9IQvUY_PeykQ for <bridge@lists.linux-foundation.org>;
 Tue, 15 Nov 2022 13:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 212D060BAF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 212D060BAF
 for <bridge@lists.linux-foundation.org>; Tue, 15 Nov 2022 13:00:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 665F461749;
 Tue, 15 Nov 2022 13:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF33C43147;
 Tue, 15 Nov 2022 13:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668517215;
 bh=VF4Q0WzM2CiusNuMpims9Ot44VyD7qu0aefy2AZtTrc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=IOc4juoSaRS0kNtR75y9p6+leOkIdF5fXg8yWFZC0vOqlbdNhHQqKHWBGDC4mQopX
 w4mJcad/3OWFJw2qy7Pv63eZbXvnJZwDGbUEySZ/2gSEOMYeTwXpoN5i3TeEi60GSL
 U9kfF4QBSvmVkPuFT7dPZyJBnqmjzIqRveADH2+z5NhzzxzCPnE82Vydb1/+Ydm0dU
 2gGb37WxNfhMCvIxnWJ7UAEszIdJ/JfW3MqXTpnypMy9N+mTP0bGNUWYUTt7v7leUg
 NpD9SMnEGcZimDthraXkrQ6mGhOt5Xp/yxs6lKiLpCUpf+vRFIrrf/Hs7RD3GIwOSM
 f49eHOE2Mjpew==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 685A8E21EFB; Tue, 15 Nov 2022 13:00:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166851721541.14988.2851505012033520291.git-patchwork-notify@kernel.org>
Date: Tue, 15 Nov 2022 13:00:15 +0000
References: <20221114084509.860831-1-idosch@nvidia.com>
In-Reply-To: <20221114084509.860831-1-idosch@nvidia.com>
To: Ido Schimmel <idosch@nvidia.com>
Cc: petrm@nvidia.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, edumazet@google.com,
 mlxsw@nvidia.com, vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] bridge: switchdev: Fix memory leaks when
 changing VLAN protocol
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
by Paolo Abeni <pabeni@redhat.com>:

On Mon, 14 Nov 2022 10:45:09 +0200 you wrote:
> The bridge driver can offload VLANs to the underlying hardware either
> via switchdev or the 8021q driver. When the former is used, the VLAN is
> marked in the bridge driver with the 'BR_VLFLAG_ADDED_BY_SWITCHDEV'
> private flag.
> 
> To avoid the memory leaks mentioned in the cited commit, the bridge
> driver will try to delete a VLAN via the 8021q driver if the VLAN is not
> marked with the previously mentioned flag.
> 
> [...]

Here is the summary with links:
  - [net] bridge: switchdev: Fix memory leaks when changing VLAN protocol
    https://git.kernel.org/netdev/net/c/9d45921ee4cb

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



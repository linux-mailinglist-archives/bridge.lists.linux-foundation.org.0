Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C015A4B97D0
	for <lists.bridge@lfdr.de>; Thu, 17 Feb 2022 05:40:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C145D417B3;
	Thu, 17 Feb 2022 04:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0W-J9RCLNta; Thu, 17 Feb 2022 04:40:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 332DA417B6;
	Thu, 17 Feb 2022 04:40:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D10E7C0073;
	Thu, 17 Feb 2022 04:40:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A79F8C0011
 for <bridge@lists.linux-foundation.org>; Thu, 17 Feb 2022 04:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 823A261C57
 for <bridge@lists.linux-foundation.org>; Thu, 17 Feb 2022 04:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JAld8OXOkabW for <bridge@lists.linux-foundation.org>;
 Thu, 17 Feb 2022 04:40:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADBDF60B41
 for <bridge@lists.linux-foundation.org>; Thu, 17 Feb 2022 04:40:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B8A40B820F8;
 Thu, 17 Feb 2022 04:40:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6108FC340EC;
 Thu, 17 Feb 2022 04:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645072809;
 bh=SQie68LtRJwl6pfaDF+fS7AfThug4tVyYsyf5TnnDHk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Hu1z+s5TJUTiOBBG6qj4KsIbqwHJn8CImpT8ZxGQs8I0X8ABWw3xjZoGW0mCb6E3R
 dEk3IHHjfuo58mRzDBHomA20lqgcAt8PgYKo+8SpqAznvnQomU00wFLCv4QDk7JK1q
 xjzCk3cEnvOaEv5Ysry4HwGDKJ+uv3kzEohmUEXtnuIT2Nnja2hauxSHgDozI185bI
 ZQEdm53zAzi5QtyS7sa3PTzjf7ggi324TdjgCS7JeiGrErZkH2+uU+MTS+zrc2ALHh
 WMP7OoYXeAVDorjxFcvawulYf/XCYodFkvuWXBuwab+1ivRTdq0ZRxTYttnGxLvjXn
 VfE3XH4mox8Kg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 463A6E7BB07; Thu, 17 Feb 2022 04:40:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164507280928.19778.1810833319273321601.git-patchwork-notify@kernel.org>
Date: Thu, 17 Feb 2022 04:40:09 +0000
References: <20220215165303.31908-1-oleksandr.mazur@plvision.eu>
In-Reply-To: <20220215165303.31908-1-oleksandr.mazur@plvision.eu>
To: Oleksandr Mazur <oleksandr.mazur@plvision.eu>
Cc: ivecera@redhat.com, taras.chornyi@plvision.eu, yotamg@mellanox.com,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, volodymyr.mytnyk@plvision.eu,
 linux-kernel@vger.kernel.org, jiri@mellanox.com, netdev@vger.kernel.org,
 nogahf@mellanox.com, roopa@nvidia.com, kuba@kernel.org, nikolay@nvidia.com,
 davem@davemloft.net, mickeyr@marvell.com
Subject: Re: [Bridge] [PATCH net v2] net: bridge: multicast: notify
 switchdev driver whenever MC processing gets disabled
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
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 15 Feb 2022 18:53:03 +0200 you wrote:
> Whenever bridge driver hits the max capacity of MDBs, it disables
> the MC processing (by setting corresponding bridge option), but never
> notifies switchdev about such change (the notifiers are called only upon
> explicit setting of this option, through the registered netlink interface).
> 
> This could lead to situation when Software MDB processing gets disabled,
> but this event never gets offloaded to the underlying Hardware.
> 
> [...]

Here is the summary with links:
  - [net,v2] net: bridge: multicast: notify switchdev driver whenever MC processing gets disabled
    https://git.kernel.org/netdev/net/c/c832962ac972

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



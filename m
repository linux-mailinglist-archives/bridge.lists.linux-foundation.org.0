Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB95814B5
	for <lists.bridge@lfdr.de>; Tue, 26 Jul 2022 16:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A81BB40169;
	Tue, 26 Jul 2022 14:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A81BB40169
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=VLmpkhCp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riIGWqEnEneh; Tue, 26 Jul 2022 14:00:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id F2D4740275;
	Tue, 26 Jul 2022 14:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2D4740275
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91BF8C007D;
	Tue, 26 Jul 2022 14:00:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1B511C002D
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jul 2022 14:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F29CC41997
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jul 2022 14:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F29CC41997
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VLmpkhCp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HX84OtfCU1ua for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jul 2022 14:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC2CE418E8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC2CE418E8
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jul 2022 14:00:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7E99B615B4;
 Tue, 26 Jul 2022 14:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02D4C433B5;
 Tue, 26 Jul 2022 14:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1658844012;
 bh=JTC417El+CUs57vvMncV+ly5z5naqXGH++ZVORHJmK0=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=VLmpkhCpQri1xVRvF5yjpaUkOBVrcbLBcPWymxj5H4TKPGnxHufJBsNFtmz+vCwv5
 AYqU/T2tPyPo+O7Y5SKGPYrGww5Wy7gFFnNHgwNwsB0Wg8KgJsXT1fVByZFm0n7Tj2
 1Lxa62EX3CBZvvhR0GUNAXTMTK0jMMLD8ErX3j7IFOTGYbU+PnawHUGN+3MgCP5qnN
 Wk8NI/7/Gh0eNBZsTIsGy8mMEDgKnqO0nsisxwNnN4DuXQaH9Qz20BxAmzEyf1/4pa
 gCcsK7rdI53JZ2+eLoaD8O+bQ7STDvfRrXDBmL/Fsb41e/VUDIt7rl/mrA6LkD51oS
 dA/7H7oyOMT5A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 BCB50C43143; Tue, 26 Jul 2022 14:00:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165884401276.3194.15777870435593251642.git-patchwork-notify@kernel.org>
Date: Tue, 26 Jul 2022 14:00:12 +0000
References: <20220725001236.95062-1-bpoirier@nvidia.com>
In-Reply-To: <20220725001236.95062-1-bpoirier@nvidia.com>
To: Benjamin Poirier <bpoirier@nvidia.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, henrik.bjoernlund@microchip.com,
 roopa@nvidia.com, idosch@nvidia.com, horatiu.vultur@microchip.com
Subject: Re: [Bridge] [PATCH net] bridge: Do not send empty IFLA_AF_SPEC
	attribute
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

On Mon, 25 Jul 2022 09:12:36 +0900 you wrote:
> After commit b6c02ef54913 ("bridge: Netlink interface fix."),
> br_fill_ifinfo() started to send an empty IFLA_AF_SPEC attribute when a
> bridge vlan dump is requested but an interface does not have any vlans
> configured.
> 
> iproute2 ignores such an empty attribute since commit b262a9becbcb
> ("bridge: Fix output with empty vlan lists") but older iproute2 versions as
> well as other utilities have their output changed by the cited kernel
> commit, resulting in failed test cases. Regardless, emitting an empty
> attribute is pointless and inefficient.
> 
> [...]

Here is the summary with links:
  - [net] bridge: Do not send empty IFLA_AF_SPEC attribute
    https://git.kernel.org/netdev/net/c/9b134b1694ec

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



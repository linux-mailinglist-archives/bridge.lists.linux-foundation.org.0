Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8C32EE9F0
	for <lists.bridge@lfdr.de>; Fri,  8 Jan 2021 00:50:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F7A386FA6;
	Thu,  7 Jan 2021 23:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gPloZQlz9PUD; Thu,  7 Jan 2021 23:50:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AFE786E62;
	Thu,  7 Jan 2021 23:50:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F9EFC013A;
	Thu,  7 Jan 2021 23:50:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A25B7C013A
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jan 2021 23:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8933787569
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jan 2021 23:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z77Hqv2Xbrei for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jan 2021 23:50:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B5F487565
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jan 2021 23:50:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 26CB22368A;
 Thu,  7 Jan 2021 23:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610063411;
 bh=WsBGKxsLoIyXRmSK+5Qiuf8DW89sKuzB8eC7xN+Mz1k=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Wlk1S0H8MnKOu9Iz1PR6zcYmQWWAQRA+7nGmBTUi0N8figMo0rHV+uzPOOC2Peg1R
 tb/l/VT7VcoiBu8KmszETRFy/IAJOCLBVwbhOKMuncEu2elldTldkDxQZtxbGbVI+7
 9XusnuDaA2loha+TBtObwkEmlHpTXXPaMJemWJVxqrNB1ykSuRZi6lHf9jy7sFap1I
 S+GAlhUU94MxDTjng9coQH1sjcml/m0oNBmE8bW4ZHfWpbqJBwCWJtMohRMBCPwkXW
 uf18keyqAtJ6kZiNdoxrz4qh63XzDirTTLGA6uRJJ5iwf0Bgqh0koM2yNxCwEs8dwI
 k1pcJCfl5fBnw==
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id 1405860385;
 Thu,  7 Jan 2021 23:50:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161006341107.8293.17599601765854120224.git-patchwork-notify@kernel.org>
Date: Thu, 07 Jan 2021 23:50:11 +0000
References: <20210106095136.224739-1-olteanv@gmail.com>
In-Reply-To: <20210106095136.224739-1-olteanv@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 wintera@linux.ibm.com, idosch@idosch.org, linux@armlinux.org.uk,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, dqfext@gmail.com,
 claudiu.manoil@nxp.com, nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 marek.behun@nic.cz, vivien.didelot@gmail.com, UNGLinuxDriver@microchip.com,
 tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH v4 net-next 0/7] Offload software learnt bridge
 addresses to DSA
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

On Wed,  6 Jan 2021 11:51:29 +0200 you wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> This series tries to make DSA behave a bit more sanely when bridged with
> "foreign" (non-DSA) interfaces and source address learning is not
> supported on the hardware CPU port (which would make things work more
> seamlessly without software intervention). When a station A connected to
> a DSA switch port needs to talk to another station B connected to a
> non-DSA port through the Linux bridge, DSA must explicitly add a route
> for station B towards its CPU port.
> 
> [...]

Here is the summary with links:
  - [v4,net-next,1/7] net: bridge: notify switchdev of disappearance of old FDB entry upon migration
    https://git.kernel.org/netdev/net-next/c/90dc8fd36078
  - [v4,net-next,2/7] net: dsa: be louder when a non-legacy FDB operation fails
    https://git.kernel.org/netdev/net-next/c/2fd186501b1c
  - [v4,net-next,3/7] net: dsa: don't use switchdev_notifier_fdb_info in dsa_switchdev_event_work
    https://git.kernel.org/netdev/net-next/c/c4bb76a9a0ef
  - [v4,net-next,4/7] net: dsa: move switchdev event implementation under the same switch/case statement
    https://git.kernel.org/netdev/net-next/c/447d290a58bd
  - [v4,net-next,5/7] net: dsa: exit early in dsa_slave_switchdev_event if we can't program the FDB
    https://git.kernel.org/netdev/net-next/c/5fb4a451a87d
  - [v4,net-next,6/7] net: dsa: listen for SWITCHDEV_{FDB,DEL}_ADD_TO_DEVICE on foreign bridge neighbors
    https://git.kernel.org/netdev/net-next/c/d5f19486cee7
  - [v4,net-next,7/7] net: dsa: ocelot: request DSA to fix up lack of address learning on CPU port
    https://git.kernel.org/netdev/net-next/c/c54913c1d4ee

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



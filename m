Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE937A642C
	for <lists.bridge@lfdr.de>; Tue, 19 Sep 2023 15:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D75B41DC5;
	Tue, 19 Sep 2023 13:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D75B41DC5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=eZm79v6g
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW7QTh74Ywec; Tue, 19 Sep 2023 13:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4247141DC6;
	Tue, 19 Sep 2023 13:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4247141DC6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 55D87C008C;
	Tue, 19 Sep 2023 13:00:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C65FDC0032
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 13:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C492814B6
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 13:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C492814B6
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eZm79v6g
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3WLT6XMq1eiU for <bridge@lists.linux-foundation.org>;
 Tue, 19 Sep 2023 13:00:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92EDD81498
 for <bridge@lists.linux-foundation.org>; Tue, 19 Sep 2023 13:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92EDD81498
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C7C8861699;
 Tue, 19 Sep 2023 13:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 055D6C433C8;
 Tue, 19 Sep 2023 13:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695128424;
 bh=io+ftfpQvg06fIDKmyqURafsvt5q7qt204CiUaXIDaw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=eZm79v6gA5CJtbgpugwqz0ydh+DJNDJpnOXlqkdiWm+2Rp6/KYzdF37Ny2zZCDqYG
 FSA5wWotjEFujCSmdYciisiWR3J/h/F5VxVHMwgtzlJY5Ve82yF0U0CP3xpAStaxGl
 nQDkp+4h22nger1NbN/Vy64Anapm9/joI2tTsO2qHcFhl2TTOwH22DL8swzop4gG/t
 0Hfj5Sh2eflYQ1RpxvkZ2XNjcF7rVXRl5XSHvNQsll6k+punGFD0HoPGlDxOUri1bK
 ZXSlMSi5+BbK31ZR+/stDAZ5geiwiroWt33/JnknJ03pRsmb4Qjjj8wFWkVqadCuwF
 KYQ4UJYfNpaow==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 DE0A6E11F4A; Tue, 19 Sep 2023 13:00:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169512842290.4172.7265017257182697521.git-patchwork-notify@kernel.org>
Date: Tue, 19 Sep 2023 13:00:22 +0000
References: <20230918091351.1356153-1-edumazet@google.com>
In-Reply-To: <20230918091351.1356153-1-edumazet@google.com>
To: Eric Dumazet <edumazet@google.com>
Cc: eric.dumazet@gmail.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, syzkaller@googlegroups.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: use DEV_STATS_INC()
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

This patch was applied to netdev/net.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Mon, 18 Sep 2023 09:13:51 +0000 you wrote:
> syzbot/KCSAN reported data-races in br_handle_frame_finish() [1]
> This function can run from multiple cpus without mutual exclusion.
> 
> Adopt SMP safe DEV_STATS_INC() to update dev->stats fields.
> 
> Handles updates to dev->stats.tx_dropped while we are at it.
> 
> [...]

Here is the summary with links:
  - [net] net: bridge: use DEV_STATS_INC()
    https://git.kernel.org/netdev/net/c/44bdb313da57

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



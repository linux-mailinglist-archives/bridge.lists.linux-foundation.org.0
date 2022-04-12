Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 608E44FD300
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 10:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADAF8149C;
	Tue, 12 Apr 2022 08:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gNaTTSacdhnr; Tue, 12 Apr 2022 08:30:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5CDF783E91;
	Tue, 12 Apr 2022 08:30:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21BBBC0088;
	Tue, 12 Apr 2022 08:30:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6AC16C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 08:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 580194098D
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 08:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWPcR0cUqgkD for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 08:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4241A40884
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 08:30:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1353DB81B76;
 Tue, 12 Apr 2022 08:30:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06DC385A1;
 Tue, 12 Apr 2022 08:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649752212;
 bh=m+1PpGjcwzHYLO+3cx1OqvO/hhTh8rff68hcJcnjGQA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=bFSn3y8tt33D6MUcoPmxOFx49qQePeyXNBYioOxS3rObIZuOnq3c5WAwcuTkjL7vY
 JtFd2DOOqld136OWdCzBvJCeZ20Fe2pKgAHSTNjlmE/9p/xNq6X5N2HdWdGh4xuMkq
 flJasIEY3MLhZoPkv3R89EQ/aN+JIZPTJCM0YNH45K4rdwfAtXcr3jSux1ZTHEUbHj
 m8wKITzMS/2dLZRaXhUBIbPOwGrcZRRNSnHcgZRf49aIrW95j+nfzpp8+BU691dxiw
 iyhGsNLLGbMoe7Mu0QySYrA+MiH8BF4P8izivP30NfI2QOdAY7zg+thCFehpt3CSyn
 uS/ljFgukr4Xw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 8D584E8DBD1; Tue, 12 Apr 2022 08:30:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164975221257.23162.6047417037650246223.git-patchwork-notify@kernel.org>
Date: Tue, 12 Apr 2022 08:30:12 +0000
References: <20220411084054.298807-1-troglobit@gmail.com>
In-Reply-To: <20220411084054.298807-1-troglobit@gmail.com>
To: Joachim Wiberg <troglobit@gmail.com>
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 0/2] net: bridge: add support for
 host l2 mdb entries
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
by Paolo Abeni <pabeni@redhat.com>:

On Mon, 11 Apr 2022 10:40:52 +0200 you wrote:
> Fix to an obvious omissions for layer-2 host mdb entries, this v2 adds
> the missing selftest and some minor style fixes.
> 
> Note: this patch revealed some worrying problems in how the bridge
>       forwards unknown BUM traffic and also how unknown multicast is
>       forwarded when a IP multicast router is known, which a another
>       (RFC) patch series intend to address.  That series will build
>       on this selftest, hence the name of the test.
> 
> [...]

Here is the summary with links:
  - [v2,net-next,1/2] net: bridge: add support for host l2 mdb entries
    https://git.kernel.org/netdev/net-next/c/e65693b0179e
  - [v2,net-next,2/2] selftests: forwarding: new test, verify host mdb entries
    https://git.kernel.org/netdev/net-next/c/50fe062c806e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1147D9518
	for <lists.bridge@lfdr.de>; Fri, 27 Oct 2023 12:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7189F70651;
	Fri, 27 Oct 2023 10:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7189F70651
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=RVk3/sIi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCrjVmGEDSGX; Fri, 27 Oct 2023 10:20:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E8F90705F9;
	Fri, 27 Oct 2023 10:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8F90705F9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7AFA0C008C;
	Fri, 27 Oct 2023 10:20:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E2028C0032
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD18070655
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD18070655
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9s3TjlI3uiXH for <bridge@lists.linux-foundation.org>;
 Fri, 27 Oct 2023 10:20:29 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BA1F70651
 for <bridge@lists.linux-foundation.org>; Fri, 27 Oct 2023 10:20:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BA1F70651
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 61971CE4256;
 Fri, 27 Oct 2023 10:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90170C433C9;
 Fri, 27 Oct 2023 10:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698402024;
 bh=T+3V1QPNWQUYBlU7Bsq22khHxGFNFrur7XQd590rXoM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=RVk3/sIiGmoj19UD63rK9A/Liipt6WZ7nQRvTYjjUPMlNONrHvLbOeh1ww0EvhqME
 fR44vLwFwb1b0dzcnCVvpJdL64T7tXkDSxghrsxb6GjdCqv483/9DBtHFQI84qLB4i
 itWWLS6LTni1sMBtNBoVxyEG9HKCZO0KCLzg3y0UE+WdtWJnXxaELw6aS77hRxCum6
 zul82YK/Nslnz5DFHsiHOeQIHjhbWw8fA+Ol/zJY+ANLboWavKBHSqg7ytbsgz3bqU
 EypIcRM2yU7DwTUtbg4W24Lxt2IQd2Wk1UZzwP3uqRDq7DLUfKoL5av1I+4WEVtcIa
 uqPummy4+KTNA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 7697AC41620; Fri, 27 Oct 2023 10:20:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169840202448.15376.8674341343569691359.git-patchwork-notify@kernel.org>
Date: Fri, 27 Oct 2023 10:20:24 +0000
References: <20231027100549.1695865-1-razor@blackwall.org>
In-Reply-To: <20231027100549.1695865-1-razor@blackwall.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, roopa@nvidia.com,
 kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: fill in
	MODULE_DESCRIPTION()
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

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 27 Oct 2023 13:05:49 +0300 you wrote:
> Fill in bridge's module description.
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  net/bridge/br.c | 1 +
>  1 file changed, 1 insertion(+)

Here is the summary with links:
  - [net-next] net: bridge: fill in MODULE_DESCRIPTION()
    https://git.kernel.org/netdev/net-next/c/6808918343a8

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



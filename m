Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3633CF82C
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 12:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72B6E403AD;
	Tue, 20 Jul 2021 10:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AcSuL4lTGpwh; Tue, 20 Jul 2021 10:44:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1613640393;
	Tue, 20 Jul 2021 10:44:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D289BC0022;
	Tue, 20 Jul 2021 10:44:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 55026C000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 10:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 435938399B
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 10:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Frg7qTI2Ye2G for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 10:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFDBA83993
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 10:44:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4748B6120F;
 Tue, 20 Jul 2021 10:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626777876;
 bh=J4am9/bVVh/y4DpPyboBO49mcaLQLuHHpQ8U9G74tLM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GLafNpJFthhFofmm7KYcXWxJZ8kEW8iN5MLI/SE2NA6r0HtLmmoBpV3HURGhRWnbB
 h6r+J2co8OCnH11uB16ZdOSHJOGqPmb5HH5LSSWzXzyqihDtvF96i1U7AgVwiygyb4
 JatBw+Zkksw1rKKxRhKSpcpca4soppvBHGoEEnRIY8AiTa9+YiQuhwO77EWeLYNAKc
 dBewllbngb1F4G1CR/PUXrUfKoGCUh1DGhTkRHgAQ+TDf7+cVJ3tvm42aME8I2PpbU
 lNdTCWUx6ZppCbkV8I7jExAG+jM7w/jQZ8q0Evspkip4O+uwDChCr3rl1Wks0ViBu6
 5G8TV2uXPUOUg==
Date: Tue, 20 Jul 2021 12:44:27 +0200
From: Jakub Kicinski <kuba@kernel.org>
To: Yajun Deng <yajun.deng@linux.dev>
Message-ID: <20210720124427.6b4e05a8@cakuba>
In-Reply-To: <20210719122158.5037-1-yajun.deng@linux.dev>
References: <20210719122158.5037-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-decnet-user@lists.sourceforge.net, jiri@resnulli.us,
 xiyou.wangcong@gmail.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 dsahern@kernel.org, bridge@lists.linux-foundation.org,
 linux-wireless@vger.kernel.org, jhs@mojatatu.com, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, courmisch@gmail.com,
 johannes@sipsolutions.net, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 0/4] Remove rtnetlink_send() in rtnetlink
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

On Mon, 19 Jul 2021 20:21:54 +0800, Yajun Deng wrote:
> rtnetlink_send() is similar to rtnl_notify(), there is no need for two 
> functions to do the same thing. we can remove rtnetlink_send() and 
> modify rtnl_notify() to adapt more case.
>
> Patch1: remove rtnetlink_send() modify rtnl_notify() to adapt 
> more case in rtnetlink.
> Path2,Patch3: Adjustment parameters in rtnl_notify().
> Path4: rtnetlink_send() already removed, use rtnl_notify() instead 
> of rtnetlink_send().

You can't break compilation in between patches. Each step of the series
(each patch) must be self-contained, build, and work correctly.
Otherwise bisection becomes a nightmare.

Please also post series as a thread (patches in reply to the cover
letter), it seems that patchwork did not group the patches correctly
here.

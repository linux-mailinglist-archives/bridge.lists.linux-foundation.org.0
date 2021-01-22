Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E763009E2
	for <lists.bridge@lfdr.de>; Fri, 22 Jan 2021 18:33:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A87808739E;
	Fri, 22 Jan 2021 17:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d3vTxFMEsojS; Fri, 22 Jan 2021 17:33:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AF2987398;
	Fri, 22 Jan 2021 17:33:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 60817C1DA7;
	Fri, 22 Jan 2021 17:33:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BDAB3C013A
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 17:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A82DD87111
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 17:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Euf9pek1Dmhh for <bridge@lists.linux-foundation.org>;
 Fri, 22 Jan 2021 17:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 408B086D86
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 17:33:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E19B23A79;
 Fri, 22 Jan 2021 17:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611336801;
 bh=Zz7/sBdhG8IGiogtBKk0mTY8NegdDfBFJuOqnDNcMLA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RuJ+Df5lfmrPNDJ51PkcEYxRr+jpqXQweQhIQPESSUJFK0m1FLcTJcs5Q7UA7sZnF
 XK3A8YbaQIIAYHnH3igiGNR77G9IqJFjs1mARPv4qLPjSPXGN0QolPVyxGJ9WEv/u8
 Y/d9zwQtM+OKDg0GvUpb52T12cai/I+pyL/1NLce+tvUsGWlHPv+pPWCFpbhhgjqFO
 CAfQgtPaeed/fEFusGweDk+j3JPGtmdm5Vma2BXVOFOV0KOg+EZDAu3aDH14bf9Lqz
 zBMx1SGbfXMLA13aAyZqRImtyFqsubrdcHxpfC3+eBRet3kWN+UrTzHxNAzq14f1cD
 MpQYrozyRdepQ==
Date: Fri, 22 Jan 2021 09:33:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Message-ID: <20210122093320.6fbb5f11@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1611307933-115887-1-git-send-email-abaci-bugfix@linux.alibaba.com>
References: <1611307933-115887-1-git-send-email-abaci-bugfix@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 nikolay@nvidia.com, roopa@nvidia.com, natechancellor@gmail.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH] bridge: Use PTR_ERR_OR_ZERO instead
 if(IS_ERR(...)) + PTR_ERR
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

On Fri, 22 Jan 2021 17:32:13 +0800 Jiapeng Zhong wrote:
> coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.
> 
> Fix the following coccicheck warnings:
> 
> ./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
> used.
> 
> Reported-by: Abaci <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>

You need to CC netdev

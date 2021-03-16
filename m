Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3554A33DFA6
	for <lists.bridge@lfdr.de>; Tue, 16 Mar 2021 21:59:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6A31605A7;
	Tue, 16 Mar 2021 20:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wZCrjgQANsC; Tue, 16 Mar 2021 20:59:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6148760683;
	Tue, 16 Mar 2021 20:59:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B4DAC0010;
	Tue, 16 Mar 2021 20:59:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 319F2C000A
 for <bridge@lists.linux-foundation.org>; Tue, 16 Mar 2021 20:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FF1B43040
 for <bridge@lists.linux-foundation.org>; Tue, 16 Mar 2021 20:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igv5A5U_DE6k for <bridge@lists.linux-foundation.org>;
 Tue, 16 Mar 2021 20:59:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C1A942FD9
 for <bridge@lists.linux-foundation.org>; Tue, 16 Mar 2021 20:59:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F1D6B64F6B;
 Tue, 16 Mar 2021 20:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615928342;
 bh=kemmhiNXGjgM3Xez8OspoEtsDyPaLxVqLgsB1W7iaYw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SlRhSovfQZ7GhqhOSREw5bDT+EfPb3UQVIPexq2SwpdkbuWHKs0xDq0idL1zR4fN2
 ES7yOeXaVJ5WERa3vTSRA/6j+iD0rBhWj8rXJIIqLU6r1Z5oqzUBZ8g5nRmqk3a7uZ
 zW5lQ9RGy6OEEQAdRBJ8slKIHqnn1UJFuqebk+hsODDWzlip9fIHgXIPMgXr8VIysK
 ZKf6CEXEwpVPp5RG1xZ3h2aWNI5RyrMVkuOb2ucY0DY/i6+pZcrk3gK7xt5+Mw3hbX
 TMOzNO1DMgbgnU9U60kidurfftDaW/FICTv6jZEQMWNF1pqd8yd/0h94gqiJrhpwQE
 c/qRaWgIziW7w==
Date: Tue, 16 Mar 2021 13:59:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20210316135901.4e4239fc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210315171342.232809-1-razor@blackwall.org>
References: <20210315171342.232809-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 0/2] net: bridge: mcast: simplify
 allow/block EHT code
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

On Mon, 15 Mar 2021 19:13:40 +0200 Nikolay Aleksandrov wrote:
> There are no functional changes.

That appears to indeed be the case:

Reviewed-by: Jakub Kicinski <kuba@kernel.org>

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA401E4D28
	for <lists.bridge@lfdr.de>; Wed, 27 May 2020 20:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B7E285091;
	Wed, 27 May 2020 18:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YW6IT0PWiqWW; Wed, 27 May 2020 18:35:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DA1184B1F;
	Wed, 27 May 2020 18:35:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05D77C016F;
	Wed, 27 May 2020 18:35:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BD1BC016F
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 18:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39E0184B1F
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 18:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ru-adnFdvoR9 for <bridge@lists.linux-foundation.org>;
 Wed, 27 May 2020 18:35:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9924184837
 for <bridge@lists.linux-foundation.org>; Wed, 27 May 2020 18:35:26 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 95D78128B3528;
 Wed, 27 May 2020 11:35:25 -0700 (PDT)
Date: Wed, 27 May 2020 11:35:24 -0700 (PDT)
Message-Id: <20200527.113524.946608619523725892.davem@davemloft.net>
To: arnd@arndb.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200527135124.1082844-1-arnd@arndb.de>
References: <20200527135124.1082844-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 27 May 2020 11:35:25 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 kuba@kernel.org, tglx@linutronix.de
Subject: Re: [Bridge] [PATCH] bridge: multicast: work around clang bug
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

From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 15:51:13 +0200

> Clang-10 and clang-11 run into a corner case of the register
> allocator on 32-bit ARM, leading to excessive stack usage from
> register spilling:
> 
> net/bridge/br_multicast.c:2422:6: error: stack frame size of 1472 bytes in function 'br_multicast_get_stats' [-Werror,-Wframe-larger-than=]
> 
> Work around this by marking one of the internal functions as
> noinline_for_stack.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=45802#c9
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.

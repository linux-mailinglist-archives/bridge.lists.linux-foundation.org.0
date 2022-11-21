Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB8A632DC2
	for <lists.bridge@lfdr.de>; Mon, 21 Nov 2022 21:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 591C181E75;
	Mon, 21 Nov 2022 20:18:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 591C181E75
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=lxUWsUEP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tb14Sd-GzxIL; Mon, 21 Nov 2022 20:18:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0AF5A81E6F;
	Mon, 21 Nov 2022 20:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AF5A81E6F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C7F9C007B;
	Mon, 21 Nov 2022 20:18:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7C9C2C002D
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 20:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56AC3409B6
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 20:18:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56AC3409B6
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lxUWsUEP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9-QVYwgNR4FD for <bridge@lists.linux-foundation.org>;
 Mon, 21 Nov 2022 20:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64D5F40306
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64D5F40306
 for <bridge@lists.linux-foundation.org>; Mon, 21 Nov 2022 20:18:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 36B13CE18C1;
 Mon, 21 Nov 2022 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7C7EC433D6;
 Mon, 21 Nov 2022 20:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669061884;
 bh=IhNl1vJm3VXqLz/ACfcWWRbRVPnFw5gG6KxRJkVvCnA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lxUWsUEPCrFrZwmJ6lNTMZOQFI44VAboWP7tjFx/pVRPWovDYI4i5cPpy/6KUJGNg
 OI4+n/0mmTC1k7r98QA+zMbNSZuulwXCQPpP0tN/NedQjlCcjv3qNodgraUNJzkb1k
 b0greRQNwn4uhMPxVMJlD0x71Iu05YKJlsVK817AEVr2WdWdEkLyJtkhyArjGEMA3u
 kltB4rJmyfEj/C1p6c5lo0k1O/Aqf2K9nANgcCSqLIAlImpdUMzmK0cg5Bn8ZBF7U0
 JXT+ZYBP65Dk4te31iG353KqFaUQnVVnxcr8NrDyADFAshMSeMn/6WT/K3fUauGbXz
 AysDyZtShvHdA==
Date: Mon, 21 Nov 2022 12:18:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20221121121803.31962489@kernel.org>
In-Reply-To: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
References: <20221121094649.1556002-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-nfs@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Chuck Lever <chuck.lever@oracle.com>,
 Anna Schumaker <anna@kernel.org>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Subject: Re: [Bridge] [PATCH 1/5] kobject: make kobject_get_ownership() take
 a constant kobject *
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

On Mon, 21 Nov 2022 10:46:45 +0100 Greg Kroah-Hartman wrote:
> The call, kobject_get_ownership(), does not modify the kobject passed
> into it, so make it const.  This propagates down into the kobj_type
> function callbacks so make the kobject passed into them also const,
> ensuring that nothing in the kobject is being changed here.
> 
> This helps make it more obvious what calls and callbacks do, and do not,
> modify structures passed to them.

Acked-by: Jakub Kicinski <kuba@kernel.org>

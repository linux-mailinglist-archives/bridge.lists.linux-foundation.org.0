Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C99067FE9F
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 12:44:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A8060BB9;
	Sun, 29 Jan 2023 11:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5A8060BB9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=hOvSM4U1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-FCDIOJN4lw; Sun, 29 Jan 2023 11:44:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 55CBD60BDB;
	Sun, 29 Jan 2023 11:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55CBD60BDB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA6BAC007C;
	Sun, 29 Jan 2023 11:44:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C8F8C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 11:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA86C60BDB
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 11:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA86C60BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HIZRWJ3dAwlJ for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 11:43:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D1AB60BB9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D1AB60BB9
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 11:43:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3067C60D17;
 Sun, 29 Jan 2023 11:43:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19453C433D2;
 Sun, 29 Jan 2023 11:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674992637;
 bh=TDNIdzHxTsptTuCNlpFYNF7gjfmaOn0rB2AsJX19J5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hOvSM4U1AJ7KK7hjfc/3LvNG/jlgHahNGjAbnGFqR6QKun/rCMcZr6mXMoXqgtEp1
 mIYGz2skNQJ/bUDvrxqGJsGk8gOukVsHq52r9i3vOZJ2EJDQoCsaIcLieHxOUf8OcC
 1yLqrgt8gC98ZSNqxQUhp6WOeTQIFcMV9FEf3bWliBJo4yUij5k9kqiymP89vayMpV
 62MXB7TfSvuGBHZFijK+dMsQ4ZqwP/KOhXO3Q98lMRL/ZS3S+y7fE2UP9VHR/DI+4r
 MujKSToQUXOktj9Qy+dEE7dEfbak6b7ltI1TLwxcr42tlREZiZyG4vkbTzRwKmFpl7
 YikMf3b9QUg0w==
Date: Sun, 29 Jan 2023 13:43:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y9Zb+RU637gLIwgz@unreal>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
 <20230126143723.7593ce0b@kernel.org> <Y9NgdXk3NLtjG3Mj@unreal>
 <20230126232615.1901128c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126232615.1901128c@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Thu, Jan 26, 2023 at 11:26:15PM -0800, Jakub Kicinski wrote:
> On Fri, 27 Jan 2023 07:26:13 +0200 Leon Romanovsky wrote:
> > > That'd be my preference too, FWIW. It's only the offload cases which
> > > need this sort of fallback.  
> > 
> > Of course not, almost any error unwind path which sets extack will need it.
> 
> I guess we can come up with scenarios where the new behavior would 
> be useful. But the fact is - your patch changes 4 places...

ok, I'll rename.

> 
> > See devlink as an example
> 
> I don't know what part of devlink you mean at a quick scroll.

I overlooked "return err" in the middle.
You are right.

Thanks

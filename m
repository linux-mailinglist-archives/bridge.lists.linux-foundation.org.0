Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2403367D898
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 23:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E593611D1;
	Thu, 26 Jan 2023 22:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E593611D1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=INWR3luD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cB-0Fy3Ljxt; Thu, 26 Jan 2023 22:37:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8F70B6118B;
	Thu, 26 Jan 2023 22:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F70B6118B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BB12C007C;
	Thu, 26 Jan 2023 22:37:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9C73C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0A3E8261C
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0A3E8261C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=INWR3luD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0BIhPxCeI2e for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 22:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3942825CA
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3942825CA
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:37:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 531B9B81F39;
 Thu, 26 Jan 2023 22:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AF9FC433D2;
 Thu, 26 Jan 2023 22:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674772645;
 bh=BqN63kESite/GwGbcTDZJEsDxlch3Z0ud2s3mGndcWQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=INWR3luDRDneBE1kaIyoqX5ir2ui75Jg1hfTQ4v5uOOb7PPAyGd/tsdnK4frWHqyz
 u14pLVDKx1ficmtrfRaTNGzIS8sZJfhrIH1cMZhiX08qYmPHPt05Lu4JduSIoiZtQk
 Rnil2Mgt65tZ1olfvzo5pNJmOQrtJk3oCE1f6DnyENi5cSk22EZ9LLS3lQvkI4GRGP
 Y+C7+08o61NZaJ5X8rZ3ePGvBr6Rh9CW8Qc9rY9ncc1wA48WL5b+niacMBXnNkfy7A
 IYJj/U+znQsFdJrfLy9Y5SA6oRCcqD4otWDvGOgwzFRS0fOYXn4lh6bNOEy5aMUZLf
 X1KbQzmB+gjVg==
Date: Thu, 26 Jan 2023 14:37:23 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20230126143723.7593ce0b@kernel.org>
In-Reply-To: <20230126223213.riq6i2gdztwuinwi@skbuf>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Leon Romanovsky <leon@kernel.org>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
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

On Fri, 27 Jan 2023 00:32:13 +0200 Vladimir Oltean wrote:
> On Thu, Jan 26, 2023 at 09:15:03PM +0200, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > In netdev common pattern, xxtack pointer is forwarded to the drivers  
>                             ~~~~~~
>                             extack
> 
> > to be filled with error message. However, the caller can easily
> > overwrite the filled message.
> > 
> > Instead of adding multiple "if (!extack->_msg)" checks before any
> > NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> > add this check to common code.
> > 
> > [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---  
> 
> I would somewhat prefer not doing this, and instead introducing a new
> NL_SET_ERR_MSG_WEAK() of sorts.

That'd be my preference too, FWIW. It's only the offload cases which
need this sort of fallback.

BTW Vladimir, I remember us discussing this. I was searching the
archive as you sent this, but can't find the thread. Mostly curious
whether I flip flipped on this or I'm not completely useless :)

> The reason has to do with the fact that an extack is sometimes also
> used to convey warnings rather than hard errors, for example right here
> in net/dsa/slave.c:
> 
> 	if (err == -EOPNOTSUPP) {
> 		if (extack && !extack->_msg)
> 			NL_SET_ERR_MSG_MOD(extack,
> 					   "Offloading not supported");
> 		NL_SET_ERR_MSG_MOD(extack,
> 				   "Offloading not supported");
> 		err = 0;
> 	}

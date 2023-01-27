Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C26367DD0F
	for <lists.bridge@lfdr.de>; Fri, 27 Jan 2023 06:22:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E58A822D3;
	Fri, 27 Jan 2023 05:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E58A822D3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=u32G2mL+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nx9tP9C-KNIz; Fri, 27 Jan 2023 05:22:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A8201822DD;
	Fri, 27 Jan 2023 05:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8201822DD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5062CC007C;
	Fri, 27 Jan 2023 05:22:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A21B9C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 659924176E
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:22:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 659924176E
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u32G2mL+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BK-8ItrzSHnZ for <bridge@lists.linux-foundation.org>;
 Fri, 27 Jan 2023 05:22:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 361C6402F2
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 361C6402F2
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 05:22:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2A124B81F87;
 Fri, 27 Jan 2023 05:22:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10A04C433D2;
 Fri, 27 Jan 2023 05:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674796950;
 bh=m2iagu5CoxQcuS9/5fRga1nwz/j2ClImu0ojZzZlsAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u32G2mL+UTO8LhM9W2FwjlI1fdq+nDqO2EosoWBfnLNRlSjQIE9TpMqueVejLyFOY
 IQQmfvLU1druPVdO9xVfrOwbsE8Qi0jGaLJeOQCJ1ApNYwrc0ZrlrHTldn41SDIcof
 o54CTb765BJoZqi1liaozfGIIT8yhn1bsnUWdksGbML/y287YPddaqsVuT5vxVLjJc
 e9q42tNc260SY627J8h84Szkqtn+2ufbpU1VIMufaKq/0E/gFDkrSAeDp7lVxNQ3Q9
 GBoTAxAu5mcPtvar2u++uA3gPj9NM4/klmAXjIZKOJzwSIHnF2RY4/VDW2EMpR3iNB
 HY6YKPR5sP5GQ==
Date: Fri, 27 Jan 2023 07:22:26 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y9NfkgRbWAbrxQ1G@unreal>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126223213.riq6i2gdztwuinwi@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
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

On Fri, Jan 27, 2023 at 12:32:13AM +0200, Vladimir Oltean wrote:
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

It means changing ALL error unwind places where extack was forwarded
before to subfunctions.

Places like this:
 ret = func(..., extack)
 if (ret) {
   NL_SET_ERR_MSG_MOD...
   return ret;
 }

will need to be changed to something like this:
 ret = func(..., extack)
 if (ret) {
   NL_SET_ERR_MSG_WEAK...
   return ret;
 }

> 
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
> 
> Imagine (not the case here) that below such a "warning extack" lies
> something like this:
> 
> 	if (arg > range) {
> 		NL_SET_ERR_MSG_MOD(extack, "Argument outside expected range");
> 		return -ERANGE;
> 	}
> 
> What you'll get is:
> 
> Error: Offloading not supported (error code -ERANGE).
> 
> whereas before, we relied on any NL_SET_ERR_MSG_MOD() call to overwrite
> the "warning" extack, and that to only be shown on error code 0.

Can we please discuss current code and not over-engineered case which
doesn't exist in the reality?

Even for your case, I would like to see NL_SET_ERR_MSG_FORCE() to
explicitly say that message will be overwritten.

Thanks

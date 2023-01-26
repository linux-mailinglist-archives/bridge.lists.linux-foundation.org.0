Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E23A567D9BE
	for <lists.bridge@lfdr.de>; Fri, 27 Jan 2023 00:39:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA26D41775;
	Thu, 26 Jan 2023 23:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA26D41775
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=nfxBNs6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YCx7v-ebeEG; Thu, 26 Jan 2023 23:39:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9863B417C2;
	Thu, 26 Jan 2023 23:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9863B417C2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2458AC007C;
	Thu, 26 Jan 2023 23:39:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A15E1C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 23:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 755ED40423
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 23:39:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 755ED40423
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nfxBNs6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STe4bxWqUIi1 for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 23:39:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BC6340194
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BC6340194
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 23:39:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 713B36195A;
 Thu, 26 Jan 2023 23:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 776EBC4339C;
 Thu, 26 Jan 2023 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674776362;
 bh=oUC5Mvm4GEqJrG9gIHdrxl6F610JpQsy0hRbjNPgPIQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nfxBNs6FM7NZKGVV3BMji9ruWlGp1t/3cOBJWL1bDMYEOk49YqHbDgN2af6DRVY/X
 H7E0DM6x9xalxWAFX7/6tcXHgHKmjRm4uH61vFvCBOr7Cx8Ai9w8BVdkz0FfA1u0Q/
 UShPs3Fuvvwk6ZQ3XAdmBoEFn6RgYhUonCYUeENa5RF7+PHd9pJGHHtKSZWH8//b7o
 GDtI8AZBvWAujDOjOnU43xnR1ePR802WZ0t6C43BqRZ3JpLag97b2N2ZQO+tB0qlFi
 7bmlfxJko+/jvOVyPwS8BviEs2+zesWJTKr3xr5syp9LXYR7Ul97pKEBvIe04lFpXL
 azIZVjSHuQC5g==
Date: Thu, 26 Jan 2023 15:39:21 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20230126153921.3823054c@kernel.org>
In-Reply-To: <20230126224457.lc2ly5k77gkhycwa@skbuf>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
 <20230126143723.7593ce0b@kernel.org>
 <20230126224457.lc2ly5k77gkhycwa@skbuf>
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

On Fri, 27 Jan 2023 00:44:57 +0200 Vladimir Oltean wrote:
> On Thu, Jan 26, 2023 at 02:37:23PM -0800, Jakub Kicinski wrote:
> > > I would somewhat prefer not doing this, and instead introducing a new
> > > NL_SET_ERR_MSG_WEAK() of sorts.  
> > 
> > That'd be my preference too, FWIW. It's only the offload cases which
> > need this sort of fallback.
> > 
> > BTW Vladimir, I remember us discussing this. I was searching the
> > archive as you sent this, but can't find the thread. Mostly curious
> > whether I flip flipped on this or I'm not completely useless :)  
> 
> What we discussed was on a patch of mine fixing "if (!extack->_msg)" to
> "if (extack && !extack->_msg)". I never proposed a new macro wrapper
> (you did), but I didn't do it at the time because it was a patch for
> "net", and I forgot to put a reminder for the next net->net-next merge.
> https://lore.kernel.org/netdev/20220822182523.6821e176@kernel.org/
> And from there, out of sight, out of mind.

That explains it, I was running blame the message lines, not the if ().
Thanks for digging it up!

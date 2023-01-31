Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35971682DF8
	for <lists.bridge@lfdr.de>; Tue, 31 Jan 2023 14:32:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 351FC415DC;
	Tue, 31 Jan 2023 13:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 351FC415DC
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=pes9sHnL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LsNMSspuJSOF; Tue, 31 Jan 2023 13:32:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4A41C415DD;
	Tue, 31 Jan 2023 13:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A41C415DD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 147B1C0078;
	Tue, 31 Jan 2023 13:32:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E3EAC002B
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 13:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A6BB60B10
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 13:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A6BB60B10
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pes9sHnL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDg-1DUH0WyN for <bridge@lists.linux-foundation.org>;
 Tue, 31 Jan 2023 13:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B69960B01
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B69960B01
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 13:32:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4AB2961517;
 Tue, 31 Jan 2023 13:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10316C433EF;
 Tue, 31 Jan 2023 13:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1675171959;
 bh=d+6BT8JVSgEFjcy1nrHUrWL1dja7eV7LU+hE8XcgdKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pes9sHnLghuyBq1lbURcdB7zDnGTSwRDZB0+EKBLqNBJDecx1Cu/zl4o8EY0/Uiuv
 WKhq36iRnN6nSXRZ2D6GioT3mL1abMVkS2QWeFWW4FQ5B7ivByXinVfjUUjUmPodO2
 B8W7wPuWnl8qIkhQV5nTb9Xrrw4SJo1pKmfA+Ae4kAhnnd9FEGj6qt1eR8ahXbCI6P
 E/vqHZoF/3IbFvS66BdgoNX139/lYg3nsLblW/d/TD+f/9gOUZjCDk5Pxb9wCOKpM7
 kv+KIuRw3xZExMXpAzDm9LIKwSPiNIyEQSFTPwIcA6kKjQK01t9K3B6vgUFRs0Uagf
 zLPzlAW+BnFAg==
Date: Tue, 31 Jan 2023 15:32:35 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <Y9kYcwSm8X0mP5gR@unreal>
References: <c1a88f471a8aa6d780dde690e76b73ba15618b6d.1675010984.git.leon@kernel.org>
 <801a4a44f0fb6e37f79037eae9a3db50191cdb12.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <801a4a44f0fb6e37f79037eae9a3db50191cdb12.camel@redhat.com>
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2] netlink: provide an ability to set
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

On Tue, Jan 31, 2023 at 12:47:03PM +0100, Paolo Abeni wrote:
> Hello,
> 
> On Sun, 2023-01-29 at 18:51 +0200, Leon Romanovsky wrote:
> > In netdev common pattern, extack pointer is forwarded to the drivers
> > to be filled with error message. However, the caller can easily
> > overwrite the filled message.
> > 
> > Instead of adding multiple "if (!extack->_msg)" checks before any
> > NL_SET_ERR_MSG() call, which appears after call to the driver, let's
> > add new macro to common code.
> > 
> > [1] https://lore.kernel.org/all/Y9Irgrgf3uxOjwUm@unreal
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> 
> I'm sorry for nit-picking, but checkpatch complains the author
> (leon@kernel.org) does not match the SoB tag. A v3 with a suitable
> From: tag should fix that.

Sure, will resend.

> 
> Thanks,
> 
> Paolo
> 

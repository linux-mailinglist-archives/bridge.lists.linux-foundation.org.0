Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0CB47E747
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 18:53:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 615FA81420;
	Thu, 23 Dec 2021 17:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COrkjzt9ydNN; Thu, 23 Dec 2021 17:53:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 06E088141E;
	Thu, 23 Dec 2021 17:53:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7C20C006E;
	Thu, 23 Dec 2021 17:53:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F257AC0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E094060E85
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3DXAPuELGHk for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 17:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 507C160808
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:53:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0840A61EE9;
 Thu, 23 Dec 2021 17:53:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BB02C36AE5;
 Thu, 23 Dec 2021 17:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640281999;
 bh=zuRBRwr5iT82jY4jcXwCHAfBA8FmOpPZpBY8RKNWnAU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A8BoNl9IrnX6NydMKn8FZVjrKtDqGqJwZKd5Q5rBoFfROKK1PXYM9z/FzV9KnKk5E
 CLrVFWhJEvbs2tpC4l811jDsp0CoSQZZpi6d+808onhfQEhoo3t5FkjDlq2P0F4o6v
 KsiCnIoEWiU8kGpkoOorwTu1rjLpNeaUFXYs+a6HR6cMi28sHxIiQe/DPgFDooJhZi
 P4wO9tK8cQWMnqUA6ucjOE10FGGgfPnK4wkvs0Smgk92jXOBs1bHpRRjmanXog9EXF
 yc2DJDQZY7ORn4yCT3snqdWRcpGh+0hxu84tnxvWRmC2I3XOFdDAbGeOd4BaiE3yKc
 sPK40tCklqjEg==
Date: Thu, 23 Dec 2021 09:53:18 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Remi Pommarel <repk@triplefau.lt>
Message-ID: <20211223095318.30d2b9ce@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <YcS25oqoo+xnAIIW@pilgrim>
References: <20211223153139.7661-1-repk@triplefau.lt>
 <20211223153139.7661-3-repk@triplefau.lt>
 <20211223085944.55b43857@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <YcS25oqoo+xnAIIW@pilgrim>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: Get SIOCGIFBR/SIOCSIFBR
 ioctl working in compat mode
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

On Thu, 23 Dec 2021 18:50:30 +0100 Remi Pommarel wrote:
> On Thu, Dec 23, 2021 at 08:59:44AM -0800, Jakub Kicinski wrote:
> > On Thu, 23 Dec 2021 16:31:39 +0100 Remi Pommarel wrote:  
> > > In compat mode SIOC{G,S}IFBR ioctls were only supporting
> > > BRCTL_GET_VERSION returning an artificially version to spur userland
> > > tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
> > > and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.
> > > 
> > > Example of non working 32-bit brctl with CONFIG_COMPAT=y:
> > > $ brctl show
> > > brctl: SIOCGIFBR: Invalid argument
> > > 
> > > Example of fixed 32-bit brctl with CONFIG_COMPAT=y:
> > > $ brctl show
> > > bridge name     bridge id               STP enabled     interfaces
> > > br0
> > > 
> > > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > > Co-developed-by: Arnd Bergmann <arnd@arndb.de>
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> > 
> > Since Arnd said this is not supposed to be backported I presume it
> > should go to net-next?  
> 
> Yes, out of curiosity, is it appropriate to mix "[PATCH net]" and
> "[PATCH net-next]" in the same serie ?

It's not, mixing makes it quite hard to know what's needed where.
Also hard to automate things on our end. Let me pick out the first
patch, I'll be sending a PR to Linus shortly and then merge net into
net-next. At which point you'll be able to rebase on top of net-next
and resend just the second patch for net-next..

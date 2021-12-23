Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC1B47E739
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 18:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 879EE40386;
	Thu, 23 Dec 2021 17:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulQkCt52tILA; Thu, 23 Dec 2021 17:45:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DE60E400D8;
	Thu, 23 Dec 2021 17:45:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E4C6C006E;
	Thu, 23 Dec 2021 17:45:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 335DAC0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DC5583268
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IZZh6T_-Tihp for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 17:45:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E50C82F84
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 17:45:37 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 740DE24000D;
 Thu, 23 Dec 2021 17:45:33 +0000 (UTC)
Date: Thu, 23 Dec 2021 18:50:30 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YcS25oqoo+xnAIIW@pilgrim>
References: <20211223153139.7661-1-repk@triplefau.lt>
 <20211223153139.7661-3-repk@triplefau.lt>
 <20211223085944.55b43857@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211223085944.55b43857@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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

On Thu, Dec 23, 2021 at 08:59:44AM -0800, Jakub Kicinski wrote:
> On Thu, 23 Dec 2021 16:31:39 +0100 Remi Pommarel wrote:
> > In compat mode SIOC{G,S}IFBR ioctls were only supporting
> > BRCTL_GET_VERSION returning an artificially version to spur userland
> > tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
> > and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.
> > 
> > Example of non working 32-bit brctl with CONFIG_COMPAT=y:
> > $ brctl show
> > brctl: SIOCGIFBR: Invalid argument
> > 
> > Example of fixed 32-bit brctl with CONFIG_COMPAT=y:
> > $ brctl show
> > bridge name     bridge id               STP enabled     interfaces
> > br0
> > 
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > Co-developed-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Since Arnd said this is not supposed to be backported I presume it
> should go to net-next?

Yes, out of curiosity, is it appropriate to mix "[PATCH net]" and
"[PATCH net-next]" in the same serie ?

Thanks

-- 
Remi

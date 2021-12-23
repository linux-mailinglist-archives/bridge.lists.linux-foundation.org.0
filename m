Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70CB47E754
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 19:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82494402BC;
	Thu, 23 Dec 2021 18:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBo0-k1o3INh; Thu, 23 Dec 2021 18:00:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E0FE540386;
	Thu, 23 Dec 2021 18:00:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 991BBC006E;
	Thu, 23 Dec 2021 18:00:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42946C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2890860EBA
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5IevDC8Uy5t for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 18:00:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 466B260E36
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 18:00:25 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id EE8DA20003;
 Thu, 23 Dec 2021 18:00:22 +0000 (UTC)
Date: Thu, 23 Dec 2021 19:05:20 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YcS6YAJVFUDcDmo0@pilgrim>
References: <20211223153139.7661-1-repk@triplefau.lt>
 <20211223153139.7661-3-repk@triplefau.lt>
 <20211223085944.55b43857@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <YcS25oqoo+xnAIIW@pilgrim>
 <20211223095318.30d2b9ce@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211223095318.30d2b9ce@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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

On Thu, Dec 23, 2021 at 09:53:18AM -0800, Jakub Kicinski wrote:
> On Thu, 23 Dec 2021 18:50:30 +0100 Remi Pommarel wrote:
> > On Thu, Dec 23, 2021 at 08:59:44AM -0800, Jakub Kicinski wrote:
> > > On Thu, 23 Dec 2021 16:31:39 +0100 Remi Pommarel wrote:  
> > > > In compat mode SIOC{G,S}IFBR ioctls were only supporting
> > > > BRCTL_GET_VERSION returning an artificially version to spur userland
> > > > tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
> > > > and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.
> > > > 
> > > > Example of non working 32-bit brctl with CONFIG_COMPAT=y:
> > > > $ brctl show
> > > > brctl: SIOCGIFBR: Invalid argument
> > > > 
> > > > Example of fixed 32-bit brctl with CONFIG_COMPAT=y:
> > > > $ brctl show
> > > > bridge name     bridge id               STP enabled     interfaces
> > > > br0
> > > > 
> > > > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > > > Co-developed-by: Arnd Bergmann <arnd@arndb.de>
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> > > 
> > > Since Arnd said this is not supposed to be backported I presume it
> > > should go to net-next?  
> > 
> > Yes, out of curiosity, is it appropriate to mix "[PATCH net]" and
> > "[PATCH net-next]" in the same serie ?
> 
> It's not, mixing makes it quite hard to know what's needed where.
> Also hard to automate things on our end. Let me pick out the first
> patch, I'll be sending a PR to Linus shortly and then merge net into
> net-next. At which point you'll be able to rebase on top of net-next
> and resend just the second patch for net-next..

Ok sounds good to me thanks.

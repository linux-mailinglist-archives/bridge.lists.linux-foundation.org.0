Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5EF47E41A
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 14:28:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44BF260E36;
	Thu, 23 Dec 2021 13:28:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7EpElNqFTm43; Thu, 23 Dec 2021 13:28:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D614860ED8;
	Thu, 23 Dec 2021 13:28:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B9B5C006E;
	Thu, 23 Dec 2021 13:28:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90DE7C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 13:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7076782864
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 13:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0-5OEyzG18V for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 13:28:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA06382848
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 13:28:46 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id BDC531BF20E;
 Thu, 23 Dec 2021 13:28:42 +0000 (UTC)
Date: Thu, 23 Dec 2021 14:33:40 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <YcR6tAsH9/+sAawW@pilgrim>
References: <20211222191320.17662-1-repk@triplefau.lt>
 <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
 <YcRW1ckSr3ZSCDf9@pilgrim>
 <CAK8P3a0PTu2qCHGr63TBMgnjL9fQwn4=7CrURKMHQufffwOg9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a0PTu2qCHGr63TBMgnjL9fQwn4=7CrURKMHQufffwOg9Q@mail.gmail.com>
Cc: Networking <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: fix ioctl old_deviceless
	bridge argument
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

On Thu, Dec 23, 2021 at 12:38:14PM +0100, Arnd Bergmann wrote:
> On Thu, Dec 23, 2021 at 12:00 PM Remi Pommarel <repk@triplefau.lt> wrote:
> >
> > On Wed, Dec 22, 2021 at 10:52:20PM +0100, Arnd Bergmann wrote:
> > > On Wed, Dec 22, 2021 at 8:13 PM Remi Pommarel <repk@triplefau.lt> wrote:
> > [...]
> > >
> > > The intention of my broken patch was to make it work for compat mode as I did
> > > in br_dev_siocdevprivate(), as this is now the only bit that remains broken.
> > >
> > > This could be done along the lines of the patch below, if you see any value in
> > > it. (not tested, probably not quite right).
> >
> > Oh ok, because SIOC{S,G}IFBR compat ioctl was painfully done with
> > old_bridge_ioctl() I didn't think those needed compat. So I adapted and
> > fixed your patch to get that working.
> 
> Ok, thanks!
> 
> > Here is my test results.
> >
> > With my initial patch only :
> >   - 64bit busybox's brctl (working)
> >     # brctl show
> >     bridge name     bridge id               STP enabled     interfaces
> >     br0             8000.000000000000       n
> >
> >   - CONFIG_COMPAT=y + 32bit busybox's brctl (not working)
> >     # brctl show
> >     brctl: SIOCGIFBR: Invalid argument
> >
> > With both my intial patch and the one below :
> >   - 64bit busybox's brctl (working)
> >     # brctl show
> >     bridge name     bridge id               STP enabled     interfaces
> >     br0             8000.000000000000       n
> >
> >   - CONFIG_COMPAT=y + 32bit busybox's brctl (working)
> >     # brctl show
> >     bridge name     bridge id               STP enabled     interfaces
> >     br0             8000.000000000000       n
> >
> > If you think this has enough value to fix those compatility issues I can
> > either send the below patch as a V2 replacing my initial one for net
> > or sending it as a separate patch for net-next. What would you rather
> > like ?
> 
> If 32-bit busybox still uses those ioctls in moderately recent
> versions, then it's probably worth doing this, but that would
> be up to the bridge maintainers.
> 
> Your patch looks good to me, I see you caught a few mistakes
> in my prototype. I would however suggest basing it on top of
> your original fix, so that can be applied first and backported
> to stable kernels, while the new patch would go on top and
> not get backported.
> 
> If that works with everyone, please submit those two, and add
> these tags to the second patch:
> 
> Co-developed-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Ok thanks a lot, will send a new patch serie with both patches so
that bridge maintainers could only pick one or both patches.

-- 
Remi

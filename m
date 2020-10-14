Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECCE290E5E
	for <lists.bridge@lfdr.de>; Sat, 17 Oct 2020 02:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D6BD88611;
	Sat, 17 Oct 2020 00:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JHItJNfe12oN; Sat, 17 Oct 2020 00:44:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F60F8860F;
	Sat, 17 Oct 2020 00:44:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82E7DC1AD4;
	Sat, 17 Oct 2020 00:44:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66B3DC0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 07:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CC3187687
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 07:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdYiWebnhU6e for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 07:53:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC2468764F
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 07:53:15 +0000 (UTC)
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CD7B21582;
 Wed, 14 Oct 2020 07:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602661995;
 bh=bcwjZ3TEl5QSPMWLEHU5bea8JB58aePgKg833OzucIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A3+WWLl7HW03G++pKkyE4RfIuOQz9Qj88dO6rwuQFcI6Zp5iu45RR8Sk6xqdHsBEI
 sFhYPLtp/e/U3i6ADjJGFuxwUYYtlmpY9chHJDDyn3nAjSWX9IySKUVzhpeFfLkv1T
 6Zt6Y54Se66XquCMhZPF9XAndewNFjHaTiYXCe3g=
Date: Wed, 14 Oct 2020 10:53:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201014075310.GG6305@unreal>
References: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
 <20201013173951.25677bcc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20201014054250.GB6305@unreal>
 <3be8fd19-1c7e-0e05-6039-e5404b2682b9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3be8fd19-1c7e-0e05-6039-e5404b2682b9@gmail.com>
X-Mailman-Approved-At: Sat, 17 Oct 2020 00:44:26 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>,
 =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next v2 00/12] net: add and use function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
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

On Wed, Oct 14, 2020 at 08:13:47AM +0200, Heiner Kallweit wrote:
> On 14.10.2020 07:42, Leon Romanovsky wrote:
> > On Tue, Oct 13, 2020 at 05:39:51PM -0700, Jakub Kicinski wrote:
> >> On Mon, 12 Oct 2020 10:00:11 +0200 Heiner Kallweit wrote:
> >>> In several places the same code is used to populate rtnl_link_stats64
> >>> fields with data from pcpu_sw_netstats. Therefore factor out this code
> >>> to a new function dev_fetch_sw_netstats().
> >>>
> >>> v2:
> >>> - constify argument netstats
> >>> - don't ignore netstats being NULL or an ERRPTR
> >>> - switch to EXPORT_SYMBOL_GPL
> >>
> >> Applied, thank you!
> >
> > Jakub,
> >
> > Is it possible to make sure that changelogs are not part of the commit
> > messages? We don't store previous revisions in the git repo, so it doesn't
> > give too much to anyone who is looking on git log later. The lore link
> > to the patch is more than enough.
> >
> I remember that once I did it the usual way (changelog below the ---) David
> requested the changelog to be part of the commit message. So obviously he
> sees some benefit in doing so.

Do you have a link? What is the benefit and how can we use it?

Usually such request comes to ensure that commit message is updated with
extra information (explanation) existed in changelog which is missing in
the patch.

Thanks

>
> > 44fa32f008ab ("net: add function dev_fetch_sw_netstats for fetching pcpu_sw_netstats")
> >
> > Thanks
> >
>

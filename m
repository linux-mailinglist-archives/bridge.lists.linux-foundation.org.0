Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A159828AADA
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 00:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 206C020509;
	Sun, 11 Oct 2020 22:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QF2DOD93rp5J; Sun, 11 Oct 2020 22:07:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8EC0E20016;
	Sun, 11 Oct 2020 22:07:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73F49C0051;
	Sun, 11 Oct 2020 22:07:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F3E2C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16C4685C19
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6a4ov4NRYww for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 22:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC94C85579
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:07:26 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F3512078B;
 Sun, 11 Oct 2020 22:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602454046;
 bh=cYxBbv7sf4+ShksP9pOzn23fOV8hhf0jD3Kignpjdwg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K7is528bYee8e4ispjMW+khAmwmEdHpzI2jR/3mqaBz8G17ewhikeY72h4FIm4VZq
 O2gcMiHHyPIGA7kAuGKj/jpwPK+4htkDZcK2pt1na8mUCg8551aJvYJdfhxHjjjiH/
 ONqjZx4F2Em9kdJQAr5IXugBeWC6m2NTW2BSxdHI=
Date: Sun, 11 Oct 2020 15:07:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201011150723.72dee9f8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>, =?UTF-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next 01/12] net: core: add function
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

On Sun, 11 Oct 2020 21:36:43 +0200 Heiner Kallweit wrote:
> In several places the same code is used to populate rtnl_link_stats64
> fields with data from pcpu_sw_netstats. Therefore factor out this code
> to a new function dev_fetch_sw_netstats().
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

> +/**
> + *	dev_fetch_sw_netstats - get per-cpu network device statistics
> + *	@s: place to store stats
> + *	@netstats: per-cpu network stats to read from
> + *
> + *	Read per-cpu network statistics and populate the related fields in s.

in @s?

> + */
> +void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
> +			   struct pcpu_sw_netstats __percpu *netstats)

> +}
> +EXPORT_SYMBOL(dev_fetch_sw_netstats);

Your pick, but _GPL would be fine too even if most exports here are
non-GPL-exclusive. 

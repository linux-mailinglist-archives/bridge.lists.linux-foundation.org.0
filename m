Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB84162B26
	for <lists.bridge@lfdr.de>; Tue, 18 Feb 2020 17:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 646F086C66;
	Tue, 18 Feb 2020 16:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VEevrdju2F2T; Tue, 18 Feb 2020 16:55:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40A6386BB4;
	Tue, 18 Feb 2020 16:55:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17895C013E;
	Tue, 18 Feb 2020 16:55:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70706C013E
 for <bridge@lists.linux-foundation.org>; Tue, 18 Feb 2020 16:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D32884D7A
 for <bridge@lists.linux-foundation.org>; Tue, 18 Feb 2020 16:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HrjcTmrvAQpo for <bridge@lists.linux-foundation.org>;
 Tue, 18 Feb 2020 16:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7DE7F84BBE
 for <bridge@lists.linux-foundation.org>; Tue, 18 Feb 2020 16:55:24 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFCEF2176D;
 Tue, 18 Feb 2020 16:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582044924;
 bh=zYbH/t2V9dViGFpxKrN5WN7wgyb79NK7aWjvZ9PciMc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=R9r7mZsOXkH6Cq5Wn+tL7rpjvwdL3DqF//EHE9ESINIx3jR3WAWLykk2MhJ1MsWA9
 tSYdaAYD570uNZnKVG5i31pZYfBeMYJdQOuxMq8sw/svJvLjsXiWwpm3QckELfPlfA
 xp+dPDbYl4rHKvYknSzg0qDyp10Z+cb+/3M/3d/k=
Date: Tue, 18 Feb 2020 08:55:22 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Message-ID: <20200218085522.630e4778@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20200218121811.xo3o6zzrhl5p3j2s@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200218121811.xo3o6zzrhl5p3j2s@lx-anielsen.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 00/10] net: bridge: mrp: Add support
 for Media Redundancy Protocol (MRP)
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

On Tue, 18 Feb 2020 13:18:11 +0100 Allan W. Nielsen wrote:
> But we should try make sure this also works in a backwards compatible
> way with future MRP aware HW, and with existing (and future) SwitchDev
> offloaded HW. At the very least we want to make this run on Ocelot, HW
> offload the MRC role, but do the MRM in SW (as the HW is not capable of
> this).
> 
> If we use the kernel to abstract the MRP forwarding (not the entire
> protocol like we did in v1/v2, not just the HW like we did in v3) then
> we will have more flxibility to support other HW with a different set of
> offload facilities, we can most likely achieve better performance, and
> it would be a cleaner design.
> 
> This will mean, that if user-space ask for MRP frame to be generated,
> the kernel should make sure it will happen. The kernel can try to
> offload this via the switchdev API, or it can do it in kernel-space.
> 
> Again, it will mean putting back some code into kernel space, but I
> think it is worth it.

FWIW having the guarantee that the kernel can always perform requested
service/operation (either thru offload or in SW in kernel space) seems
appealing and in line what we've been doing for other offloads. 

IOW it'd be nice to have a kernel space software fallback for the
offloaded operations.

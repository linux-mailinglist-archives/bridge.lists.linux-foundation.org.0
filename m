Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1399F2C1813
	for <lists.bridge@lfdr.de>; Mon, 23 Nov 2020 23:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B98687140;
	Mon, 23 Nov 2020 22:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1RjIxysXJYvy; Mon, 23 Nov 2020 22:05:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E4198713F;
	Mon, 23 Nov 2020 22:05:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C045C0052;
	Mon, 23 Nov 2020 22:05:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D0BDC0052
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:05:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A688204CD
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LV51o9XtHK4a for <bridge@lists.linux-foundation.org>;
 Mon, 23 Nov 2020 22:05:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E1DF203F9
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:05:21 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16C5A2065E;
 Mon, 23 Nov 2020 22:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606169120;
 bh=WdAxvkzx3t0CR8g6BMeEUxhmD6sgdPUz0+QX03a2Fl4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZVr0+wb/mr6gTAKd84U8e3HJXUPbm0tdqka1eTDALkPvs+S2Vpidd/dunKIU9jpAq
 brm+GQgx5K9I1SBNCKACcxieD2Em+yaJZcenE2haam1+zXFIwqwaN7M5bALd8IU4si
 Pr4oEaIOovj7yTAje9r1uYX5z4bqfet3+Z6nov+s=
Date: Mon, 23 Nov 2020 14:05:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201123140519.3bb3db16@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <13cef7c2-cacc-2c24-c0d5-e462b0e3b4df@nvidia.com>
References: <20201123111401.136952-1-horatiu.vultur@microchip.com>
 <5ffa6f9f-d1f3-adc7-ddb8-e8107ea78da5@nvidia.com>
 <20201123123132.uxvec6uwuegioc25@soft-dev3.localdomain>
 <13cef7c2-cacc-2c24-c0d5-e462b0e3b4df@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Horatiu Vultur <horatiu.vultur@microchip.com>,
 roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] bridge: mrp: Implement LC mode for MRP
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

On Mon, 23 Nov 2020 16:25:53 +0200 Nikolay Aleksandrov wrote:
> >>> @@ -156,4 +157,10 @@ struct br_mrp_in_link_hdr {
> >>>       __be16 interval;
> >>>  };
> >>>
> >>> +struct br_mrp_in_link_status_hdr {
> >>> +     __u8 sa[ETH_ALEN];
> >>> +     __be16 port_role;
> >>> +     __be16 id;
> >>> +};
> >>> +  
> >>
> >> I didn't see this struct used anywhere, am I missing anything?  
> > 
> > Yes, you are right, the struct is not used any. But I put it there as I
> > put the other frame types for MRP.
> >   
> 
> I see, we don't usually add unused code. The patch is fine as-is and since
> this is already the case for other MRP parts I'm not strictly against it, so:
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> If Jakub decides to adhere to that rule you can keep my acked-by and just remove
> the struct for v2.

Yes, good catch, let's drop it, we don't want to make too much of 
a precedent for using kernel uAPI headers as a place to provide
protocol-related structs if the kernel doesn't need them.

The existing structs are only present in net-next as well, so if you
don't mind Horatiu it'd be good to follow up and remove the unused ones
and move the ones (if any) which are only used by the kernel but not by
the user space <-> kernel API communication out of include/uapi.

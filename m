Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1B82C1874
	for <lists.bridge@lfdr.de>; Mon, 23 Nov 2020 23:31:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2460E86AD4;
	Mon, 23 Nov 2020 22:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rX5g5yFnc5l1; Mon, 23 Nov 2020 22:31:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB9EE86E5B;
	Mon, 23 Nov 2020 22:31:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF3FDC0052;
	Mon, 23 Nov 2020 22:31:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 511D0C0052
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E15386E5B
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0pfaAeHCvAa for <bridge@lists.linux-foundation.org>;
 Mon, 23 Nov 2020 22:31:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBE2586AD4
 for <bridge@lists.linux-foundation.org>; Mon, 23 Nov 2020 22:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1606170710; x=1637706710;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Wb8eqtyylgw78rPOZfSNn17SgdN/t/g7nieWeZQwGus=;
 b=Q+eKq4lkj7tci88+degHQsWNaoCm6kbKriUU1EkrXInzkevgSVxB2A1N
 ti1TPFV3e4/6xa+mVyuH0GDVCobGvuvSrUiJqZEwG9vhWzlKQjjqAQpaO
 6Bp05tBVhDIoLXnmlpYORRNhReb2xefgEBacGQcPylqnzFfcjph56tlGr
 EsLDS9rXxGLwKD/KQVGVjtwSMwCd+TP8/eQV06bb3Xehd0zkR09r610cd
 2bWC4E6Ilnt2yYW6DWKCfjzrIBPGjME80UpgwLtSZ2oGpXkgsVdUDiHc7
 1Wer+yQBYedvuHlgxkwMyXZXJOktNMfdgpQZiTTjIlbn6LyxQXyEQ5YfU w==;
IronPort-SDR: u/vGnz1blCz9GBhE4TnLUcqOnwlPo94yZb1RzmGXPC1g30ZFyxAx0lK3u+fyroPDwcwUd2UDLh
 rkGM3PouOYpJs8TeWASsGf6EqDnXSkSQVQn+3cKWPlXwGpj5lffx2l5xvkCydDM9PLv+3ytb4h
 z8wefRifdevAtdryrjxqsi1E3r+ByI5X8EdctPQL+xW/3g8McLCyyq5bivCDz1v2JuafVE9Cej
 uL5WbLfQ/l68vXp/8UphWaWVv4WGllHI9v7x7Hl0t5vc7VNIKbIW2KIGkvjBO07VpEru8V4T0Q
 27I=
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="34789328"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Nov 2020 15:31:50 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 23 Nov 2020 15:31:49 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 23 Nov 2020 15:31:49 -0700
Date: Mon, 23 Nov 2020 23:31:48 +0100
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201123223148.gvexo37ibzophobl@soft-dev3.localdomain>
References: <20201123111401.136952-1-horatiu.vultur@microchip.com>
 <5ffa6f9f-d1f3-adc7-ddb8-e8107ea78da5@nvidia.com>
 <20201123123132.uxvec6uwuegioc25@soft-dev3.localdomain>
 <13cef7c2-cacc-2c24-c0d5-e462b0e3b4df@nvidia.com>
 <20201123140519.3bb3db16@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201123140519.3bb3db16@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 11/23/2020 14:05, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 23 Nov 2020 16:25:53 +0200 Nikolay Aleksandrov wrote:
> > >>> @@ -156,4 +157,10 @@ struct br_mrp_in_link_hdr {
> > >>>       __be16 interval;
> > >>>  };
> > >>>
> > >>> +struct br_mrp_in_link_status_hdr {
> > >>> +     __u8 sa[ETH_ALEN];
> > >>> +     __be16 port_role;
> > >>> +     __be16 id;
> > >>> +};
> > >>> +
> > >>
> > >> I didn't see this struct used anywhere, am I missing anything?
> > >
> > > Yes, you are right, the struct is not used any. But I put it there as I
> > > put the other frame types for MRP.
> > >
> >
> > I see, we don't usually add unused code. The patch is fine as-is and since
> > this is already the case for other MRP parts I'm not strictly against it, so:
> >
> > Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> >
> > If Jakub decides to adhere to that rule you can keep my acked-by and just remove
> > the struct for v2.

Hi Jakub,

> 
> Yes, good catch, let's drop it, we don't want to make too much of
> a precedent for using kernel uAPI headers as a place to provide
> protocol-related structs if the kernel doesn't need them.

OK, I see. I will send a new version for this patch where I will drop
the struct 'br_mrp_in_link_stauts_hdr'.

> 
> The existing structs are only present in net-next as well, so if you
> don't mind Horatiu it'd be good to follow up and remove the unused ones
> and move the ones (if any) which are only used by the kernel but not by
> the user space <-> kernel API communication out of include/uapi.

Maybe we don't refer to the same structs, but I could see that they are
already in net and in Linus' tree. For example the struct
'br_mrp_ring_topo_hdr'. Or am I missunderstanding something?

-- 
/Horatiu

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6971AF16D
	for <lists.bridge@lfdr.de>; Sat, 18 Apr 2020 17:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77C53882A3;
	Sat, 18 Apr 2020 15:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPSxQeOf492F; Sat, 18 Apr 2020 15:04:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 346D3882A0;
	Sat, 18 Apr 2020 15:04:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18877C0172;
	Sat, 18 Apr 2020 15:04:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE12CC0172
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 15:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6BC788277
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 15:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfADQJWBmk1H for <bridge@lists.linux-foundation.org>;
 Sat, 18 Apr 2020 15:04:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BD778826E
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 15:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587222242; x=1618758242;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P9QFx2m+EdJ/Sth2lo4BRux+9U5rJNWn4YuJ3jtIOzo=;
 b=Opwic/DtKR4PaGtUgfDQ4B7TZeNMjVTBYxsiK2PgiFXgKuvHosSiIcN1
 48oxBUmCE7oyqDVRgSOQFOA3c+He6Uj/u2IfVg/Wt7aj72cBO7fDJ2IqI
 jUwf7sbhZZJ5ZIlWomHXegvKT5ujp/noIw04FwBVs6Z8mSmDPDhqLyFGA
 IgwKZGoLTrak1G+S4Z01miN24XXNi27kNUv7aPFv0gltC71F84xMog2h4
 y6LAt/PRzKo3NSoNXjPYxX2Q0kNnU0nznBnhfR7rYKktkFvpix/uydxG8
 9/9X96QB8xeYGEI8/3PRNHPZkcUEV+vId11bk62+j9DIE4T5Sz8FrgyAO A==;
IronPort-SDR: m7UcQDlev/MKt25edmp7CE/m0IENiTcZaDPWD8ceyvWol8WUyzRYDRfwZGSvJDCwktDKYlJhdv
 zova4dlOsJ+O0w24fAC3g8ZY5heKnK8FbwEOoEdQDRaof1nLJes/a82bgUqN8wfCLhGckv4bZ2
 e2ezL5uEzWJ17uLjStcDpP27Katm+mLag5egXFW9yGSvIEzR/kAfI134xrSVjdibjiHCstvrkj
 KZ2EdDzT+rAdenqomMynesgheJDMNLkwL/sieSaZwX81nig3xxw1LKDr1VRp9sPMO0/Izd5XS5
 e18=
X-IronPort-AV: E=Sophos;i="5.72,399,1580799600"; d="scan'208";a="70766323"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Apr 2020 08:04:01 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 18 Apr 2020 08:04:06 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 18 Apr 2020 08:04:00 -0700
Date: Sat, 18 Apr 2020 17:03:59 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200418150359.no4qcgc7oxqunkjp@soft-dev3.microsemi.net>
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
 <59ccd697-3c97-207e-a89d-f73e594ec7eb@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <59ccd697-3c97-207e-a89d-f73e594ec7eb@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, olteanv@gmail.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v5 0/9] net: bridge: mrp: Add support
 for Media Redundancy Protocol(MRP)
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

The 04/18/2020 12:01, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/04/2020 14:26, Horatiu Vultur wrote:
> > Media Redundancy Protocol is a data network protocol standardized by
> > International Electrotechnical Commission as IEC 62439-2. It allows rings of
> > Ethernet switches to overcome any single failure with recovery time faster than
> > STP. It is primarily used in Industrial Ethernet applications.
> >
> > Based on the previous RFC[1][2][3][4], the MRP state machine and all the timers
> > were moved to userspace, except for the timers used to generate MRP Test frames.
> > In this way the userspace doesn't know and should not know if the HW or the
> > kernel will generate the MRP Test frames. The following changes were added to
> > the bridge to support the MRP:
> > - the existing netlink interface was extended with MRP support,
> > - allow to detect when a MRP frame was received on a MRP ring port
> > - allow MRP instance to forward/terminate MRP frames
> > - generate MRP Test frames in case the HW doesn't have support for this
> >
> > To be able to offload MRP support to HW, the switchdev API  was extend.
> >
> 
> Hi Horatiu,
> The set still has a few blocker issues (bisectability, sysfs error return, use of extack)
> and a few other cleanup tasks as I've noted in my replies to the respective patches.
> I think with those out of the way you can submit it for inclusion.

Hi Nik,

Thanks for the review. I really need to be more careful with the
bisectability. I will update the code based on your comments and then
send the patch series again.

> 
> Cheers,
>  Nik
> 
> 
> 
> 

-- 
/Horatiu

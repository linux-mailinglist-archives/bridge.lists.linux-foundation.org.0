Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA2B2FAB42
	for <lists.bridge@lfdr.de>; Mon, 18 Jan 2021 21:20:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2379F852F6;
	Mon, 18 Jan 2021 20:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PB8-sOGr22K5; Mon, 18 Jan 2021 20:20:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A782585135;
	Mon, 18 Jan 2021 20:20:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8843DC013A;
	Mon, 18 Jan 2021 20:20:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6E847C013A
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 20:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61C3485102
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 20:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWZx--CEHUWe for <bridge@lists.linux-foundation.org>;
 Mon, 18 Jan 2021 20:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4845B850E0
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 20:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1611001241; x=1642537241;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3vkIEGQPFf489pGA8tP/HOKmNsBhghNgESRdR43Dvi4=;
 b=ltm0b5hJJqB+jvaPJ4OyzJwQUn+eh0iA5om8R3+TeiWpAnyKLQl5vbIF
 ERw44p1qfD54+mHiqaxYz4tlzridoc6S3S8/6OurvKHYztTIKaVyzqZd2
 6OHTFjNkpuoCQn1H6KG6ooVTYn4dGiS3mwl+AtzO+4kl2fFQWlrPePYQx
 XsSag0we0kZ42BZSKsRCnvz0KFaOgOHCowHERBPGbm53FqRdxdjaDdRqa
 1rDxkNwtYvizlxdUfJE9qRa/7/mM/72O0Yba6fA+KR//O3VCZYK8pTIpu
 +SE1lAnnJr3rurj06YAcGf3NEWRqU/druF9yQavwXj+i0/ojAeRYTh/aH w==;
IronPort-SDR: rMWYeylswX1gedRqJc0sbzC07gP3jSvW+2wrO19QaXbFHctPUv6k3twJY5sL/DnbwtL9B/ThoV
 jZOqweyOj82hJFlZH9sQBO58Ar4LT5x4Ad2mZ/jAU49Ip7TE0NdG3JKaD5z5q2/pihHafrHo6n
 FXsLztcT+qP5WSqdBCjNREbRzbyaDx9hNUzwcUb6JK6zPr1Sb4ORd+MTSryXS8L+OgnVHxXvNA
 xRBUyxYF5+TnauZoxd1cub2mQYGLTGqGejLCCLkv5EiAAX8rUyFnpQAKQhsZBi6TefqS764vu9
 Y18=
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="103319071"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jan 2021 13:20:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 18 Jan 2021 13:20:37 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 18 Jan 2021 13:20:36 -0700
Date: Mon, 18 Jan 2021 21:20:36 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210118202036.wk2fuwa3hysg4dmj@soft-dev3.localdomain>
References: <20210118181319.25419-1-rasmus.villemoes@prevas.dk>
 <20210118185618.75h45rjf6qqberic@soft-dev3.localdomain>
 <20210118194632.zn5yucjfibguemjq@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210118194632.zn5yucjfibguemjq@skbuf>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: mrp: use stp state as substitute for
 unimplemented mrp state
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

The 01/18/2021 19:46, Vladimir Oltean wrote:
> 
> On Mon, Jan 18, 2021 at 07:56:18PM +0100, Horatiu Vultur wrote:
> > The reason was to stay away from STP, because you can't run these two
> > protocols at the same time. Even though in SW, we reuse port's state.
> > In our driver(which is not upstreamed), we currently implement
> > SWITCHDEV_ATTR_ID_MRP_PORT_STATE and just call the
> > SWITCHDEV_ATTR_ID_PORT_STP_STATE.
> 
> And isn't Rasmus's approach reasonable, in that it allows unmodified
> switchdev drivers to offload MRP port states without creating
> unnecessary code churn?

I am sorry but I don't see this as the correct solution. In my opinion,
I would prefer to have 3 extra lines in the driver and have a better
view of what is happening. Than having 2 calls in the driver for
different protocols.
If it is not a problem to have STP calls when you configure the MRP,
then why not just remove SWITCHDEV_ATTR_ID_MRP_PORT_STATE?

> 
> Also, if it has no in-kernel users, why does it even exist as a
> switchdev attribute?

-- 
/Horatiu

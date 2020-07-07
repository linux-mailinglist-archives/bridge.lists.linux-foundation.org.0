Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB62B216A7D
	for <lists.bridge@lfdr.de>; Tue,  7 Jul 2020 12:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 828FA88EE8;
	Tue,  7 Jul 2020 10:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDhgtlEmQN-G; Tue,  7 Jul 2020 10:38:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC40988EF1;
	Tue,  7 Jul 2020 10:38:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8721C016F;
	Tue,  7 Jul 2020 10:38:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 43FA1C016F
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31D2188E2F
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01sZyS9aBXCz for <bridge@lists.linux-foundation.org>;
 Tue,  7 Jul 2020 10:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A88C88EE8
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594118293; x=1625654293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ozbUrXV0dyb5Rt/mvrYVy1sz3akHZYnoBX6bcXtjqo4=;
 b=c7dInngBq4gL/N0P9ugCfSs0qWePXixPgz/MMUNwau1+zwZTLBJ4OAuU
 HPN8qx0rUAEpXETxrOdzPxUboxQon8jgeoF9KMjOBK077pwzOAs5SlH92
 dOEsD9SdtS0axXQh/orGY9LijZYPM+3prFsnJpi60dLhTv+03DnlEuvxt
 HpW2qVLeQO6UQbQZB7ht5Ws0E8UCq3GFlPHrsMNncTSouFB850NtjUsZl
 RMHGj3JC3PsFz2a4SueGacADAxbdMU8miDQLnHsvNIcLIm1XWEJ8DO2w5
 fU9T3/DnSfhVcNmxjwqXYurrLtq4xkvLQDU/y1ehRR7XVfXbQHqlJQcka Q==;
IronPort-SDR: fkBMoEwKctoC3ZDur5hiyIxKadigUb/M44uhaHsz9VI/9sLnv1n6ne/GBXwhld251q8v9LWXqH
 J8C3pGnLWdsSyDgqaH9jVPHBJ4j6SFamDQLpH/CySSQogepn/VlI+2nrGOT2cuwLCuwMxM8uM3
 oE4criLozyDA2LoRe10fI2Uu9HoOYhFVv6hJxR+VahxKRdeIx/zSnh0XLCwWkgcXSIvIzCWYuH
 T14O7oKmV9u3+NzPuBUYRRQf/lt8FiGoJ3wNJOEhqStO2hDlZN5LhdtfYYL4foUM7suzOu8IJm
 JYQ=
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="82813728"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Jul 2020 03:38:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 7 Jul 2020 03:37:46 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 7 Jul 2020 03:37:47 -0700
Date: Tue, 7 Jul 2020 12:38:06 +0200
To: David Miller <davem@davemloft.net>
Message-ID: <20200707103806.wlocq6aasbaf4pty@soft-dev3.localdomain>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
 <20200706091842.3324565-2-horatiu.vultur@microchip.com>
 <20200706.122626.2248567362397969247.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200706.122626.2248567362397969247.davem@davemloft.net>
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next 01/12] switchdev: mrp: Extend
 switchdev API for MRP Interconnect
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

The 07/06/2020 12:26, David Miller wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Horatiu Vultur <horatiu.vultur@microchip.com>
> Date: Mon, 6 Jul 2020 11:18:31 +0200
> 
> > +/* SWITCHDEV_OBJ_ID_IN_TEST_MRP */
> > +struct switchdev_obj_in_test_mrp {
> > +     struct switchdev_obj obj;
> > +     /* The value is in us and a value of 0 represents to stop */
> > +     u32 interval;
> > +     u8 max_miss;
> > +     u32 in_id;
> > +     u32 period;
> > +};
>  ...
> > +#define SWITCHDEV_OBJ_IN_TEST_MRP(OBJ) \
> > +     container_of((OBJ), struct switchdev_obj_in_test_mrp, obj)
> > +
> > +/* SWICHDEV_OBJ_ID_IN_ROLE_MRP */
> > +struct switchdev_obj_in_role_mrp {
> > +     struct switchdev_obj obj;
> > +     u16 in_id;
> > +     u32 ring_id;
> > +     u8 in_role;
> > +     struct net_device *i_port;
> > +};
>  ...
> > +#define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
> > +     container_of((OBJ), struct switchdev_obj_in_role_mrp, obj)
> > +
> > +struct switchdev_obj_in_state_mrp {
> > +     struct switchdev_obj obj;
> > +     u8 in_state;
> > +     u32 in_id;
> > +};
> 
> Please arrange these structure members in a more optimal order so that
> the resulting object is denser.  For example, in switchdev_obj_in_role_mrp
> if you order it such that:
> 
> > +     u32 ring_id;
> > +     u16 in_id;
> > +     u8 in_role;
> 
> You'll have less wasted space from padding.
> 
> Use 'pahole' or similar tools to guide you.

Thanks, I will try to use 'pahole' and see how they need to be arranged.

-- 
/Horatiu

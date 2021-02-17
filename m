Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54C31DCCD
	for <lists.bridge@lfdr.de>; Wed, 17 Feb 2021 16:59:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 156066F611
	for <lists.bridge@lfdr.de>; Wed, 17 Feb 2021 15:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXYiNmmvncJl for <lists.bridge@lfdr.de>;
	Wed, 17 Feb 2021 15:59:01 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 1A1146F5D0; Wed, 17 Feb 2021 15:59:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E8236EE12;
	Wed, 17 Feb 2021 15:58:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 009A0C1DA9;
	Wed, 17 Feb 2021 15:58:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 912C6C013A
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 15:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69E6F6E3BE
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 15:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o76wiYRTYFjM for <bridge@lists.linux-foundation.org>;
 Wed, 17 Feb 2021 15:58:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 857FA6F4BA; Wed, 17 Feb 2021 15:58:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 772D16E3BE
 for <bridge@lists.linux-foundation.org>; Wed, 17 Feb 2021 15:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1613577527; x=1645113527;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TrSgV4ppZBB1E4H994V5PZn9jNxoOv0E4rNOorIzQXM=;
 b=JnW1MbcF+8UNeR/RCrYkphHOpCr/Y9U33VBmD6l+WH7sWjG62abFV8LU
 83//qgsR4RtknCqK3+jHdIOXF+YPyDppDucxat1Ycr1RwxYZtCyG6Fmj2
 CY5ZFgKgDAleH5IFCXD4cI3zA2r6dnu+hXroYy8pgAPo0oJ2qlL9Sa783
 KRmVrbpz4tf/YDk+ZGB4P88MtzRgClKq5tq1WcJ8GOI9A7JE7nkE5ZQte
 1jArqUBRNqNv4lR2Vy/Y9a5fTxGCpK/9FrGv2441U9CxXZkt3XxKBkrda
 zYHwf1eWJRsmMs2682YrTBb2uGGgu+mMuVq+DMlLbzGBprWs5QUQdVIT2 A==;
IronPort-SDR: liuIKZbScHZBumPKPyFyxIEpz+9DDmVCmrm1/ICmVxn4g16h9v5w1fSiJx9QfK5voSHPPf5foA
 jo0ypmmrtTF7fNspqcVRQeyC527x2aIiaL3OJsJjAlvlEyj6XJy+4w1TQksAJDhBRAArDQoqeu
 QfxoSiIobdHp4ZOlIDoafIMEsgpF9CLiGiwem6K6+H1pgdrU/gixXS859KTuIrHfghKjHXEwde
 2ck/cVxSqRB5ytiXlbEA6x7Ii/21htGvLpk12yVNLayX/UWUCKFKMgtLGiRYFlHNVpM7DcplL0
 lLU=
X-IronPort-AV: E=Sophos;i="5.81,184,1610434800"; d="scan'208";a="106963267"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Feb 2021 08:58:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Feb 2021 08:58:45 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 17 Feb 2021 08:58:45 -0700
Date: Wed, 17 Feb 2021 16:58:45 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210217155845.oegbmsnxykkqc6um@soft-dev3.localdomain>
References: <20210216214205.32385-1-horatiu.vultur@microchip.com>
 <20210216214205.32385-3-horatiu.vultur@microchip.com>
 <20210217103433.bilnuo2tfvgvjmxy@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210217103433.bilnuo2tfvgvjmxy@skbuf>
Cc: "ivecera@redhat.com" <ivecera@redhat.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "rasmus.villemoes@prevas.dk" <rasmus.villemoes@prevas.dk>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "roopa@nvidia.com" <roopa@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 2/8] switchdev: mrp: Extend
 ring_role_mrp and in_role_mrp
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

The 02/17/2021 10:34, Vladimir Oltean wrote:

Hi Vladimir,

> 
> On Tue, Feb 16, 2021 at 10:41:59PM +0100, Horatiu Vultur wrote:
> > Add the member sw_backup to the structures switchdev_obj_ring_role_mrp
> > and switchdev_obj_in_role_mrp. In this way the SW can call the driver in
> > 2 ways, once when sw_backup is set to false, meaning that the driver
> > should implement this completely in HW. And if that is not supported the
> > SW will call again but with sw_backup set to true, meaning that the
> > HW should help or allow the SW to run the protocol.
> >
> > For example when role is MRM, if the HW can't detect when it stops
> > receiving MRP Test frames but it can trap these frames to CPU, then it
> > needs to return -EOPNOTSUPP when sw_backup is false and return 0 when
> > sw_backup is true.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/net/switchdev.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> > index 465362d9d063..b7fc7d0f54e2 100644
> > --- a/include/net/switchdev.h
> > +++ b/include/net/switchdev.h
> > @@ -127,6 +127,7 @@ struct switchdev_obj_ring_role_mrp {
> >       struct switchdev_obj obj;
> >       u8 ring_role;
> >       u32 ring_id;
> > +     u8 sw_backup;
> >  };
> >
> >  #define SWITCHDEV_OBJ_RING_ROLE_MRP(OBJ) \
> > @@ -161,6 +162,7 @@ struct switchdev_obj_in_role_mrp {
> >       u32 ring_id;
> >       u16 in_id;
> >       u8 in_role;
> > +     u8 sw_backup;
> 
> What was wrong with 'bool'?
Yeah, that would be a better match.
> 
> >  };
> >
> >  #define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
> > --
> > 2.27.0
> >
> 
> If a driver implements full MRP offload for a ring/interconnect
> manager/automanager, should it return -EOPNOTSUPP when sw_backup=false?

In that case it should return 0.
So if the driver can:
- fully support MRP, when sw_backup = false, return 0. Then end of story.
- partially support MRP, when sw_backup = false, return -EOPNOTSUPP,
                         when sw_backup = true, return 0.
- no support at all, return -EOPNOTSUPP.

-- 
/Horatiu

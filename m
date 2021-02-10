Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C04ED31664F
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 13:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5019C86308;
	Wed, 10 Feb 2021 12:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XfQFnZ6gG8mf; Wed, 10 Feb 2021 12:15:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 571C28584A;
	Wed, 10 Feb 2021 12:15:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C6DCC013A;
	Wed, 10 Feb 2021 12:15:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C51AC013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AEF48584A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TWzheLNZywp for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 12:15:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0128B850EA
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612959319; x=1644495319;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KccJACx3UzbVR7vSn7sUPz8lucKU1UmDl4AZFOnoBwk=;
 b=dChhHT5Xqd4s9wMOZZmbtWMLrtUHh6qB8yL9EXgGkVB5Bfy+eoVpIWCu
 +qvtssUu9GVDq4RROn9qdAvSG+CrdAXkjTpAvq/Y43MTEfJsNq9QCo5ls
 jCOqBswsGb8EOrRObxwTDLD4DOIutewNDijspaK+AWUtOexXLr5DrAI6f
 iMXvtrHCSq8NEdWbnPXs8drU7I1vxA5SvFjyb5eYYpGgk1pGo4vP8Gw2B
 ma6qGkuFsb0ilJNJ0Cpzcx8lgkRmrDtzx8R65S98EKs4MKnXn08WoILPC
 tj+yqNtbAmqJ+IsNmd3stysLqr8+T72liQqwcVtUzeseoa8l1AA62LqAn g==;
IronPort-SDR: 6But5P5zXLp4ILDsM0zJcJXdRBox4KKHdUQHsa3kUKlhKboHKmbenpiLEG025yfVo4p6QS5v5c
 59OoTMuk0fmg5ZYkdAYdE6eWpwtfNWT1xHmLsAA6IMBhA7CymZHtRDnKuIpbkMEpAuwft5fRFx
 WeELxPjiPpU4FnhYO5cy0coHwaUYUAAzkOzfJo/rao2AWj8w0S3SEavYByXY3cKMKoVj5Z8ruv
 LVLSkv5L6ne+9VxWoUTtfNi9EQzaxAKzojg4hPkrX9lCh+OcAOPkc2Zikbn1VOQT8MmB7KgpV8
 FPU=
X-IronPort-AV: E=Sophos;i="5.81,168,1610434800"; d="scan'208";a="103288808"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Feb 2021 05:15:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 10 Feb 2021 05:15:17 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 10 Feb 2021 05:15:16 -0700
Date: Wed, 10 Feb 2021 13:15:16 +0100
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210210121516.h2whdmshs2pyvuy5@soft-dev3.localdomain>
References: <20210209202112.2545325-1-horatiu.vultur@microchip.com>
 <20210210100831.acnycww3wkeb6imt@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20210210100831.acnycww3wkeb6imt@skbuf>
Cc: "ivecera@redhat.com" <ivecera@redhat.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "rasmus.villemoes@prevas.dk" <rasmus.villemoes@prevas.dk>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "roopa@nvidia.com" <roopa@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v3 0/5] bridge: mrp: Extend
	br_mrp_switchdev_*
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

The 02/10/2021 10:08, Vladimir Oltean wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi Horatiu,
> 
> On Tue, Feb 09, 2021 at 09:21:07PM +0100, Horatiu Vultur wrote:
> > This patch series extends MRP switchdev to allow the SW to have a better
> > understanding if the HW can implement the MRP functionality or it needs
> > to help the HW to run it. There are 3 cases:
> > - when HW can't implement at all the functionality.
> > - when HW can implement a part of the functionality but needs the SW
> >   implement the rest. For example if it can't detect when it stops
> >   receiving MRP Test frames but it can copy the MRP frames to CPU to
> >   allow the SW to determine this.  Another example is generating the MRP
> >   Test frames. If HW can't do that then the SW is used as backup.
> > - when HW can implement completely the functionality.
> >
> > So, initially the SW tries to offload the entire functionality in HW, if
> > that fails it tries offload parts of the functionality in HW and use the
> > SW as helper and if also this fails then MRP can't run on this HW.
> >
> > Also implement the switchdev calls for Ocelot driver. This is an example
> > where the HW can't run completely the functionality but it can help the SW
> > to run it, by trapping all MRP frames to CPU.
> >
> > v3:
> >  - implement the switchdev calls needed by Ocelot driver.
> > v2:
> >  - fix typos in comments and in commit messages
> >  - remove some of the comments
> >  - move repeated code in helper function
> >  - fix issue when deleting a node when sw_backup was true
> >
> > Horatiu Vultur (5):
> >   switchdev: mrp: Extend ring_role_mrp and in_role_mrp
> >   bridge: mrp: Add 'enum br_mrp_hw_support'
> >   bridge: mrp: Extend br_mrp_switchdev to detect better the errors
> >   bridge: mrp: Update br_mrp to use new return values of
> >     br_mrp_switchdev
> >   net: mscc: ocelot: Add support for MRP
> >
> >  drivers/net/ethernet/mscc/ocelot_net.c     | 154 +++++++++++++++++++
> >  drivers/net/ethernet/mscc/ocelot_vsc7514.c |   6 +
> >  include/net/switchdev.h                    |   2 +
> >  include/soc/mscc/ocelot.h                  |   6 +
> >  net/bridge/br_mrp.c                        |  43 ++++--
> >  net/bridge/br_mrp_switchdev.c              | 171 +++++++++++++--------
> >  net/bridge/br_private_mrp.h                |  38 +++--
> >  7 files changed, 327 insertions(+), 93 deletions(-)
> >
> > --
> > 2.27.0
> >
> 

Hi Vladimir,

> Which net-next commit can these patches be applied to? On the current
> master I get:

Sorry for this. I had an extra patch when I created these patches. And
based on this I have added the patch series. This extra patch was this
one:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=b2bdba1cbc84

Which was already applied to net. And I wanted to have it to be able to
do more complete test of this patch series. Next time I should be more
careful with this.

> 
> Applying: switchdev: mrp: Extend ring_role_mrp and in_role_mrp
> Applying: bridge: mrp: Add 'enum br_mrp_hw_support'
> Applying: bridge: mrp: Extend br_mrp_switchdev to detect better the errors
> error: patch failed: net/bridge/br_mrp_switchdev.c:177
> error: net/bridge/br_mrp_switchdev.c: patch does not apply
> Patch failed at 0004 bridge: mrp: Extend br_mrp_switchdev to detect better the errors
> hint: Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

-- 
/Horatiu

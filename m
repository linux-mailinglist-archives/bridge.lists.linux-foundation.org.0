Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2962119AF7B
	for <lists.bridge@lfdr.de>; Wed,  1 Apr 2020 18:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56DD41FCA0;
	Wed,  1 Apr 2020 16:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mq7T3k6PH+xZ; Wed,  1 Apr 2020 16:12:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 630D620404;
	Wed,  1 Apr 2020 16:12:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 558DDC089F;
	Wed,  1 Apr 2020 16:12:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF4A4C089F
 for <bridge@lists.linux-foundation.org>; Wed,  1 Apr 2020 16:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB475875AD
 for <bridge@lists.linux-foundation.org>; Wed,  1 Apr 2020 16:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3KqQwLKUr8LP for <bridge@lists.linux-foundation.org>;
 Wed,  1 Apr 2020 16:12:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 12C4F86D5A
 for <bridge@lists.linux-foundation.org>; Wed,  1 Apr 2020 16:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585757569; x=1617293569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=n6C6hGBt5easzcPDAonxCbcAUHLA4USUKvAikSy4B+U=;
 b=iHR6vRsHItAQnoqy8H+nffFUS8D6c7Fh0RGqK1NwaXTQldSQS8ULLTX5
 3pav78JzJYUywEIPp5X1QkFFYN/fyD1HbR1LANoFZqE7ZTOGpyOrgHFe5
 7eO38H5eO5fiOT56V1dzH+q+q+u+gMUIopFXf5z8sGUG6KshZpyzmvFZ+
 7bpO8gHSCsQBAYHCr4cnHb7BEb17SGQgCMDmzCy0Mnowwk/VY7X5+c2su
 IVr/73e34MnmpI0cvidZXpybJwSwAynViqyRuoXXoAH1DjNq2X4ykut/w
 7lcuNll69H0Qr2KITfePsMcg+6pKSKbguO9APv3uBIIe+MIYWngVp4CHs Q==;
IronPort-SDR: 8QPZut89pQviKUC7HlHOWU6Bf8CEhRa2WJHafhXQNtkGVHn/xohZ7iyipCH3jbxXLyG8cBAmAu
 au2QnGt683KRFRaPEjIXrDxTrw/bHm0K15NIjIiHad4jKeY4EQ0hlIsKdj3Isym858zSYzT4YZ
 Zvp/m7BLr4w9ZO/IjTrr8ioCa9pvUHedudWi2vC2t/kc7AgBTg2DiqUZocbCcYri3ieWf4AVIP
 FTlectyjsenYMYlO8ObGqsGIA6MrY9jK16Y9NBvjP3T/Pyj0H6KqezKQXGP06tqSrtx12rxXAh
 MeU=
X-IronPort-AV: E=Sophos;i="5.72,332,1580799600"; d="scan'208";a="74379686"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 09:12:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 09:12:48 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 1 Apr 2020 09:12:54 -0700
Date: Wed, 1 Apr 2020 18:12:48 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200401161247.c6jts3nmeru5foex@soft-dev3.microsemi.net>
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
 <15dcc261-bcbb-ec67-2d8d-4208dda45b86@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <15dcc261-bcbb-ec67-2d8d-4208dda45b86@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, olteanv@gmail.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v4 0/9] net: bridge: mrp: Add support
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

The 03/30/2020 19:21, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 27/03/2020 11:21, Horatiu Vultur wrote:
> > Media Redundancy Protocol is a data network protocol standardized by
> > International Electrotechnical Commission as IEC 62439-2. It allows rings of
> > Ethernet switches to overcome any single failure with recovery time faster than
> > STP. It is primarily used in Industrial Ethernet applications.
> >
> > Based on the previous RFC[1][2][3], the MRP state machine and all the timers
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
> > With these changes the userspace doesn't do the following because already the
> > kernel/HW will do:
> > - doesn't need to forward/terminate MRP frames
> > - doesn't need to generate MRP Test frames
> > - doesn't need to detect when the ring is open/closed.
> >
> > The userspace application that is using the new netlink can be found here[4].
> >
> 
> Hi Horatiu,

Hi Nik,

> One issue in general - some functions are used before they're defined (the switchdev
> API integration ones) patch 4 vs 7 which doesn't make sense. Also I see that the BRIDGE_MRP is used
> (ifdef) before it's added to the Kconfig which doesn't make much sense either.
> I think you should rearrange the patches and maybe combine some of them.

Thanks for the feedback, in the next patch series I will make sure that
everything is defined before it is used.


> 
> Thanks,
>  Nik
> 

-- 
/Horatiu

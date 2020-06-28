Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D239E20C81E
	for <lists.bridge@lfdr.de>; Sun, 28 Jun 2020 14:59:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70F9685FC6;
	Sun, 28 Jun 2020 12:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMyj08eteMBq; Sun, 28 Jun 2020 12:59:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA10486470;
	Sun, 28 Jun 2020 12:59:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B73BFC08A6;
	Sun, 28 Jun 2020 12:59:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 869CCC016E
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 12:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F0AB88154
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 12:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDe4Es4qqVu5 for <bridge@lists.linux-foundation.org>;
 Sun, 28 Jun 2020 12:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C501E880E2
 for <bridge@lists.linux-foundation.org>; Sun, 28 Jun 2020 12:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593349167; x=1624885167;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=C7iLwWRBNIiE1Z5P3HM5arpORAu2RBCVGY2pNOudQek=;
 b=k9Faz/ErcmjkWIq9v7i35L4QF4TE/pat3vEvFPU0j93pNcX0RJbl652a
 P1Qsfy3p4Kuv+itKIlgIvJxBojOpSx4WURFvbRYDPU4R/1qVIHOtQP3Qz
 40ZvYwvGqDjs+bCQLHkSBF6EtH+wplBuJe5Km9/gCeJC9t2wzrutaXq9W
 JCw1oIAm/BzHStW0ISP19g7HqyVTEor4/m8bwsl9UzT2OAJMXmIg2wgc0
 b2uPoU6eJPQMQN4s4j/dDlomHZQak9QV6kranV6N2d3IUM9DljmGh9BTw
 kKdOfwunQ/XGZF+fQMnmHAf6PwY/LBArDk5pRLWw+IcEKGKKkfBmpJAcz w==;
IronPort-SDR: WYb1sCuzIdr1wLYoPcho54i/r7QExhBNB8qS9MjO8GZ+yDtxmyNP2rai0bimIH0WjcAgJ1zxPr
 IWY3Fh8x8ekRS+qJuIjgzAiqg/oTtZysn3F8xuSiKv7kPRlfah6+v574Uxg8HFC310Qw3+n5cG
 Xx0rLLTTqzB3ey0DLtszq3Uj+wWnTAf2ylaFcURRNdRBcXA44rjexnH9DSmIAI2FKCZpo22ZIi
 hA1lgR/cIqOj6RguSc6AQ7jFWTxLTPcU5bT8jAJ63YYtHhFF040sAANL4NBfREInpZSNW8Fbkg
 aBo=
X-IronPort-AV: E=Sophos;i="5.75,291,1589266800"; d="scan'208";a="81831637"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jun 2020 05:59:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 28 Jun 2020 05:59:26 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Sun, 28 Jun 2020 05:59:10 -0700
Date: Sun, 28 Jun 2020 14:59:25 +0200
To: David Miller <davem@davemloft.net>
Message-ID: <20200628125925.gmc6ct34lnv6nrzu@soft-dev3.localdomain>
References: <20200626073349.3495526-1-horatiu.vultur@microchip.com>
 <20200626.130029.89317239393030387.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200626.130029.89317239393030387.davem@davemloft.net>
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next v3 0/2] bridge: mrp: Extend MRP
 netlink interface with IFLA_BRIDGE_MRP_CLEAR
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

The 06/26/2020 13:00, David Miller wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Horatiu Vultur <horatiu.vultur@microchip.com>
> Date: Fri, 26 Jun 2020 09:33:47 +0200
> 
> > This patch series extends MRP netlink interface with IFLA_BRIDGE_MRP_CLEAR.
> > To allow the userspace to clear all MRP instances when is started. The
> > second patch in the series fix different sparse warnings.
> >
> > v3:
> >   - add the second patch to fix sparse warnings

Hi,
> 
> These changes are completely unrelated.
> 
> The sparse stuff should probably be submitted to 'net'.

I will send a patch for this to 'net'.

> 
> And I have to ask why you really need a clear operation. 

Because we didn't have any way for the userspace to know what ports are
part of the MRP ring. I thought the easiest way would be for the daemon
to clear everything when is started.

> Routing
> daemons come up and see what routes are installed, and update their
> internal SW tables to match.  This not only allows efficient restart
> after a crash, but it also allows multiple daemons to work
> cooperatively as an agent for the same forwarding/routing table.

I think it would be possible to have something similar for the MRP
daemon. But I still have problems to see how to have multiple MRP
daemons running at the same time. Because each deamon implements MRP
state machine. So for example if the link of one of the MRP ports is
changing then each daemon is notified about this change so then each
daemon will send some frames, and that would mean that we have duplicate
frames in the network.

> 
> Your usage model limits one daemon to manage the table and that
> limitation is completely unnecessary.
> 
> Furthermore, even in a one-daemon scenerio, it's wasteful to throw
> away all the work the previous daemon did to load the MRP entries into
> the bridge.
> 
> Thanks.
> 

-- 
/Horatiu

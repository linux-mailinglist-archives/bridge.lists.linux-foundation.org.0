Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E91D13A281
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 09:09:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 631888768B;
	Tue, 14 Jan 2020 08:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sXiXJpukqke; Tue, 14 Jan 2020 08:09:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABF18877E6;
	Tue, 14 Jan 2020 08:09:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 85A48C1D8D;
	Tue, 14 Jan 2020 08:09:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6947C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D4772036E
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk-+ho8486Qs for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 08:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id B129F20025
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:09:00 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0diy65lC91otsjZEQ4eu3Nna2eRW0F5DDZSr6SdYu7P1/X58HMQZR5luLnlYZXeV6r5EcQL8M8
 pH30V0qkTK+rD9KKYemCr6Zmt91DO8KLPX8rrV1YaLdPt4IIjiXSu9KWt8Bw0dp2aSYIoVc5o5
 pApc4uMQu6ZC6ACLAPwlaVlIBh+/qNV80CedAblfAiKYCuf7I3fUIehJmOvSdhPxIs2KmTcKFA
 hid8u0abZkoBoErJIXOw+m5jZhvXK00DbHxUX6z+NTjHpsLqYr8d5+yPY5ed+JYs+fclC3a2vp
 BYM=
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="60701153"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 01:08:58 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 01:08:58 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 14 Jan 2020 01:08:57 -0700
Date: Tue, 14 Jan 2020 09:08:56 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200114080856.wa7ljxyzaf34u4xj@soft-dev3.microsemi.net>
References: <20200113124620.18657-1-horatiu.vultur@microchip.com>
 <20200113124620.18657-5-horatiu.vultur@microchip.com>
 <20200113140053.GE11788@lunn.ch>
 <20200113225751.jkkio4rztyuff4xj@soft-dev3.microsemi.net>
 <20200113233011.GF11788@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200113233011.GF11788@lunn.ch>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, jakub.kicinski@netronome.com,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, dsahern@gmail.com, jiri@resnulli.us,
 olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next Patch v2 4/4] net: bridge: mrp:
 switchdev: Add HW offload
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

The 01/14/2020 00:30, Andrew Lunn wrote:
> 
> Hi Horatiu
> 
> It has been said a few times what the basic state machine should be in
> user space. A pure software solution can use raw sockets to send and
> receive MRP_Test test frames. When considering hardware acceleration,
> the switchdev API you have proposed here seems quite simple. It should
> not be too hard to map it to a set of netlink messages from userspace.

Yes and we will try to go with this approach, to have a user space
application that contains the state machines and then in the kernel to
extend the netlink messages to map to the switchdev API.
So we will create a new RFC once we will have the user space and the
definition of the netlink messages.

> 
> Yet your argument for kernel, not user space, is you are worried about
> the parameters which need to be passed to the hardware offload engine.
> In order to win the argument for a kernel solution, we are going to
> need a better idea what you think this problem is. The MRP_Test is TLV
> based. Are there other things which could be in this message? Is that
> what you are worried about?

> 
> Thanks
>      Andrew

-- 
/Horatiu

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8C1149AC5
	for <lists.bridge@lfdr.de>; Sun, 26 Jan 2020 14:22:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E68442043C;
	Sun, 26 Jan 2020 13:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KmgpbbvRZ8VY; Sun, 26 Jan 2020 13:22:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 221D920035;
	Sun, 26 Jan 2020 13:22:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 109A2C0171;
	Sun, 26 Jan 2020 13:22:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30F25C0171
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E98C87133
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sf3TLjoda7+u for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jan 2020 13:22:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D4AF87410
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jan 2020 13:22:16 +0000 (UTC)
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
IronPort-SDR: Ko7PtFIUmKqu/uKzS/3kb6uOcIPdYFEtzg4pdcQduqsrc5irA1DX5GcbpFI7FYyZ4cNuocAFQG
 Xlm/63c6OyDIqOTIM8GeHzAWOpZF2cTSqe9InrQhN0vSWH3z3/Xg9I7gBqrT4/D/Gg6bkPaLVl
 zIBFVa2lSWt7sorP4/TUNpu9MB/wbDaWjjxJ4Q7NbcnzTXNzkyVZyN8JKgQ7cJKQanX343ka9t
 ba1mI+DzVe5OA1UcDDN/iVbD8QIZShhXQoH8b/5fX58hgGBtoHMVd5TB/d/Nl8IOitlcb2z+rA
 Lrg=
X-IronPort-AV: E=Sophos;i="5.70,365,1574146800"; 
   d="scan'208";a="121043"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jan 2020 06:22:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 26 Jan 2020 06:22:15 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sun, 26 Jan 2020 06:22:15 -0700
Date: Sun, 26 Jan 2020 14:22:13 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-7-horatiu.vultur@microchip.com>
 <20200125163504.GF18311@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200125163504.GF18311@lunn.ch>
User-Agent: NeoMutt/20180716
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 06/10] net: bridge: mrp: switchdev:
 Extend switchdev API to offload MRP
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

The 01/25/2020 17:35, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> > SWITCHDEV_OBJ_ID_RING_TEST_MRP: This is used when to start/stop sending
> >   MRP_Test frames on the mrp ring ports. This is called only on nodes that have
> >   the role Media Redundancy Manager.
> 
> How do you handle the 'headless chicken' scenario? User space tells
> the port to start sending MRP_Test frames. It then dies. The hardware
> continues sending these messages, and the neighbours thinks everything
> is O.K, but in reality the state machine is dead, and when the ring
> breaks, the daemon is not there to fix it?
> 
> And it is not just the daemon that could die. The kernel could opps or
> deadlock, etc.
> 
> For a robust design, it seems like SWITCHDEV_OBJ_ID_RING_TEST_MRP
> should mean: start sending MRP_Test frames for the next X seconds, and
> then stop. And the request is repeated every X-1 seconds.

I totally missed this case, I will update this as you suggest.

> 
>      Andrew

-- 
/Horatiu

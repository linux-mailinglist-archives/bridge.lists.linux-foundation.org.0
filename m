Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3615D1377E5
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 21:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6B688770C;
	Fri, 10 Jan 2020 20:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4W4viWQxKMev; Fri, 10 Jan 2020 20:25:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0EC38771E;
	Fri, 10 Jan 2020 20:25:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D606C0881;
	Fri, 10 Jan 2020 20:25:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 91448C0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 896AF22219
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e5oBLnzLy9mC for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 20:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 30C8020198
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:25:05 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: rsu/XetFyvWK7mxD9x59OkwZl1lD/XF7oQMUNOHCU5uG9Bx4QJ5mRDNRhUIkxMSD8AeTk55ifw
 T7sB/kqBQ576Lnxg0ilNvndgT9R3hXSyxzQlOPQPiq7cPnJ4O01NZgY8BU2jWOO7It2RwzkmD6
 m51OL9I4ZroytPvlRILbTE8272a2Z11ncBR26JDerz1ZYXCviop3x5vIXODSKrncrS2rRww+yz
 woSq5eQ/pVS0kG+wITBoSuxd1k5ntZN36aJkF0OvGejv+bEk58VurCRNWiSQDtdC8YmqvT1pcr
 35g=
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="62274303"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 13:25:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 13:24:56 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 10 Jan 2020 13:24:56 -0700
Date: Fri, 10 Jan 2020 21:24:55 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>
Message-ID: <20200110202455.vku455ioa7vaj4dn@soft-dev3.microsemi.net>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110.112736.1849382588448237535.davem@davemloft.net>
 <3CD4F75F-C462-4CF2-B31A-C2E023D3F065@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <3CD4F75F-C462-4CF2-B31A-C2E023D3F065@cumulusnetworks.com>
User-Agent: NeoMutt/20180716
Cc: andrew@lunn.ch, jakub.kicinski@netronome.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vivien.didelot@gmail.com,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jiri@mellanox.com, jeffrey.t.kirsher@intel.com, dsahern@gmail.com,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Subject: Re: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support
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

> >With a userland implementation, what approach do you suggest for
> >DSA/switchdev offload
> >of this stuff?
> 
> Good question, there was no mention of that initially, or I missed it at least.
> There aren't many details about what/how will be offloaded right now.
> We need more information about what will be offloaded and how it will fit.
I think we should do a new version of the RFC-Patch with the hooks to
offload included. Just the signatures and the invocations should give
the context we are missing in the discussion.

Depending on how the discussion goes from there, we can then either work
on putting this in user-space or fix the issues pointed out in the
original attempt.

/Horatiu

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8105E14A3D3
	for <lists.bridge@lfdr.de>; Mon, 27 Jan 2020 13:28:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D84F784E49;
	Mon, 27 Jan 2020 12:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDw2cC4kOmTd; Mon, 27 Jan 2020 12:27:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C306384E60;
	Mon, 27 Jan 2020 12:27:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6440C0171;
	Mon, 27 Jan 2020 12:27:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3501EC0171
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 12:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23B74855D3
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 12:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbVhXaRJkE7d for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jan 2020 12:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D603816D8
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jan 2020 12:27:54 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Allan.Nielsen@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="Allan.Nielsen@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 4B1hpSLMfQHQjW00Ezbg18zveEZR30AOexDBQTrvB5wcXMHTG6JUGKbbqK2VG4B7aMcln5BDRQ
 z1zCIT/7uj1LVIBNUhkf0uBt3gky8JPa9uPCcukI7pc+lrO06vOtRimVWYvfK6ePOtn8PWb7c0
 ttssy+xiG10Ydg7BxvYodU6M1Up+ygaHgjln3TZeKeVUlnpusHukiODAS5P9qJO6O9aFRrI+Ko
 6Ng3J6g0aPCnuL1a110EZX46N2OoLQWB1KeaUzXXGVbym1SIPqUbknJqNKe+QhDLoA9V8RcvvC
 QUA=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="63842471"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 05:27:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 05:27:53 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 05:27:52 -0700
Date: Mon, 27 Jan 2020 13:27:52 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: =?utf-8?Q?J=C3=BCrgen?= Lambrecht <j.lambrecht@televic.com>
Message-ID: <20200127122752.g4eanjl2naazyfh3@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-7-horatiu.vultur@microchip.com>
 <20200125163504.GF18311@lunn.ch>
 <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
 <20200126155911.GJ18311@lunn.ch>
 <13ac391c-61f5-cb77-69a0-416b0390f50d@televic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13ac391c-61f5-cb77-69a0-416b0390f50d@televic.com>
Cc: ivecera@redhat.com, Andrew Lunn <andrew@lunn.ch>, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
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

Hi Jürgen,

On 27.01.2020 12:29, Jürgen Lambrecht wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>On 1/26/20 4:59 PM, Andrew Lunn wrote:
>> Given the design of the protocol, if the hardware decides the OS etc
>> is dead, it should stop sending MRP_TEST frames and unblock the ports.
>> If then becomes a 'dumb switch', and for a short time there will be a
>> broadcast storm. Hopefully one of the other nodes will then take over
>> the role and block a port.

>In my experience a closed loop should never happen. It can make
>software crash and give other problems.  An other node should first
>take over before unblocking the ring ports. (If this is possible - I
>only follow this discussion halfly)
>
>What is your opinion?
Having loops in the network is never a good thing - but to be honest, I
think it is more important that we ensure the design can survive and
recover from loops.

With the current design, it will be really hard to void loops when the
network boot. MRP will actually start with the ports blocked, but they
will be unblocked in the period from when the bridge is created and
until MRP is enabled. If we want to change this (which I'm not too keen
on), then we need to be able to block the ports while the bridge is
down.

And even if we do this, then we can not guarantee to avoid loops. Lets
assume we have a small ring with just 2 nodes: a MRM and a MRC. Lets
assume the MRM boots first. It will unblock both ports as the ring is
open. Now the MRC boots, and make the ring closed, and create a loop.
This will take some time (milliseconds) before the MRM notice this and
block one of the ports.

But while we are at this topic, we need to add some functionality to
the user-space application such that it can set the priority of the MRP
frames. We will get that fixed.

>(FYI: I made that mistake once doing a proof-of-concept ring design:
>during testing, when a "broken" Ethernet cable was "fixed" I had for a
>short time a loop, and then it happened often that that port of the
>(Marvell 88E6063) switch was blocked.  (To unblock, only solution was
>to bring that port down and up again, and then all "lost" packets came
>out in a burst.) That problem was caused by flow control (with pause
>frames), and disabling flow control fixed it, but flow-control is
>default on as far as I know.)
I see. It could be fun to see if what we have proposed so far will with
with such a switch.

/Allan


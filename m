Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFB114B21E
	for <lists.bridge@lfdr.de>; Tue, 28 Jan 2020 10:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFA7087BD3;
	Tue, 28 Jan 2020 09:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zy6Yec-Mbo+o; Tue, 28 Jan 2020 09:58:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAFB587BD7;
	Tue, 28 Jan 2020 09:58:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1ABFC0171;
	Tue, 28 Jan 2020 09:58:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 380F1C0171
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 09:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 267C4857A3
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 09:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EmyyE6EA4QKg for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jan 2020 09:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BF018577A
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 09:58:29 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Allan.Nielsen@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="Allan.Nielsen@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3ooP4EUi7o1dd/qLIe/RQWggY6ulveshOV6z0oFTdLuv+xQl1pxCsPDcLnaH+oRnFtC3URKFXe
 7zttOz4rd1/6TVfswOU28bHNKukny7Y57ki9GnCrgjYxIBMQ4MpinzUtc4zu/3HhL3iVPUH+OS
 digIMVKDca5tLyVB4JSJvObkOPqNl4I8X2CQ9vNeD8zZKHdY6Igrc8IHrAdqTAMs+fgfLI6Qu+
 jIwKc9POznwPlLhTlbHf85X8gjVdGh7YkRGEkYez4BTNfURhfgmylqoKwo0p4fgd86bi5B/xUM
 gAE=
X-IronPort-AV: E=Sophos;i="5.70,373,1574146800"; d="scan'208";a="64719401"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jan 2020 02:58:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jan 2020 02:58:24 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 28 Jan 2020 02:58:24 -0700
Date: Tue, 28 Jan 2020 10:58:23 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: =?utf-8?Q?J=C3=BCrgen?= Lambrecht <j.lambrecht@televic.com>
Message-ID: <20200128095823.limui36nes7e2hqh@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-7-horatiu.vultur@microchip.com>
 <20200125163504.GF18311@lunn.ch>
 <20200126132213.fmxl5mgol5qauwym@soft-dev3.microsemi.net>
 <20200126155911.GJ18311@lunn.ch>
 <13ac391c-61f5-cb77-69a0-416b0390f50d@televic.com>
 <20200127122752.g4eanjl2naazyfh3@lx-anielsen.microsemi.net>
 <8561814d-bfae-5e23-b0e8-a0e3adf800b4@televic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8561814d-bfae-5e23-b0e8-a0e3adf800b4@televic.com>
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

On 27.01.2020 15:39, Jürgen Lambrecht wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>On 1/27/20 1:27 PM, Allan W. Nielsen wrote:
>> Hi Jürgen,
>>
>> On 27.01.2020 12:29, Jürgen Lambrecht wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 1/26/20 4:59 PM, Andrew Lunn wrote:
>>>> Given the design of the protocol, if the hardware decides the OS etc
>>>> is dead, it should stop sending MRP_TEST frames and unblock the ports.
>>>> If then becomes a 'dumb switch', and for a short time there will be a
>>>> broadcast storm. Hopefully one of the other nodes will then take over
>>>> the role and block a port.
>This can probably be a configuration option in the hardware, how to fall-back.
>>
>>> In my experience a closed loop should never happen. It can make
>>> software crash and give other problems.  An other node should first
>>> take over before unblocking the ring ports. (If this is possible - I
>>> only follow this discussion halfly)
>>>
>>> What is your opinion?
>> Having loops in the network is never a good thing - but to be honest, I
>> think it is more important that we ensure the design can survive and
>> recover from loops.
>Indeed
>>
>> With the current design, it will be really hard to void loops when the
>> network boot. MRP will actually start with the ports blocked, but they
>> will be unblocked in the period from when the bridge is created and
>> until MRP is enabled. If we want to change this (which I'm not too keen
>> on), then we need to be able to block the ports while the bridge is
>> down.
>Our ring network is part of a bigger network. Loops are really not allowed.
That is understood, and should be avoided. But I assume that switches
which crashes is not allowed either ;-)

We will consider if we somehow can block the ports before/after a
user-space protocol kicks in. I can not promise anything, but we will
see what can be done.

>> And even if we do this, then we can not guarantee to avoid loops. Lets
>> assume we have a small ring with just 2 nodes: a MRM and a MRC. Lets
>> assume the MRM boots first. It will unblock both ports as the ring is
>> open. Now the MRC boots, and make the ring closed, and create a loop.
>> This will take some time (milliseconds) before the MRM notice this and
>> block one of the ports.
>In my view there is a bring-up and tear-down module needed. I don't
>know if it should be part of MRP or not? Probably not, so something on
>top of the mrp daemon.
If we need this kind of policies, then I agree it should be on top of or
out-side the user-space MRP daemon.

>> But while we are at this topic, we need to add some functionality to
>> the user-space application such that it can set the priority of the MRP
>> frames. We will get that fixed.
>Indeed! In my old design I had to give high priority, else the loop was
>wrongly closed at high network load.
Yes, I'm not surprised to hear that.

>I guess you mean the priority in the VLAN header?
>I think to remember one talked about the bride code being VLAN-agnostic.
Yes, if it has a VLAN header (which is optional). But even without the
VLAN header these frames needs to be classified to a high priority
queue.

>>> (FYI: I made that mistake once doing a proof-of-concept ring design:
>>> during testing, when a "broken" Ethernet cable was "fixed" I had for a
>>> short time a loop, and then it happened often that that port of the
>>> (Marvell 88E6063) switch was blocked.  (To unblock, only solution was
>>> to bring that port down and up again, and then all "lost" packets came
>>> out in a burst.) That problem was caused by flow control (with pause
>>> frames), and disabling flow control fixed it, but flow-control is
>>> default on as far as I know.)
>> I see. It could be fun to see if what we have proposed so far will with
>> with such a switch.
>
>Depending on the projects I could work on it later this year (or only next year or not..)
Sounds good - no hurry.

/Allan

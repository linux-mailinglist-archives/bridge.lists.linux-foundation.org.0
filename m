Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAAB149769
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 20:16:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E24F88675F;
	Sat, 25 Jan 2020 19:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLXF+CpYRYpa; Sat, 25 Jan 2020 19:16:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76688866FC;
	Sat, 25 Jan 2020 19:16:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3DAE5C0174;
	Sat, 25 Jan 2020 19:16:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87A93C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7063320401
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ea-cN536wMT1 for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 19:16:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 78172203E5
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 19:16:15 +0000 (UTC)
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
IronPort-SDR: x4hJIa9iFYOUSnyqOswuEs0+n+ZxsmpfPXpEgiDhuhDL0Gwz6TaW3pQJqhqTRYRY8gh+3zqhda
 4w1HvNB6gKkxBTF/2gIHo9+DBL2gd2zi2Orhow8IJD3v21SpsDEfhDSIDwCC3m1ah7LgXCUQ/O
 NRS+wpWlgnfnKYhumxYyfCRN7yyFCNHRebzFu1l9AUhz63JQ6F4VUv++HJ4ltlqUOfqb1Sjk0O
 nGm/t/9lu1JP+PHCsNE+SicBt2LBUxoWDLOj0dKn0q24PQhb56yAGy51iCca6qNLHM3zbMsXDx
 Zto=
X-IronPort-AV: E=Sophos;i="5.70,362,1574146800"; d="scan'208";a="63745682"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jan 2020 12:16:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 25 Jan 2020 12:16:11 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 25 Jan 2020 12:16:13 -0700
Date: Sat, 25 Jan 2020 20:16:12 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200125191612.5dlzlvb7g2bucqna@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-4-horatiu.vultur@microchip.com>
 <20200124174315.GC13647@lunn.ch>
 <20200125113726.ousbmm4n3ab4xnqt@soft-dev3.microsemi.net>
 <20200125152023.GA18311@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200125152023.GA18311@lunn.ch>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 03/10] net: bridge: mrp: Add MRP
 interface used by netlink
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

On 25.01.2020 16:20, Andrew Lunn wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>On Sat, Jan 25, 2020 at 12:37:26PM +0100, Horatiu Vultur wrote:
>> The 01/24/2020 18:43, Andrew Lunn wrote:
>> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>> >
>> > > br_mrp_flush - will flush the FDB.
>> >
>> > How does this differ from a normal bridge flush? I assume there is a
>> > way for user space to flush the bridge FDB.
>>
>> Hi,
>>
>> If I seen corectly the normal bridge flush will clear the entire FDB for
>> all the ports of the bridge. In this case it is require to clear FDB
>> entries only for the ring ports.
>
>Maybe it would be better to extend the current bridge netlink call to
>be able to pass an optional interface to be flushed?  I'm not sure it
>is a good idea to have two APIs doing very similar things.
I agree.

And when looking at this again, I start to think that we should have
extended the existing netlink interface with new commands, instead of
adding a generic netlink.

/Allan


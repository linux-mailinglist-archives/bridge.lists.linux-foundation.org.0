Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA646165E00
	for <lists.bridge@lfdr.de>; Thu, 20 Feb 2020 14:00:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E70A587C20;
	Thu, 20 Feb 2020 13:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HdeT+xHSMjg4; Thu, 20 Feb 2020 13:00:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A95987BFE;
	Thu, 20 Feb 2020 13:00:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A20CC013E;
	Thu, 20 Feb 2020 13:00:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BB1EEC013E
 for <bridge@lists.linux-foundation.org>; Thu, 20 Feb 2020 13:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A571C86C1A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Feb 2020 13:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xq8q-0eAVMWE for <bridge@lists.linux-foundation.org>;
 Thu, 20 Feb 2020 13:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6032F86D39
 for <bridge@lists.linux-foundation.org>; Thu, 20 Feb 2020 13:00:09 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Allan.Nielsen@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="Allan.Nielsen@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ejEhHI9zHVlatcJjm0o7ug5tg1ZfML6cZwk5F3814PJj4e7ak3gSAflN764jDCj2OSiP5ryaGK
 /G0SYQOsepLhXNZgkO7D8hiegxxOvsDGcQdnll4+5pgeVQKHpx2pqWKkQPDUmuBzzQ94/IrWbB
 r7jb0nIOXcSdZ7hsOfz9flrbQ2suOoXiFkHQrTwgk0jalHiRLRRA+E4hv1Wfy2nkENMILrpkMZ
 A39/jiRC6q6rbfxNG17J45h+RaDytKbW93dMIXAvQixS0czOhI428gzHqVJ89WmhTJQ+dcxncV
 hS4=
X-IronPort-AV: E=Sophos;i="5.70,464,1574146800"; d="scan'208";a="64820032"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Feb 2020 06:00:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Feb 2020 06:00:07 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 20 Feb 2020 06:00:07 -0700
Date: Thu, 20 Feb 2020 14:00:07 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200220130007.o4tdhyopwrxkr33c@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-4-horatiu.vultur@microchip.com>
 <20200124174315.GC13647@lunn.ch>
 <20200125113726.ousbmm4n3ab4xnqt@soft-dev3.microsemi.net>
 <20200125152023.GA18311@lunn.ch>
 <20200125191612.5dlzlvb7g2bucqna@lx-anielsen.microsemi.net>
 <20200126132843.k4rzn7vfti7lqvos@soft-dev3.microsemi.net>
 <08c2d3f8-8d70-730c-95d5-8493e6919f3e@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <08c2d3f8-8d70-730c-95d5-8493e6919f3e@cumulusnetworks.com>
Cc: ivecera@redhat.com, Andrew Lunn <andrew@lunn.ch>, jiri@resnulli.us,
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

On 20.02.2020 11:08, Nikolay Aleksandrov wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>On 26/01/2020 15:28, Horatiu Vultur wrote:
>> The 01/25/2020 20:16, Allan W. Nielsen wrote:
>>> On 25.01.2020 16:20, Andrew Lunn wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>>
>>>> On Sat, Jan 25, 2020 at 12:37:26PM +0100, Horatiu Vultur wrote:
>>>>> The 01/24/2020 18:43, Andrew Lunn wrote:
>>>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>>>>
>>>>>>> br_mrp_flush - will flush the FDB.
>>>>>>
>>>>>> How does this differ from a normal bridge flush? I assume there is a
>>>>>> way for user space to flush the bridge FDB.
>>>>>
>>>>> Hi,
>>>>>
>>>>> If I seen corectly the normal bridge flush will clear the entire FDB for
>>>>> all the ports of the bridge. In this case it is require to clear FDB
>>>>> entries only for the ring ports.
>>>>
>>>> Maybe it would be better to extend the current bridge netlink call to
>>>> be able to pass an optional interface to be flushed?  I'm not sure it
>>>> is a good idea to have two APIs doing very similar things.
>>> I agree.
>> I would look over this.
>>
>
>There's already a way to flush FDBs per-port - IFLA_BRPORT_FLUSH.
>
>>>
>>> And when looking at this again, I start to think that we should have
>>> extended the existing netlink interface with new commands, instead of
>>> adding a generic netlink.
>> We could do also that. The main reason why I have added a new generic
>> netlink was that I thought it would be clearer what commands are for MRP
>> configuration. But if you think that we should go forward by extending
>> existing netlink interface, that is perfectly fine for me.
>>
>>>
>>> /Allan
>>>
>>
>
>I don't mind extending the current netlink interface but the bridge already has
>a huge (the largest) set of options and each time we add a new option we have
>to adjust RTNL_MAX_TYPE. If you do decide to go this way maybe look into nesting
>all the MRP options under one master MRP element into the bridge options, example:
>[IFLA_BR_MRP]
>  [IFLA_BR_MRP_X]
>  [IFLA_BR_MRP_Y]
>  ...
Ahh, did not see this mail before responsing to the other one.

We can make it part of the BR netlink then.

/Allan


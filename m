Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB70149405
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 09:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F18086937;
	Sat, 25 Jan 2020 08:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kh2BquIkiMKs; Sat, 25 Jan 2020 08:45:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A847870D0;
	Sat, 25 Jan 2020 08:45:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D34E1C0174;
	Sat, 25 Jan 2020 08:45:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8D22C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 21:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C64EF22E3F
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 21:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGTzTBVB0g-n for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 21:04:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 7EEDF2013C
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 21:04:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 13:04:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="428408414"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2020 13:04:33 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20200124203406.2ci7w3w6zzj6yibz@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124203406.2ci7w3w6zzj6yibz@lx-anielsen.microsemi.net>
Date: Fri, 24 Jan 2020 13:05:45 -0800
Message-ID: <87zhecimza.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Sat, 25 Jan 2020 08:45:07 +0000
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 00/10] net: bridge: mrp: Add support
	for Media Redundancy Protocol (MRP)
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

Hi,

"Allan W. Nielsen" <allan.nielsen@microchip.com> writes:

> On 24.01.2020 17:18, Horatiu Vultur wrote:
>>Media Redundancy Protocol is a data network protocol standardized by
>>International Electrotechnical Commission as IEC 62439-2. It allows rings of
>>Ethernet switches to overcome any single failure with recovery time faster than
>>STP. It is primarily used in Industrial Ethernet applications.
>>
>>Based on the previous RFC[1][2], the MRP state machine and all the
>>timers were moved to userspace. A generic netlink interface is added to
>>allow configuring the HW, and logic added to to implement the MRP
>>specific forwarding rules.
>>
>>The userspace application that is using the new netlink can be found here[3].
>>
>>The current implementation both in kernel and userspace supports only 2 roles:
>>
>>  MRM - this one is responsible to send MRP_Test and MRP_Topo frames on both
>>  ring ports. It needs to process MRP_Test to know if the ring is open or
>>  closed. This operation is desired to be offloaded to the HW because it
>>  requires to generate and process up to 4000 frames per second. Whenever it
>>  detects that the ring open it sends MRP_Topo frames to notify all MRC about
>>  changes in the topology. MRM needs also to process MRP_LinkChange frames,
>>  these frames are generated by the MRC. When the ring is open the the state
>>  of both ports is to forward frames and when the ring is closed then the
>>  secondary port is blocked.
>>
>>  MRC - this one is responsible to forward MRP frames between the ring ports.
>>  In case one of the ring ports gets a link down or up, then MRC will generate
>>  a MRP_LinkChange frames. This node should also process MRP_Topo frames and to
>>  clear its FDB when it receives this frame.
>>
>> Userspace
>>               Deamon +----------+ Client
>>                +
>>                |
>> +--------------|-----------------------------------------+
>>  Kernel        |
>>                + Netlink
>>
>>                |                              + Interrupt
>>                |                              |
>> +--------------|------------------------------|----------+
>>  HW            | Switchdev                    |
>>                +                              |
>>
>>The user interacts using the client (called 'mrp'), the client talks to the
>>deamon (called 'mrp_server'), which talks with the kernel using netlink. The
>>kernel will try to offload the requests to the HW via switchdev API. For this a
>>new generic netlink interface was added to the bridge.
>>
>>If the kernel cannot offload MRP to HW (maybe it does not have a switchdev
>>driver, or it is just not supported), then all the netlink calls will return
>>-EOPNOTSUPP. In this case the user-space deamon fallback to SW only
>>implementation.
> Horatiu and I have spend a bit of time discussing what you be best here.
> An alternative to this would be to do the SW fallback in the kernel,
> instead of user-land. This would mean that the user application does not
> need to know if the function is offloaded (or partly offloaded) to HW.
>
> We went with this approch to make the kernel part as simple as possible.
> The alternative would still be much simpler than the first version
> posted - but it would require a bit more.
>
> Both options has pros and cons, and we looking forward to the
> community's view on this.

I have one idea and one question.

The idea is:

'net/hsr' already has a software implementation of the HSR replication
tag (and some of the handling necessary). So what came to mind is to
add the necessary switchdev functions to the master HSR device. If
that's done, then it sounds that the rest will mostly work.

For the user the flow would be something like:

 - User takes two (or more interfaces) and set them as slaves of the HSR
   master device, say 'hsr0';

 - 'hsr0' implements some of the switchdev functionality so we can use
   the MRP userspace components on it;

Does it look like something that could work?

The question that I have is: what's the relation of IEC 62439-2 to IEEE
802.1CB? 


Cheers,
--
Vinicius

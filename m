Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EF71497E5
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 22:18:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 978BF85218;
	Sat, 25 Jan 2020 21:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+vHi9FAq6Ki; Sat, 25 Jan 2020 21:18:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 003DE85CE1;
	Sat, 25 Jan 2020 21:18:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5DF4C18DC;
	Sat, 25 Jan 2020 21:18:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DEA55C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 21:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D042887E17
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 21:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ljR5taQfS78 for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 21:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D0EB87E16
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 21:18:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 13:18:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,363,1574150400"; d="scan'208";a="428627494"
Received: from apricoch-mobl2.amr.corp.intel.com (HELO ellie) ([10.252.137.80])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jan 2020 13:18:09 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
In-Reply-To: <20200125094441.kgbw7rdkuleqn23a@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124203406.2ci7w3w6zzj6yibz@lx-anielsen.microsemi.net>
 <87zhecimza.fsf@linux.intel.com>
 <20200125094441.kgbw7rdkuleqn23a@lx-anielsen.microsemi.net>
Date: Sat, 25 Jan 2020 13:18:09 -0800
Message-ID: <87imkz1bhq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
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

> Hi Vinicius,
>
> On 24.01.2020 13:05, Vinicius Costa Gomes wrote:
>>I have one idea and one question.
>
> Let me answer the question before dicussing the idea.
>
>>The question that I have is: what's the relation of IEC 62439-2 to IEEE
>>802.1CB?
> HSR and 802.1CB (often called FRER - Frame Replication and Elimination
> for Reliability) shares a lot of functionallity. It is a while since I
> read the 802.1CB standard, and I have only skimmed the HSR standard, but
> as far as I understand 802.1CB is a super set of HSR. Also, I have not
> studdied the HSR implementation.
>
> Both HSR and 802.1CB replicate the frame and eliminate the additional
> copies. If just 1 of the replicated fraems arrives, then higher layer
> applications will not see any traffic lose.
>
> MRP is different, it is a ring protocol, much more like ERPS defined in
> G.8032 by ITU. Also, MRP only make sense in switches, it does not make
> sense in a host (like HSR does).
>
> In MRP, the higher layer application frames are not replicated. They are
> send on either 1 port or the other.
>
> Consider this exaple, with 3 nodes creating a ring. All notes has a br0
> device which includes the 2 NICs.
>
>      +------------------------------------------+
>      |                                          |
>      +-->|H1|<---------->|H2|<---------->|H3|<--+
>      eth0    eth1    eth0    eth1    eth0    eth1
>
> Lets say that H1 is the manager (MRM), and H2 + H3 is the client (MRC).
>
> The MRM will now block one of the ports, lets say eth0, to prevent a
> loop:
>
>      +------------------------------------------+
>      |                                          |
>      +-->|H1|<---------->|H2|<---------->|H3|<--+
>      eth0    eth1    eth0    eth1    eth0    eth1
>       ^
>       |
>    Blocked
>
>
> This mean that H1 can reach H2 and H3 via eth1
> This mean that H2 can reach H1 eth0
> This mean that H2 can reach H3 eth1
> This mean that H3 can reach H1 and H2 via eth0
>
> This is normal forwarding, doen by the MAC table.
>
> Lets say that the link between H1 and H2 goes down:
>
>      +------------------------------------------+
>      |                                          |
>      +-->|H1|<---  / --->|H2|<---------->|H3|<--+
>      eth0    eth1    eth0    eth1    eth0    eth1
>
> H1 will now observe that the test packets it sends on eth1, is not
> received in eth0, meaninf that the ring is open, and it will unblock the
> eth0 device, and send a message to all the nodes that they need to flush
> the mac-table.
>
> This mean that H1 can reach H2 and H3 via eth0
> This mean that H2 can reach H1 and H3 via eth1
> This mean that H3 can reach H2 eth0
> This mean that H3 can reach H1 eth1
>
> In all cases, higher layer application will use the br0 device to send
> and receive frames. These higher layer applications will not see any
> interruption (except during the few milliseconds it takes to unblock, and
> flush the mac tables).
>
> Sorry for the long explanation, but it is important to understand this
> when discussion the design.

Not at all, thanks a lot. Now it's clear to me that MRP and 802.1CB are
really different beasts, with different use cases/limitations:

 - MRP: now that we have a ring, let's break the loop, and use the
   redudancy provided by the ring to detect the problem and "repair" the
   network if something bad happens;

 - 802.1CB: now that we have a ring, let's send packets through
   two different paths, and find a way to discard duplicated ones, so
   even if something bad happens the packet will reach its destination;

(I know that it's more complicated than that in reality :-)

>
>>The idea is:
>>
>>'net/hsr' already has a software implementation of the HSR replication
>>tag (and some of the handling necessary). So what came to mind is to
>>add the necessary switchdev functions to the master HSR device. If
>>that's done, then it sounds that the rest will mostly work.
> Maybe something could be done here, but it will not help MRP, as they do
> not really share any functionality ;-)
>
>>For the user the flow would be something like:
>> - User takes two (or more interfaces) and set them as slaves of the HSR
>>   master device, say 'hsr0';
>> - 'hsr0' implements some of the switchdev functionality so we can use
>>   the MRP userspace components on it;
> For MRP to work, it really need the bridge interface, and the higher
> layer applications needs to use the br0 device.
>
>>Does it look like something that could work?
> It would make much more sense if we discussed implementing 802.1CB in
> some form (which we might get to).

I see. Agreed.

>
> /Allan


Cheers,
--
Vinicius

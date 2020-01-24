Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2088148F68
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 21:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E311687856;
	Fri, 24 Jan 2020 20:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3LNwDBKR+s6k; Fri, 24 Jan 2020 20:34:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7326087587;
	Fri, 24 Jan 2020 20:34:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 547EEC0174;
	Fri, 24 Jan 2020 20:34:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31465C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 20:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DA1F88341
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 20:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDOcC9J0GjJw for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 20:34:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 193748833B
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 20:34:09 +0000 (UTC)
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
IronPort-SDR: 3YHrMmKfAaNSmjgNIWcYFDjJS5TenZH+SEoyhA1oQU+/qf3vd4okYustK5QAteotifk2hEX3BK
 avFv/fbbjEZiOnZN6w2udwaUTIUzzEHmNl/4KcVRK0ZmiPgNWTYIiQCb3ojZS57DdYjijawqkH
 So1RHoCfgdDqkW4itfL8tWikljY3rI4nNpFlr0dnxWGrLHPWkVXPpiuEJvsB2VOvPkCt3L0SGK
 9R3DPXVy2H0AuV2aEZyoOKij0orQX6j+U7M/vUbqEeu8V3e3ctvPYHw8s8gc4TGs08snKvKE4a
 IvM=
X-IronPort-AV: E=Sophos;i="5.70,358,1574146800"; d="scan'208";a="63691199"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 13:34:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 13:34:07 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 24 Jan 2020 13:34:05 -0700
Date: Fri, 24 Jan 2020 21:34:06 +0100
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200124203406.2ci7w3w6zzj6yibz@lx-anielsen.microsemi.net>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200124161828.12206-1-horatiu.vultur@microchip.com>
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

On 24.01.2020 17:18, Horatiu Vultur wrote:
>Media Redundancy Protocol is a data network protocol standardized by
>International Electrotechnical Commission as IEC 62439-2. It allows rings of
>Ethernet switches to overcome any single failure with recovery time faster than
>STP. It is primarily used in Industrial Ethernet applications.
>
>Based on the previous RFC[1][2], the MRP state machine and all the
>timers were moved to userspace. A generic netlink interface is added to
>allow configuring the HW, and logic added to to implement the MRP
>specific forwarding rules.
>
>The userspace application that is using the new netlink can be found here[3].
>
>The current implementation both in kernel and userspace supports only 2 roles:
>
>  MRM - this one is responsible to send MRP_Test and MRP_Topo frames on both
>  ring ports. It needs to process MRP_Test to know if the ring is open or
>  closed. This operation is desired to be offloaded to the HW because it
>  requires to generate and process up to 4000 frames per second. Whenever it
>  detects that the ring open it sends MRP_Topo frames to notify all MRC about
>  changes in the topology. MRM needs also to process MRP_LinkChange frames,
>  these frames are generated by the MRC. When the ring is open the the state
>  of both ports is to forward frames and when the ring is closed then the
>  secondary port is blocked.
>
>  MRC - this one is responsible to forward MRP frames between the ring ports.
>  In case one of the ring ports gets a link down or up, then MRC will generate
>  a MRP_LinkChange frames. This node should also process MRP_Topo frames and to
>  clear its FDB when it receives this frame.
>
> Userspace
>               Deamon +----------+ Client
>                +
>                |
> +--------------|-----------------------------------------+
>  Kernel        |
>                + Netlink
>
>                |                              + Interrupt
>                |                              |
> +--------------|------------------------------|----------+
>  HW            | Switchdev                    |
>                +                              |
>
>The user interacts using the client (called 'mrp'), the client talks to the
>deamon (called 'mrp_server'), which talks with the kernel using netlink. The
>kernel will try to offload the requests to the HW via switchdev API. For this a
>new generic netlink interface was added to the bridge.
>
>If the kernel cannot offload MRP to HW (maybe it does not have a switchdev
>driver, or it is just not supported), then all the netlink calls will return
>-EOPNOTSUPP. In this case the user-space deamon fallback to SW only
>implementation.
Horatiu and I have spend a bit of time discussing what you be best here.
An alternative to this would be to do the SW fallback in the kernel,
instead of user-land. This would mean that the user application does not
need to know if the function is offloaded (or partly offloaded) to HW.

We went with this approch to make the kernel part as simple as possible.
The alternative would still be much simpler than the first version
posted - but it would require a bit more.

Both options has pros and cons, and we looking forward to the
community's view on this.

>There are required changes to the SW bridge to be able to run the MRP. First the
>bridge needs to initialize the netlink interface. And second it needs to know if
>a MRP frame was received on a MRP ring port. In case it was received the SW
>bridge should not forward the frame it needs to redirected to upper layes. In
>case it was not received on a ring port then it just forwards it as usual.
>
>To be able to offload this to the HW, it was required to extend the switchdev
>API.
>
>If this will be accepted then in the future the netlink interface can be
>expended with multiple attributes which are required by different roles of the
>MRP. Like Media Redundancy Automanager(MRA), Media Interconnect Manager(MIM) and
>Media Interconnect Client(MIC).
>
>[1] https://www.spinics.net/lists/netdev/msg623647.html
>[2] https://www.spinics.net/lists/netdev/msg624378.html
>[3] https://github.com/microchip-ung/mrp/tree/patch-v3
>
>Horatiu Vultur (10):
>  net: bridge: mrp: Expose mrp attributes.
>  net: bridge: mrp: Expose function br_mrp_port_open
>  net: bridge: mrp: Add MRP interface used by netlink
>  net: bridge: mrp: Add generic netlink interface to configure MRP
>  net: bridge: mrp: Update MRP interface to add switchdev support
>  net: bridge: mrp: switchdev: Extend switchdev API to offload MRP
>  net: bridge: mrp: switchdev: Implement MRP API for switchdev
>  net: bridge: mrp: Connect MRP api with the switchev API
>  net: bridge: mrp: Integrate MRP into the bridge
>  net: bridge: mrp: Update Kconfig and Makefile
>
> include/linux/mrp_bridge.h      |  25 ++
> include/net/switchdev.h         |  51 +++
> include/uapi/linux/if_ether.h   |   1 +
> include/uapi/linux/mrp_bridge.h | 118 ++++++
> net/bridge/Kconfig              |  12 +
> net/bridge/Makefile             |   2 +
> net/bridge/br.c                 |  11 +
> net/bridge/br_device.c          |   3 +
> net/bridge/br_if.c              |   6 +
> net/bridge/br_input.c           |  14 +
> net/bridge/br_mrp.c             | 193 ++++++++++
> net/bridge/br_mrp_netlink.c     | 655 ++++++++++++++++++++++++++++++++
> net/bridge/br_mrp_switchdev.c   | 147 +++++++
> net/bridge/br_private.h         |  14 +
> net/bridge/br_private_mrp.h     |  58 +++
> 15 files changed, 1310 insertions(+)
> create mode 100644 include/linux/mrp_bridge.h
> create mode 100644 include/uapi/linux/mrp_bridge.h
> create mode 100644 net/bridge/br_mrp.c
> create mode 100644 net/bridge/br_mrp_netlink.c
> create mode 100644 net/bridge/br_mrp_switchdev.c
> create mode 100644 net/bridge/br_private_mrp.h
>
>-- 
>2.17.1
>
/Allan

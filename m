Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A581377C4
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 21:12:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3163888516;
	Fri, 10 Jan 2020 20:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSLWbb+YeoZP; Fri, 10 Jan 2020 20:12:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7148A8850A;
	Fri, 10 Jan 2020 20:12:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4DC3CC0881;
	Fri, 10 Jan 2020 20:12:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16307C0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 028E12226E
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQeNGPGELezj for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 20:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id B3CAC22219
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 20:12:51 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Horatiu.Vultur@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="Horatiu.Vultur@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Horatiu.Vultur@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Horatiu.Vultur@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RsIxXXDtMziDLP2OETwv1zuBtmRv/8ykYlfq5EMFaCPIb74QPVzZ5Z+ZM3+9WKXE+TI7R6TaNS
 g1wTxdgRJ9Oo8VvK9u1l77IfAMsAAfV33Qz6r4X0tATrDVoD5/mMpFMVeiP4rzhfhyQrIHaEYv
 QgxhIbzd09WWHW+YSNk5/fqt2j+oaM0G4WHryye0vycqDfjfmwZzwjQ2MX52dAVa2B0FYXH2yP
 AgU23LhXMHFM5powJXQtXhVtscTtYqNNVNoNhDdmDvhG0M9ZKWz6mzWR5GW5FM9zKxq9ZbL//M
 a6I=
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="62916906"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 13:12:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 13:12:48 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 10 Jan 2020 13:12:47 -0700
Date: Fri, 10 Jan 2020 21:12:48 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20200110201248.tletol7glyr4soqz@soft-dev3.microsemi.net>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110160456.enzomhfsce7bptu3@soft-dev3.microsemi.net>
 <CA+h21hrq7U4EdqSgpYQRjK8rkcJdvD5jXCSOH_peA-R4xCocTg@mail.gmail.com>
 <20200110172536.42rdfwdc6eiwsw7m@soft-dev3.microsemi.net>
 <20200110175608.GK19739@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200110175608.GK19739@lunn.ch>
User-Agent: NeoMutt/20180716
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 anirudh.venkataramanan@intel.com, Jiri
 Pirko <jiri@mellanox.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 David Ahern <dsahern@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
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

The 01/10/2020 18:56, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> > > Horatiu, could you also give some references to the frames that need
> > > to be sent. I've no idea what information they need to contain, if the
> > > contents is dynamic, or static, etc.
> > It is dynamic - but trivial...
> 
> If it is trivial, i don't see why you are so worried about abstracting
> it?
Maybe we misunderstood each other. When you asked if it is dynamic or
static, I thought you meant if it is the same frame being send repeated
or if it needs to be changed. It needs to be changed but the changes are
trivial, but it means that a non-MRP aware frame generator can't
properly offload this.

> 
> > Here is a dump from WireShark with
> > annotation on what our HW can update:
> >
> > Ethernet II, Src: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1), Dst: Iec_00:00:01 (01:15:4e:00:00:01)
> >     Destination: Iec_00:00:01 (01:15:4e:00:00:01)
> >     Source: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
> >     Type: MRP (0x88e3)
> > PROFINET MRP MRP_Test, MRP_Common, MRP_End
> >     MRP_Version: 1
> >     MRP_TLVHeader.Type: MRP_Test (0x02)
> >         MRP_TLVHeader.Type: MRP_Test (0x02)
> >         MRP_TLVHeader.Length: 18
> >         MRP_Prio: 0x1f40 High priorities
> >         MRP_SA: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
> >         MRP_PortRole: Primary ring port (0x0000)
> >         MRP_RingState: Ring closed (0x0001)
> >         MRP_Transition: 0x0001
> >         MRP_TimeStamp [ms]: 0x000cf574             <---------- Updated automatic
> >     MRP_TLVHeader.Type: MRP_Common (0x01)
> >         MRP_TLVHeader.Type: MRP_Common (0x01)
> >         MRP_TLVHeader.Length: 18
> >         MRP_SequenceID: 0x00e9                     <---------- Updated automatic
> >         MRP_DomainUUID: ffffffff-ffff-ffff-ffff-ffffffffffff
> >     MRP_TLVHeader.Type: MRP_End (0x00)
> >         MRP_TLVHeader.Type: MRP_End (0x00)
> >         MRP_TLVHeader.Length: 0
> >
> > But all the fields can change, but to change the other fields we need to
> > interact with the HW. Other SoC may have other capabilities in their
> > offload. As an example, if the ring becomes open then the fields
> > MRP_RingState and MRP_Transition need to change and in our case this
> > requires SW interference.
> 
> Isn't SW always required? You need to tell your state machine that the
> state has changed.
In the manager role(MRM), SW is always required. The client can be
implemented simply by limiting the flood-mask of the L2 multicast MAC
used.

The auto and the interconnect roles also required SW to drive the
protocol. These roles are not part of this patch set.

> 
> > Would you like a PCAP file as an example? Or do you want a better
> > description of the frame format.
> 
> I was hoping for a link to an RFC, or some standards document.
Yeah, I would love to have that as well... Unfortunately this is
standardized by IEC, and the standards are not free.
It can be bought here: https://webstore.iec.ch/publication/24434

Due to the copyright/license of the PDF, I'm not allowed to give you a
copy of the one I have.

> 
>   Andrew

-- 
/Horatiu

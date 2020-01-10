Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38BF13755C
	for <lists.bridge@lfdr.de>; Fri, 10 Jan 2020 18:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1475F884DC;
	Fri, 10 Jan 2020 17:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sO6PZQ9PfUkF; Fri, 10 Jan 2020 17:56:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB134884D8;
	Fri, 10 Jan 2020 17:56:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1BFDC1D7D;
	Fri, 10 Jan 2020 17:56:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C0FAC0881
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 17:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 493E8884D5
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 17:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VHoKoTFGRDc for <bridge@lists.linux-foundation.org>;
 Fri, 10 Jan 2020 17:56:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2DDB884D0
 for <bridge@lists.linux-foundation.org>; Fri, 10 Jan 2020 17:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tFD8L80AsAe/peAMgmqdDb1tPStURhWLKJa2Uvdi4vU=; b=fKvuaQLtH4HcOSF5kILzhiKsch
 57abGmvJNwtg/YVurNp6yl/6XsT3LGnrARvgVUqWlEjJGpwf9xo3oOcTHHUEhs44h6EniGwDjWW0A
 rJ7T6A014uAM1f0nQmq/+6uaoOseT07TreQx/MJIeis6pjwZTmb8jtflRl2vVr1RNxyw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ipyW0-0002YJ-Ik; Fri, 10 Jan 2020 18:56:08 +0100
Date: Fri, 10 Jan 2020 18:56:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200110175608.GK19739@lunn.ch>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <6f1936e9-97e5-9502-f062-f2925c9652c9@cumulusnetworks.com>
 <20200110160456.enzomhfsce7bptu3@soft-dev3.microsemi.net>
 <CA+h21hrq7U4EdqSgpYQRjK8rkcJdvD5jXCSOH_peA-R4xCocTg@mail.gmail.com>
 <20200110172536.42rdfwdc6eiwsw7m@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200110172536.42rdfwdc6eiwsw7m@soft-dev3.microsemi.net>
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 anirudh.venkataramanan@intel.com, Jiri Pirko <jiri@mellanox.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, David Ahern <dsahern@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>
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

> > Horatiu, could you also give some references to the frames that need
> > to be sent. I've no idea what information they need to contain, if the
> > contents is dynamic, or static, etc.
> It is dynamic - but trivial...

If it is trivial, i don't see why you are so worried about abstracting
it?

> Here is a dump from WireShark with
> annotation on what our HW can update:
> 
> Ethernet II, Src: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1), Dst: Iec_00:00:01 (01:15:4e:00:00:01)
>     Destination: Iec_00:00:01 (01:15:4e:00:00:01)
>     Source: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
>     Type: MRP (0x88e3)
> PROFINET MRP MRP_Test, MRP_Common, MRP_End
>     MRP_Version: 1
>     MRP_TLVHeader.Type: MRP_Test (0x02)
>         MRP_TLVHeader.Type: MRP_Test (0x02)
>         MRP_TLVHeader.Length: 18
>         MRP_Prio: 0x1f40 High priorities
>         MRP_SA: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
>         MRP_PortRole: Primary ring port (0x0000)
>         MRP_RingState: Ring closed (0x0001)
>         MRP_Transition: 0x0001
>         MRP_TimeStamp [ms]: 0x000cf574             <---------- Updated automatic
>     MRP_TLVHeader.Type: MRP_Common (0x01)
>         MRP_TLVHeader.Type: MRP_Common (0x01)
>         MRP_TLVHeader.Length: 18
>         MRP_SequenceID: 0x00e9                     <---------- Updated automatic
>         MRP_DomainUUID: ffffffff-ffff-ffff-ffff-ffffffffffff
>     MRP_TLVHeader.Type: MRP_End (0x00)
>         MRP_TLVHeader.Type: MRP_End (0x00)
>         MRP_TLVHeader.Length: 0
> 
> But all the fields can change, but to change the other fields we need to
> interact with the HW. Other SoC may have other capabilities in their
> offload. As an example, if the ring becomes open then the fields
> MRP_RingState and MRP_Transition need to change and in our case this
> requires SW interference.

Isn't SW always required? You need to tell your state machine that the
state has changed.

> Would you like a PCAP file as an example? Or do you want a better
> description of the frame format.

I was hoping for a link to an RFC, or some standards document.

  Andrew

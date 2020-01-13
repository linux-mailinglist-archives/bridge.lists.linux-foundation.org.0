Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0201392F6
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 15:01:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A14AD1FF98;
	Mon, 13 Jan 2020 14:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rcTwV+AaaZmC; Mon, 13 Jan 2020 14:01:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 6388A203CE;
	Mon, 13 Jan 2020 14:01:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52893C077D;
	Mon, 13 Jan 2020 14:01:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FA69C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 14:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07EEE203CE
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 14:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NmoGMPaM5XdO for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 14:01:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 72F271FF98
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 14:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cELMnT1Jt7j4w7vyuZ1BE3RQ7rFJoxX50inLYK5rNEs=; b=bDV2GGr/nOQ4Xwcynjkr+lgysY
 tdy8YtWaQebbRIGXNe90CR5MsN8hNowk8dcfkDI72H8aHvb8VrOK71q8HaTUbviGFWWanixUCUmhm
 T1gcsImmAde1jIQfe9xoIbE26SSWp93ciQoBkhgV4hSNtu3GRsD55nwzUxyR4bmCWagU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ir0H0-0004M8-23; Mon, 13 Jan 2020 15:00:54 +0100
Date: Mon, 13 Jan 2020 15:00:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200113140053.GE11788@lunn.ch>
References: <20200113124620.18657-1-horatiu.vultur@microchip.com>
 <20200113124620.18657-5-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200113124620.18657-5-horatiu.vultur@microchip.com>
Cc: ivecera@redhat.com, jakub.kicinski@netronome.com,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 vivien.didelot@gmail.com, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, dsahern@gmail.com, jiri@resnulli.us,
 olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next Patch v2 4/4] net: bridge: mrp:
 switchdev: Add HW offload
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

On Mon, Jan 13, 2020 at 01:46:20PM +0100, Horatiu Vultur wrote:
> +#ifdef CONFIG_BRIDGE_MRP
> +/* SWITCHDEV_OBJ_ID_PORT_MRP */
> +struct switchdev_obj_port_mrp {
> +	struct switchdev_obj obj;
> +	struct net_device *port;
> +	u32 ring_nr;
> +};
> +
> +#define SWITCHDEV_OBJ_PORT_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_port_mrp, obj)
> +
> +/* SWITCHDEV_OBJ_ID_RING_TEST_MRP */
> +struct switchdev_obj_ring_test_mrp {
> +	struct switchdev_obj obj;
> +	/* The value is in us and a value of 0 represents to stop */
> +	u32 interval;
> +	u8 max;
> +	u32 ring_nr;
> +};
> +
> +#define SWITCHDEV_OBJ_RING_TEST_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_ring_test_mrp, obj)
> +
> +/* SWITCHDEV_OBJ_ID_RING_ROLE_MRP */
> +struct switchdev_obj_ring_role_mrp {
> +	struct switchdev_obj obj;
> +	u8 ring_role;
> +	u32 ring_nr;
> +};

Hi Horatiu

The structures above should give me enough information to build this,
correct?

Ethernet II, Src: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1), Dst: Iec_00:00:01 (01:15:4e:00:00:01)
    Destination: Iec_00:00:01 (01:15:4e:00:00:01)
    Source: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
    Type: MRP (0x88e3)
PROFINET MRP MRP_Test, MRP_Common, MRP_End
    MRP_Version: 1
    MRP_TLVHeader.Type: MRP_Test (0x02)
        MRP_TLVHeader.Type: MRP_Test (0x02)
        MRP_TLVHeader.Length: 18
        MRP_Prio: 0x1f40 High priorities
        MRP_SA: 7a:8b:b1:35:96:e1 (7a:8b:b1:35:96:e1)
        MRP_PortRole: Primary ring port (0x0000)
        MRP_RingState: Ring closed (0x0001)
        MRP_Transition: 0x0001
        MRP_TimeStamp [ms]: 0x000cf574             <---------- Updated automatic
    MRP_TLVHeader.Type: MRP_Common (0x01)
        MRP_TLVHeader.Type: MRP_Common (0x01)
        MRP_TLVHeader.Length: 18
        MRP_SequenceID: 0x00e9                     <---------- Updated automatic
        MRP_DomainUUID: ffffffff-ffff-ffff-ffff-ffffffffffff
    MRP_TLVHeader.Type: MRP_End (0x00)
        MRP_TLVHeader.Type: MRP_End (0x00)
        MRP_TLVHeader.Length: 0

There are a couple of fields i don't see. MRP_SA, MRP_Transition.

What are max and ring_nr used for?

Do you need to set the first value MRP_SequenceID uses? Often, in
order to detect a reset, a random value is used to initialise the
sequence number. Also, does the time stamp need initializing?

Thanks
	Andrew

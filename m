Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CFE36C251
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 12:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 977AD607EB;
	Tue, 27 Apr 2021 10:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5CkS7Uo1YlZ; Tue, 27 Apr 2021 10:08:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC61860AE9;
	Tue, 27 Apr 2021 10:08:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A97AAC001C;
	Tue, 27 Apr 2021 10:08:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5480BC000B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 420624059D
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZeR-BL45trZ for <bridge@lists.linux-foundation.org>;
 Tue, 27 Apr 2021 10:07:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF696405C5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 10:07:56 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id z5so32752251edr.11
 for <bridge@lists.linux-foundation.org>; Tue, 27 Apr 2021 03:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Wk3WhvG5+x2X6+e/LTcYs4sKDrKDTT2ZvIkkcwCdm7c=;
 b=PAwNU/ebxN7FawSKYBz54buUyQWyuTyNB1zGnJgtBCsH26c0cqS+yHX3V5eU39y4/k
 khWTC8Jkx5xNLD670i7xAKVjjCUllz7j1UG5s1fGlCuDuHIhEprWSoCmHrTzi0n3/09p
 AsXe8trPEufPRaySbJoD0+JPSP9Qs/NS+PZrx1S8hRtTnRQDiBo5Agca2uRiXGIVdMom
 MOMLKL77AnknlYWSBG+4viTEiS/fDCYt+A9p325cZ5aCv3+Kd40dmZtYODYJ2FA6MGZS
 +tKlxuNYwKdSHIkL28srrQxbZkiwQoTlt9EsDE5d/VLde9oUi8kbKwVKEMQl/RXrfo63
 /TBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Wk3WhvG5+x2X6+e/LTcYs4sKDrKDTT2ZvIkkcwCdm7c=;
 b=K2wYLYlEG++g9JC1V1hmt6suMxZYcfjTtafXQomIvycxvUYkFBp9y43wWlJTif3A/H
 /P8esoAewnuRlpUVtx684UU6wwzlx/cDgkZN0sCuxSEL/guW0WHI1L+dGN4Ecw36G5C0
 3U4Kf+/wJP48todTr+ZzMplSEAYk70NLGpefRGk5LhEGfEmgnNqOXhsjr5Q1h8t1OVil
 7P9mBQ2nZfCLWrBSkbZiy8vSdFskSyNO7l1dYRUdFPJHGC+nuvk4Z+WkOrCTsZWAxheB
 RiPfCRwf28aoW+KPCFCcefwaot2NpdmXDV1EnUWUPcv+iZCxC/rp7bHPYFG2Kv70Tm2E
 EXNQ==
X-Gm-Message-State: AOAM531cYvicx8z3+o/O19zVTlI+JEsHJyP5uDVsyLH+kH7JcW9yWexp
 zolqQgkNP7qGWlmk/3jQL8U=
X-Google-Smtp-Source: ABdhPJzsPQeVNzRT88bSQzBBh9wMoQAMOoi45klCjQ/XdiFiOCCIR8kB9yWXEbtDZaK04Re6IwvmYw==
X-Received: by 2002:aa7:df8f:: with SMTP id b15mr3452759edy.68.1619518075196; 
 Tue, 27 Apr 2021 03:07:55 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id d1sm13313486eje.26.2021.04.27.03.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 03:07:54 -0700 (PDT)
Date: Tue, 27 Apr 2021 13:07:53 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210427100753.pvkjbqp2qzkfbcpq@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
 <20210426194026.3sr22rqyf2srrwtq@skbuf>
 <877dkoq09r.fsf@waldekranz.com>
 <20210426202800.y4hfurf5k3hrbvqf@skbuf>
 <8735vcoztz.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8735vcoztz.fsf@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 5/9] net: dsa: Track port PVIDs
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

On Tue, Apr 27, 2021 at 11:12:56AM +0200, Tobias Waldekranz wrote:
> On Mon, Apr 26, 2021 at 23:28, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Mon, Apr 26, 2021 at 10:05:52PM +0200, Tobias Waldekranz wrote:
> >> On Mon, Apr 26, 2021 at 22:40, Vladimir Oltean <olteanv@gmail.com> wrote:
> >> > Hi Tobias,
> >> >
> >> > On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
> >> >> In some scenarios a tagger must know which VLAN to assign to a packet,
> >> >> even if the packet is set to egress untagged. Since the VLAN
> >> >> information in the skb will be removed by the bridge in this case,
> >> >> track each port's PVID such that the VID of an outgoing frame can
> >> >> always be determined.
> >> >> 
> >> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> >> >> ---
> >> >
> >> > Let me give you this real-life example:
> >> >
> >> > #!/bin/bash
> >> >
> >> > ip link add br0 type bridge vlan_filtering 1
> >> > for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
> >> > 	ip link set $eth up
> >> > 	ip link set $eth master br0
> >> > done
> >> > ip link set br0 up
> >> >
> >> > bridge vlan add dev eth0 vid 100 pvid untagged
> >> > bridge vlan del dev swp2 vid 1
> >> > bridge vlan del dev swp3 vid 1
> >> > bridge vlan add dev swp2 vid 100
> >> > bridge vlan add dev swp3 vid 100 untagged
> >> >
> >> > reproducible on the NXP LS1021A-TSN board.
> >> > The bridge receives an untagged packet on eth0 and floods it.
> >> > It should reach swp2 and swp3, and be tagged on swp2, and untagged on
> >> > swp3 respectively.
> >> >
> >> > With your idea of sending untagged frames towards the port's pvid,
> >> > wouldn't we be leaking this packet to VLAN 1, therefore towards ports
> >> > swp4 and swp5, and the real destination ports would not get this packet?
> >> 
> >> I am not sure I follow. The bridge would never send the packet to
> >> swp{4,5} because should_deliver() rejects them (as usual). So it could
> >> only be sent either to swp2 or swp3. In the case that swp3 is first in
> >> the bridge's port list, it would be sent untagged, but the PVID would be
> >> 100 and the flooding would thus be limited to swp{2,3}.
> >
> > Sorry, _I_ don't understand.
> >
> > When you say that the PVID is 100, whose PVID is it, exactly? Is it the
> > pvid of the source port (aka eth0 in this example)? That's not what I
> > see, I see the pvid of the egress port (the Marvell device)...
> 
> I meant the PVID of swp3.
> 
> In summary: This series incorrectly assumes that a port's PVID always
> corresponds to the VID that should be assigned to untagged packets on
> egress. This is wrong because PVID only specifies which VID to assign
> packets to on ingress, it says nothing about policy on egress. Multiple
> VIDs can also be configured to egress untagged on a given port. The VID
> must thus be sent along with each packet in order for the driver to be
> able to assign it to the correct VID.

So yes, I think you and I are on the same page now, in that the port
driver must not inject untagged packets into the port's PVID, since the
PVID is an ingress setting. Heck, the PVID might not even be installed
on the egress port, and that doesn't mean it shouldn't send untagged
packets, it only means it shouldn't receive them.

Just to be even more clear, this is what I think happens with your
change.

Untagged packets classified to VLAN 100 are reinterpreted by the port
driver as untagged, and sent to VLAN 1 (the PVID of the egress port).
What you said about should_deliver() doesn't matter/doesn't make sense,
because the offload forwarding domain contains all of swp2, swp3, swp4,
swp5. It is not per-VLAN. So the bridge has no idea that the port driver
will inject the packet with the wrong VLAN information. The packet
_will_ end up on the wrong ports, and it has hopped VLANs.

> > So to reiterate: when you transmit a packet towards your hardware switch
> > which has br0 inside the sb_dev, how does the switch know in which VLAN
> > to forward that packet? As far as I am aware, when the bridge had
> > received the packet as untagged on eth0, it did not insert VLAN 100 into
> > the skb itself, so the bridge VLAN information is lost when delivering
> > the frame to the egress net device. Am I wrong?
> 
> VID 100 is inserted into skb->vlan_tci on ingress from eth0, in
> br_vlan.c/__allowed_ingress. It is then cleared again in
> br_vlan.c/br_handle_vlan if the egress port (swp3 in our example) is set
> to egress the VID untagged.
> 
> The last step only clears skb->vlan_present though, the actual VID
> information still resides in skb->vlan_tci. I tried just removing 5/9
> from this series, and then sourced the VID from skb->vlan_tci for
> untagged packets. It works like a charm! I think this is the way
> forward.
> 
> The question is if we need another bit of information to signal that
> skb->vlan_tci contains valid information, but the packet should still be
> considered untagged? This could also be used on Rx to carry priority
> (PCP) information to the bridge.

Either we add another bit of information, or we don't clear the VLAN
in this bit of code, if the port supports fwd offload:

br_handle_vlan:

	if (v->flags & BRIDGE_VLAN_INFO_UNTAGGED)
		__vlan_hwaccel_clear_tag(skb);

The expectation that the hardware handles VLAN popping on the egress of
individual ports (as part of the replication procedure) should be valid,
I guess. In the case of DSA, all packets sent between the DSA master and
the CPU port using fwd offload should be VLAN-tagged.

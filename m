Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873636E1FF
	for <lists.bridge@lfdr.de>; Thu, 29 Apr 2021 01:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17B404065E;
	Wed, 28 Apr 2021 23:10:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7BmUHzwmYKw; Wed, 28 Apr 2021 23:10:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80E3B400FC;
	Wed, 28 Apr 2021 23:10:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39E22C0019;
	Wed, 28 Apr 2021 23:10:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5942DC0001
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 23:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 331CF4023E
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 23:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iw86Ev3FMNhg for <bridge@lists.linux-foundation.org>;
 Wed, 28 Apr 2021 23:10:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 034E0400FC
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 23:10:33 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id a36so63345278ljq.8
 for <bridge@lists.linux-foundation.org>; Wed, 28 Apr 2021 16:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=UWpZlaBMjKz4UP0WedOlFwoa27E2OItNueqHQod90wE=;
 b=u3ImikCHb3itOPRZgI+mVBFcvUR/Y0xn0DqVYk6nEFB0L5avMEG4NKv4d0iwME8KqT
 azA8f0rP6FUt0giABRXlKN+mbz/gtKm8ZYSOfsQ5wkuaDIzAuTFzJGr9gpw3yEOxfZFe
 h2TAPjc/zDLMpsAWzbAJw++ziyJ3ejQ7NZ0+Ony8lPXhFsUGZH6CYQFWHYXHcxYmX3n0
 DQ9W0qsz2juQCu4i32spc43pc22v3XEdTZ1G9e+6Ksx7LLpRvIKr4zw1CbHVScwZ6q9N
 RZJBdA3jgjzKBHDIa/RPGby4pCsO4tB9yu4RJOHFOxMRDC4sywllZvTmFUqd8CykAbkE
 h0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=UWpZlaBMjKz4UP0WedOlFwoa27E2OItNueqHQod90wE=;
 b=su5pFphHAI24WxjMYsfHJxty7g/f1xn/izcvSQvZ2HseNSgy4Dp59m12k9+Z1CIiQI
 gZ/XqVyG5RlP7fSzL01su6KtetUY8X1AsUjPSe4POrt/rZDwVxaBMedZgIf/mqwQX57i
 fmoQ8FNpa7TzTmGZ9bLqvrN6EgRqXcCDQNySHBmday3HyqF2y7DifY4Rfoa5rez90CCv
 CFuYSsBO4jTlpi9USaEithQky0tSYRo5+/sN0hZhm3XE3+J3ss7lMsZA+mbkoYNnzC9z
 IjyLAbvE5xi0VIlLJ8B4sTxkRB7OLEwi67BsNM/I3PvF3mYDjGxQrGlbE9Od60fdFbr2
 7ROg==
X-Gm-Message-State: AOAM5321V/g2Vq7irtjyXOgRLcn/kc0Gz/b3BOLo92/Z6TPl9lteuwg+
 17MYhHcwHiJh87C/aYrTgc1nIPzHnHtlS7KS
X-Google-Smtp-Source: ABdhPJydgOHGWzy9ZKZm5AftQESUtXOaiLshCnhjArRS5oeFREl390FhSevreFijyLBiA9C0VuQ5KA==
X-Received: by 2002:a2e:b4ba:: with SMTP id q26mr21827931ljm.223.1619651431533; 
 Wed, 28 Apr 2021 16:10:31 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id w15sm269198ljd.126.2021.04.28.16.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 16:10:31 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210427100753.pvkjbqp2qzkfbcpq@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-6-tobias@waldekranz.com>
 <20210426194026.3sr22rqyf2srrwtq@skbuf> <877dkoq09r.fsf@waldekranz.com>
 <20210426202800.y4hfurf5k3hrbvqf@skbuf> <8735vcoztz.fsf@waldekranz.com>
 <20210427100753.pvkjbqp2qzkfbcpq@skbuf>
Date: Thu, 29 Apr 2021 01:10:30 +0200
Message-ID: <87pmyengyh.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, Apr 27, 2021 at 13:07, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Apr 27, 2021 at 11:12:56AM +0200, Tobias Waldekranz wrote:
>> On Mon, Apr 26, 2021 at 23:28, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Mon, Apr 26, 2021 at 10:05:52PM +0200, Tobias Waldekranz wrote:
>> >> On Mon, Apr 26, 2021 at 22:40, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > Hi Tobias,
>> >> >
>> >> > On Mon, Apr 26, 2021 at 07:04:07PM +0200, Tobias Waldekranz wrote:
>> >> >> In some scenarios a tagger must know which VLAN to assign to a packet,
>> >> >> even if the packet is set to egress untagged. Since the VLAN
>> >> >> information in the skb will be removed by the bridge in this case,
>> >> >> track each port's PVID such that the VID of an outgoing frame can
>> >> >> always be determined.
>> >> >> 
>> >> >> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> >> >> ---
>> >> >
>> >> > Let me give you this real-life example:
>> >> >
>> >> > #!/bin/bash
>> >> >
>> >> > ip link add br0 type bridge vlan_filtering 1
>> >> > for eth in eth0 eth1 swp2 swp3 swp4 swp5; do
>> >> > 	ip link set $eth up
>> >> > 	ip link set $eth master br0
>> >> > done
>> >> > ip link set br0 up
>> >> >
>> >> > bridge vlan add dev eth0 vid 100 pvid untagged
>> >> > bridge vlan del dev swp2 vid 1
>> >> > bridge vlan del dev swp3 vid 1
>> >> > bridge vlan add dev swp2 vid 100
>> >> > bridge vlan add dev swp3 vid 100 untagged
>> >> >
>> >> > reproducible on the NXP LS1021A-TSN board.
>> >> > The bridge receives an untagged packet on eth0 and floods it.
>> >> > It should reach swp2 and swp3, and be tagged on swp2, and untagged on
>> >> > swp3 respectively.
>> >> >
>> >> > With your idea of sending untagged frames towards the port's pvid,
>> >> > wouldn't we be leaking this packet to VLAN 1, therefore towards ports
>> >> > swp4 and swp5, and the real destination ports would not get this packet?
>> >> 
>> >> I am not sure I follow. The bridge would never send the packet to
>> >> swp{4,5} because should_deliver() rejects them (as usual). So it could
>> >> only be sent either to swp2 or swp3. In the case that swp3 is first in
>> >> the bridge's port list, it would be sent untagged, but the PVID would be
>> >> 100 and the flooding would thus be limited to swp{2,3}.
>> >
>> > Sorry, _I_ don't understand.
>> >
>> > When you say that the PVID is 100, whose PVID is it, exactly? Is it the
>> > pvid of the source port (aka eth0 in this example)? That's not what I
>> > see, I see the pvid of the egress port (the Marvell device)...
>> 
>> I meant the PVID of swp3.
>> 
>> In summary: This series incorrectly assumes that a port's PVID always
>> corresponds to the VID that should be assigned to untagged packets on
>> egress. This is wrong because PVID only specifies which VID to assign
>> packets to on ingress, it says nothing about policy on egress. Multiple
>> VIDs can also be configured to egress untagged on a given port. The VID
>> must thus be sent along with each packet in order for the driver to be
>> able to assign it to the correct VID.
>
> So yes, I think you and I are on the same page now, in that the port
> driver must not inject untagged packets into the port's PVID, since the
> PVID is an ingress setting. Heck, the PVID might not even be installed
> on the egress port, and that doesn't mean it shouldn't send untagged
> packets, it only means it shouldn't receive them.
>
> Just to be even more clear, this is what I think happens with your
> change.
>
> Untagged packets classified to VLAN 100 are reinterpreted by the port
> driver as untagged, and sent to VLAN 1 (the PVID of the egress port).
> What you said about should_deliver() doesn't matter/doesn't make sense,
> because the offload forwarding domain contains all of swp2, swp3, swp4,
> swp5. It is not per-VLAN. So the bridge has no idea that the port driver
> will inject the packet with the wrong VLAN information. The packet
> _will_ end up on the wrong ports, and it has hopped VLANs.

My brain's iproute2 simulator must have malfunctioned :) Anyway, we
agree that the current implementation only works for the common case
where there is a single untagged VID on a port that is also set as the
PVID.

>> > So to reiterate: when you transmit a packet towards your hardware switch
>> > which has br0 inside the sb_dev, how does the switch know in which VLAN
>> > to forward that packet? As far as I am aware, when the bridge had
>> > received the packet as untagged on eth0, it did not insert VLAN 100 into
>> > the skb itself, so the bridge VLAN information is lost when delivering
>> > the frame to the egress net device. Am I wrong?
>> 
>> VID 100 is inserted into skb->vlan_tci on ingress from eth0, in
>> br_vlan.c/__allowed_ingress. It is then cleared again in
>> br_vlan.c/br_handle_vlan if the egress port (swp3 in our example) is set
>> to egress the VID untagged.
>> 
>> The last step only clears skb->vlan_present though, the actual VID
>> information still resides in skb->vlan_tci. I tried just removing 5/9
>> from this series, and then sourced the VID from skb->vlan_tci for
>> untagged packets. It works like a charm! I think this is the way
>> forward.
>> 
>> The question is if we need another bit of information to signal that
>> skb->vlan_tci contains valid information, but the packet should still be
>> considered untagged? This could also be used on Rx to carry priority
>> (PCP) information to the bridge.
>
> Either we add another bit of information, or we don't clear the VLAN
> in this bit of code, if the port supports fwd offload:
>
> br_handle_vlan:
>
> 	if (v->flags & BRIDGE_VLAN_INFO_UNTAGGED)
> 		__vlan_hwaccel_clear_tag(skb);
>
> The expectation that the hardware handles VLAN popping on the egress of
> individual ports (as part of the replication procedure) should be valid,
> I guess. In the case of DSA, all packets sent between the DSA master and
> the CPU port using fwd offload should be VLAN-tagged.

Yeah I agree that for this offload, it would be fine to always send
packets tagged. There are some things that might be helped by that extra
bit of info though:

- VLAN PCP. The switchdev and bridge could communicate the priority bits
  also for untagged packets, both on ingress and egress. This would
  maintain the priority up to a VLAN upper on top of the bridge, where
  you can use the standard {ingress,egress}-qos-map feature to map PCP
  to socket priority.

- TC. Right now, matching on VLANs is messy because there is no way to
  express "match VLAN1" in a filter that can be reused across a group of
  ports ("block" in TC parlance) where some may be untagged members and
  others are tagged. In hardware, the VLAN parser typically resides much
  earlier in the pipeline (way before reaching the bridge engine) so
  TCAMs can easily do these things.

But this is perhaps a separate job. Nothing stops us from going the
always-tagged-route now and adding "untagged awareness" to the stack
later on.

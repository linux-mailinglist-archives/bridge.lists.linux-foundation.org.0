Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A258022B9DA
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 00:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B092B87E8B;
	Thu, 23 Jul 2020 22:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8ysEOVlX2Bc; Thu, 23 Jul 2020 22:58:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D7DD87E80;
	Thu, 23 Jul 2020 22:58:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24347C004C;
	Thu, 23 Jul 2020 22:58:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08F92C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 22:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EBCAE86932
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 22:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nipk6kVIvLS4 for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 22:58:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 023EE868FB
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 22:58:36 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 184so6638799wmb.0
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 15:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mNhBV89gj5tybMw6LElFkcS2Pr1tc7+w2lsAgC77CXs=;
 b=VwcqeqXQIZueUsuVRcTBUGKKUxAshSs/9SMjn8znk4SD5/jWqSCatlCf2f4j9LuiPD
 HlXvO10TNxlmuU1tTNf4fpHHhxWer3oy3nt1MwRfuuWjrLbezafY52ZptIS5Pai802OY
 PpD6SyYMXWcmATHnBLwJZGIxbezzijMDIh6OwW15m152ESp0mo57Xx+4tX2Q3HK7dxxQ
 Gg+vnFjRg3E50x8RGTjxS/xoX3lCSGnhYXGHryRK46HkzXBzqau4HRUxlmc3v8GoBSYU
 xbbpX0gDLod+jh1Jm4UFfjmDA294Jdm7gAaCOzEa1OBRX2Kp1l69zrmarKwh5V6ope75
 Exrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=mNhBV89gj5tybMw6LElFkcS2Pr1tc7+w2lsAgC77CXs=;
 b=El7gZrbfjig/2hP2vTiUSVVkdTr2ZPPswSPGk/jZsdDjD7lK3QeQkIF2UP1al/xxoL
 YEM6hG8xhiv1xRVZGGFVu3n20lXKrwfuMb9q/t4bo2wCou3y0ntBHMZDDCvapirYQKub
 Tg/myPGSo7Em0RSSeuzZrycYWTfFkP5FO4qu9AjiY+KNPl0k6d/rIkwWhayhQYCdLKTl
 KT1aY8STUMeCyBbr508JHgWR7u9ozrK1IP7s8teZKEAjczUmZxXs8dfCGejIODov56XU
 DS+QdOtO68y2HB9CFQbBONnT4tUJGm5gn7DL+AKYoh+3szKgQh8cYnQyOOrPP1T6nDga
 5w2g==
X-Gm-Message-State: AOAM532iwlj4J+JDkN2+fp5B/ZlTALCS4xqcR947mVR/8gqDbn02MCTJ
 XzbcV9Xj5VoxA9cCAZ7lSpY=
X-Google-Smtp-Source: ABdhPJzmatSEBNIFeMCX+Vxa63SKEfkKhC4mCDWLY4d2vSHQAnYrkGaQuUBwF5pI66L0zqTsOG6Gyg==
X-Received: by 2002:a05:600c:2144:: with SMTP id
 v4mr6446982wml.128.1595545114191; 
 Thu, 23 Jul 2020 15:58:34 -0700 (PDT)
Received: from [10.67.50.75] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id a11sm5824341wrq.0.2020.07.23.15.58.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 15:58:33 -0700 (PDT)
To: Vladimir Oltean <olteanv@gmail.com>
References: <20200722225253.28848-1-f.fainelli@gmail.com>
 <20200723221151.qdt4yowfktuddrkd@skbuf>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <d8ce0a04-3d3a-5d11-d3e6-861e6cbcca24@gmail.com>
Date: Thu, 23 Jul 2020 15:58:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200723221151.qdt4yowfktuddrkd@skbuf>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: andrew@lunn.ch, rdunlap@infradead.org, ivan.khoronzhuk@linaro.org,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com,
 idosch@mellanox.com, jiri@mellanox.com, ilias.apalodimas@linaro.org,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] Documentation: networking: Clarify
 switchdev devices behavior
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

On 7/23/20 3:11 PM, Vladimir Oltean wrote:
> On Wed, Jul 22, 2020 at 03:52:53PM -0700, Florian Fainelli wrote:
>> This patch provides details on the expected behavior of switchdev
>> enabled network devices when operating in a "stand alone" mode, as well
>> as when being bridge members. This clarifies a number of things that
>> recently came up during a bug fixing session on the b53 DSA switch
>> driver.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>> Since this has been submitted in a while, removing the patch numbering,
>> but previous patches and discussions can be found here:
>>
>> http://patchwork.ozlabs.org/project/netdev/patch/20190103224702.21541-1-f.fainelli@gmail.com/
>> http://patchwork.ozlabs.org/project/netdev/patch/20190109043930.8534-1-f.fainelli@gmail.com/
>> http://patchwork.ozlabs.org/project/netdev/patch/20190110193206.9872-1-f.fainelli@gmail.com/
>>
>> David, I would like to hear from Vladimir and Ido specifically to make
>> sure that the documentation is up to date with expectations or desired
>> behavior so we can move forward with Vladimir's DSA rx filtering patch
>> series. So don't apply this just yet ;)
>>
>> Thanks!
>>
> 
> Thanks for giving me the opportunity to speak up.
> 
> Your addition to switchdev.rst is more than welcome, and the content is
> good. I had opened this file a few days ago searching for a few words on
> address filtering, but alas, there were none. And even now, with your
> addition - there is something, but it's more focused on multicast, and I
> haven't used that nearly enough to have a strong opinion about it. Let
> me try to add my 2 cents about what concerns me on this particular topic.
> 
> I'm not asking you to add it to your documentation patch - not that you
> could even do that, as I'm talking more about how things should be than
> how they are, things like IVDF aren't even in mainline.
> 
> If people agree at least in principle with my words below, I can make
> the necessary changes to the bridge driver to conform to this
> interpretation of things.
> 
> 
> Address filtering
> ^^^^^^^^^^^^^^^^^
> 
> With regular network interface cards, address filters are used to drop
> in hardware the frames that have a destination address different than
> what the card is configured to perform termination on.
> 
> With switchdev, the hardware is usually geared towards accepting traffic
> regardless of destination MAC address, because the primary objective is
> forwarding to another host based on that address, and not termination.
> 
> Therefore, the address filters of a switchdev interface cannot typically
> be implemented at the same hardware layer as they are for a regular
> interface. The behavior as seen by the operating system should, however,
> be the same.
> 
> In the case of a regular NIC, the expectation is that only the frames
> having a destination that is present in the RX filtering lists (managed
> through dev_uc_add() and dev_mc_add()) are accepted, while the others
> are dropped. The filters can be bypassed using the IFF_PROMISC and
> IFF_ALLMULTI flags.
> 
> A switchdev interface that is capable of offloading the Linux bridge
> should have hardware provisioning for flooding unknown destination
> addresses and learning from source addresses. Strictly speaking, the
> hardware design of such an interface should be promiscuous out of
> necessity: as long as flooding is enabled, hardware promiscuity is
> implied.
> 
> However, this is of no relevance to the operating system. Since flooding
> and forwarding happen autonomously, it makes no difference to the end
> result whether the forwarded and flooded addresses are, or aren't,
> present in the address list of the network interface corresponding to
> the switchdev port.
> 
> To achieve a similar behavior between switchdev and non-switchdev
> interfaces, address filtering for switchdev can be defined in terms of
> the frames that the CPU sees.

Nit here, I don't know if we want to refer to CPU, host or management
interface of the switch, all terms are IMHO inter changeable and clear
in the context below, though I wonder what "pure" switchdev drivers
would prefer to see being used.

> 
> - Primary MAC address: A driver should deliver to the CPU, and only to
>   the CPU, for termination purposes, frames having a destination address
>   that matches the MAC address of the ingress interface.

Ack. We could go one step further and say that this is the MAC address
of the Ethernet MAC connected to the CPU port. As we say in French this
would be busting through an open door.

> 
> - Secondary MAC addresses: A driver should deliver to the CPU frames
>   having a destination address that matches an entry added with
>   dev_uc_add() or dev_mc_add(). These typically correspond to upper
>   interfaces configured on top of the switchdev interface, such as
>   8021q, bridge, macvlan.

Ack.

> 
> - A driver is allowed to not deliver to the CPU frames that don't have a
>   match in the ingress interface's primary and secondary address lists.
>   An exception to this rule is when the interface is configured as
>   promiscuous, or to receive all multicast traffic.

Ack.

> 
> - An interface can be configured as promiscuous when it is required that
>   the CPU sees frames with an unknown destination (same as in the
>   non-switchdev case). Otherwise said, promiscuous mode manages the
>   presence (or the absence) of the CPU in the flooding domain of the
>   switch. A similar comment applies to IFF_ALLMULTI, although that case
>   applies only to unknown multicast traffic.

Ack.

> 
> - Other layers of the network stack that actively make use of switchdev
>   offloads should not request promiscuous mode for the sole purpose of
>   accepting ingress frames that will end up reinjected in the hardware
>   data path anyway. The switchdev framework can be considered to offload
>   the need of promiscuity for this purpose. An example of valid use of
>   promiscuous mode for a switchdev driver is when it is bridged with a
>   non-switchdev interface, and the CPU needs to perform termination
>   (from the hardware's perspective) of unknown-destination traffic, in
>   order to forward it in software to the other network interfaces.

Ack.

> 
> - If the hardware supports filtering MAC addresses per VLAN domain, then
>   CPU membership of a VLAN could be managed through IVDF (Individual
>   Virtual Device Filtering). Namely, the CPU should join the VLAN of all
>   IVDF addresses in its filter list, and can exit all VLANs that are not
>   there.

Ack. A complication can exist if VLAN filtering applies globally to the
switch and the CPU interface is put in promiscuous mode. We would then
expect the CPU interface to join all VLANs for the sake of receiving all
frames.

> 
>>  Documentation/networking/switchdev.rst | 118 +++++++++++++++++++++++++
>>  1 file changed, 118 insertions(+)
>>
>> diff --git a/Documentation/networking/switchdev.rst b/Documentation/networking/switchdev.rst
>> index ddc3f35775dc..2e4f50e6c63c 100644
>> --- a/Documentation/networking/switchdev.rst
>> +++ b/Documentation/networking/switchdev.rst
>> @@ -385,3 +385,121 @@ The driver can monitor for updates to arp_tbl using the netevent notifier
>>  NETEVENT_NEIGH_UPDATE.  The device can be programmed with resolved nexthops
>>  for the routes as arp_tbl updates.  The driver implements ndo_neigh_destroy
>>  to know when arp_tbl neighbor entries are purged from the port.
>> +
>> +Device driver expected behavior
>> +-------------------------------
>> +
>> +Below is a set of defined behavior that switchdev enabled network devices must
>> +adhere to.
>> +
>> +Configuration less state
>> +^^^^^^^^^^^^^^^^^^^^^^^^
>> +
>> +Upon driver bring up, the network devices must be fully operational, and the
>> +backing driver must configure the network device such that it is possible to
>> +send and receive traffic to this network device and it is properly separated
>> +from other network devices/ports (e.g.: as is frequent with a switch ASIC). How
>> +this is achieved is heavily hardware dependent, but a simple solution can be to
>> +use per-port VLAN identifiers unless a better mechanism is available
>> +(proprietary metadata for each network port for instance).
>> +
>> +The network device must be capable of running a full IP protocol stack
>> +including multicast, DHCP, IPv4/6, etc. If necessary, it should program the
>> +appropriate filters for VLAN, multicast, unicast etc. The underlying device
>> +driver must effectively be configured in a similar fashion to what it would do
>> +when IGMP snooping is enabled for IP multicast over these switchdev network
>> +devices and unsolicited multicast must be filtered as early as possible into
>> +the hardware.
>> +
>> +When configuring VLANs on top of the network device, all VLANs must be working,
>> +irrespective of the state of other network devices (e.g.: other ports being part
>> +of a VLAN aware bridge doing ingress VID checking). See below for details.
>> +
>> +If the device implements e.g.: VLAN filtering, putting the interface in
>> +promiscuous mode should allow the reception of all VLAN tags (including those
>> +not present in the filter(s)).
>> +
>> +Bridged switch ports
>> +^^^^^^^^^^^^^^^^^^^^
>> +
>> +When a switchdev enabled network device is added as a bridge member, it should
>> +not disrupt any functionality of non-bridged network devices and they
>> +should continue to behave as normal network devices. Depending on the bridge
>> +configuration knobs below, the expected behavior is documented.
>> +
>> +Bridge VLAN filtering
>> +^^^^^^^^^^^^^^^^^^^^^
>> +
>> +The Linux bridge allows the configuration of a VLAN filtering mode (compile and
>> +run time) which must be observed by the underlying switchdev network
> 
> s/compile and run time/statically, at interface creation time, and dynamically/

Thanks.

> 
>> +device/hardware:
>> +
>> +- with VLAN filtering turned off: the bridge is strictly VLAN unaware and its
>> +  data path will only process untagged Ethernet frames. Frames ingressing the
>> +  device with a VID that is not programmed into the bridge/switch's VLAN table
>> +  must be forwarded and may be processed using a VLAN device (see below).
>> +
>> +- with VLAN filtering turned on: the bridge is VLAN aware and frames ingressing
>> +  the device with a VID that is not programmed into the bridges/switch's VLAN
>> +  table must be dropped (strict VID checking).
>> +
>> +Non-bridged network ports of the same switch fabric must not be disturbed in any
>> +way by the enabling of VLAN filtering on the bridge device(s).
>> +
>> +VLAN devices configured on top of a switchdev network device (e.g: sw0p1.100)
>> +which is a bridge port member must also observe the following behavior:
>> +
>> +- with VLAN filtering turned off, enslaving VLAN devices into the bridge might
>> +  be allowed provided that there is sufficient separation using e.g.: a
>> +  reserved VLAN ID (4095 for instance) for untagged traffic. The VLAN data path
>> +  is used to pop/push the VLAN tag such that the bridge's data path only
>> +  processes untagged traffic.
>> +
> 
> Why does the bridge's data path only process untagged traffic?
> It should process frames that are untagged or have a VLAN ID which does
> not match the VLAN ID of any 8021q upper of the ingress interface.
> Which brings me to the question: how is a VLAN frame having an unknown
> (to 8021q) VLAN ID going to be treated by such a switchdev interface? It
> should accept it. Will it? Well, I don't really understand the advice
> given here, about the separation, and how does the pvid of 4095 help
> with frames that are already VLAN-tagged.

I was trying to capture a discussion Ido and I had on IRC a while ago.
He clarified that the VLAN-unaware bridge should only see untagged
traffic within its data path. To answer your question, a VLAN frame with
an unknown VID may be accepted by the switch hardware, but should not be
delivered to the bridge data path because there is no software VLAN to
process that VID.

The advice regarding separation is about the following use case: we have
two physical switch ports sw0p0 and sw0p1. sw0p1.100 is created to
terminate VID 100 tagged, and sw0p1.100 is created to terminate VID 100
tagged as well.

sw0p0 is added to a bridge, and so is sw0p1.100, it seems to me that
sw0p0.100 and sw0p1.100 should still be separate because they are not
part of the same broadcast domain. One port (sw0p0) is part of the
bridge, whereas the other (sw0p1) is not. Without a FID or internal
double tagging, I am not sure how you can maintain that separation.

Maybe this is not worth mentioning, or maybe I am wrong, having some
feedback would be welcome here.

> 
>> +- with VLAN filtering turned on, these VLAN devices can be created as long as
>> +  there is not an existing VLAN entry into the bridge with an identical VID and
>> +  port membership. These VLAN devices cannot be enslaved into the bridge since
>> +  because they duplicate functionality/use case with the bridge's VLAN data path
>> +  processing.
>> +
> 
> The way I visualize things for myself, it's not so much that the bridge
> and 8021q modules are duplicating functionality, but rather that the
> requirements are contradictory. 'bridge vlan add ...' wants to configure
> the forwarding data path, while 'ip link add link ... type vlan' wants
> to steal frames from the data path and deliver them to the CPU.

Yes, that is a good way to look at it. With a VLAN aware bridge you can
terminate VLAN traffic at the bridge level too, if your bridge master is
also part of the VLAN group, which is why I felt that explaining that
would be necessary.

> 
>> +Because VLAN filtering can be turned on/off at runtime, the switchdev driver
>> +must be able to re-configure the underlying hardware on the fly to honor the
>> +toggling of that option and behave appropriately.
>> +
>> +A switchdev driver can also refuse to support dynamic toggling of the VLAN
>> +filtering knob at runtime and require a destruction of the bridge device(s) and
>> +creation of new bridge device(s) with a different VLAN filtering value to
>> +ensure VLAN awareness is pushed down to the HW.
>> +
>> +Finally, even when VLAN filtering in the bridge is turned off, the underlying
>> +switch hardware and driver may still configured itself in a VLAN aware mode
>> +provided that the behavior described above is observed.
>> +
> 
> Otherwise stated: VLAN filtering shall be considered from the
> perspective of observable behavior, and not from the perspective of
> hardware configuration.

Yes, that is clearer.

> 
>> +Bridge IGMP snooping
>> +^^^^^^^^^^^^^^^^^^^^
>> +
>> +The Linux bridge allows the configuration of IGMP snooping (compile and run
>> +time) which must be observed by the underlying switchdev network device/hardware
> 
> Same comment about "compile and run time" as above.
> 
>> +in the following way:
>> +
>> +- when IGMP snooping is turned off, multicast traffic must be flooded to all
>> +  switch ports within the same broadcast domain. The CPU/management port
> 
> I think that if mc_disabled == true, multicast should be flooded only to
> the ports which have mc_flood == true.

OK.

> 
>> +  should ideally not be flooded and continue to learn multicast traffic through
> 
> unless the ingress interface has IFF_ALLMULTI or IFF_PROMISC, then I
> suppose the CPU should be flooded from that particular port.

Yes indeed.

> 
>> +  the network stack notifications. If the hardware is not capable of doing that
>> +  then the CPU/management port must also be flooded and multicast filtering
>> +  happens in software.
>> +
>> +- when IGMP snooping is turned on, multicast traffic must selectively flow
>> +  to the appropriate network ports (including CPU/management port) and not be
>> +  unnecessarily flooding.
>> +
> 
> I believe that when mc_disabled == false, unknown multicast should be
> flooded only to the ports connected to a multicast router. The local
> device may also act as a multicast router.

OK that makes sense.

> 
>> +The switch must adhere to RFC 4541 and flood multicast traffic accordingly
>> +since that is what the Linux bridge implementation does.
>> +
> 
> I have a lot of questions in this area.
> Mainly, what should a driver do if the hardware can't parse IGMP/MLD but
> just route by (maskable) layer 2 destination address?

Which hardware would fall in that category? Would that be sja1105 for
instance?
-- 
Florian

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A499A22A536
	for <lists.bridge@lfdr.de>; Thu, 23 Jul 2020 04:25:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 202032408D;
	Thu, 23 Jul 2020 02:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yv4tsVvGqM0R; Thu, 23 Jul 2020 02:25:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A46BA234AA;
	Thu, 23 Jul 2020 02:25:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BDF7C004C;
	Thu, 23 Jul 2020 02:25:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26121C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 02:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC9562408D
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 02:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4hh1XOqr1W4N for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 02:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 33D11234AA
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 02:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=9sTumvRtvWZZVvL2jAMB9rY4ihCn6nsAenpQzBwz8HQ=; b=R/yoORki3EqA1iMijWfgiTaM+e
 Y/OI8SaoVK2k9QXF1M0tY0jLylPKsko3QS/MA/ht4gtC7sdNfBrsyGaM/mrptOhkGznfWmybUt7gp
 zQcyy1IgHDhs867x0PFCvuKMIgXBLNVeBgBZyjAarxvW6ZN5/GYN9lDidDlBtRwRBrkMZkkejvpUJ
 p5UPBP4VkkAQwN9k0O1CtTFcJVJEeOeYsJyX1Irs7aSrBCNsd9wQ0e1JWxxO+p3mKCNPFGtPJlQhy
 ARs6+3JaipnYdWjDSauuNSg1RDvIsoBzMyw8yhW86IwSk/IahtrxZS4kJm8PlIJ4XaqKbiweWqZPp
 QFaPO7IQ==;
Received: from [2601:1c0:6280:3f0::19c2]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyQvX-0006WV-E8; Thu, 23 Jul 2020 02:25:44 +0000
To: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org
References: <20200722225253.28848-1-f.fainelli@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <48659b9c-7935-0c6c-bc09-a77aba2ab2e3@infradead.org>
Date: Wed, 22 Jul 2020 19:25:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200722225253.28848-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, ilias.apalodimas@linaro.org, ivan.khoronzhuk@linaro.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com,
 idosch@mellanox.com, jiri@mellanox.com, kuba@kernel.org, olteanv@gmail.com,
 davem@davemloft.net
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

Hi,

This mostly looks good to me. I have a few edits below.


On 7/22/20 3:52 PM, Florian Fainelli wrote:
> This patch provides details on the expected behavior of switchdev
> enabled network devices when operating in a "stand alone" mode, as well
> as when being bridge members. This clarifies a number of things that
> recently came up during a bug fixing session on the b53 DSA switch
> driver.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

>  Documentation/networking/switchdev.rst | 118 +++++++++++++++++++++++++
>  1 file changed, 118 insertions(+)
> 
> diff --git a/Documentation/networking/switchdev.rst b/Documentation/networking/switchdev.rst
> index ddc3f35775dc..2e4f50e6c63c 100644
> --- a/Documentation/networking/switchdev.rst
> +++ b/Documentation/networking/switchdev.rst
> @@ -385,3 +385,121 @@ The driver can monitor for updates to arp_tbl using the netevent notifier
>  NETEVENT_NEIGH_UPDATE.  The device can be programmed with resolved nexthops
>  for the routes as arp_tbl updates.  The driver implements ndo_neigh_destroy
>  to know when arp_tbl neighbor entries are purged from the port.
> +
> +Device driver expected behavior
> +-------------------------------
> +
> +Below is a set of defined behavior that switchdev enabled network devices must
> +adhere to.
> +
> +Configuration less state

   Configuration-less state

> +^^^^^^^^^^^^^^^^^^^^^^^^
> +
> +Upon driver bring up, the network devices must be fully operational, and the
> +backing driver must configure the network device such that it is possible to
> +send and receive traffic to this network device and it is properly separated
> +from other network devices/ports (e.g.: as is frequent with a switch ASIC). How
> +this is achieved is heavily hardware dependent, but a simple solution can be to
> +use per-port VLAN identifiers unless a better mechanism is available
> +(proprietary metadata for each network port for instance).
> +
> +The network device must be capable of running a full IP protocol stack
> +including multicast, DHCP, IPv4/6, etc. If necessary, it should program the
> +appropriate filters for VLAN, multicast, unicast etc. The underlying device
> +driver must effectively be configured in a similar fashion to what it would do
> +when IGMP snooping is enabled for IP multicast over these switchdev network
> +devices and unsolicited multicast must be filtered as early as possible into
> +the hardware.
> +
> +When configuring VLANs on top of the network device, all VLANs must be working,
> +irrespective of the state of other network devices (e.g.: other ports being part
> +of a VLAN aware bridge doing ingress VID checking). See below for details.

        VLAN-aware

> +
> +If the device implements e.g.: VLAN filtering, putting the interface in
> +promiscuous mode should allow the reception of all VLAN tags (including those
> +not present in the filter(s)).
> +
> +Bridged switch ports
> +^^^^^^^^^^^^^^^^^^^^
> +
> +When a switchdev enabled network device is added as a bridge member, it should

          switchdev-enabled

> +not disrupt any functionality of non-bridged network devices and they
> +should continue to behave as normal network devices. Depending on the bridge
> +configuration knobs below, the expected behavior is documented.
> +
> +Bridge VLAN filtering
> +^^^^^^^^^^^^^^^^^^^^^
> +
> +The Linux bridge allows the configuration of a VLAN filtering mode (compile and
> +run time) which must be observed by the underlying switchdev network
> +device/hardware:
> +
> +- with VLAN filtering turned off: the bridge is strictly VLAN unaware and its
> +  data path will only process untagged Ethernet frames. Frames ingressing the
> +  device with a VID that is not programmed into the bridge/switch's VLAN table
> +  must be forwarded and may be processed using a VLAN device (see below).
> +
> +- with VLAN filtering turned on: the bridge is VLAN aware and frames ingressing
> +  the device with a VID that is not programmed into the bridges/switch's VLAN
> +  table must be dropped (strict VID checking).
> +
> +Non-bridged network ports of the same switch fabric must not be disturbed in any
> +way by the enabling of VLAN filtering on the bridge device(s).
> +
> +VLAN devices configured on top of a switchdev network device (e.g: sw0p1.100)
> +which is a bridge port member must also observe the following behavior:
> +
> +- with VLAN filtering turned off, enslaving VLAN devices into the bridge might
> +  be allowed provided that there is sufficient separation using e.g.: a
> +  reserved VLAN ID (4095 for instance) for untagged traffic. The VLAN data path
> +  is used to pop/push the VLAN tag such that the bridge's data path only
> +  processes untagged traffic.
> +
> +- with VLAN filtering turned on, these VLAN devices can be created as long as
> +  there is not an existing VLAN entry into the bridge with an identical VID and
> +  port membership. These VLAN devices cannot be enslaved into the bridge since
> +  because they duplicate functionality/use case with the bridge's VLAN data path

drop one of: since / because

> +  processing.
> +
> +Because VLAN filtering can be turned on/off at runtime, the switchdev driver
> +must be able to re-configure the underlying hardware on the fly to honor the

                   reconfigure

> +toggling of that option and behave appropriately.
> +
> +A switchdev driver can also refuse to support dynamic toggling of the VLAN
> +filtering knob at runtime and require a destruction of the bridge device(s) and
> +creation of new bridge device(s) with a different VLAN filtering value to
> +ensure VLAN awareness is pushed down to the HW.

              (preferably)                     hardware.

> +
> +Finally, even when VLAN filtering in the bridge is turned off, the underlying
> +switch hardware and driver may still configured itself in a VLAN aware mode

                                        configure              VLAN-aware

> +provided that the behavior described above is observed.
> +
> +Bridge IGMP snooping
> +^^^^^^^^^^^^^^^^^^^^
> +
> +The Linux bridge allows the configuration of IGMP snooping (compile and run
> +time) which must be observed by the underlying switchdev network device/hardware
> +in the following way:
> +
> +- when IGMP snooping is turned off, multicast traffic must be flooded to all
> +  switch ports within the same broadcast domain. The CPU/management port
> +  should ideally not be flooded and continue to learn multicast traffic through
> +  the network stack notifications. If the hardware is not capable of doing that
> +  then the CPU/management port must also be flooded and multicast filtering
> +  happens in software.
> +
> +- when IGMP snooping is turned on, multicast traffic must selectively flow
> +  to the appropriate network ports (including CPU/management port) and not be
> +  unnecessarily flooding.
> +
> +The switch must adhere to RFC 4541 and flood multicast traffic accordingly
> +since that is what the Linux bridge implementation does.
> +
> +Because IGMP snooping can be turned on/off at runtime, the switchdev driver
> +must be able to re-configure the underlying hardware on the fly to honor the

                   reconfigure

> +toggling of that option and behave appropriately.
> +
> +A switchdev driver can also refuse to support dynamic toggling of the multicast
> +snooping knob at runtime and require the destruction of the bridge device(s)
> +and creation of a new bridge device(s) with a different multicast snooping
> +value.


thanks.
-- 
~Randy


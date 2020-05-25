Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B441E0CA0
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 13:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8E1287E5D;
	Mon, 25 May 2020 11:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XI1jhJA+5s-3; Mon, 25 May 2020 11:14:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB75587E3D;
	Mon, 25 May 2020 11:14:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CCA43C016F;
	Mon, 25 May 2020 11:14:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1070C016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 11:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C04886243
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 11:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vhw-7Tnr6G9t for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 11:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C52F885C37
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 11:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590405297; x=1621941297;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DkzcK68md6XilH2dppEDef9a0CRnGtzIBxslEKzPNoE=;
 b=0CC/Qz4JIxbTOzDLaxtBa3U1hTJ0qYstcdPLUEyCVVTQxC+V333SkMwO
 W1GHwA+Aau75x9DW7UwBl9so/xaQz3BJbo2qPRVHO22M89gG9pIF6IhJH
 OV5ML+GxrVAv4qkROTEGAz1hSzu8xdy68OZjqoqD+tvMCipNwnP32hDwR
 izWJvC8RnXah85BhMOlcoc7LBg9KSkRIpfnv7+Gr2x491i2bqhQ9hDLTl
 H2d/Gv6QzcG03n5U5aEmcpFyMHxy9P16/1dUHEisdiSXdQvtSUIcQKo1U
 HMfe9773AnEn80yTRPNgC1TZYOoaYVWdmcHftKVf/kzB/lV8Ex+3rAkkZ g==;
IronPort-SDR: aQfnN+QDpxDvSZXGd1JckOUoYU9h8bm+6077oYXUtOQWnV4NcTGe5+fXdlhXBDOZBb0LDPm0lj
 S4idBF7xeDcH8O5xS5Omcz62mTn0bqC4WTE88WV3ZxMV3JjHrn3/u3247aZlJrGZ1/V2UbZIAe
 pf2l5VOPKDp/P+Us5sTfJu4axGWcyY5Mr7ByPUhb5vD4N+GG0IVSbSOeXPp1JmhoR6i9Rhd2Qe
 0mHXiQ2pmCAxw9Wvw9eITKm65wExGuqYIQgKBfgPNUeepClrW5YRZc6V0x1N/xx1CFvpXKER4f
 mIo=
X-IronPort-AV: E=Sophos;i="5.73,433,1583218800"; d="scan'208";a="76970405"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 04:14:56 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 04:14:55 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 25 May 2020 04:14:57 -0700
Date: Mon, 25 May 2020 13:14:35 +0000
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200525131435.eqfgqh7gu5hmyc3g@soft-dev3.localdomain>
References: <20200525112827.t4nf4lamz6g4g2c5@soft-dev3.localdomain>
 <20200525100322.sjlfxhz2ztrfjia7@lion.mk-sys.cz>
 <88bc4a98-c0c8-32df-142e-d4738fe0065a@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <88bc4a98-c0c8-32df-142e-d4738fe0065a@cumulusnetworks.com>
Cc: Michal Kubecek <mkubecek@suse.cz>, andrew@lunn.ch, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] MRP netlink interface
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

The 05/25/2020 13:26, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 25/05/2020 13:03, Michal Kubecek wrote:
> > On Mon, May 25, 2020 at 11:28:27AM +0000, Horatiu Vultur wrote:
> > [...]
> >> My first approach was to extend the 'struct br_mrp_instance' with a field that
> >> contains the priority of the node. But this breaks the backwards compatibility,
> >> and then every time when I need to change something, I will break the backwards
> >> compatibility. Is this a way to go forward?
> >
> > No, I would rather say it's an example showing why passing data
> > structures as binary data via netlink is a bad idea. I definitely
> > wouldn't advice this approach for any new interface. One of the
> > strengths of netlink is the ability to use structured and extensible
> > messages.
> >
> >> Another approach is to restructure MRP netlink interface. What I was thinking to
> >> keep the current attributes (IFLA_BRIDGE_MRP_INSTANCE,
> >> IFLA_BRIDGE_MRP_PORT_STATE,...) but they will be nested attributes and each of
> >> this attribute to contain the fields of the structures they represents.
> >> For example:
> >> [IFLA_AF_SPEC] = {
> >>     [IFLA_BRIDGE_FLAGS]
> >>     [IFLA_BRIDGE_MRP]
> >>         [IFLA_BRIDGE_MRP_INSTANCE]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> >>         [IFLA_BRIDGE_MRP_RING_ROLE]
> >>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> >>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> >>         ...
> >> }
> >> And then I can parse each field separately and then fill up the structure
> >> (br_mrp_instance, br_mrp_port_role, ...) which will be used forward.
> >> Then when this needs to be extended with the priority it would have the
> >> following format:
> >> [IFLA_AF_SPEC] = {
> >>     [IFLA_BRIDGE_FLAGS]
> >>     [IFLA_BRIDGE_MRP]
> >>         [IFLA_BRIDGE_MRP_INSTANCE]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> >>             [IFLA_BRIDGE_MRP_INSTANCE_PRIO]
> >>         [IFLA_BRIDGE_MRP_RING_ROLE]
> >>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> >>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> >>         ...
> >> }
> >> And also the br_mrp_instance will have a field called prio.
> >> So now, if the userspace is not updated to have support for setting the prio
> >> then the kernel will use a default value. Then if the userspace contains a field
> >> that the kernel doesn't know about, then it would just ignore it.
> >> So in this way every time when the netlink interface will be extended it would
> >> be backwards compatible.
> >
> > Silently ignoring unrecognized attributes in userspace requests is what
> > most kernel netlink based interfaces have been doing traditionally but
> > it's not really a good idea. Essentially it ties your hands so that you
> > can only add new attributes which can be silently ignored without doing
> > any harm, otherwise you risk that kernel will do something different
> > than userspace asked and userspace does not even have a way to find out
> > if the feature is supported or not. (IIRC there are even some places
> > where ignoring an attribute changes the nature of the request but it is
> > still ignored by older kernels.)
> >
> > That's why there have been an effort, mostly by Johannes Berg, to
> > introduce and promote strict checking for new netlink interfaces and new
> > attributes in existing netlink attributes. If you don't have strict
> > checking for unknown attributes enabled yet, there isn't much that can
> > be done for already released kernels but I would suggest to enable it as
> > soon as possible.
> >
> > Michal

Thanks for the detail explanation. Currently this is in net-next so I
would try to change it.
Can you point me to some code that is using this strict checking for
netlink attributes? Just to have a better understanding of it.

> >
> 
> +1, we don't have strict checking for the bridge main af spec attributes, but
> you could add that for new nested interfaces that need to be parsed like the
> above
> 
> 
> 
> 
> 
> 
> 

-- 
/Horatiu

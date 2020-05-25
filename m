Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6A71E0B00
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 11:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39E8186DB2;
	Mon, 25 May 2020 09:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npJ7wuRUOpdJ; Mon, 25 May 2020 09:48:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 963D086D95;
	Mon, 25 May 2020 09:48:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 785AAC016F;
	Mon, 25 May 2020 09:48:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5044EC016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 09:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 372D12050D
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 09:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngmGiYQ8mBKf for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 09:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DA62204B7
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 09:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590400111; x=1621936111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pzdPx7JJBtptXyJ27Cg1HGCXEq6YG6KTHhH6ZH3PCY0=;
 b=E9X3bnfAwlUPjNVr5mEGJkM3/91olOqNOym8oa+1HIlpAuvfAiuJx/Yp
 1vm7gYyEmjpHW4ewcbgLksH06BwbTlEehAAjQH1Fr0T9sGecu4+ikZUpD
 0RJk2wMUHGWqyi1m4fjVQzVuoxYMf3zJdJWuXnhQpC+e7XyqO7q1doCLa
 JhB1rH1ZBQL211AFI5obM8ONhlWb9IBjJ0dDxKUEFmTodiTuUp+Y1BIAX
 EKnH4SD92ySpInmz/k5nRxt5w96RLYzIB7/6lnAdIONWLdxBBAaPfdCxO
 YiAcBSeTQWztPyh/G5vdl1ILkaLlRQnoQfEHvTbXQVqct8K/D3LWo4eMY g==;
IronPort-SDR: izbUyP2AtLDrW6QFy3/RCBzlNSwb3grEN3w1QZCgpBLNy3K/Cno44uevHOqUtBtkIIyNOLwGCr
 oywkInRRb7KfB6eW1AjAT5qEos7RmmpQge4Ek3h4w0zbTXxrGr+n0+7J3J9yxOMh1zq71LTvYM
 H5xy/h3aN1HNJs1LsxlPmxgbz9OavGIuQukOODhSxEyZrfq+tCQ1kxErEkIkMr0u1E94tON8MT
 IIzZkQl6C3Kr8sEy/X6XSqYRI/aYTsIuZZZcSQTAF15DPftOSOlC39h9UfNUXzCo45KN+qtKRP
 Htc=
X-IronPort-AV: E=Sophos;i="5.73,433,1583218800"; d="scan'208";a="76964008"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 02:48:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 02:48:30 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 25 May 2020 02:48:28 -0700
Date: Mon, 25 May 2020 11:48:07 +0000
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200525114807.w7g77ybflb67en3h@soft-dev3.localdomain>
References: <20200525112827.t4nf4lamz6g4g2c5@soft-dev3.localdomain>
 <2176b58f-35f3-36c1-8ba7-d18649eb29f7@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2176b58f-35f3-36c1-8ba7-d18649eb29f7@cumulusnetworks.com>
Cc: andrew@lunn.ch, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
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

The 05/25/2020 12:33, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 25/05/2020 14:28, Horatiu Vultur wrote:
> > Hi,
> >
> > While I was working on adding support for MRA role to MRP, I noticed that I
> > might have some issues with the netlink interface, so it would be great if you
> > can give me an advice on how to continue.
> >
> > First a node with MRA role can behave as a MRM(Manager) or as a
> > MRC(Client). The behaviour is decided by the priority of each node. So
> > to have this functionality I have to extend the MRP netlink interface
> > and this brings me to my issues.
> >
> > My first approach was to extend the 'struct br_mrp_instance' with a field that
> > contains the priority of the node. But this breaks the backwards compatibility,
> > and then every time when I need to change something, I will break the backwards
> > compatibility. Is this a way to go forward?
> >
> > Another approach is to restructure MRP netlink interface. What I was thinking to
> > keep the current attributes (IFLA_BRIDGE_MRP_INSTANCE,
> > IFLA_BRIDGE_MRP_PORT_STATE,...) but they will be nested attributes and each of
> > this attribute to contain the fields of the structures they represents.
> > For example:
> > [IFLA_AF_SPEC] = {
> >     [IFLA_BRIDGE_FLAGS]
> >     [IFLA_BRIDGE_MRP]
> >         [IFLA_BRIDGE_MRP_INSTANCE]
> >             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> >             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> >             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> >         [IFLA_BRIDGE_MRP_RING_ROLE]
> >             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> >             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> >         ...
> > }
> > And then I can parse each field separately and then fill up the structure
> > (br_mrp_instance, br_mrp_port_role, ...) which will be used forward.
> > Then when this needs to be extended with the priority it would have the
> > following format:
> > [IFLA_AF_SPEC] = {
> >     [IFLA_BRIDGE_FLAGS]
> >     [IFLA_BRIDGE_MRP]
> >         [IFLA_BRIDGE_MRP_INSTANCE]
> >             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
> >             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
> >             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
> >             [IFLA_BRIDGE_MRP_INSTANCE_PRIO]
> >         [IFLA_BRIDGE_MRP_RING_ROLE]
> >             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
> >             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
> >         ...
> > }
> > And also the br_mrp_instance will have a field called prio.
> > So now, if the userspace is not updated to have support for setting the prio
> > then the kernel will use a default value. Then if the userspace contains a field
> > that the kernel doesn't know about, then it would just ignore it.
> > So in this way every time when the netlink interface will be extended it would
> > be backwards compatible.
> >
> > If it is not possible to break the compatibility then the safest way is to
> > just add more attributes under IFLA_BRIDGE_MRP but this would just complicate
> > the kernel and the userspace and it would make it much harder to be extended in
> > the future.
> >
> > My personal choice would be the second approach, even if it breaks the backwards
> > compatibility. Because it is the easier to go forward and there are only 3
> > people who cloned the userspace application
> > (https://github.com/microchip-ung/mrp/graphs/traffic). And two of
> > these unique cloners is me and Allan.
> >
> > So if you have any advice on how to go forward it would be great.
> >
> 
> IIRC this is still in net-next only, right? If so - now would be the time to change it.
> Once it goes into a release, we'll be stuck with workarounds. So I'd go for solution 2).

Yes, this is only in net-next. Then I should ASAP update this with
solution 2.

> 
> I haven't cloned it, but I do sync your user-space mrp repo to check against the patches. :)
> 

-- 
/Horatiu

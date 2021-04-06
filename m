Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6379E355D4A
	for <lists.bridge@lfdr.de>; Tue,  6 Apr 2021 22:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A9344019B;
	Tue,  6 Apr 2021 20:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5StTkxGhdQ9L; Tue,  6 Apr 2021 20:56:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id A359B4054C;
	Tue,  6 Apr 2021 20:56:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2204C0012;
	Tue,  6 Apr 2021 20:56:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 706D3C000A
 for <bridge@lists.linux-foundation.org>; Tue,  6 Apr 2021 20:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4948D605D8
 for <bridge@lists.linux-foundation.org>; Tue,  6 Apr 2021 20:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lx4wJgZQgHpJ for <bridge@lists.linux-foundation.org>;
 Tue,  6 Apr 2021 20:56:14 +0000 (UTC)
X-Greylist: delayed 00:06:21 by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19DE76001E
 for <bridge@lists.linux-foundation.org>; Tue,  6 Apr 2021 20:56:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3688D3E95C; Tue,  6 Apr 2021 22:49:47 +0200 (CEST)
Date: Tue, 6 Apr 2021 22:49:44 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <20210406204944.GH2742@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: [Bridge] IPv4/IPv6 separation in bridge code for multicast routers
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

I wanted to add the remaining pieces for batman-adv to support
IPv4 multicast groups in bridged setups, next to the IPv6 support
already in place. For which we'd need MRD support. So once more
I'd tap into the bridge for this information from batman-adv.

Then I realized again that the bridge keeps track of the
IGMP/MLD querier per protocol family but not for the multicast
router ports. For the latter we only have one list right now. For
batman-adv we have the multicast router flags and logic already
separate though.

I started separating the router list for IPv4 and IPv6 in the
bridge, but it seems there are already external users for the
protocol family unaware router list right now: netlink and switchdev.
Now I'm wondering:

A) For netlink:

Would it be fine to just add a MDBA_ROUTER_PATTR_FAMILY with
either the value PF_INET or PF_INET6? The downside would be that
a userspace application which does not know this new attribute
yet would potentially see or list a duplicate.

Another option would be to add two separate attributes:
MDBA_ROUTER_PATTR_{INET,INET6}. Which looks a bit more clumsy and
and inflexible to me. But would have a better compatiblity when
userspace requests a router ports dump. For events there'd still
be the same issue of duplicates though, as IPv4 and IPv6 routers
might appear or disappear asynchronously.

B) For switchdev:

I'm not that familiar with switchdev. Should it generally be
possible to separate the protocol family here? Or would it be
better to add a few more lines to the bridge code to
only call switchdev_port_attr_set() when transitioning between
v4-rtr, v6-rtr: (off, off) <=> (on, on) | (on, off) | (off, on)?
At least for a start, maybe?

C)

Or am I missing something in the MRD RFC (RFC4286) which implies
that a Multicast router Advertisement should be interpreted
across protocol families?


Any ideas what might be the best way to tackle this?

Regards, Linus

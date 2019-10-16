Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA35D9D7A
	for <lists.bridge@lfdr.de>; Wed, 16 Oct 2019 23:25:46 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7BB1AD93;
	Wed, 16 Oct 2019 21:25:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B817D2E
	for <bridge@lists.linux-foundation.org>;
	Wed, 16 Oct 2019 21:25:34 +0000 (UTC)
X-Greylist: delayed 00:08:36 by SQLgrey-1.7.6
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 11903821
	for <bridge@lists.linux-foundation.org>;
	Wed, 16 Oct 2019 21:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 6708060632EE;
	Wed, 16 Oct 2019 23:16:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id XoiCMRDj9y1F; Wed, 16 Oct 2019 23:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 17F5E60632C1;
	Wed, 16 Oct 2019 23:16:55 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id X13sxO1rFzJx; Wed, 16 Oct 2019 23:16:55 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id D843F6083266;
	Wed, 16 Oct 2019 23:16:54 +0200 (CEST)
Date: Wed, 16 Oct 2019 23:16:54 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Roopa Prabhu <roopa@cumulusnetworks.com>
Message-ID: <910194713.25283.1571260614731.JavaMail.zimbra@nod.at>
In-Reply-To: <CAJieiUi-b5vcOTGqXcDpn9fxVwA9jyoMWEDM2F_ZgVfzdgFgeA@mail.gmail.com>
References: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
	<3A7BDEE0-7C07-4F23-BA01-F32AD41451BB@cumulusnetworks.com>
	<5A4A5745-5ADC-4AAC-B060-1BC9907C153C@cumulusnetworks.com>
	<CAJieiUi-b5vcOTGqXcDpn9fxVwA9jyoMWEDM2F_ZgVfzdgFgeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Bridge port userspace events broken?
Thread-Index: X0H1a+cAJkAg3/lVNpzTKtoYJLogig==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Richard Weinberger <richard.weinberger@gmail.com>,
	bridge@lists.linux-foundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev <netdev@vger.kernel.org>
Subject: Re: [Bridge] Bridge port userspace events broken?
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Roopa, Nikolay,

----- Urspr=C3=BCngliche Mail -----
> +1,  this can be fixed....but in general all new bridge and link
> attributes have better support with netlink.
> In this case its IFLA_BRPORT_GROUP_FWD_MASK link attribute available
> via ip monitor or bridge monitor.
> you probably cannot use it with udev today.
>=20
> For the future, I think having udev listen to netlink link and devlink
> events would make sense (Not sure if anybody is working on it).
> AFAIK the sysfs uevent mechanism for link attributes don't  receive
> the required attention and testing like the equivalent netlink events.

I understand that netlink works best for you but sysfs notifications are st=
ill
useful.
Please let me explain my use case a little bit more.

The application I work on operates on network interfaces, in this case the
interface happens to be a bridge.
systemd-networkd sets up the bridge as soon all slave interfaces emerge.

Therefore the systemd service file of the application depends on the bridge=
.
i.e.
Requires=3Dsys-subsystem-net-devices-br0.device

In one specific setup the bridge needs to forward more than usual and=20
group_fwd_mask needs to be altered. Sadly this is nothing systemd-networkd
can do right now, so I added the following line to the service file of
the application:
ExecStartPre=3D/bin/bash -c "echo 0xfffd > /sys/class/net/eth0/brport/group=
_fwd_mask"

Here comes the problem, the unit is activated as soon br0 is created but
at this time eth0 is sometimes not yet a slave or br0. It takes some time.

So I need a way to model this dependency in a systemd environment.
A common approach to do so is setting up an udev rule which set a systemd n=
otify
as soon a specific sysfs file arrives.

Teaching the application to listen for bridge specific netlink messages is
another possible approach but seems overkill to me.
Or maybe there is some nice wrapper/helper?

It would be nice to have sysfs notifications for bridge devices too.
I can understand that not everyone likes this approach but this is the way
how *many* systems out there work these day. Actually almost any (embedded)
system with systemd.

Thanks,
//richard

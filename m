Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3E8DA47D
	for <lists.bridge@lfdr.de>; Thu, 17 Oct 2019 06:10:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6FAD8ACD;
	Thu, 17 Oct 2019 04:10:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06BE941C
	for <bridge@lists.linux-foundation.org>;
	Thu, 17 Oct 2019 04:10:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED56213A
	for <bridge@lists.linux-foundation.org>;
	Thu, 17 Oct 2019 04:10:18 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id l21so562861edr.5
	for <bridge@lists.linux-foundation.org>;
	Wed, 16 Oct 2019 21:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=W7+mMd07QQJd8UgLyD1KwD/q5N7onv9q9No08G+KUnI=;
	b=N2vzlJhcjF5BWDAJ+YjBM262MTgA528w8V7+VHtpKNCsHwKtognA1a0hYC7tHq/BsU
	jalXWtDj40unH25fytiD1ZexCqfn+ieP0P/31YxX++0p7JtQ3rMltxhIQZiN8CjICPUy
	HCiylt4naxZpSbNsdQhpF++DE41QW2tb107Qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=W7+mMd07QQJd8UgLyD1KwD/q5N7onv9q9No08G+KUnI=;
	b=A5Z2ULry+dCd6Vo87sMG4lcoZ/gUqT70vkR2w0l4mDTUVs4KV8NaNwCclRuIPBfzPr
	vYvIiNEBHVgMw5liR0ScdQ3/c8GnaLUOh9UayOcKDbkZR+2jntlNvNkgzDtjZFIJ/NCY
	ninvtvvhavxZ3b+Zc2EY8eYp4VY72u+tU+ZowIVTSGo2T3AG7mKeO5fqupzrrMP327sA
	w98pwU18E0ebviri0s5utHoLB+Wu4yTJk/qZ5/yEMFj/YjMshpz8Ko0ysVl2T81C8FM0
	xnpM6nuNGg/M1BVGwAsRQnxveM1Kh6LizoAc9cb6YJuS8/sc7+4sWn7KsedqTb51whHh
	Pz9A==
X-Gm-Message-State: APjAAAWd/71mkHqosU+cjHFAZcDKhg72djWxBRUmOYNSNZHWvGn0PWut
	WnyyvOfYe+Cg8pFPExHOtNHHPIm/vMgkG9qS0KjvWg==
X-Google-Smtp-Source: APXvYqyGyfakKJFS3qRfEkQO3UG0tSmeZTUcVFIXifswlu9i/foM6JC3GaUe7Qfrhdhwcb+splajtJrRsp8MMATIRg4=
X-Received: by 2002:a17:906:7e17:: with SMTP id
	e23mr1597332ejr.205.1571285417202; 
	Wed, 16 Oct 2019 21:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
	<3A7BDEE0-7C07-4F23-BA01-F32AD41451BB@cumulusnetworks.com>
	<5A4A5745-5ADC-4AAC-B060-1BC9907C153C@cumulusnetworks.com>
	<CAJieiUi-b5vcOTGqXcDpn9fxVwA9jyoMWEDM2F_ZgVfzdgFgeA@mail.gmail.com>
	<910194713.25283.1571260614731.JavaMail.zimbra@nod.at>
In-Reply-To: <910194713.25283.1571260614731.JavaMail.zimbra@nod.at>
From: Roopa Prabhu <roopa@cumulusnetworks.com>
Date: Wed, 16 Oct 2019 21:10:06 -0700
Message-ID: <CAJieiUjvamKds6+hbsKhwCJ_MDC9_9Wfy8ogyB1f3OrSgXKC6w@mail.gmail.com>
To: Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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

On Wed, Oct 16, 2019 at 2:16 PM Richard Weinberger <richard@nod.at> wrote:
>
> Roopa, Nikolay,
>
> ----- Urspr=C3=BCngliche Mail -----
> > +1,  this can be fixed....but in general all new bridge and link
> > attributes have better support with netlink.
> > In this case its IFLA_BRPORT_GROUP_FWD_MASK link attribute available
> > via ip monitor or bridge monitor.
> > you probably cannot use it with udev today.
> >
> > For the future, I think having udev listen to netlink link and devlink
> > events would make sense (Not sure if anybody is working on it).
> > AFAIK the sysfs uevent mechanism for link attributes don't  receive
> > the required attention and testing like the equivalent netlink events.
>
> I understand that netlink works best for you but sysfs notifications are =
still
> useful.
> Please let me explain my use case a little bit more.
>
> The application I work on operates on network interfaces, in this case th=
e
> interface happens to be a bridge.
> systemd-networkd sets up the bridge as soon all slave interfaces emerge.
>
> Therefore the systemd service file of the application depends on the brid=
ge.
> i.e.
> Requires=3Dsys-subsystem-net-devices-br0.device
>

interesting. We do have a lot of applications that depend on network
interfaces and we
 simply make them depend on the networking service eg with
"After=3Dnetworking.service".

we don't use systemd-networkd today..but our network interface
management software (https://packages.debian.org/buster/ifupdown2)
registers itself as  networking.service. For unsupported options the
network interface manager provides hooks to invoke pre and post
commands
which takes care of the unsupported attributes case you mention above.
In absence of that, we would probably use systemd ExecStartPost


> In one specific setup the bridge needs to forward more than usual and
> group_fwd_mask needs to be altered. Sadly this is nothing systemd-network=
d
> can do right now, so I added the following line to the service file of
> the application:
> ExecStartPre=3D/bin/bash -c "echo 0xfffd > /sys/class/net/eth0/brport/gro=
up_fwd_mask"

ok, yeah the right thing here will be for your network manager
(systemd-networkd)  to support this config attribute.

But understand that there will always be an attribute that your
network interface manager does not support :)

>
> Here comes the problem, the unit is activated as soon br0 is created but
> at this time eth0 is sometimes not yet a slave or br0. It takes some time=
.
>
> So I need a way to model this dependency in a systemd environment.
> A common approach to do so is setting up an udev rule which set a systemd=
 notify
> as soon a specific sysfs file arrives.

That is cleaver. But, you now have systemd-networkd and udevd to get
your interfaces configured right.
You may be able to get past this for now to find more problems later.

>
> Teaching the application to listen for bridge specific netlink messages i=
s
> another possible approach but seems overkill to me.

understood. In your case, the ideal thing to do is have all your
configuration done via systemd-networkd.
that will also make sure your config persists in a single place.
Agreed that having your application understand netlink to just deal
with this attribute is overkill.

> Or maybe there is some nice wrapper/helper?

There are many netlink libraries from libnl, python-nlmanager, pyroute2 etc

>
> It would be nice to have sysfs notifications for bridge devices too.
> I can understand that not everyone likes this approach but this is the wa=
y
> how *many* systems out there work these day. Actually almost any (embedde=
d)
> system with systemd.
>

I think if you are using systemd, systemd-networkd which uses netlink
is the best
option to deal with interface link events.

Regardless, for existing bridge sysfs attribute files, Nikolay might
have a solution after he is back from vacation.
This should help your  immediate problem with group_fwd_mask.

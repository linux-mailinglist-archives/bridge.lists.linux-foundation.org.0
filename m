Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BFB22E98A
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 11:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 549EB86B5C;
	Mon, 27 Jul 2020 09:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8c0EXP4uZgVN; Mon, 27 Jul 2020 09:52:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A53B869EC;
	Mon, 27 Jul 2020 09:52:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F0F5FC0864;
	Mon, 27 Jul 2020 09:52:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D9B0C004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 09:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9E10869EC
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 09:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEDMHvLL+UrJ for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 09:51:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1DF8C8660D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 09:51:51 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-157-rSG2T3OdNGGcdmdBioAAVQ-1; Mon, 27 Jul 2020 10:51:47 +0100
X-MC-Unique: rSG2T3OdNGGcdmdBioAAVQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 27 Jul 2020 10:51:45 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 27 Jul 2020 10:51:45 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'David Miller' <davem@davemloft.net>, "hch@lst.de" <hch@lst.de>
Thread-Topic: get rid of the address_space override in setsockopt v2
Thread-Index: AQHWYgvqDt5Xt3HFu0u82UKLVqcKxKkbLTEQ
Date: Mon, 27 Jul 2020 09:51:45 +0000
Message-ID: <8ae792c27f144d4bb5cbea0c1cce4eed@AcuMS.aculab.com>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
In-Reply-To: <20200724.154342.1433271593505001306.davem@davemloft.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ast@kernel.org" <ast@kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>,
 "kuznet@ms2.inr.ac.ru" <kuznet@ms2.inr.ac.ru>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "yoshfuji@linux-ipv6.org" <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>
Subject: Re: [Bridge] get rid of the address_space override in setsockopt v2
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

From: David Miller
> Sent: 24 July 2020 23:44
>=20
> From: Christoph Hellwig <hch@lst.de>
> Date: Thu, 23 Jul 2020 08:08:42 +0200
>=20
> > setsockopt is the last place in architecture-independ code that still
> > uses set_fs to force the uaccess routines to operate on kernel pointers=
.
> >
> > This series adds a new sockptr_t type that can contained either a kerne=
l
> > or user pointer, and which has accessors that do the right thing, and
> > then uses it for setsockopt, starting by refactoring some low-level
> > helpers and moving them over to it before finally doing the main
> > setsockopt method.
> >
> > Note that apparently the eBPF selftests do not even cover this path, so
> > the series has been tested with a testing patch that always copies the
> > data first and passes a kernel pointer.  This is something that works f=
or
> > most common sockopts (and is something that the ePBF support relies on)=
,
> > but unfortunately in various corner cases we either don't use the passe=
d
> > in length, or in one case actually copy data back from setsockopt, or i=
n
> > case of bpfilter straight out do not work with kernel pointers at all.
> >
> > Against net-next/master.
> >
> > Changes since v1:
> >  - check that users don't pass in kernel addresses
> >  - more bpfilter cleanups
> >  - cosmetic mptcp tweak
>=20
> Series applied to net-next, I'm build testing and will push this out when
> that is done.

Hmmm... this code does:

int __sys_setsockopt(int fd, int level, int optname, char __user *user_optv=
al,
=09=09int optlen)
{
=09sockptr_t optval;
=09char *kernel_optval =3D NULL;
=09int err, fput_needed;
=09struct socket *sock;

=09if (optlen < 0)
=09=09return -EINVAL;

=09err =3D init_user_sockptr(&optval, user_optval);
=09if (err)
=09=09return err;

And the called code does:
=09if (copy_from_sockptr(&opt, optbuf, sizeof(opt)))
=09=09return -EFAULT;


Which means that only the base of the user's buffer is checked
for being in userspace.

I'm sure there is code that processes options in chunks.
This probably means it is possible to put a chunk boundary
at the end of userspace and continue processing the very start
of kernel memory.

At best this faults on the kernel copy code and crashes the system.

Maybe there wasn't any code that actually incremented the user address.
But it is hardly robust.

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


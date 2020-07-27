Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A7122EEA4
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 16:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B2AA85BD1;
	Mon, 27 Jul 2020 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FxiOAOpGRzQY; Mon, 27 Jul 2020 14:09:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE2BC85D8D;
	Mon, 27 Jul 2020 14:09:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F3D2C004D;
	Mon, 27 Jul 2020 14:09:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 48FFDC004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 14:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D88E87A85
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 14:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ocdfuNRrKQN for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 14:09:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 896DA878C0
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 14:09:15 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-250-GXr1mpTxOlmxyosLYcC-jw-1; Mon, 27 Jul 2020 15:09:11 +0100
X-MC-Unique: GXr1mpTxOlmxyosLYcC-jw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 27 Jul 2020 15:09:10 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 27 Jul 2020 15:09:10 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Al Viro' <viro@zeniv.linux.org.uk>
Thread-Topic: get rid of the address_space override in setsockopt v2
Thread-Index: AQHWYgvqDt5Xt3HFu0u82UKLVqcKxKkbLTEQgAA3GQCAABNbQA==
Date: Mon, 27 Jul 2020 14:09:09 +0000
Message-ID: <5d958e937db54849b4ef9046e7e12277@AcuMS.aculab.com>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
 <8ae792c27f144d4bb5cbea0c1cce4eed@AcuMS.aculab.com>
 <20200727134814.GD794331@ZenIV.linux.org.uk>
In-Reply-To: <20200727134814.GD794331@ZenIV.linux.org.uk>
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
 "hch@lst.de" <hch@lst.de>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
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
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 'David Miller' <davem@davemloft.net>
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

From: Al Viro
> Sent: 27 July 2020 14:48
>=20
> On Mon, Jul 27, 2020 at 09:51:45AM +0000, David Laight wrote:
>=20
> > I'm sure there is code that processes options in chunks.
> > This probably means it is possible to put a chunk boundary
> > at the end of userspace and continue processing the very start
> > of kernel memory.
> >
> > At best this faults on the kernel copy code and crashes the system.
>=20
> Really?  Care to provide some details, or is it another of your "I can't
> be possibly arsed to check what I'm saying, but it stands for reason
> that..." specials?

I did more 'homework' than sometimes :-)
Slightly difficult without a searchable net-next tree.
However, as has been pointed out is a different thread
this code is used to update IPv6 flow labels:

> > -=09=09if (copy_from_user(fl->opt+1, optval+CMSG_ALIGN(sizeof(*freq)), =
olen))
> > +=09=09sockptr_advance(optval, CMSG_ALIGN(sizeof(*freq)));
> > +=09=09if (copy_from_sockptr(fl->opt + 1, optval, olen))
> >  =09=09=09goto done;

and doesn't work because the advances are no longer cumulative.

Now access_ok() has to take the base address and length to stop
'running into' kernel space, but the code above can advance from
a valid user pointer (which won't fault) to a kernel address.

If there were always an unmapped 'guard' page in the user address
space the access_ok() check prior to copy_to/from_user() wouldn't
need the length.
So I surmise that no such guard page exists and so the above
can advance from user addresses into kernel ones.

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


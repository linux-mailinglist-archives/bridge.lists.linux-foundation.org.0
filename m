Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A642A2304E8
	for <lists.bridge@lfdr.de>; Tue, 28 Jul 2020 10:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1ACB688076;
	Tue, 28 Jul 2020 08:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjyHlYjdLUNJ; Tue, 28 Jul 2020 08:07:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id F4129881A0;
	Tue, 28 Jul 2020 08:07:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D896EC004D;
	Tue, 28 Jul 2020 08:07:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AAD17C004D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97C1222DD3
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7MkVHHEkhYge for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jul 2020 08:07:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 05EE222008
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:07:16 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-122-o5x9Q9SyNzqkeSG6S-qBgw-1; Tue, 28 Jul 2020 09:07:12 +0100
X-MC-Unique: o5x9Q9SyNzqkeSG6S-qBgw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 28 Jul 2020 09:07:11 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 28 Jul 2020 09:07:11 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>, "Jason A. Donenfeld" <Jason@zx2c4.com>
Thread-Topic: [PATCH 12/26] netfilter: switch nf_setsockopt to sockptr_t
Thread-Index: AQHWZDJbUYsuJ1QOc0ujZBN9RDfEqKkcofVA
Date: Tue, 28 Jul 2020 08:07:11 +0000
Message-ID: <908ed73081cc42d58a5b01e0c97dbe47@AcuMS.aculab.com>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-13-hch@lst.de> <20200727150310.GA1632472@zx2c4.com>
 <20200727150601.GA3447@lst.de>
 <CAHmME9ric=chLJayn7Erve7WBa+qCKn-+Gjri=zqydoY6623aA@mail.gmail.com>
 <20200727162357.GA8022@lst.de>
In-Reply-To: <20200727162357.GA8022@lst.de>
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Netdev <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>, LKML <linux-kernel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 12/26] netfilter: switch nf_setsockopt to
	sockptr_t
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

From: Christoph Hellwig
> Sent: 27 July 2020 17:24
>=20
> On Mon, Jul 27, 2020 at 06:16:32PM +0200, Jason A. Donenfeld wrote:
> > Maybe sockptr_advance should have some safety checks and sometimes
> > return -EFAULT? Or you should always use the implementation where
> > being a kernel address is an explicit bit of sockptr_t, rather than
> > being implicit?
>=20
> I already have a patch to use access_ok to check the whole range in
> init_user_sockptr.

That doesn't make (much) difference to the code paths that ignore
the user-supplied length.
OTOH doing the user/kernel check on the base address (not an
incremented one) means that the correct copy function is always
selected.

Perhaps the functions should all be passed a 'const sockptr_t'.
The typedef could be made 'const' - requiring non-const items
explicitly use the union/struct itself.

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


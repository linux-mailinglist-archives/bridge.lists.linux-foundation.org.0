Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5685227AD1
	for <lists.bridge@lfdr.de>; Tue, 21 Jul 2020 10:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A31486FC6;
	Tue, 21 Jul 2020 08:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8MySWEk6kh3J; Tue, 21 Jul 2020 08:37:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBFD386FC4;
	Tue, 21 Jul 2020 08:37:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CED8DC016F;
	Tue, 21 Jul 2020 08:37:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B2006C016F
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 08:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A73888B80
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 08:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbQDdi-BshxW for <bridge@lists.linux-foundation.org>;
 Tue, 21 Jul 2020 08:37:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F109588B79
 for <bridge@lists.linux-foundation.org>; Tue, 21 Jul 2020 08:37:02 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-210-Hj1lpiGkPReD_62cmwnEEw-1; Tue, 21 Jul 2020 09:36:58 +0100
X-MC-Unique: Hj1lpiGkPReD_62cmwnEEw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 21 Jul 2020 09:36:57 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 21 Jul 2020 09:36:57 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>, "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 "Daniel Borkmann" <daniel@iogearbox.net>, Alexey Kuznetsov
 <kuznet@ms2.inr.ac.ru>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Eric
 Dumazet <edumazet@google.com>
Thread-Topic: [PATCH 12/24] bpfilter: switch bpfilter_ip_set_sockopt to
 sockptr_t
Thread-Index: AQHWXznUwerjSVAdx0W80SUXvcknn6kRtZIA
Date: Tue, 21 Jul 2020 08:36:57 +0000
Message-ID: <f9493b4c514441b4b51bc7e4e75e8c40@AcuMS.aculab.com>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-13-hch@lst.de>
In-Reply-To: <20200720124737.118617-13-hch@lst.de>
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>
Subject: Re: [Bridge] [PATCH 12/24] bpfilter: switch bpfilter_ip_set_sockopt
 to sockptr_t
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
> Sent: 20 July 2020 13:47
>=20
> This is mostly to prepare for cleaning up the callers, as bpfilter by
> design can't handle kernel pointers.
                      ^^^ user ??

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2C64580C0
	for <lists.bridge@lfdr.de>; Sat, 20 Nov 2021 22:57:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC3F81842;
	Sat, 20 Nov 2021 21:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGQ7jFF2WJeH; Sat, 20 Nov 2021 21:57:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0757B817E4;
	Sat, 20 Nov 2021 21:57:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72BF8C0032;
	Sat, 20 Nov 2021 21:57:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF6CAC0012
 for <bridge@lists.linux-foundation.org>; Sat, 20 Nov 2021 21:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90A5E40562
 for <bridge@lists.linux-foundation.org>; Sat, 20 Nov 2021 21:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WLbE9Brqytk for <bridge@lists.linux-foundation.org>;
 Sat, 20 Nov 2021 21:57:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D4D840527
 for <bridge@lists.linux-foundation.org>; Sat, 20 Nov 2021 21:57:46 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-281-Al8z84NMNTav-OCe2iuMew-1; Sat, 20 Nov 2021 21:57:43 +0000
X-MC-Unique: Al8z84NMNTav-OCe2iuMew-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.26; Sat, 20 Nov 2021 21:57:42 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.026; Sat, 20 Nov 2021 21:57:42 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Bernard Zhao' <bernard@vivo.com>, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] net/bridge: replace simple_strtoul to kstrtol
Thread-Index: AQHX3Ool6Pave9KWG0WLE/Hz4Kqz0KwM94oQ
Date: Sat, 20 Nov 2021 21:57:42 +0000
Message-ID: <a98476cd4414476980a227c0f053bea7@AcuMS.aculab.com>
References: <20211119020642.108397-1-bernard@vivo.com>
In-Reply-To: <20211119020642.108397-1-bernard@vivo.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Bridge] [PATCH] net/bridge: replace simple_strtoul to kstrtol
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

From: Bernard Zhao
> Sent: 19 November 2021 02:07
>=20
> simple_strtoull is obsolete, use kstrtol instead.

I think the death announcement of simple_strtoull() has already
been deemed premature.
kstrtol() isn't a replacment in many cases.

> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
>  net/bridge/br_sysfs_br.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index d9a89ddd0331..11c490694296 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -36,15 +36,14 @@ static ssize_t store_bridge_parm(struct device *d,
>  =09struct net_bridge *br =3D to_bridge(d);
>  =09struct netlink_ext_ack extack =3D {0};
>  =09unsigned long val;
> -=09char *endp;
>  =09int err;
>=20
>  =09if (!ns_capable(dev_net(br->dev)->user_ns, CAP_NET_ADMIN))
>  =09=09return -EPERM;
>=20
> -=09val =3D simple_strtoul(buf, &endp, 0);
> -=09if (endp =3D=3D buf)
> -=09=09return -EINVAL;
> +=09err =3D kstrtoul(buf, 10, &val);
> +=09if (err !=3D 0)
> +=09=09return err;

That changes the valid input strings.
So is a UAPI change.
Now it might be that no one passes in strings that now fail,
but you can't tell.

Rightfully or not it used to ignore any trailing characters.
So "10flobbs" would be treated as "10".

Did you also check what happens to 0x1234 and 012 ?

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8825924E91D
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A25C4883F6;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qiH2hBmXmsao; Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D33A288360;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1BC4C07FF;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A45FCC0051
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0A0587B60
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hijI8j6RANMF for <bridge@lists.linux-foundation.org>;
 Mon, 17 Aug 2020 13:24:59 +0000 (UTC)
X-Greylist: delayed 00:07:13 by SQLgrey-1.7.6
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2046387B3D
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1597670264;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cde8ODjdi/Hj+eFzS40l/kA7hrIqtDcaKJsOWvcx2WQ=;
 b=w7GA85MncI06ABIFdKIExO0r2VkhqT1Erhwj4hogZmei4Rp+VTQnPvI0YH2hw6qMDgxWYx
 oUcs3yOIRvlsvYog/a+SV4BDpMmYF2quODDksBpWspuLyQ7igvgIo715zyYRmrrwKsfOs8
 ZNt+DRDsQCGcfzj9hxkwFu0/wumKVtY=
From: Sven Eckelmann <sven@narfation.org>
To: gluon@luebeck.freifunk.net
Date: Mon, 17 Aug 2020 15:17:37 +0200
Message-ID: <1830568.o5y0iYavLQ@sven-edge>
In-Reply-To: <87zh6t650b.fsf@miraculix.mork.no>
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
 <87zh6t650b.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6342531.2lmqPWkH4a";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 openwrt-devel@lists.openwrt.org, "David S . Miller" <davem@davemloft.net>,
 =?ISO-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [gluon] Re: [RFC PATCH net-next] bridge: Implement MLD
	Querier wake-up calls / Android bug workaround
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

--nextPart6342531.2lmqPWkH4a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 17 August 2020 10:39:00 CEST Bj=F8rn Mork wrote:
> Linus L=FCssing <linus.luessing@c0d3.blue> writes:
[...]
> This is not a bug.  They are deliberately breaking IPv6 because they
> consider this a feature.  You should not try to work around such issues.
> It is a fight you cannot win.  Any workaround will only encourage them
> to come up with new ways to break IPv6.

Who are "they" and where is this information coming from? And what do they=
=20
gain from breaking IPv6? Wouldn't it be easier for them just to disable IPv=
6=20
than adding random looking bugs?

Kind regards,
	Sven
--nextPart6342531.2lmqPWkH4a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl86g3EACgkQXYcKB8Em
e0bRtRAA2L6EoJO3y15WlvlK1ULYj+TymlV73Y7yZXpT10K8bxN0MDte23AyoUJ8
yXtwtvbEFVOsOTU4nN+IUIYSUNS2+cs/JIWXMIdzSQ5xlGXEVQvcCnCWAQWDnwWY
OrLJ5VsFFewJPbQdImu4bc6M7WofDsZ+jYUDKEscqlKCNzhA2dNumIBwdLirTAIN
bPS52CZaBMLcFjBtdsaP7pLEGwyeiMb8K0/3WtjBfDlaE7X3mXuY2Lrgev8eDJaP
lWCMU+j8Wce2heirmI6FTGTUE7G19+4dJnbqSSiad5DXHI5d95KqJMzkAqqD+D7G
kqtTOLFBu91Q28SvfLs9zLXVrFf4lhgqJ5ZB9Q9F4KS58vMNp/7SIodjFUv6Hree
SjwAyadH8qDcwVAfw7pkX3ndTFceAoWn7pNNi7qgQQ6cyVTOxAqHloL8FoYoxJAo
zUTxF++G542bXFLbd+iwUdh38+x8uvyO3dnLFHvDFJHVz8kAWrtt3t3cdXaOCuUa
tLGlg713XRCJvUtaruwT9VrbB6i85pc5O7/TFZqqd571zf1GJW3BtayN/v1/6mr0
piGJVKLmy1rOG5p8z/zRZl8lAPh+5oytfsVPIEsEnfRU462o91I/3Af/o6sDo+s5
t9jUfcMlL0A8+sjVxegZlE8dwZsrep14u7mJHiR4dUsUqESjGF4=
=PUb1
-----END PGP SIGNATURE-----

--nextPart6342531.2lmqPWkH4a--




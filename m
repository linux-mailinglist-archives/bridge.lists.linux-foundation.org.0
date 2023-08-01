Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9DE76B02C
	for <lists.bridge@lfdr.de>; Tue,  1 Aug 2023 12:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAB2060739;
	Tue,  1 Aug 2023 10:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAB2060739
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=JYH38BiZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9g_n97a8iD65; Tue,  1 Aug 2023 10:01:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 399EF607F1;
	Tue,  1 Aug 2023 10:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 399EF607F1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D516BC0DD4;
	Tue,  1 Aug 2023 10:01:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 76A55C0032
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50AE7607F1
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50AE7607F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8hM5HZXNYWpW for <bridge@lists.linux-foundation.org>;
 Tue,  1 Aug 2023 10:01:15 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 523106076C
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 523106076C
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-4fe4762173bso473419e87.3
 for <bridge@lists.linux-foundation.org>; Tue, 01 Aug 2023 03:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690884073; x=1691488873;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=e8Rmj6mejjDyMq10/c5ElVqxfT4Jc8y7fVBUerEHAFQ=;
 b=JYH38BiZyDWL0KXmQnng4sthQhdeV3NJBHfNi+ky1KBbpG9nVv/fbbULdTOLHrIkRc
 m+cW5Nuo1qJ+ZY/CEFkGrU+LjmOwtRZV5FZbO5P7+OM1zKnHgMDf1oBLHOA+NceI85gx
 JkZ47KaVpN9ZBvR6FoyVYB0FbHi8KbwxzoilvQtwUB2ij/UJya1TAMXC2C3UOm6p174z
 S6sbKiiIslls7win2DAPno+jCbJ72BXV6csVG9rjzIDvaWKjNZk+kKpKl91dwFSz63UN
 EHa/G4niaq852Xz2iz+Bde3Ap6qEvx6ZrdIxP94qmNM5EajZm2Xvu5/MSgK9i/6QI6uE
 Ds1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690884073; x=1691488873;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e8Rmj6mejjDyMq10/c5ElVqxfT4Jc8y7fVBUerEHAFQ=;
 b=jj/IP8jkiAGOVhq8s914j1FOS6CwHsYdi8yJW67PnUV+hRwcUC9c9woiwqub0TmVtS
 qSIOYnfY1oxtScwapG1X1QsU8oGlOopmAIaFnVOrKgwg3gBuHLZHDEJZ1h+Vh8rCiMye
 o52B4eI8af/bl1Y7N5GWJgf4lNcgJ1O0wvl44zgXqn0Wa2XJ2qkEOLTv9t6gCkt2Qvy7
 2PUjU4MNc7G20M6JA+ZzO9/qc6UL3DyPu07496XhhI2sBAls6csHKmfjEZq+I5l71Rmt
 CQs2lmbITQ/mLDRTWN55ga3h7wCdYdI29s42HvCiJFFmPg9bvBO9i0kRLf1umD2Y7p77
 XTKw==
X-Gm-Message-State: ABy/qLbnSe1Axd3/K7Kzvc17B2OCXYntokgK0/zVKcx8JLqnSnPXjDIj
 Y6rFpDbsVcbB73nB+c76coc=
X-Google-Smtp-Source: APBJJlGhgKLwVApJiPoxJUiIuyS5KDw4uVrCOBzzVEwDynYHPSZXT5p7yB71zUjSFqNFlY26YLaTpA==
X-Received: by 2002:ac2:43b7:0:b0:4fd:fef7:95ae with SMTP id
 t23-20020ac243b7000000b004fdfef795aemr1664853lfl.9.1690884071826; 
 Tue, 01 Aug 2023 03:01:11 -0700 (PDT)
Received: from localhost (0x934e1fc8.cust.fastspeed.dk. [147.78.31.200])
 by smtp.gmail.com with ESMTPSA id
 j29-20020ac2551d000000b004fe09920fe5sm2512701lfk.47.2023.08.01.03.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Aug 2023 03:01:11 -0700 (PDT)
Date: Tue, 1 Aug 2023 12:01:09 +0200
From: Joel Granados <joel.granados@gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20230801100109.ospf2gwsdewhhwzn@localhost>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <CGME20230731205134eucas1p1403a137418fcdaaaf78890de88d4a958@eucas1p1.samsung.com>
 <ZMgeoDT0t3NeALM0@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="g6vdqxyc5hdpujuz"
Content-Disposition: inline
In-Reply-To: <ZMgeoDT0t3NeALM0@bombadil.infradead.org>
Cc: Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: Re: [Bridge] [PATCH v2 00/14] sysctl: Add a size argument to
 register functions in sysctl
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


--g6vdqxyc5hdpujuz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 01:50:40PM -0700, Luis Chamberlain wrote:
> On Mon, Jul 31, 2023 at 09:17:14AM +0200, Joel Granados wrote:
> > Why?
>=20
> It would be easier to read if the what went before the why.
haha. I totally misunderstood you in
lore.kernel.org/all/ZMFizKFkVxUFtSqa@bombadil.infradead.org I thought
you meant to put the why first. I'll switch it back to having the what
first for V3

>=20
> > This is a preparation patch set that will make it easier for us to apply
> > subsequent patches that will remove the sentinel element (last empty el=
ement)
> > in the ctl_table arrays.
> >=20
> > In itself, it does not remove any sentinels but it is needed to bring a=
ll the
> > advantages of the removal to fruition which is to help reduce the overa=
ll build
> > time size of the kernel and run time memory bloat by about ~64 bytes per
> > sentinel.
>=20
> s/sentinel/declared ctl array
>=20
> Because the you're suggesting we want to remove the sentinel but we
> want to help the patch reviewer know that a sentil is required per
> declared ctl array.
Ack

>=20
> You can also mention here briefly that this helps ensure that future move=
s of
> sysctl arrays out from kernel/sysctl.c to their own subsystem won't
> penalize in enlarging the kernel build size or run time memory consumptio=
n.
I worked it in

Thx for the review
>=20
> Thanks for spinning this up again!
>=20
>   Luis

--=20

Joel Granados

--g6vdqxyc5hdpujuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTI1+QACgkQupfNUreW
QU/tvQv8DSOiRBrGHskMVKuasQMrQO4cj/zOagQExBMcJnGj7M+jr4pvCvBo1Rce
fRZBBVfKDjeV4svmqKus54sNM27JPAJALJlnePPgsBqhuOeL6kKLSsCDyDv6bKOS
e0J6ZLE6EAqudCJqsxjGkPNEalpooX1Ip9OQqdPQxyfoSdDZQcKucP/rPx+Q4yzy
lKv9SqcK/1j7q8fMkiucrjwQF2woB16q6iXZmokZTt7vTX0rSfKFJ8isQOgimpll
Xv+hxQaRZEueIIc45dAL7MRYn/zukf8rExbIRNXCtUCsyfJxcdo6V0ubKfMAj/u3
X2J5FIUpf1ua/QX0idONlXIXU1kOWnFapnBPprKBKuBhO6xwSnrQhxgt7aKbbDGl
dBwWRbN59m3q7jrz17McOb+LjfA5ZMcs3K58bfg0PnrugQZA537GFL19es1dAssc
fy06XeNWXeUhvCjgQW53D2twqvhAhY4WU1D4sbV+8xwQihB416Zkc+ReqQs2cS6Y
zhTPrhl+
=F1x8
-----END PGP SIGNATURE-----

--g6vdqxyc5hdpujuz--

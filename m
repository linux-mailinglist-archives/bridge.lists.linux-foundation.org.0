Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA097753D4
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 09:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 547134170F;
	Wed,  9 Aug 2023 07:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 547134170F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=XJ3SeBQk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZXRPZYo1ycb; Wed,  9 Aug 2023 07:13:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 52DE141708;
	Wed,  9 Aug 2023 07:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52DE141708
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B761EC0DD8;
	Wed,  9 Aug 2023 07:13:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2D29C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 07:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDC7160AD4
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 07:13:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDC7160AD4
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com
 header.a=rsa-sha256 header.s=mail20170921 header.b=XJ3SeBQk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNAifO7Tm4hc for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 07:13:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5B5860A94
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 07:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5B5860A94
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20230809071323euoutp015d2b996c65b2b9125c2fa606849b0eb7~5pZb-us8e0911009110euoutp01F;
 Wed,  9 Aug 2023 07:13:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20230809071323euoutp015d2b996c65b2b9125c2fa606849b0eb7~5pZb-us8e0911009110euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1691565203;
 bh=pd0rkBBl239hWUg1rHcfh8BtHyeO6HyV2u6nDFSCWm0=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=XJ3SeBQkhJ7ZaOnSLxtM3BytZFFQVnU3UGIPJpukUn8AgLqEqNqS+MstyY5OdroTM
 GdbqsR2lXlr3UHMyvKPDA5ajb5C5q9GmO7KzPcM796hL5FqKq2HOoxqmLBBjhJqVjQ
 Hs5UChvxttSTzpTOYv5BpP1svXsa/HlFU8gSljBw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20230809071322eucas1p271a06df3167b4acd4d096977def3f65b~5pZbxCo9J2495924959eucas1p2V;
 Wed,  9 Aug 2023 07:13:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 89.6F.11320.29C33D46; Wed,  9
 Aug 2023 08:13:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20230809071322eucas1p2b1aafebde3118e2cd1df71c493c49520~5pZbFSrB30819708197eucas1p2Z;
 Wed,  9 Aug 2023 07:13:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230809071322eusmtrp20dd29928bd4576d6f2d57f097372c78e~5pZbD_dNH1895118951eusmtrp2N;
 Wed,  9 Aug 2023 07:13:22 +0000 (GMT)
X-AuditID: cbfec7f4-993ff70000022c38-4c-64d33c92be17
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 86.74.14344.19C33D46; Wed,  9
 Aug 2023 08:13:21 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20230809071321eusmtip1adec89d2a0f353095405b43d46c2cce5~5pZau3MOi3046330463eusmtip1k;
 Wed,  9 Aug 2023 07:13:21 +0000 (GMT)
Received: from localhost (106.110.32.133) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 9 Aug 2023 08:13:21 +0100
Date: Tue, 8 Aug 2023 15:59:53 +0200
From: Joel Granados <j.granados@samsung.com>
To: Chris Maness <christopher.maness@gmail.com>
Message-ID: <20230808135953.l2y6gj7j272434fw@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha512";
 protocol="application/pgp-signature"; boundary="h3c25ibwzmlgmjj3"
Content-Disposition: inline
In-Reply-To: <CANnsUMGHnurbph9F7mex=1s0mxhwpNgeQbKJ6j1r37Qmd6LAMQ@mail.gmail.com>
X-Originating-IP: [106.110.32.133]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTe1BUdRTH+929jwVFLwvqD4WcAI2HD8DKo0HZjNWtpodTk4OWtiN30AkW
 hhVRixHksYE8drAkgXR1bEEeCyy4hNJCS0I8EgRFRBR5yVMx3qAL7XJ1cqb/Pud7zmd+5/zx
 E4sko8xK8QHZQT5EJg1wpC1JXdVMw/oU72Y/j/J7TlBYN0CDIWIzdJbFU9BtNNDwV+4dBkbU
 CQiMBUUUGEsVIshoiCZBczmGgN6qLgZ0iTkIGtMmKSjpm6Jh6Ew2ghOD9hB1aQJBT3IXBTfU
 j2mYVwXBTNIiOB0fRUD9iUAYOZVOQKMuiQJtdwsFZb/XkNBScpeA5ssZNDwwJJKgPBclgl7V
 EAXtJ9UkdOWPEBB1dlQEs1nVFFxLnBdBVv0DAlqVvQgqFXoK6vOPM1ClWg5KTS0Jk3XDCFKH
 b4qgqcwZasfnCbhWNEbBWIYLdCobSDiZVUzAlbhpBtT5eQx0T/XREFmvYyC6/XV4Mm3aQ136
 ybatXO6ZXMQ9ulaDuDO533HpEddJbnbGjSu+eJvgStPuMpyuYg2n0oZyRVluXNuQD6fNjqO5
 qxfzTO3OLZzyfAXiii4c++zlXZbefnzAgUN8yMa3vrHcf+HsKSb4uNXhWzmFVASKWxSPLMSY
 fQ03JBhRPLIUS9gshPuaf0LmhoQdR7g41lrgMYSTH3k8F/o7fqSEPBNhzZ0jgmya0SpO0UJR
 hHCHZp4wT5GsM86LUdBmptl1uGG4XWRmW3Yj1o+rCLMgYqtYHNvwaEGwYXfjuKg/FgQrdjNW
 X7/DCGyNa073kGYWsYexYqLGNCM28SqcOSc2xxbsDvx3Wg0pbOqIJ4YTKYHDcW1x28JbmD2/
 GHfrBwihsR1XPaykBbbBg9XFjMD2eL707DPhJMLlc48ZochBWB058cx+E0ff6HlmvIMr9MnI
 vBFml+DWh9bCoktwii5VJMRW+IdYiTC9FufcGyaVyCnthdPSXjgt7b/ThHgdVl0Z/X/sjtXn
 hkQC+2CNZoRUISYbreBD5YH+vNxLxodtkEsD5aEy/w37ggK1yPQV6+aqx39DmYP/bDAgQowM
 yNkkdxXkNKKVpCxIxjvaWvl83uQnsfKTHjnKhwTtDQkN4OUGtEpMOq6wcvep2Sdh/aUH+W95
 PpgPed4lxBYrI4hgmb+qwGu+0XdEnn2oeItmtee5X5+25ReW3UAJsx9v7CeNHq8+ue+hC6j3
 Cwz2uORZuelYXnnPraNZezuXJ7WO32yqjrMbXCHfHMV757qUOy21tv/A6aNPmyb3tHpJlyRT
 KVcdHFy+H5r2z8n98KvAuXCvsV9Wb83cdHswle7I8FOUeDW/rXpJVrv94og2tXe9wx6j6xuu
 ivT3I20Iu/thc1+PLmUe7PBB4fr9QK4Jc3WaS6+eemrpPuOe2RdpV9XluUyl3NU25TsQNIGX
 dez+8t2dAXWL+5mrAcrbP1e7xfz5haIg9b21vi3O943eekm/705Dnt55vTYmf7LilTpji127
 bYsjKd8v9XQThcil/wL+IR6jBQUAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTe0xTZxjG852ec1pgjYeL25EZQ6rLTKeFVsAXB8Ylhhz/mXOMsOEW7OwJ
 MGmrbTHDZbFaFKkrFllACtRiRgWsFGlXL+NaZxnKEHAynRgH5TKF2DlvXARW6RaX7L/f973P
 8+TJm7w8TtgxbiQvW6FhVQppjoAMxq/Nd95dW5x4Qxbz3CqBc9fuk+DWroehZj0B3jk3CT/Z
 7nDBZ/0GwVyjg4C5iwUcqLyej0PDpUMYjHqGueAynEHQa3pGwPnx5yRMmOsRHH2wHHTfP0Uw
 cmyYgF+sf5KwYFHCdFEIlOt1GHQflYOvtAKDXlcRAU3eAQKaW7pwGDh/F4MblypJGHMbcDBW
 6zgwapkgYLDEisOw3YeB7uRfHJip7SSgx7DAgdruMQxuGUcRXC5oJaDbfpALHsvrYGy4isOz
 a5MIyiZvcqC/eRVcfbKAQY/jMQGPK1fDkPE6DiW1Tgx+KJzigtV+lgve5+MkHOh2cSF/MA5m
 p/w9rBff37SBsZltiHnY04UYs+0rpkLbhzMz00LGWXcbYy6a7nIZV/tbjKUpl3HUCpnfJpKY
 pvpCkrlSd9Y/HkpgjKfaEeP4bv8HK9JFiSplroaNylKqNUmC7WKQiMQJIJLEJojE69Z/tkES
 J4jemChjc7L3sqrojTtEWZeqdNhuLf/LtgIzqUUFIXoUxKOpWPqPe98SehTMC6NqEO180cYJ
 DJbT557cJAIcTr8Y0JMB0SNETx2sxQIPB6Ibxo8vqnBqFX32UAH5kklqDX19cnAxKYKKpluf
 WBYNHMpD0c2//7goCqe204W6jkXmU+tpa98dbiC1FKftF6bxwCCU7iof8TPP795LF41KA/gm
 fXqe91IRRG2jfzZ14YGmAvrppOGf1l/Tj+fGkBGFm/4TZHoVZHoV9FLBoYT0rfn72P++36Gt
 1ROcACfRDQ0+3IK49SiCzVXLM+VqiUgtlatzFZminUp5E/Jfg8sz7byA6h48ErkRxkNutMrv
 HG4804sicYVSwQoi+Ekp/bIwvkyat49VKTNUuTms2o3i/Ess5kQu3an0n5ZCkyGOj4kTx8Yn
 xMQlxK8TvMHfsvuINIzKlGrYXSy7m1X968N4QZFazPAwOzqtzRse/6sxNcTIbF6ZUmBS1ffk
 W2tWvLA796WnfTosq5OPN4cHpyXVmE8ntyzJSp0SOno+pjpGmvo9WuNrs3nl89uWeN+9sm28
 3HP5AaGZLS6qFJYMjmUY6q+W231LTx1O2+Jd2FGW3JpeElJ8cmSI+iR4jOm1zeyRuuSs+lB7
 fH7fhlNtFfoLNYejZPaK9OJSRrI1paNzwCye/zxvS+Hq8s0dyuSqxk2OvUd3UQertQOdg1Et
 bdllfOmyj3pvSG+vzUycO9ORV9WYk7LUuMbnPCGM/aK6VJ3qnJa9tzV0WUbovg+NHr7t6YEj
 UbDSEEEG79/TeLLi3ttTyccFuDpLKhZyVGrp38teVPyiBAAA
X-CMS-MailID: 20230809071322eucas1p2b1aafebde3118e2cd1df71c493c49520
X-Msg-Generator: CA
X-RootMTR: 20230808030739eucas1p2192f620771cb9655afdbcd624775b4c8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230808030739eucas1p2192f620771cb9655afdbcd624775b4c8
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <ZMgpck0rjqHR74sl@bombadil.infradead.org>
 <ZNFlqwwvE6w6HyHl@bombadil.infradead.org>
 <CANnsUMG3WO_19GpnsNaXPqu6eEnpBvYUpkrf1QbHwsc9wEoCZQ@mail.gmail.com>
 <ZNGBrkP7J2g/BAWV@bombadil.infradead.org>
 <CANnsUMGRBnatKB4-3eYjb5aG7YnXDiZG6cjuwSgtjvVF6ErJNg@mail.gmail.com>
 <ZNGv3Q5VBsS2/w4e@bombadil.infradead.org>
 <CGME20230808030739eucas1p2192f620771cb9655afdbcd624775b4c8@eucas1p2.samsung.com>
 <CANnsUMGHnurbph9F7mex=1s0mxhwpNgeQbKJ6j1r37Qmd6LAMQ@mail.gmail.com>
Cc: Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 netfilter-devel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Paolo Abeni <pabeni@redhat.com>,
 Jan Karcher <jaka@linux.ibm.com>, Jozsef Kadlecsik <kadlec@netfilter.org>,
 Tony Lu <tonylu@linux.alibaba.com>, Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Will Deacon <will@kernel.org>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Mat Martineau <martineau@kernel.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Iurii Zaikin <yzaikin@google.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-sctp@vger.kernel.org,
 josh@joshtriplett.org, Wenjia Zhang <wenjia@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, Luis Chamberlain <mcgrof@kernel.org>,
 Wen Gu <guwen@linux.alibaba.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
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

--h3c25ibwzmlgmjj3
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 07, 2023 at 08:07:24PM -0700, Chris Maness wrote:
> >
> > Are you reporting a separate regression that goes all the way back to v=
4 kernels?
> >
>=20
> I am not certain what you mean by regression.
>=20
> > > v2 is fine there.
> >
> > What does this mean?
>=20
> I have to go all the way back to kernel version 2 for the serial 6PACK
> driver to work.  If I try to use it in Kernel version 4, 5, or 6 the
> kernel panics as soon as I attempt to connect to another station.
Again. Have you reached out to Andreas Koensgen
<ajk@comnets.uni-bremen.de>? Maybe he has more info on this.

Best

>=20
> >
> >   Luis
>=20
> Chris KQ6UP
>=20
>=20
> --=20
> Thanks,
> Chris Maness

--=20

Joel Granados

--h3c25ibwzmlgmjj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTSSlkACgkQupfNUreW
QU8zQQv/csq4fZgijsNRirYRY4BuHiERw8G3UuPFIPemEFB+C72FHbLDK66oqfKN
8AvTZLmXSA90J1kikzqAhrHgXqDgl4lOVwf6XZ+n2rBYuPlay1XSyC3/RlBrDOiS
cmddkmwrrbZpE3aW7uXV5H5eLFmnLds5C5I6Ui9bEbnJthaJGXCXTbwUXpFFh8B/
EMsFVsOG+Ek2KycdHGtsm6Lcrst2N0+cSWLSu35IXZEi2jB22fhn2PEF0kvtrL4X
bCQVgIPuWI4Q7PtdmMG4ewdSZFbVnbg+42EFMTGjdjOu7DkrTFMwl93/febfP84X
oUz7KjNP/ez3A54qqcjN1YgUIQKJLhO95BZTl9ZI1eqcrsg0HuxUGd6cpWxOT1ZD
xiJNJUhscRd1xE592veXF6+aXotpJvyEWWb39/bf1HAE0Kjr2DljSslkr8lsjQEh
4wP3OB5LIp/YVT6urTAiHoL+vJGA3TWIMfLwSWTmvu6ePiLpFZwEpmcBQNnGzm67
jHdxey6Y
=slPS
-----END PGP SIGNATURE-----

--h3c25ibwzmlgmjj3--

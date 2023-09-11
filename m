Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4803D7A4642
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B9BA81DEA;
	Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B9BA81DEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oaB1gV43A3TS; Mon, 18 Sep 2023 09:44:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D6A2381FD5;
	Mon, 18 Sep 2023 09:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6A2381FD5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5F364C0DD3;
	Mon, 18 Sep 2023 09:44:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8445CC0032
 for <bridge@lists.linux-foundation.org>; Mon, 11 Sep 2023 09:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BC6181971
 for <bridge@lists.linux-foundation.org>; Mon, 11 Sep 2023 09:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BC6181971
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9AxFHGtjFH6X for <bridge@lists.linux-foundation.org>;
 Mon, 11 Sep 2023 09:46:03 +0000 (UTC)
X-Greylist: delayed 583 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Sep 2023 09:46:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81F548196E
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81F548196E
 for <bridge@lists.linux-foundation.org>; Mon, 11 Sep 2023 09:46:03 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 193721C0004; Mon, 11 Sep 2023 11:36:16 +0200 (CEST)
Date: Mon, 11 Sep 2023 11:36:15 +0200
From: Pavel Machek <pavel@denx.de>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <ZP7fj1LW3YLu2LrM@duo.ucw.cz>
References: <20230908182127.3461199-1-sashal@kernel.org>
 <20230908182127.3461199-6-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="EYwzxsuobC4JVE2D"
Content-Disposition: inline
In-Reply-To: <20230908182127.3461199-6-sashal@kernel.org>
X-Mailman-Approved-At: Mon, 18 Sep 2023 09:44:19 +0000
Cc: bridge@lists.linux-foundation.org, pabeni@redhat.com,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org, razor@blackwall.org,
 roopa@nvidia.com, Florian Westphal <fw@strlen.de>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>, GONG@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, stable@vger.kernel.org, "GONG,
 Ruiqi" <gongruiqi1@huawei.com>, kuba@kernel.org, kadlec@netfilter.org,
 davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH AUTOSEL 4.14 6/8] netfilter: ebtables: fix
 fortify warnings in size_entry_mwt()
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


--EYwzxsuobC4JVE2D
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> [ Upstream commit a7ed3465daa240bdf01a5420f64336fee879c09d ]
>=20
> When compiling with gcc 13 and CONFIG_FORTIFY_SOURCE=3Dy, the following
> warning appears:
>=20
> In function =E2=80=98fortify_memcpy_chk=E2=80=99,
>     inlined from =E2=80=98size_entry_mwt=E2=80=99 at net/bridge/netfilter=
/ebtables.c:2118:2:
> ./include/linux/fortify-string.h:592:25: error: call to =E2=80=98__read_o=
verflow2_field=E2=80=99
> declared with attribute warning: detected read beyond size of field (2nd =
parameter);
> maybe use struct_group()? [-Werror=3Dattribute-warning]
>   592 |                         __read_overflow2_field(q_size_field, size=
);
>       |
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is not queued for 4.19. Mistake?

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,        Managing Director: Erika Unter
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--EYwzxsuobC4JVE2D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCZP7fjwAKCRAw5/Bqldv6
8jOPAJ446x9CNCOtOGu8jnKHqakoizjVowCfRJpsAS8y5nIe7eQnbTc+73ASZFY=
=5xRs
-----END PGP SIGNATURE-----

--EYwzxsuobC4JVE2D--

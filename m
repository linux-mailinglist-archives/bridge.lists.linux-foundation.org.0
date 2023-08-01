Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F5B76B03C
	for <lists.bridge@lfdr.de>; Tue,  1 Aug 2023 12:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F0BC80CE0;
	Tue,  1 Aug 2023 10:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F0BC80CE0
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=eXsvFh6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NA6wN21pu8S2; Tue,  1 Aug 2023 10:03:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B5EE880B45;
	Tue,  1 Aug 2023 10:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5EE880B45
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 559DCC0DD4;
	Tue,  1 Aug 2023 10:03:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 713F3C0032
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5666C4052C
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5666C4052C
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=eXsvFh6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boX1O-4nNnT8 for <bridge@lists.linux-foundation.org>;
 Tue,  1 Aug 2023 10:03:20 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E47A340914
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 10:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E47A340914
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-3fbc12181b6so59630255e9.2
 for <bridge@lists.linux-foundation.org>; Tue, 01 Aug 2023 03:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690884198; x=1691488998;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6xzFd6kXeaygrI5Ej8/AL8nxngfv7zWbrLM3nGa6LwE=;
 b=eXsvFh6BK+B4iuEJYMTnBcTL7rHnOTSND3P9MAnpkjJqEpLCdcVuq/3LHC8WhWxlOi
 AYVHc0UleUBBoRaduveJnpBbMfklz/v7bfVQyhDeoiCpwWcDLTvnVdKzWsATvnXRFrIQ
 4sxETc63wfFaT1bcwPenmbK5Cd68zjDF7/mwm/QlGSxaYKSqfPBfKA0mGUHtfQgxDKuN
 bfckck3WXSVwZdpmMoaLqOAU0MAofGr+AO2UcfWw2DAsMdq42RxNJsTnAee8Lvikj6hM
 UobnKUJtXdI2bFxeUV6lKnu0txtKROjJB89U3UM49XZz3hMCMQfPajpd2YztNuqg5bYr
 w4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690884198; x=1691488998;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6xzFd6kXeaygrI5Ej8/AL8nxngfv7zWbrLM3nGa6LwE=;
 b=j1sj3AHdSGHKekg+jIvQ9VX/kYovktYZhBfV//z34z+VDIkleOhaSRzXwKdmD9bD4O
 X+d3C2rvK3/mv4etQdDRGTjZ8Nz7ogo815LayKSWIaMbkzCnLMSmZeaiGO/tHs3O0ivV
 b1/ZOFc3ryQfT7ee7RSwKZHRJLTF9yvdbhC9Yerdn/NR1xxiZIX9IW4uAWbdv9xQE8ur
 8iEXo6kw5kjKBzArvltXY4fh7EUEp4WkbiTkjreMBe5T+/mSCyFNXNf2RYaihVrCVC3I
 oH3/7OK2hte9sl8FCl/cjuaUkXRnQZS49y2EovNYkXqS7/tfWbnMBfIqp5s+E8bBMvZO
 AKQQ==
X-Gm-Message-State: ABy/qLYR56UbDXKg8J+rFwstkhNQnjA00lPwtdDBZ6LHUei7RenfXjXb
 ZyorKx9gONhWy5yL/hTj1Hw=
X-Google-Smtp-Source: APBJJlHPT6WT6baqr5uMvSTuUS8XBMuz9v2AzEIRtzwB1vPwVdTIJR+TY0kuPM2KiW9G9XEqBLrTBg==
X-Received: by 2002:a05:600c:214d:b0:3fe:20b6:41b2 with SMTP id
 v13-20020a05600c214d00b003fe20b641b2mr2182378wml.4.1690884197477; 
 Tue, 01 Aug 2023 03:03:17 -0700 (PDT)
Received: from localhost (0x934e1fc8.cust.fastspeed.dk. [147.78.31.200])
 by smtp.gmail.com with ESMTPSA id
 n1-20020a05600c4f8100b003fe15ac0934sm2670378wmq.1.2023.08.01.03.03.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Aug 2023 03:03:16 -0700 (PDT)
Date: Tue, 1 Aug 2023 12:03:15 +0200
From: Joel Granados <joel.granados@gmail.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <20230801100315.ymcahsxu6qpw7kct@localhost>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <20230731071728.3493794-4-j.granados@samsung.com>
 <ZMf9vZpGE98oM9W2@kernel.org>
 <CGME20230731190724eucas1p14cc08261cd20815797958bbebc0fafe7@eucas1p1.samsung.com>
 <ZMgGWm4sT+VqDZ3u@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="d62tnfuywe5q6aej"
Content-Disposition: inline
In-Reply-To: <ZMgGWm4sT+VqDZ3u@kernel.org>
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
 "David S. Miller" <davem@davemloft.net>, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, Sven Schnelle <svens@linux.ibm.com>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
Subject: Re: [Bridge] [PATCH v2 03/14] sysctl: Add ctl_table_size to
	ctl_table_header
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


--d62tnfuywe5q6aej
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 09:07:06PM +0200, Simon Horman wrote:
> On Mon, Jul 31, 2023 at 08:30:34PM +0200, Simon Horman wrote:
> > On Mon, Jul 31, 2023 at 09:17:17AM +0200, Joel Granados wrote:
> > > The new ctl_table_size element will hold the size of the ctl_table
> > > arrays contained in the ctl_table_header. This value should eventually
> > > be passed by the callers to the sysctl register infrastructure. And
> > > while this commit introduces the variable, it does not set nor use it
> > > because that requires case by case considerations for each caller.
> > >=20
> > > It provides two important things: (1) A place to put the
> > > result of the ctl_table array calculation when it gets introduced for
> > > each caller. And (2) the size that will be used as the additional
> > > stopping criteria in the list_for_each_table_entry macro (to be added
> > > when all the callers are migrated)
> > >=20
> > > Signed-off-by: Joel Granados <j.granados@samsung.com>
> > > ---
> > >  include/linux/sysctl.h | 14 ++++++++++++--
> > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
> > > index 59d451f455bf..33252ad58ebe 100644
> > > --- a/include/linux/sysctl.h
> > > +++ b/include/linux/sysctl.h
> > > @@ -159,12 +159,22 @@ struct ctl_node {
> > >  	struct ctl_table_header *header;
> > >  };
> > > =20
> > > -/* struct ctl_table_header is used to maintain dynamic lists of
> > > -   struct ctl_table trees. */
> > > +/**
> > > + * struct ctl_table_header - maintains dynamic lists of struct ctl_t=
able trees
> > > + * @ctl_table: pointer to the first element in ctl_table array
> > > + * @ctl_table_size: number of elements pointed by @ctl_table
> > > + * @used: The entry will never be touched when equal to 0.
> > > + * @count: Upped every time something is added to @inodes and downed=
 every time
> > > + *         something is removed from inodes
> > > + * @nreg: When nreg drops to 0 the ctl_table_header will be unregist=
ered.
> > > + * @rcu: Delays the freeing of the inode. Introduced with "unfuck pr=
oc_sysctl ->d_compare()"
> > > + *
> > > + */
> >=20
> > Hi Joel,
> >=20
> > Please consider also adding kernel doc entries for the other fields of
> > struct ctl_table_header. According to ./scripts/kernel-doc -none
> > they are:
> >=20
> >   unregistering
> >   ctl_table_arg
> >   root
> >   set
> >   parent
> >   node
> >   inodes
>=20
> Sorry, I now realise that I made the same comment on v1.
> And I didn't see your response to that until after I wrote the above.
np. I'll hold off adding this to the set until I get feedback from my
proposal. I do this as I'm unsure about the contents of the docs.


>=20
> >=20
> >=20
> > >  struct ctl_table_header {
> > >  	union {
> > >  		struct {
> > >  			struct ctl_table *ctl_table;
> > > +			int ctl_table_size;
> > >  			int used;
> > >  			int count;
> > >  			int nreg;
> > > --=20
> > > 2.30.2
> > >=20

--=20

Joel Granados

--d62tnfuywe5q6aej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTI2GIACgkQupfNUreW
QU/jnAv/XiexP2W1Y950obHBDBGWwb2QRwk7qg172MXMjFQl6+imM/lk9f2BbUyv
yHqtlJQeHzRDFmaanGI2f0Cd5i7XkupsNoINecjz4w7t3g4pgPxjYO+KRGJoQxRx
zfGIkM/UKYfW53TJRg0P0b9t7XnQ+yew+ZAEULLKb23ElXZ+hFXMtH8K938NEqxz
ETsCG4rlGIO3QMm0epmk4EaMr34faYtf8fzaY6T3PshcTq+vklW7M/gHjcMkICK5
GZM7Ijb2sU5Xd4d8hkoSpPh8TErgjuNVU2LpzlzjyC25WFM0xpPnKRDB5ENGa4m4
ZWu67LrebJoLjoE0vJUMMfZu9PCmvQp4Wijuc/ImQA4BA8hNwsarFhYlFMPp3Ixn
AC51TcUplS956Laxzjd51ql75jba5ul88ZGiqnkNL+IXKOjceJSKM68lVQELv1Lq
m9Il+S1C7xVBNvDQo9yE5jA7mdju9NyxvL2UXr4sZU7Gmp8qiY5Zw4H6T6dSQy8H
ELxemNee
=dUoN
-----END PGP SIGNATURE-----

--d62tnfuywe5q6aej--

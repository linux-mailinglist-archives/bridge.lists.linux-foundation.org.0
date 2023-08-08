Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFCE773AB5
	for <lists.bridge@lfdr.de>; Tue,  8 Aug 2023 16:24:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E6F361122;
	Tue,  8 Aug 2023 14:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E6F361122
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=OUEYNyEO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJyl2JYp_Gqv; Tue,  8 Aug 2023 14:24:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8E46060AC6;
	Tue,  8 Aug 2023 14:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E46060AC6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3DDC4C008D;
	Tue,  8 Aug 2023 14:24:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B16B6C0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 14:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89FA541685
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 14:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89FA541685
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=OUEYNyEO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ga6TnEW6G2ui for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 14:24:17 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41006415F4
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 14:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41006415F4
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-4fe700f9bf7so2789625e87.0
 for <bridge@lists.linux-foundation.org>; Tue, 08 Aug 2023 07:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691504655; x=1692109455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6AJ8lGHVDDQsKqJM0iYPvItsrgmxRvUz0TuV1LYvToc=;
 b=OUEYNyEOehlcONzhiteXXMa2HuhD8o5aYimbeeiMOUbxXzUho/pl65Ev4XC7VT18+0
 /30OimH+3MPxE/NR/+nuV9ICEbKLxGXTyrDlWUG1ev7DBGmbCXhUPytNGUFpBEldXXmn
 ++W/pJvaj7l7O8AsmccrFojn+VkTJ0omLsIwmRKVW6AYdWntCEm8NbnnXMQ39NWf1acy
 ZfxIkMsbTHQq33I9PoEB9RqyGdjisqfRZWwZ0XbQE7S/Oils6/bFOB2Ho4sxGoFHhJzK
 zzVhS86ZkqVGlhAR3+rCX80OotUpmOAYd6xtDMta8m4odmokLRsm2WTYlufuW/17gX0y
 2Oyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691504655; x=1692109455;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6AJ8lGHVDDQsKqJM0iYPvItsrgmxRvUz0TuV1LYvToc=;
 b=V1BWMRat//W1lVViSXQkXKeLfiDfigGo7a+E5A5FPgRmwa6JiJQrkbCeojkb7GSGWa
 JUKKzaR1EXCmYqqHgP6RHrJP1HtsGvqPurhx6Q3ibw4MMy5OdBExLEbRMCJJpfW5qJng
 wSTcyLVNKdopjLySxBOfgSIdnuoMGmRMlA1EZL+ylcvg26sXOXGF0plrLiH5sEESehqJ
 SW5kHcn2uywF24yNuH1k0zJ5YEe6K9/DJzgNYpzdALGZueaBnkJmvtxmvgnNrIJ2N/3n
 au/uV8OTwJToItDNbTnL32iuKeObxqIfyQBk7o2rz2j8uT+/as8ApvFT80bA24QpO63D
 UqoQ==
X-Gm-Message-State: AOJu0YwJuhrsl1CKPv13jqyhdTl+qwqmCAhxAAdnXhGdcH9aMvgSSA2U
 +3QSu2PNQKYghavTc4caFk4=
X-Google-Smtp-Source: AGHT+IGyY/nE6OduNoYHb4FqsV699UqfKW2Yxv9xMsVScJIAlzhtYn4/SNWKfl3pUi+89xLrn9sXVw==
X-Received: by 2002:a05:6512:3c9f:b0:4f9:5196:5ed0 with SMTP id
 h31-20020a0565123c9f00b004f951965ed0mr10717440lfv.7.1691504654613; 
 Tue, 08 Aug 2023 07:24:14 -0700 (PDT)
Received: from localhost (0x934e1fc8.cust.fastspeed.dk. [147.78.31.200])
 by smtp.gmail.com with ESMTPSA id
 b23-20020ac247f7000000b004fcdf99be86sm1873028lfp.239.2023.08.08.07.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Aug 2023 07:24:13 -0700 (PDT)
Date: Tue, 8 Aug 2023 16:24:11 +0200
From: Joel Granados <joel.granados@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230808142411.h55rzvczm5nff4m2@localhost>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <20230731071728.3493794-12-j.granados@samsung.com>
 <CGME20230808112110eucas1p1332795fa88d771ac3f05825f33052cf9@eucas1p1.samsung.com>
 <22e0e672-f9f6-6afe-6ce6-63de264e7b6d@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="krgknuiaaxdgkah7"
Content-Disposition: inline
In-Reply-To: <22e0e672-f9f6-6afe-6ce6-63de264e7b6d@intel.com>
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
Subject: Re: [Bridge] [PATCH v2 11/14] networking: Update to
	register_net_sysctl_sz
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


--krgknuiaaxdgkah7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 08, 2023 at 01:20:36PM +0200, Przemek Kitszel wrote:
> On 7/31/23 09:17, Joel Granados wrote:
> > Move from register_net_sysctl to register_net_sysctl_sz for all the
> > networking related files. Do this while making sure to mirror the NULL
> > assignments with a table_size of zero for the unprivileged users.
> >=20
=2E..
> >   	const char *dev_name_source;
> >   	char neigh_path[ sizeof("net//neigh/") + IFNAMSIZ + IFNAMSIZ ];
> >   	char *p_name;
> > +	size_t neigh_vars_size;
> >   	t =3D kmemdup(&neigh_sysctl_template, sizeof(*t), GFP_KERNEL_ACCOUNT=
);
> >   	if (!t)
> > @@ -3790,11 +3791,13 @@ int neigh_sysctl_register(struct net_device *de=
v, struct neigh_parms *p,
> >   		t->neigh_vars[i].extra2 =3D p;
> >   	}
> > +	neigh_vars_size =3D ARRAY_SIZE(t->neigh_vars);
> >   	if (dev) {
> >   		dev_name_source =3D dev->name;
> >   		/* Terminate the table early */
> >   		memset(&t->neigh_vars[NEIGH_VAR_GC_INTERVAL], 0,
> >   		       sizeof(t->neigh_vars[NEIGH_VAR_GC_INTERVAL]));
> > +		neigh_vars_size =3D NEIGH_VAR_BASE_REACHABLE_TIME_MS;
>=20
> %NEIGH_VAR_BASE_REACHABLE_TIME_MS is last usable index here, and since th=
ose
> are 0 based, size is one more, %NEIGH_VAR_GC_INTERVAL.
> (spelling it "NEIGH_VAR_BASE_REACHABLE_TIME_MS+1" would be perhaps better=
?)
This is a very good catch. Thx for this!! I'll correct here and double
check all the other places where I'm trying to replace the memset with a
enumeration element. Just to make sure that I don't have an "off by one"
like the one here.

>=20
> >   	} else {
> >   		struct neigh_table *tbl =3D p->tbl;
> >   		dev_name_source =3D "default";
> > @@ -3841,8 +3844,9 @@ int neigh_sysctl_register(struct net_device *dev,=
 struct neigh_parms *p,
> >   	snprintf(neigh_path, sizeof(neigh_path), "net/%s/neigh/%s",
> >   		p_name, dev_name_source);
> > -	t->sysctl_header =3D
> > -		register_net_sysctl(neigh_parms_net(p), neigh_path, t->neigh_vars);
> > +	t->sysctl_header =3D register_net_sysctl_sz(neigh_parms_net(p),
> > +						  neigh_path, t->neigh_vars,
> > +						  neigh_vars_size);
> >   	if (!t->sysctl_header)
> >   		goto free;
> > diff --git a/net/core/sysctl_net_core.c b/net/core/sysctl_net_core.c
> > index 782273bb93c2..03f1edb948d7 100644

=2E..

> >   {
> >   	struct ctl_table *table;
> > +	size_t table_size =3D ARRAY_SIZE(xfrm_table);
> >   	__xfrm_sysctl_init(net);
> > @@ -56,10 +57,13 @@ int __net_init xfrm_sysctl_init(struct net *net)
> >   	table[3].data =3D &net->xfrm.sysctl_acq_expires;
> >   	/* Don't export sysctls to unprivileged users */
> > -	if (net->user_ns !=3D &init_user_ns)
> > +	if (net->user_ns !=3D &init_user_ns) {
> >   		table[0].procname =3D NULL;
>=20
> do we still have to set procname to NULL, even if passed size is 0?
> (same thing for all earlier occurences)
Yes, we still need to set the procname to NULL in this patchest!. We are
introducing the ARRAY_SIZE but not actually using it (not yet). Keeping
the "procname =3D=3D NULL" stopping criteria allows us to keep the current
behavior while we introduce the size in the background. We will start
using the patchset in the upcoming patchsets.

>=20
> > +		table_size =3D 0;
> > +	}
> > -	net->xfrm.sysctl_hdr =3D register_net_sysctl(net, "net/core", table);
> > +	net->xfrm.sysctl_hdr =3D register_net_sysctl_sz(net, "net/core", tabl=
e,
> > +						      table_size);
> >   	if (!net->xfrm.sysctl_hdr)
> >   		goto out_register;
> >   	return 0;
>=20
> overall this patch looks sane, and whole series looks very promissing,
> thanks

Thx for the feedback

Best

--=20

Joel Granados

--krgknuiaaxdgkah7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTSUAgACgkQupfNUreW
QU9yfwv/QSy3sOdREttyAVWSpEcvXkTsB8QEvSPniFewWKTfaNBN1Ojv0D3lbcnM
VfJTMgzzk9lFZdAfjjLQKskpPo05llLtUXAA/CMAjA8B0SvOc1w6ihdXD8iZV2Eb
apRGmyjL50d3XtUcj8JmiyR5Jj0hejawBJ6mBCjadYhYfWu37XhyEmd1PJD+w0gd
GkXv/XqdSDM0n0+WyCo5Kyc20hKfpHFrggxa57kT86r4pnK3C4vmMyW2BH28iv0o
7Ad3Ia8rg8xESDXOS0M2NwU74ArYP0D1rB3J5fWRZFTVpcZmPaV385SIJp8KgAVO
VoRlIVKz5vZDYYwgCu0kEqjTUbr6G59AcXQBsKXwiuY/3BUPZnQWg/9XqwpLHwRD
yQhDcnINrqJWzBpIz16bQeD2YFL4pnCW/LmhorI53z+d95zdYklDHYspaWaYBYHn
nMpsgkDOQeWqZ2JCjlv26yFeQsj4jiqriLL5lGs+NoP6poCX6i3W5wfFpH4DaASH
sbL6j7xk
=9RjB
-----END PGP SIGNATURE-----

--krgknuiaaxdgkah7--

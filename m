Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE320773AF7
	for <lists.bridge@lfdr.de>; Tue,  8 Aug 2023 17:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA5066115C;
	Tue,  8 Aug 2023 15:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA5066115C
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=TpisWaFu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQEX61NQQ4Uh; Tue,  8 Aug 2023 15:23:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5A1F56115F;
	Tue,  8 Aug 2023 15:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A1F56115F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EF54EC008D;
	Tue,  8 Aug 2023 15:23:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 327B4C0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 15:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 086A9408F7
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 15:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 086A9408F7
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=TpisWaFu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgJUfAc2Hy2e for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 15:23:44 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C02CF408E5
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 15:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C02CF408E5
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-4fe4762173bso9566363e87.3
 for <bridge@lists.linux-foundation.org>; Tue, 08 Aug 2023 08:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691508221; x=1692113021;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=EKR/mQxiWCp6UmZoc/ZIdm/CvMRbYORnLL2Bmf5WunY=;
 b=TpisWaFuryn84hwDAI/nJx1g/+I/Q+8Bt69v895SwG2nRTVcmTB+q0SVXuKBPt6N51
 Rawqjt70YhCPEkSJZgZEYAbNUFQJJ00JOBEmt6tfwvHqk2/lZxpGgZqkNjvHfZqtD1gc
 FoBqzgQdts3iSK8uQih1Lvlqx2zE2cS16XmH497VWVgDTVsUGwOCMiCxgCp0XiYw+voU
 WHEnerBT6CjafIFaZceFoB/6uMHODH8hOJTTqp4JluVt/b+MeOOAeby/zdkOwrRZTdGe
 /0E3RyvXAqo9LWHWpkyuizb1DiCOxlIC01izr+IXJw1F0ZscKunSYNeKa+Cbj7brfXid
 C1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691508221; x=1692113021;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EKR/mQxiWCp6UmZoc/ZIdm/CvMRbYORnLL2Bmf5WunY=;
 b=jnWl26Sw0f3JrAWRavX2/Nh60s+VUqwilPKm+b+brPd4G+ono0+v1AxHeuodlQA+xW
 i2eBcn8I8RXhyLShOrzXPqlsoEd6NEFZ8oJY1fn3FSWdmxymN9FLqnmwTUVfw5lE4Eu/
 pm0GxCrOIh8wAAmZsc00hprqWXgPBGJCz957ro+4XH+x2Itj/LPQz6jtsTBRnlsqY2GJ
 qCDkt481sA4bHc0p6sDYeF38MxKG+gxPPpmSQVv/IqDTmoWbnoB2EQCC4zFYdyU6SKhv
 tG55g5NsC2Oa1YJKXF28KRZN47GpfupDLO3VWccl/TZb5lQMO4quvjoXiUMO7eKpKvEQ
 ySGw==
X-Gm-Message-State: AOJu0YxBRhONy76xbbxmYrVyE8QEG9GBeUSaYi5TQEeVCCCoWppRP8M0
 fzY72YwlmMrk5V5++9zw0K8=
X-Google-Smtp-Source: AGHT+IFnYhIzaS3Y+KcV0Lrw6qJXYUrYWCoAb9tRY2N+65/72vnKp1uSD5k97nShAi0GFBixW7Zi2Q==
X-Received: by 2002:a05:6512:3b0a:b0:4fe:3f2:2efc with SMTP id
 f10-20020a0565123b0a00b004fe03f22efcmr11495192lfv.0.1691508221319; 
 Tue, 08 Aug 2023 08:23:41 -0700 (PDT)
Received: from localhost (0x934e1fc8.cust.fastspeed.dk. [147.78.31.200])
 by smtp.gmail.com with ESMTPSA id
 a3-20020a056512020300b004fcdd81355csm1920516lfo.269.2023.08.08.08.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Aug 2023 08:23:40 -0700 (PDT)
Date: Tue, 8 Aug 2023 17:23:38 +0200
From: Joel Granados <joel.granados@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230808152338.aoubpvauxpcuwfuz@localhost>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <20230731071728.3493794-12-j.granados@samsung.com>
 <CGME20230808112110eucas1p1332795fa88d771ac3f05825f33052cf9@eucas1p1.samsung.com>
 <22e0e672-f9f6-6afe-6ce6-63de264e7b6d@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ry2jlv6i2gzplzus"
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


--ry2jlv6i2gzplzus
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 08, 2023 at 01:20:36PM +0200, Przemek Kitszel wrote:
> On 7/31/23 09:17, Joel Granados wrote:
> > Move from register_net_sysctl to register_net_sysctl_sz for all the
> > networking related files. Do this while making sure to mirror the NULL
> > assignments with a table_size of zero for the unprivileged users.
> >=20
> > We need to move to the new function in preparation for when we change
> > SIZE_MAX to ARRAY_SIZE() in the register_net_sysctl macro. Failing to do
> > so would erroneously allow ARRAY_SIZE() to be called on a pointer. We
> > hold off the SIZE_MAX to ARRAY_SIZE change until we have migrated all
> > the relevant net sysctl registering functions to register_net_sysctl_sz
> > in subsequent commits.
> >=20
> > An additional size function was added to the following files in order to
> > calculate the size of an array that is defined in another file:
> >      include/net/ipv6.h
> >      net/ipv6/icmp.c
> >      net/ipv6/route.c

=2E..

> > diff --git a/net/ipv6/route.c b/net/ipv6/route.c
> > index 64e873f5895f..51c6cdae8723 100644
> > --- a/net/ipv6/route.c
> > +++ b/net/ipv6/route.c
> > @@ -6447,14 +6447,19 @@ struct ctl_table * __net_init ipv6_route_sysctl=
_init(struct net *net)
> >   		table[8].data =3D &net->ipv6.sysctl.ip6_rt_min_advmss;
> >   		table[9].data =3D &net->ipv6.sysctl.ip6_rt_gc_min_interval;
> >   		table[10].data =3D &net->ipv6.sysctl.skip_notify_on_dev_down;
> > -
> > -		/* Don't export sysctls to unprivileged users */
> > -		if (net->user_ns !=3D &init_user_ns)
> > -			table[1].procname =3D NULL;
Here I remove the setting of the procname to NULL for ipv6 sysctl
registers in route.c and I do not replace that assignment anywhere.
This means that we will export sysctls to unprivilged users for ipv6.
I'll correct this in V3.

> >   	}
> >   	return table;
> >   }
> > +
> > +size_t ipv6_route_sysctl_table_size(struct net *net)
> > +{
> > +	/* Don't export sysctls to unprivileged users */
> > +	if (net->user_ns !=3D &init_user_ns)
> > +		return 0;
> > +
> > +	return ARRAY_SIZE(ipv6_route_table_template);
> > +}
> >   #endif
> >   static int __net_init ip6_route_net_init(struct net *net)

--=20

Joel Granados

--ry2jlv6i2gzplzus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTSXfgACgkQupfNUreW
QU9uhwv/YNoyTbkHH/5RMLpQdKDepd7w6f8Rtax3cD35VYfVbj2aNFy9lcELq0sL
WWEkcnq1tZav3I+it4as5M7BUfGePS1Zj/D2OYSS7sR0ehwJMaO19qvfuGLiQLP9
XQe6cyy071sk9U5fxmpZkZgfKtldzchYMt1GluPzw0/a1CRkUlQqaDkHS0/hiOAn
JCY8mDLWC5DZwVZjz1Ai3UZ3lSIoxFqZbIk8IWpB6E6r9j+ulQUBw6CnYpSu8HMg
JNHA2wqyYaNLKxwQzSDhG3E0AaK59dPzneyrLVRnpJhc4yMFY+yDSPAzAZTgr1Ny
+/lASH2c7d0obmafitPwIOhxg7xPPnp+AYKDP65ZMGp0olUCNYKqUhF0Mc8sWq75
1kzOSul2jqUCTCkODYWut1aoqApizX5phuRCj/wCorVWBazLV7J9fDNopmAtmTYY
MKPmbbgWQdQHKDCEN7aSL5GGY51bp1dl4M0G+rkmW3RXRPl1OJLTsxP6Vk7ZizpE
4CYHvD9R
=8NUh
-----END PGP SIGNATURE-----

--ry2jlv6i2gzplzus--

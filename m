Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 76382BBE9D
	for <lists.bridge@lfdr.de>; Tue, 24 Sep 2019 00:49:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D75C7C9F;
	Mon, 23 Sep 2019 22:49:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CAE46C7C
	for <bridge@lists.linux-foundation.org>;
	Mon, 23 Sep 2019 22:49:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31AF5844
	for <bridge@lists.linux-foundation.org>;
	Mon, 23 Sep 2019 22:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
	s=20190108;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wrFXuUS6cMlZgiHuswyjpCApzT5WSsSqxNzHgn6vPqE=;
	b=O5sUnSYOoCkjUIQwSjFmZhoUxs
	XG+0wxpU92DnXZC4y+NyG4uPtdKBl9+2DaXnBEPTjzOOMPoh4ej3tiR71m37oP+oaVGnJCoIrkIJw
	qfAXLj6/N9/70g/5EqNNFn5iKQGmjvu8X7L1VEZ7wsrGrVPhiDMZIgMJmbqkeKI1iqKIwQw7i286l
	5WvMMQFE+wld2Kio6U2WP/z7jYicKRnZctVFVoQb1/ZQLFQGy+bC3Q8qXSPNpQmgaozxBNE0BQatD
	vY1aLZVsF8E24sN2cZ3DhRHSi6LOdNewcr55iVEHL0NbfwDjLZrrAeD+D3MNgmLcRklArmaZRCuq/
	35mT5haA==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
	by kadath.azazel.net with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <jeremy@azazel.net>)
	id 1iCX8Q-0008EQ-Jj; Mon, 23 Sep 2019 23:48:46 +0100
Date: Mon, 23 Sep 2019 23:48:45 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Ivan Kalvachev <ikalvachev@gmail.com>
Message-ID: <20190923224844.GA4859@azazel.net>
References: <20190807183606.372ca1a4@canb.auug.org.au>
	<f54391d9-6259-d08b-8b5f-c844093071d8@infradead.org>
	<20190807155738.GA9394@azazel.net>
	<CABA=pqeES0C2+7GpAOYuCOqd5DrbZhjS1Tkrxn4kGxXQJkrAfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline
In-Reply-To: <CABA=pqeES0C2+7GpAOYuCOqd5DrbZhjS1Tkrxn4kGxXQJkrAfg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Randy Dunlap <rdunlap@infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	bridge@lists.linux-foundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: [Bridge] linux-next: Tree for Aug 7
 (net/bridge/netfilter/nf_conntrack_bridge.c)
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-24, at 01:26:22 +0300, Ivan Kalvachev wrote:
> On 8/7/19, Jeremy Sowden <jeremy@azazel.net> wrote:
> > On 2019-08-07, at 08:29:44 -0700, Randy Dunlap wrote:
> > > On 8/7/19 1:36 AM, Stephen Rothwell wrote:
> > > > Changes since 20190806:
> > >
> > > on i386:
> > > when CONFIG_NF_TABLES is not set/enabled:
> > >
> > >   CC      net/bridge/netfilter/nf_conntrack_bridge.o
> > > In file included from
> > > ../net/bridge/netfilter/nf_conntrack_bridge.c:21:0:
> > > ../include/net/netfilter/nf_tables.h: In function
> > > =E2=80=98nft_gencursor_next=E2=80=99:
> > > ../include/net/netfilter/nf_tables.h:1224:14: error: =E2=80=98const s=
truct
> > > net=E2=80=99 has no member named =E2=80=98nft=E2=80=99; did you mean =
=E2=80=98nf=E2=80=99?
> > >   return net->nft.gencursor + 1 =3D=3D 1 ? 1 : 0;
> > >               ^~~
> >
> > I've just posted a series of fixes for netfilter header compilation
> > failures, and I think it includes the fix for that:
> >
> >
> > https://lore.kernel.org/netdev/20190807141705.4864-5-jeremy@azazel.net/=
T/#u
>
> Have these patches been committed?
>
> I just hit the same bug in linux-5.3.1 release.

The series is now in the mainline (and will form part of 5.4-rc1).  Greg
has queued the patch that fixes this build-failure for 5.3-stable:

  https://lore.kernel.org/netfilter-devel/20190921112145.GA2408749@kroah.co=
m/T/

so it should be in 5.3.2.

J.

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl2JS74ACgkQ0Z7UzfnX
9sMHRw/9ESGD+EeoQAYZLrESg2qjYcXjS37LNkvDGXY8aSz9c6rR61M4zhA8+W/k
IW1yBTQjLIO/3HwZa+PX4NLgiVnVjPk0p4u4KFKZc3iAPi79gG67i8Po3kJN9Ji9
6+tDMJOa59gGS5rKLfp2rR+ioEIqY3/beCZI51/80Fim4X7MZ8jkvMZw5WsQTCWR
yA/3crZxzEvw2hTOTFe6aCxVNsEyW1j4HQ6ayw9l3uvN9pp8TAhO7camEmGInRyf
C6GZ1ch3twfszEBZIrM2H3Vtij0STReE0e5BhGKfAmVodOg5Ols1b89y841f8ZjI
QMr+PJ3eNonprNpIT6/ektN+J8AcirEJDUbccdNhj4/MDx3rMVKdDOajlDmpP+Pr
H8Of8YIBaOvXQ+lFsSVDaakYmz1HP0xnEitXX+lKI69VEfpNx3tEL2wlclOZAp3j
nEWTSlSlIoL+/5S1j3qDwYxzCoDs/kqt2omRu/jiAS7JrJtpd1DN+JgbROVtvCC9
3CDcTujfkPLooAc2XkJofRn8OT7jOScCpfDUeTPhUwiszjNnMy6zLwgMpfIOHjvc
Zzgb7G7deOdHf7TsIjgVn77EjdH/w+T23D34yzSyxufl4DT8luNmWUOHPy++ci+u
fZ6OKxv5D01YdE0ZG6zRCsbuV73757tf2Ls9jJaaT0Ww3g6A8Io=
=kdTk
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--

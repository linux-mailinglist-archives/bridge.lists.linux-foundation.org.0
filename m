Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 145618C23B
	for <lists.bridge@lfdr.de>; Tue, 13 Aug 2019 22:42:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2C0A6E40;
	Tue, 13 Aug 2019 20:41:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 44E9BFA3
	for <bridge@lists.linux-foundation.org>;
	Wed,  7 Aug 2019 15:57:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64538823
	for <bridge@lists.linux-foundation.org>;
	Wed,  7 Aug 2019 15:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
	s=20190108;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=v5zVIloYXrAgjzSglM/vYJIXdGlyZQkKT85Lzw7jskk=;
	b=KK39k6djGX0PZNYj8lRq7rCIWa
	6sYT/EdCjjUXAkQTf+iMG6NLkopiXONA+PGpF6WwKo4rAz28ghhEis4nH8aise5TYz8XNDLwnXExX
	fCd3/dXMfjVLdRQzTRMiJHPrCNJZW6UAaUaJtj2WAz5RBN2Xo3uVRGGIf7Rdfu34f92DwSmQCFZ+b
	2PAAOD2KFEUU1nlXOGyFjke5whhqfV6NgtTWFDTvMGCUJL1+CVKM3YD3chrovrPnwhMnAJQliII+i
	+hVWTQGFwlaagh9GKVeqtw/DbbVfGNbVkNXgftVJkpiysGVGlhgfBVXMRYuMOQGTHZTcTxaf0o0YO
	2oukRRXQ==;
Received: from pnakotus.dreamlands.azazel.net
	([2001:8b0:fb7d:d6d7:208:9bff:febe:32] helo=azazel.net)
	by kadath.azazel.net with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <jeremy@azazel.net>)
	id 1hvOJm-00036d-D5; Wed, 07 Aug 2019 16:57:38 +0100
Date: Wed, 7 Aug 2019 16:57:39 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20190807155738.GA9394@azazel.net>
References: <20190807183606.372ca1a4@canb.auug.org.au>
	<f54391d9-6259-d08b-8b5f-c844093071d8@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
In-Reply-To: <f54391d9-6259-d08b-8b5f-c844093071d8@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:8b0:fb7d:d6d7:208:9bff:febe:32
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=unavailable version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Tue, 13 Aug 2019 20:41:31 +0000
Cc: bridge@lists.linux-foundation.org, Stephen Rothwell <sfr@canb.auug.org.au>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-08-07, at 08:29:44 -0700, Randy Dunlap wrote:
> On 8/7/19 1:36 AM, Stephen Rothwell wrote:
> > Hi all,
> >
> > Changes since 20190806:
>
> on i386:
> when CONFIG_NF_TABLES is not set/enabled:
>
>   CC      net/bridge/netfilter/nf_conntrack_bridge.o
> In file included from
> ../net/bridge/netfilter/nf_conntrack_bridge.c:21:0:
> ../include/net/netfilter/nf_tables.h: In function
> =E2=80=98nft_gencursor_next=E2=80=99:
> ../include/net/netfilter/nf_tables.h:1224:14: error: =E2=80=98const struct
> net=E2=80=99 has no member named =E2=80=98nft=E2=80=99; did you mean =E2=
=80=98nf=E2=80=99?
>   return net->nft.gencursor + 1 =3D=3D 1 ? 1 : 0;
>               ^~~

I've just posted a series of fixes for netfilter header compilation
failures, and I think it includes the fix for that:

  https://lore.kernel.org/netdev/20190807141705.4864-5-jeremy@azazel.net/T/=
#u

J.

--k+w/mQv8wyuph6w0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl1K9OYACgkQ0Z7UzfnX
9sMfsg//XRqj8xhFqboo6HARjrVj8WIdxbhTsv5BqjVA2tLdQfADQDY1TxLk6OPP
lSE8F09tdfs0Et7m6CcJzNq0+KSRDVs4ozz0CKUCX+GOKHZZKPGo2poT0cp6rC2Z
xboTw3Txvarvq6rYa59h0lcZN0vApZeSgfRIOBWCubanlcdiD2ypT+ktlNXHanzd
PhmXQytY1XAarTWFfXrcvx5xMuIVXe/eLhpC7SfyPRf5ITB8v6jNGBDvNvLwYeB7
o3QaKqCe/9ta2euYDBMtlgjXPZOWmT8mddlP5vnnN1KYgB0b2dabzxGUI/NEultQ
qFfZl/uI6LnNC+Ld4VdoPG2qlYolhd+yh8BqwhDUNyvhtsCFQ1gBxJK9YK2ZzzSh
J9RKoTOSP520S2eCFPXr+Tock0zM2vezW8adf9Uko3VcezfYPXs8QN7fbt920+7B
Di38eJbgOLe2tTHxPrPYVmN7YBQ1faG8gqIc8+og1ZMPVni+h4Q0SkL7mLXWWhxI
V9DcC+NKDz+8YbhNy6Yl5RriOUXzJ0UMYTwmpgN4jGTwjPMxSskPvr5k+iG/Q1aN
4cevcvKGwXo2cg1VOrCY9utNI0imA7S9R7HOfyq66K2aRUiw5JToVL27CqKY1xdy
3RWpW4DvQgI72sJsvo+JgzfnoonExfnD3K+yi/dEbV16hGI5ph0=
=b1Me
-----END PGP SIGNATURE-----

--k+w/mQv8wyuph6w0--

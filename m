Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F280A5EFD05
	for <lists.bridge@lfdr.de>; Thu, 29 Sep 2022 20:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F41E41BEA;
	Thu, 29 Sep 2022 18:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F41E41BEA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Kv7xhea2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b2WulH0FldZi; Thu, 29 Sep 2022 18:27:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A945A41B3A;
	Thu, 29 Sep 2022 18:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A945A41B3A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 524CDC007C;
	Thu, 29 Sep 2022 18:27:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04E00C002D
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 18:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5EBD83ECC
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 18:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5EBD83ECC
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kv7xhea2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nqf772chK3fN for <bridge@lists.linux-foundation.org>;
 Thu, 29 Sep 2022 18:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A687580B76
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A687580B76
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 18:27:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3685CB825AC;
 Thu, 29 Sep 2022 18:27:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D73EC433C1;
 Thu, 29 Sep 2022 18:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664476067;
 bh=peXm6EYz/EMFFA8zuW/FKucf85TPZxTNbaodSHoZ7Wg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Kv7xhea2uFIbwtuFQLZh9XSjU1NQfjbcVqi7NBdfo1YmhLPr/oFL/8Xy7h8nVd63Y
 1QbyuerlojcUMR9UJXqyqMMe/stYLXuAEzjAn5YgYL+gSYYe2Mgq5Jy1q1QOi5phs9
 LUXrQ/s2M+7o3FfgPVpda31wV2wVBaOYzo8yfTohR2fDzhGsJx5Pf63zWtPQKojM9F
 jn5yUhRAxSZA/Yu9rBhiUcBtbQl8G7FuabZv9yLUhOJjlvUZ798HikAJYp4pUIjm//
 HnqLKE0lE+TxmEdaYgq6OQOzGouYBxg3CmBkmarKcPIbw5qPRqYRZam7X/YTCqQye3
 IoYyggPAxMHZw==
Date: Thu, 29 Sep 2022 11:27:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@kapio-technology.com
Message-ID: <20220929112744.27cc969b@kernel.org>
In-Reply-To: <12587604af1ed79be4d3a1607987483a@kapio-technology.com>
References: <20220928150256.115248-1-netdev@kapio-technology.com>
 <20220929091036.3812327f@kernel.org>
 <12587604af1ed79be4d3a1607987483a@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v6 net-next 0/9] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On Thu, 29 Sep 2022 18:37:09 +0200 netdev@kapio-technology.com wrote:
> On 2022-09-29 18:10, Jakub Kicinski wrote:
> > On Wed, 28 Sep 2022 17:02:47 +0200 Hans Schultz wrote: =20
> >> From: "Hans J. Schultz" <netdev@kapio-technology.com>
> >>=20
> >> This patch set extends the locked port feature for devices
> >> that are behind a locked port, but do not have the ability to
> >> authorize themselves as a supplicant using IEEE 802.1X.
> >> Such devices can be printers, meters or anything related to
> >> fixed installations. Instead of 802.1X authorization, devices
> >> can get access based on their MAC addresses being whitelisted. =20
> >=20
> > Try a allmodconfig build on latest net-next, seems broken. =20
>=20
> I have all different switch drivers enabled and I see no compile=20
> warnings or errors.=20

Just do what I told you - rebase on net-next, allmodconfig.

> I guess I will get a robot update if that is the=20
> case but please be specific as to what does not build.

The maintainers simply don't have time to hold everyone by the hand.
Sometimes I wish it was still okay to yell at people who post code
which does not build. Oh well.

../drivers/net/dsa/qca/qca8k-common.c:810:5: error: conflicting types for =
=E2=80=98qca8k_port_fdb_del=E2=80=99
 int qca8k_port_fdb_del(struct dsa_switch *ds, int port,
     ^~~~~~~~~~~~~~~~~~
In file included from ../drivers/net/dsa/qca/qca8k-common.c:13:
../drivers/net/dsa/qca/qca8k.h:483:5: note: previous declaration of =E2=80=
=98qca8k_port_fdb_del=E2=80=99 was here
 int qca8k_port_fdb_del(struct dsa_switch *ds, int port,
     ^~~~~~~~~~~~~~~~~~
../drivers/net/dsa/qca/qca8k-common.c: In function =E2=80=98qca8k_port_fdb_=
del=E2=80=99:
../drivers/net/dsa/qca/qca8k-common.c:818:6: error: =E2=80=98fdb_flags=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98tsq_f=
lags=E2=80=99?
  if (fdb_flags)
      ^~~~~~~~~
      tsq_flags
../drivers/net/dsa/qca/qca8k-common.c:818:6: note: each undeclared identifi=
er is reported only once for each function it appears in
make[5]: *** [../scripts/Makefile.build:249: drivers/net/dsa/qca/qca8k-comm=
on.o] Error 1
make[5]: *** Waiting for unfinished jobs....
make[4]: *** [../scripts/Makefile.build:465: drivers/net/dsa/qca] Error 2
make[4]: *** Waiting for unfinished jobs....
../drivers/net/dsa/sja1105/sja1105_main.c: In function =E2=80=98sja1105_fas=
t_age=E2=80=99:
../drivers/net/dsa/sja1105/sja1105_main.c:1941:61: error: incompatible type=
 for argument 5 of =E2=80=98sja1105_fdb_del=E2=80=99
   rc =3D sja1105_fdb_del(ds, port, macaddr, l2_lookup.vlanid, db);
                                                             ^~
../drivers/net/dsa/sja1105/sja1105_main.c:1831:11: note: expected =E2=80=98=
u16=E2=80=99 {aka =E2=80=98short unsigned int=E2=80=99} but argument is of =
type =E2=80=98struct dsa_db=E2=80=99
       u16 fdb_flags, struct dsa_db db)
       ~~~~^~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c:1941:8: error: too few arguments =
to function =E2=80=98sja1105_fdb_del=E2=80=99
   rc =3D sja1105_fdb_del(ds, port, macaddr, l2_lookup.vlanid, db);
        ^~~~~~~~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c:1829:12: note: declared here
 static int sja1105_fdb_del(struct dsa_switch *ds, int port,
            ^~~~~~~~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c: In function =E2=80=98sja1105_mdb=
_del=E2=80=99:
../drivers/net/dsa/sja1105/sja1105_main.c:1962:56: error: incompatible type=
 for argument 5 of =E2=80=98sja1105_fdb_del=E2=80=99
  return sja1105_fdb_del(ds, port, mdb->addr, mdb->vid, db);
                                                        ^~
../drivers/net/dsa/sja1105/sja1105_main.c:1831:11: note: expected =E2=80=98=
u16=E2=80=99 {aka =E2=80=98short unsigned int=E2=80=99} but argument is of =
type =E2=80=98struct dsa_db=E2=80=99
       u16 fdb_flags, struct dsa_db db)
       ~~~~^~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c:1962:9: error: too few arguments =
to function =E2=80=98sja1105_fdb_del=E2=80=99
  return sja1105_fdb_del(ds, port, mdb->addr, mdb->vid, db);
         ^~~~~~~~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c:1829:12: note: declared here
 static int sja1105_fdb_del(struct dsa_switch *ds, int port,
            ^~~~~~~~~~~~~~~
../drivers/net/dsa/sja1105/sja1105_main.c:1963:1: error: control reaches en=
d of non-void function [-Werror=3Dreturn-type]
 }
 ^
cc1: some warnings being treated as errors
make[5]: *** [../scripts/Makefile.build:249: drivers/net/dsa/sja1105/sja110=
5_main.o] Error 1
make[5]: *** Waiting for unfinished jobs....
make[4]: *** [../scripts/Makefile.build:465: drivers/net/dsa/sja1105] Error=
 2
make[3]: *** [../scripts/Makefile.build:465: drivers/net/dsa] Error 2
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [../scripts/Makefile.build:465: drivers/net] Error 2
make[1]: *** [/home/kicinski/linux/Makefile:1852: drivers] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:222: __sub-make] Error 2

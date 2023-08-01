Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6513176AE1A
	for <lists.bridge@lfdr.de>; Tue,  1 Aug 2023 11:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEC1860A6F;
	Tue,  1 Aug 2023 09:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEC1860A6F
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=ExXgh7eF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHubZ_9BXEAJ; Tue,  1 Aug 2023 09:36:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3D702605A6;
	Tue,  1 Aug 2023 09:36:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D702605A6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8F96C0DD4;
	Tue,  1 Aug 2023 09:36:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EEC7C0032
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 09:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3820607E1
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 09:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3820607E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A-Hij3sk5FFv for <bridge@lists.linux-foundation.org>;
 Tue,  1 Aug 2023 09:36:00 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25A3560739
 for <bridge@lists.linux-foundation.org>; Tue,  1 Aug 2023 09:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25A3560739
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-3159d5e409dso4569670f8f.0
 for <bridge@lists.linux-foundation.org>; Tue, 01 Aug 2023 02:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690882558; x=1691487358;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VvT5J/1PJpb72S8f2nh5awbFCHxyuUpdf923ik/K8j4=;
 b=ExXgh7eFyYEhKQs65FHri/ViJcpb8MfKCX9kbY13ZsJxBfJuzrlXbGUOa6PJHRnfVL
 5KktONa25XH2j439bmJpT0Q4yTjYmX4D0DiBC4baDGrA30FHudWESCVxKcX9ypBipHeM
 SQep1J2NOOI4y6MR1DOFPz5PzuY+E3qQVzADtwAIobtemnENQgZGsUJnpi/joyh4WivY
 LIlCKOUJEek89CNVl+TOnj477K/qps7R9Z8rmn8+cL4kkeZWcXXI6KXXgTaf/3PYTlrh
 pg5N0MEigdMBUTHFqQA2OwiMPdbJ/RuZNlJ9em5VweXgkSGFnwmWM0zlA01zCeSuodhm
 IVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690882558; x=1691487358;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VvT5J/1PJpb72S8f2nh5awbFCHxyuUpdf923ik/K8j4=;
 b=D3TQ3sv402d8dSajLJ/I/vkuulo/CIB6dM9Rq65FrX3iSLZkE/LmyO4ShTKNxlELfg
 oL220d0yPJmIFg2GEV50cHJOGehPREN67ivlNaeo2Dq5krQ8sERA/p9D+JvMO59xNEbt
 HbW9vUZGhZxmRly6OeXuxA2O9WpoJvyff6tQWq7bONjrYg5Rp4O+5tszW+AbhrE+xgvK
 a+4fvWjuhr27v98JOSwIFB5OB7s/U37HTAFJhCP9XtI1LtSyTfBwZTMfFG3BK7C5aand
 6dzpRCRgYz+O9clXpWwhG21bjZp46VI56FdC3TVnC9nfY8AFB0sPH7BoMbJzCgWCMMGh
 jXxA==
X-Gm-Message-State: ABy/qLbQVVF9NVBitDVK5wTIeq+UdQOMSFTwRNQqUEIiDphvpnz7T4Qh
 mqTEeGUdMsQ6/bzw1rjwvlM=
X-Google-Smtp-Source: APBJJlFenT4lJzl0wyFu60kMYJMIoCsq+b5HauhGzk/5vhq31BmGRtO2EgfwE19ne+ER5DzuG/6KpA==
X-Received: by 2002:a5d:6b8c:0:b0:30a:c681:fd2e with SMTP id
 n12-20020a5d6b8c000000b0030ac681fd2emr1793379wrx.22.1690882557942; 
 Tue, 01 Aug 2023 02:35:57 -0700 (PDT)
Received: from localhost (0x934e1fc8.cust.fastspeed.dk. [147.78.31.200])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d68d0000000b003140f47224csm15519172wrw.15.2023.08.01.02.35.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Aug 2023 02:35:57 -0700 (PDT)
Date: Tue, 1 Aug 2023 11:35:55 +0200
From: Joel Granados <joel.granados@gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20230801093555.wwl27a7wjm2oinxx@localhost>
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <CGME20230731213734eucas1p2728233a3b9ecd360bbd0cb77f8a44002@eucas1p2.samsung.com>
 <ZMgpck0rjqHR74sl@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ltg4mtomzaz4i2ki"
Content-Disposition: inline
In-Reply-To: <ZMgpck0rjqHR74sl@bombadil.infradead.org>
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


--ltg4mtomzaz4i2ki
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 02:36:50PM -0700, Luis Chamberlain wrote:
> > Joel Granados (14):
> >   sysctl: Prefer ctl_table_header in proc_sysctl
> >   sysctl: Use ctl_table_header in list_for_each_table_entry
> >   sysctl: Add ctl_table_size to ctl_table_header
> >   sysctl: Add size argument to init_header
> >   sysctl: Add a size arg to __register_sysctl_table
> >   sysctl: Add size to register_sysctl
> >   sysctl: Add size arg to __register_sysctl_init
>=20
> This is looking great thanks, I've taken the first 7 patches above
> to sysctl-next to get more exposure / testing and since we're already
> on rc4.
Thx for the feedback.

>=20
> Since the below patches involve more networking I'll wait to get
> more feedback from networking folks before merging them.
Just FYI, these are all networking except for the last one. That one is
actually just in sysctl and will set everything up for removing the
sentinels.

>=20
> >   sysctl: Add size to register_net_sysctl function
> >   ax.25: Update to register_net_sysctl_sz
> >   netfilter: Update to register_net_sysctl_sz
> >   networking: Update to register_net_sysctl_sz
> >   vrf: Update to register_net_sysctl_sz
> >   sysctl: SIZE_MAX->ARRAY_SIZE in register_net_sysctl
> >   sysctl: Use ctl_table_size as stopping criteria for list macro
>=20
>   Luis

--=20

Joel Granados

--ltg4mtomzaz4i2ki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGyBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmTI0fkACgkQupfNUreW
QU/TKwv3ZwfCMFKh+tMOXHzAsW3p+jp8IR2frQvlCy8j4amsnTB8wJmsjkpeuJ3p
s6IFeYrPE0pDidKOwzYiA4JDZdYDgF1hevrQAuqDsLkKBHzW0Cr6dt21CIQx9uZR
RwhONU/JHoW6MKmO2PlcOiSQiRAhX/OvUhtCgQPTbff3fT6EAu9twn0vfWcyy+H0
mn6LM2go/DW2cgdm4oa1U+DqwpJiGCabLbQNfPa8Vx8g7CK2y2Azd5/obW6ryOxe
QDPdmQdVjytDnDHSW2AEYe2bDympPHaaoDU79e4FPVXC15+UAgF+/ExfDUVq6ek4
FG5Gjh7ev+i6vPYAUR4AuPtB3hwH+vDsSE6Vcd37iKn/mjg1fi0DHx7Wz1Be/n1o
8iSbL0N6an0fzzKlOdfwQs1bytw+ssWZtxLIQ3MUhHvwj882OXkYCBRW4Aycgop7
/H+zOm0K2Yluph2h+5qmhjkzUlTx2MNwfSs34wsvBNsbb1MGZQouIAAQowb+mTzS
31kDDA8=
=shIJ
-----END PGP SIGNATURE-----

--ltg4mtomzaz4i2ki--

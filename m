Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C507777BE
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50CD46124B;
	Thu, 10 Aug 2023 12:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50CD46124B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=jJnuIodv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fcs1Yo6btkG8; Thu, 10 Aug 2023 12:03:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2511960FB5;
	Thu, 10 Aug 2023 12:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2511960FB5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9CA4C0DE2;
	Thu, 10 Aug 2023 12:03:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF928C0032
 for <bridge@lists.linux-foundation.org>; Mon,  7 Aug 2023 23:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93001410DE
 for <bridge@lists.linux-foundation.org>; Mon,  7 Aug 2023 23:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93001410DE
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=jJnuIodv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TVA_jztv7tx6 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Aug 2023 23:01:02 +0000 (UTC)
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C09E410C5
 for <bridge@lists.linux-foundation.org>; Mon,  7 Aug 2023 23:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C09E410C5
Received: by mail-oi1-x235.google.com with SMTP id
 5614622812f47-3a74d759be4so3748361b6e.2
 for <bridge@lists.linux-foundation.org>; Mon, 07 Aug 2023 16:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691449261; x=1692054061;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Mv53An7DfRcY3zqjcaunX8XH6mWtZiqor85B2Nma1PU=;
 b=jJnuIodvIO/bHZXVit3eNtPLAjNiC7mOQqw2UmJ9nkW5tMvb+x5z3uL2a5+o3ZM+Qg
 2q/ku8BATAd2TaNHIpTWPXd9dxGpLCtRqSdU9oCOZ66kXMP47PkiUoZYduRn138beNxW
 vFBxyTlxgWlqMDqAWRlCTnO5ZZANqMr2sjiakot7tjyZUcoZ2t/uoKzziz3jBCnFVvmK
 KqngywwhgtrhdVEFiliQbnUFDqP5cExs+9oQRcD2DkylXi/C8/dg42OWmEGlIfmGUW4n
 eZnL9VI4dVY28fI4KEWTlA5f2i6lvXqEtuHevuN2iMkxE4HPIkzsOD3+gRwdC4+fM6pF
 Cakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691449261; x=1692054061;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mv53An7DfRcY3zqjcaunX8XH6mWtZiqor85B2Nma1PU=;
 b=GONGLps4bpI3pQlCaTCxs+UhElX7JI+D9lvcDfjIDuIJoagz+J9FkCNpzOrDGiP/fV
 z4OUSLhtqB3seG7QZ9g6q1xh5lS8VVC9v+bI6RosHPMeIwaxlDc+iqhoG2Y1v+AL0Ex2
 yHkuJTsEA7kSJ8WekYFYLF4pNOUOofrjPYUfyI4SL0bMQw+37vlhiWVOGotjOenMDPY8
 c4/JONxML/B8ccSx0KavVGLLlhfO8wVdNMeeGpH7ro9ZCfv38l6KtHA/uWvd//FWSCea
 jx+BmsWjo53REOLRzRoh6ncxRdZKJTWQ9ZfvyWsvgFpcYmB19uLHqRxkRvU2a4fZK5tK
 mXbA==
X-Gm-Message-State: AOJu0YwIgRnhthTmAaLdW4qSqwcMv621V1nIavAqiXnE/hiux1msAlGF
 k3+5chxavrkgwaYl40GDFGVtShqEJq9zMp8MOHQ=
X-Google-Smtp-Source: AGHT+IHD076UJN6GmU44MeNlfkCr/Qt4MIkNOJjiVIPbsTIsl22+FJu+duBXGz90lDe5mcJcfESWaD6PHZi0wp/BHyg=
X-Received: by 2002:a05:6358:6f8a:b0:13a:2d6f:e72e with SMTP id
 s10-20020a0563586f8a00b0013a2d6fe72emr371658rwn.16.1691449261370; Mon, 07 Aug
 2023 16:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <ZMgpck0rjqHR74sl@bombadil.infradead.org>
 <ZNFlqwwvE6w6HyHl@bombadil.infradead.org>
In-Reply-To: <ZNFlqwwvE6w6HyHl@bombadil.infradead.org>
From: Chris Maness <christopher.maness@gmail.com>
Date: Mon, 7 Aug 2023 16:00:49 -0700
Message-ID: <CANnsUMG3WO_19GpnsNaXPqu6eEnpBvYUpkrf1QbHwsc9wEoCZQ@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Content-Type: multipart/alternative; boundary="00000000000061316406025d38ac"
X-Mailman-Approved-At: Thu, 10 Aug 2023 12:03:37 +0000
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 netfilter-devel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Paolo Abeni <pabeni@redhat.com>,
 Jan Karcher <jaka@linux.ibm.com>, Mat Martineau <martineau@kernel.org>,
 Tony Lu <tonylu@linux.alibaba.com>, Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Will Deacon <will@kernel.org>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Iurii Zaikin <yzaikin@google.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 Joel Granados <joel.granados@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, linux-sctp@vger.kernel.org,
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

--00000000000061316406025d38ac
Content-Type: text/plain; charset="UTF-8"

When are these likely to hit the mainline release code?

On Mon, Aug 7, 2023 at 2:59 PM Luis Chamberlain <mcgrof@kernel.org> wrote:

> On Mon, Jul 31, 2023 at 02:36:50PM -0700, Luis Chamberlain wrote:
> > > Joel Granados (14):
> > >   sysctl: Prefer ctl_table_header in proc_sysctl
> > >   sysctl: Use ctl_table_header in list_for_each_table_entry
> > >   sysctl: Add ctl_table_size to ctl_table_header
> > >   sysctl: Add size argument to init_header
> > >   sysctl: Add a size arg to __register_sysctl_table
> > >   sysctl: Add size to register_sysctl
> > >   sysctl: Add size arg to __register_sysctl_init
> >
> > This is looking great thanks, I've taken the first 7 patches above
> > to sysctl-next to get more exposure / testing and since we're already
> > on rc4.
>
> Ok I havent't heard much more feedback from networking folks, and
> since this is mostly sysctl love I've taken in the rest of these
> patches. Thanks to Jani Nikula for the reviews and to Greg KH for
> the suggestion on simplifying things.
>
> Let's see what busts in linux-next, and if anything does I can reset
> my tree back to only the first 7 patches.
>
>   Luis
>
-- 
Thanks,
Chris Maness
-Sent from my iPhone

--00000000000061316406025d38ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">When are these likely to hit the mainline release code?</=
div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Aug 7, 2023 at 2:59 PM Luis Chamberlain &lt;<a href=3D"mailto:mc=
grof@kernel.org">mcgrof@kernel.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">On Mon, Jul 31, 2023 at 02:36:50PM -0700, Luis Chamberlain w=
rote:<br>
&gt; &gt; Joel Granados (14):<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Prefer ctl_table_header in proc_sysctl<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Use ctl_table_header in list_for_each_table_e=
ntry<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Add ctl_table_size to ctl_table_header<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Add size argument to init_header<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Add a size arg to __register_sysctl_table<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Add size to register_sysctl<br>
&gt; &gt;=C2=A0 =C2=A0sysctl: Add size arg to __register_sysctl_init<br>
&gt; <br>
&gt; This is looking great thanks, I&#39;ve taken the first 7 patches above=
<br>
&gt; to sysctl-next to get more exposure / testing and since we&#39;re alre=
ady<br>
&gt; on rc4.<br>
<br>
Ok I havent&#39;t heard much more feedback from networking folks, and<br>
since this is mostly sysctl love I&#39;ve taken in the rest of these<br>
patches. Thanks to Jani Nikula for the reviews and to Greg KH for<br>
the suggestion on simplifying things.<br>
<br>
Let&#39;s see what busts in linux-next, and if anything does I can reset<br=
>
my tree back to only the first 7 patches.<br>
<br>
=C2=A0 Luis<br>
</blockquote></div></div><span class=3D"gmail_signature_prefix">-- </span><=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture">Thanks,<br>Chris Maness<br>-Sent from my iPhone</div>

--00000000000061316406025d38ac--

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4436B7777C0
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B98EE813B0;
	Thu, 10 Aug 2023 12:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B98EE813B0
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=MIB1dRWN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2wIm_0g2g5R; Thu, 10 Aug 2023 12:03:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7BEF08220E;
	Thu, 10 Aug 2023 12:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BEF08220E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2C7E7C0DE9;
	Thu, 10 Aug 2023 12:03:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9777AC0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AF9140350
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AF9140350
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=MIB1dRWN
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Xliny4d4O5C for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 03:07:36 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 624E440102
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 03:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 624E440102
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-586bacac98aso24253387b3.2
 for <bridge@lists.linux-foundation.org>; Mon, 07 Aug 2023 20:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691464055; x=1692068855;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0G2Gm44L7ws5E/quoPqMuJmdghfzOor5wGEa6AaRIig=;
 b=MIB1dRWNV6Yb3HUd1qPb/bgwaoUzAlGVu8CxiiwIDYwN4TMseNzdPMVbuAfPyciWjI
 AZzeBtiA00C4EVQ8EGlp9e8Q3pbBFc8aCRl+HJu3YtRoio8lAQY1qu2UvIE5hChxs5Q1
 PKMC/y7tlRiDWg5YOtPXbZsaYs//GKuhiSEDo5WpI7edOLzGAaAJjqvFIOQWWQAuLo7Z
 JBsPnB5UvxOuJ1p76ZyxSuA7+KQWE3J2jS89kM5pl3PIv+dMsBBD/LquAyRZomdcC7zN
 v+sSG+iPprRQeQoEH+XZP/GEzjEboCjqHBhNwHzm7vxhsHdZplrvrz31A5i2G+xxBQ4/
 u+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691464055; x=1692068855;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0G2Gm44L7ws5E/quoPqMuJmdghfzOor5wGEa6AaRIig=;
 b=fFyoYkixz47ooa/GH8f4rClkAgZuXeKT8ExEjn133Gi9So8sf8sshoKEQe1xzXXrjl
 3tAz3pp6vjDPd2vkyW+UoI5PloGeCvtqI01RaUUXH77hd4n/79PXo3OnqNVJ3vLl7VMr
 9ZicSH1foPdlE7lphkSDY0cVAE5DMDDOcG/FLoUWSWrV4qpZnVJv/MtvYQIzE76ZkugO
 RdyyE/e5tPeoaPE6GkuLFuCnMTIww5HAP2IZ5+iAEJCS36L3dr6bnFQNAAli4DhpI2Sb
 WQ5ayhLJr6NDm7P7armR1E8ppphBYnOUt5BU3QhGm2QDaUf9n45nrI6ORSh1+1c63onp
 /6Qg==
X-Gm-Message-State: AOJu0YyOG91jNkmQ26Dg1npkRpjLyrz6UhPhgzRo8D4WnVmqWVzpVeqm
 FCoWhA7iFkgZlIw078JSIjzeC76KPrX2OGwqlXA=
X-Google-Smtp-Source: AGHT+IHQrIvich9PHSVbgRXTdmB7iIbb8QzxP6y5/ZjBG6gKIk1MkGZwx3L/64MT/J6/QOrL9i/+Y+FD0/7A7U+VjlM=
X-Received: by 2002:a0d:dd4a:0:b0:589:642d:6d84 with SMTP id
 g71-20020a0ddd4a000000b00589642d6d84mr2728002ywe.23.1691464055184; Mon, 07
 Aug 2023 20:07:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230731071728.3493794-1-j.granados@samsung.com>
 <ZMgpck0rjqHR74sl@bombadil.infradead.org>
 <ZNFlqwwvE6w6HyHl@bombadil.infradead.org>
 <CANnsUMG3WO_19GpnsNaXPqu6eEnpBvYUpkrf1QbHwsc9wEoCZQ@mail.gmail.com>
 <ZNGBrkP7J2g/BAWV@bombadil.infradead.org>
 <CANnsUMGRBnatKB4-3eYjb5aG7YnXDiZG6cjuwSgtjvVF6ErJNg@mail.gmail.com>
 <ZNGv3Q5VBsS2/w4e@bombadil.infradead.org>
In-Reply-To: <ZNGv3Q5VBsS2/w4e@bombadil.infradead.org>
From: Chris Maness <christopher.maness@gmail.com>
Date: Mon, 7 Aug 2023 20:07:24 -0700
Message-ID: <CANnsUMGHnurbph9F7mex=1s0mxhwpNgeQbKJ6j1r37Qmd6LAMQ@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

>
> Are you reporting a separate regression that goes all the way back to v4 kernels?
>

I am not certain what you mean by regression.

> > v2 is fine there.
>
> What does this mean?

I have to go all the way back to kernel version 2 for the serial 6PACK
driver to work.  If I try to use it in Kernel version 4, 5, or 6 the
kernel panics as soon as I attempt to connect to another station.

>
>   Luis

Chris KQ6UP


-- 
Thanks,
Chris Maness

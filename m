Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AAA229E01
	for <lists.bridge@lfdr.de>; Wed, 22 Jul 2020 19:10:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E64F884D5;
	Wed, 22 Jul 2020 17:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3zXvicnUcbjO; Wed, 22 Jul 2020 17:09:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC082884C9;
	Wed, 22 Jul 2020 17:09:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1266C004C;
	Wed, 22 Jul 2020 17:09:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31C92C004C
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 17:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1AA40884D5
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 17:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMO6rpAZLwAw for <bridge@lists.linux-foundation.org>;
 Wed, 22 Jul 2020 17:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41B54884C9
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 17:09:55 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id b25so3296435ljp.6
 for <bridge@lists.linux-foundation.org>; Wed, 22 Jul 2020 10:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqelWpCqH7nOe0oSyngzrBNpGRC3PyDyz91JHpls3Xk=;
 b=QbFOpYWq197fvdaI4E7hogiJ5z6DhlnMwFbSAyObyOYxQk/ojAWvAxU5xeCwIzRoyp
 bGpv6okHRbaDCk3F5IJgGXS3Wesi1t0HKLxD0rWbntKFa+o4FEuZ/aNqddB2gT9rJhFi
 ekTLt46VwAAqYYSOS+Ti6gpiM2sULyDbPlDxrV2EC1wYfvYmkCiCMfUA2sia4+eUOZSm
 DpKqJKTrsnJtuquGnG9/42hXesw1S5DhQmqbpijEy6OLbaHF8RyBbV+paN+wC914K+DB
 Om2JyFGEZL8bVoXG7xFZFOn3b/hxnJAALpQKOVax/+9YzLSzmIzDLinAT6/sMjMDDXxC
 pBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqelWpCqH7nOe0oSyngzrBNpGRC3PyDyz91JHpls3Xk=;
 b=Cj/501fJDjmkPe6fcYyTGuGlHXk8F6U5U378AwEFI9InWiKTj2fz+Jqi5dmYZulVsX
 9zEc46m+7GfYXJQ6OtOv/iNA4YXVBbrmFJDRjm1Kaobup1xoO+TUgYUWa6EyIYeAuS7F
 Y8+VUjFpGmwRsCCSzJQ5sVd61XhhjNCsNSbqDYRcfXO5OOiaJU4KdxJDpEDu0tfjHKfl
 0GkMnfmd0kE6BBylA9e/QB1SSc15pGEkxkZ+Z1X79s+s34xipmEhw5PsmLGvRg745sp7
 KdtGLapyyk7Aoe6EZu/x95+j6Qi6itSz/M35ZE4RIG8RvgGKrNJqgzEPsqhC4LnbskMU
 Ct7g==
X-Gm-Message-State: AOAM53320nOYhswSDgMct4CdHQlfnvVTPmaClxpBz416YU+awBSKT/l8
 Qf0ynFQhilId4WfiFZrAaQGNiDtphaO0lVXNraQ=
X-Google-Smtp-Source: ABdhPJzXtI3YBeORsJYQmEu28fVJCUtGV7rd5sI5b8tsC3G9617tl0t2hP5zU+hEdegWolMtC+F/64n4emjrett5jt8=
X-Received: by 2002:a2e:90da:: with SMTP id o26mr95292ljg.91.1595437793253;
 Wed, 22 Jul 2020 10:09:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200720124737.118617-1-hch@lst.de>
 <20200720204756.iengwcguikj2yrxt@ast-mbp.dhcp.thefacebook.com>
 <20200722075657.GB26554@lst.de>
In-Reply-To: <20200722075657.GB26554@lst.de>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 22 Jul 2020 10:09:41 -0700
Message-ID: <CAADnVQKy0+rsRftEzp4PvxQtj7uOwybz0Nd4_h0FR37p2Q=X4w@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390 <linux-s390@vger.kernel.org>,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth@vger.kernel.org,
 netfilter-devel <netfilter-devel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] get rid of the address_space override in setsockopt
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

On Wed, Jul 22, 2020 at 12:56 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Jul 20, 2020 at 01:47:56PM -0700, Alexei Starovoitov wrote:
> > > a kernel pointer.  This is something that works for most common sockopts
> > > (and is something that the ePBF support relies on), but unfortunately
> > > in various corner cases we either don't use the passed in length, or in
> > > one case actually copy data back from setsockopt, so we unfortunately
> > > can't just always do the copy in the highlevel code, which would have
> > > been much nicer.
> >
> > could you rebase on bpf-next tree and we can route it this way then?
> > we'll also test the whole thing before applying.
>
> The bpf-next tree is missing all my previous setsockopt cleanups, so
> there series won't apply.

Right. I've realized that after sending that email two days ago.
Now bpf-next->net-next PR is pending and as soon as it's merged
bpf-next will have all the recent bits.

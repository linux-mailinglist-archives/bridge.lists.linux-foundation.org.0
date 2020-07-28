Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07389241207
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99049877FA;
	Mon, 10 Aug 2020 21:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEcMiJLEYOL9; Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AD978783B;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15B4BC013C;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0AE7C004D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE5E585802
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H24zIMjbMFwa for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jul 2020 08:17:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.zx2c4.com (mail.zx2c4.com [192.95.5.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 502088575A
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 08:17:44 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 4bc345be
 for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jul 2020 07:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=K4YAt33ilBR3hd1+7JojCPxtvSA=; b=nEjdWp
 cUQVj0KWRd87puFx0fk1HADPVt/5ckkL0vcSiVAoyePGSTncp+KafcroE0itJJAR
 hvCKOHIgNqwby+4I13HG5z9ibnxBmqHfVx+jKtrPfvHTnJrmPNg1WsagEKVyYT8s
 0wLLBcv/NIyWIJ2xwHqa/F7Ekuot/H5qUld6hDSAXP06OIRI6q+V7cdk8Ye2E95N
 oE2iYHJELOZGqN2H10I58K4qjsUNSGzPFklfgHdPIOfnKUBe2eF7SiuhT2DW4gmx
 Zlh/4Lwi80eH4MYYZz1R0kvQtczs/XnszWGNGZW6geww/y9D6tsJ0FqJg7QkrUqh
 r9lHeJJo9aIu1+DA==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id d69a1b62
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jul 2020 07:54:16 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id l1so19833803ioh.5
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jul 2020 01:17:41 -0700 (PDT)
X-Gm-Message-State: AOAM532Vjmh3mevCKTjNs3sK4u9DwhiaRpRxJ/EWOlSx9lOfBBUkwpDt
 5QGkexvsDu4uKEIcQkT5G7mgTTdPJjHi7xHUbKo=
X-Google-Smtp-Source: ABdhPJwruWEMSl6lI3SS18Iq/8cGmq7nVWSaRamLRaM9jzUJiajMF+UBN6XkUtAb0UlYhZIkk+zlhZ92oa7Pvf4Iz8s=
X-Received: by 2002:a05:6638:250f:: with SMTP id
 v15mr8210865jat.75.1595924260418; 
 Tue, 28 Jul 2020 01:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-13-hch@lst.de>
 <20200727150310.GA1632472@zx2c4.com> <20200727150601.GA3447@lst.de>
 <CAHmME9ric=chLJayn7Erve7WBa+qCKn-+Gjri=zqydoY6623aA@mail.gmail.com>
 <20200727162357.GA8022@lst.de>
 <908ed73081cc42d58a5b01e0c97dbe47@AcuMS.aculab.com>
In-Reply-To: <908ed73081cc42d58a5b01e0c97dbe47@AcuMS.aculab.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 28 Jul 2020 10:17:28 +0200
X-Gmail-Original-Message-ID: <CAHmME9pUbRmJq1Qcj10eENt15cuQHkiXJNKrUDmmC18n2mLKDA@mail.gmail.com>
Message-ID: <CAHmME9pUbRmJq1Qcj10eENt15cuQHkiXJNKrUDmmC18n2mLKDA@mail.gmail.com>
To: David Laight <David.Laight@aculab.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Netdev <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>, LKML <linux-kernel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 12/26] netfilter: switch nf_setsockopt to
	sockptr_t
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

On Tue, Jul 28, 2020 at 10:07 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: Christoph Hellwig
> > Sent: 27 July 2020 17:24
> >
> > On Mon, Jul 27, 2020 at 06:16:32PM +0200, Jason A. Donenfeld wrote:
> > > Maybe sockptr_advance should have some safety checks and sometimes
> > > return -EFAULT? Or you should always use the implementation where
> > > being a kernel address is an explicit bit of sockptr_t, rather than
> > > being implicit?
> >
> > I already have a patch to use access_ok to check the whole range in
> > init_user_sockptr.
>
> That doesn't make (much) difference to the code paths that ignore
> the user-supplied length.
> OTOH doing the user/kernel check on the base address (not an
> incremented one) means that the correct copy function is always
> selected.

Right, I had the same reaction in reading this, but actually, his code
gets rid of the sockptr_advance stuff entirely and never mutates, so
even though my point about attacking those pointers was missed, the
code does the better thing now -- checking the base address and never
mutating the pointer. So I think we're good.

>
> Perhaps the functions should all be passed a 'const sockptr_t'.
> The typedef could be made 'const' - requiring non-const items
> explicitly use the union/struct itself.

I was thinking the same, but just by making the pointers inside the
struct const. However, making the whole struct const via the typedef
is a much better idea. That'd probably require changing the signature
of init_user_sockptr a bit, which would be fine, but indeed I think
this would be a very positive change.

Jason

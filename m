Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A8171E25
	for <lists.bridge@lfdr.de>; Tue, 23 Jul 2019 19:57:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F41E3D9C;
	Tue, 23 Jul 2019 17:56:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AAD71AF0
	for <bridge@lists.linux-foundation.org>;
	Mon, 22 Jul 2019 13:10:44 +0000 (UTC)
X-Greylist: delayed 00:15:57 by SQLgrey-1.7.6
Received: from ajax.cs.uga.edu (ajax.cs.uga.edu [128.192.4.6])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1D7E709
	for <bridge@lists.linux-foundation.org>;
	Mon, 22 Jul 2019 13:10:35 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43]) (authenticated bits=0)
	by ajax.cs.uga.edu (8.14.4/8.14.4) with ESMTP id x6MCsZhf013565
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=OK)
	for <bridge@lists.linux-foundation.org>; Mon, 22 Jul 2019 08:54:37 -0400
Received: by mail-lf1-f43.google.com with SMTP id s19so26554005lfb.9
	for <bridge@lists.linux-foundation.org>;
	Mon, 22 Jul 2019 05:54:36 -0700 (PDT)
X-Gm-Message-State: APjAAAX5bjCAzbKbVlghTHbZQc2c35CA21rLhLhLyvGXHgSZL3foE6pw
	cSzIAqNMosmK+sOZ8nVFDPiKQ4wUrvztlaXpgMg=
X-Google-Smtp-Source: APXvYqz4FayGl7GhjYqBZCRR2PNrf9fqpfgXxMkDxoQT1M5AKTCW0Ks6Rp2FxLNB0uqRaazJ2RdDpsYGTEtzckqhZ0s=
X-Received: by 2002:ac2:4565:: with SMTP id k5mr31911521lfm.170.1563800075295; 
	Mon, 22 Jul 2019 05:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
	<20190722123204.rvsqlqgynfgjcif7@oracle.com>
In-Reply-To: <20190722123204.rvsqlqgynfgjcif7@oracle.com>
From: Wenwen Wang <wenwen@cs.uga.edu>
Date: Mon, 22 Jul 2019 07:53:59 -0500
X-Gmail-Original-Message-ID: <CAAa=b7cwJ-2wPNtH_j6saHiUWRj7zSwzZ8sGPWfgG9AyxWrOPg@mail.gmail.com>
Message-ID: <CAAa=b7cwJ-2wPNtH_j6saHiUWRj7zSwzZ8sGPWfgG9AyxWrOPg@mail.gmail.com>
To: "Liam R. Howlett" <Liam.Howlett@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Tue, 23 Jul 2019 17:56:18 +0000
Cc: Wenwen Wang <wenwen@cs.uga.edu>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	"open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	"moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
	Florian Westphal <fw@strlen.de>, open list <linux-kernel@vger.kernel.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	"open list:NETFILTER" <coreteam@netfilter.org>,
	"open list:NETFILTER" <netfilter-devel@vger.kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH] netfilter: ebtables: compat: fix a memory leak
	bug
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

On Mon, Jul 22, 2019 at 7:34 AM Liam R. Howlett <Liam.Howlett@oracle.com> wrote:
>
> Nice catch.  The code that exists is confusing due to newinfo->entries
> being overwritten and then freed in the existing code path as you state
> in your commit log.
>
> * Wenwen Wang <wang6495@umn.edu> [190720 08:23]:
> > From: Wenwen Wang <wenwen@cs.uga.edu>
> >
> > In compat_do_replace(), a temporary buffer is allocated through vmalloc()
> > to hold entries copied from the user space. The buffer address is firstly
> > saved to 'newinfo->entries', and later on assigned to 'entries_tmp'. Then
> > the entries in this temporary buffer is copied to the internal kernel
> > structure through compat_copy_entries(). If this copy process fails,
> > compat_do_replace() should be terminated. However, the allocated temporary
> > buffer is not freed on this path, leading to a memory leak.
> >
> > To fix the bug, free the buffer before returning from compat_do_replace().
> >
> > Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> > ---
> >  net/bridge/netfilter/ebtables.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
> > index 963dfdc..fd84b48e 100644
> > --- a/net/bridge/netfilter/ebtables.c
> > +++ b/net/bridge/netfilter/ebtables.c
> > @@ -2261,8 +2261,10 @@ static int compat_do_replace(struct net *net, void __user *user,
> >       state.buf_kern_len = size64;
> >
> >       ret = compat_copy_entries(entries_tmp, tmp.entries_size, &state);
> > -     if (WARN_ON(ret < 0))
> > +     if (WARN_ON(ret < 0)) {
> > +             vfree(entries_tmp);
> >               goto out_unlock;
> > +     }
>
>
> Would it be worth adding a new goto label above out_unlock and free this
> entries_tmp?  It could then be used in previous failure path as well.

Yes, that would make the code much clearer and easier to understand.

Thanks!
Wenwen

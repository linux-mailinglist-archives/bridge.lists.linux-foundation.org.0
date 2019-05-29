Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8B32E121
	for <lists.bridge@lfdr.de>; Wed, 29 May 2019 17:33:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4B70826D2;
	Wed, 29 May 2019 15:33:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7129C26BE
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 15:27:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from deadmen.hmeau.com (helcar.hmeau.com [216.24.177.18])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B82EE823
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 15:27:07 +0000 (UTC)
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1hW0Tl-0006jI-7I; Wed, 29 May 2019 23:27:01 +0800
Received: from herbert by gondobar with local (Exim 4.89)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1hW0Ta-0004h1-SN; Wed, 29 May 2019 23:26:50 +0800
Date: Wed, 29 May 2019 23:26:50 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20190529152650.mjzyd6evzmonymj6@gondor.apana.org.au>
References: <000000000000862b160580765e94@google.com>
	<3c44c1ff-2790-ec06-35c6-3572b92170c7@cumulusnetworks.com>
	<CACT4Y+ZA8gBURbeZaDtrt5NoqFy8a8W3jyaWbs34Qjic4Bu+DA@mail.gmail.com>
	<20190220102327.lq2zyqups2fso75z@gondor.apana.org.au>
	<CACT4Y+bUTWcvqEebNjoagw0JtM77NXwVu+i3cYmhgnntZRWyfg@mail.gmail.com>
	<20190529145845.bcvuc5ows4dedqh3@gondor.apana.org.au>
	<CACT4Y+bWyNawZBQkV3TyyFF0tyHnJ9UPsCW-EzmC7rwwh3yk2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACT4Y+bWyNawZBQkV3TyyFF0tyHnJ9UPsCW-EzmC7rwwh3yk2g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	syzbot <syzbot+bc5ab0af2dbf3b0ae897@syzkaller.appspotmail.com>,
	Thomas Graf <tgraf@suug.ch>, David Miller <davem@davemloft.net>
Subject: Re: [Bridge] KASAN: use-after-free Read in br_mdb_ip_get
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

On Wed, May 29, 2019 at 05:14:17PM +0200, Dmitry Vyukov wrote:
>
> > It looks like
> >
> > ommit 1515a63fc413f160d20574ab0894e7f1020c7be2
> > Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> > Date:   Wed Apr 3 23:27:24 2019 +0300
> >
> >     net: bridge: always clear mcast matching struct on reports and leaves
> >
> > may have at least fixed the uninitialised value error.
> 
> 
> The most up-to-date info is always available here:
> 
> >> dashboard link: https://syzkaller.appspot.com/bug?extid=bc5ab0af2dbf3b0ae897
> 
> It says no new crashes happened besides the original one.
> 
> We now have the following choices:
> 
> 1. Invalidate with "#syz invalid"
> 2. Mark as tentatively fixed by that commit (could it fix it?) with
> "#syz fix: net: bridge: always clear mcast matching struct on reports
> and leaves"
> 3. Do nothing, then syzbot will auto-close it soon (bugs without
> reproducers that did not happen in the past 180 days)

I'm still not quite sure how this could cause the use-after-free,
but it certainly seems to be the cause for the second issue of
uninit-value:

https://syzkaller.appspot.com/bug?extid=8dfe5ee27aa6d2e396c2

And this one does seem to have occured again recently (two months
ago).

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

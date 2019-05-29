Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3931B2E083
	for <lists.bridge@lfdr.de>; Wed, 29 May 2019 17:05:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7E3A926C1;
	Wed, 29 May 2019 15:05:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B95925F2
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 14:59:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from deadmen.hmeau.com (helcar.hmeau.com [216.24.177.18])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D9B7619
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 14:59:00 +0000 (UTC)
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1hW02W-0006AC-Rs; Wed, 29 May 2019 22:58:52 +0800
Received: from herbert by gondobar with local (Exim 4.89)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1hW02P-0004f6-Qx; Wed, 29 May 2019 22:58:45 +0800
Date: Wed, 29 May 2019 22:58:45 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20190529145845.bcvuc5ows4dedqh3@gondor.apana.org.au>
References: <000000000000862b160580765e94@google.com>
	<3c44c1ff-2790-ec06-35c6-3572b92170c7@cumulusnetworks.com>
	<CACT4Y+ZA8gBURbeZaDtrt5NoqFy8a8W3jyaWbs34Qjic4Bu+DA@mail.gmail.com>
	<20190220102327.lq2zyqups2fso75z@gondor.apana.org.au>
	<CACT4Y+bUTWcvqEebNjoagw0JtM77NXwVu+i3cYmhgnntZRWyfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACT4Y+bUTWcvqEebNjoagw0JtM77NXwVu+i3cYmhgnntZRWyfg@mail.gmail.com>
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

Hi Dmitry:

On Thu, Feb 21, 2019 at 11:54:42AM +0100, Dmitry Vyukov wrote:
>
> Taking into account that this still happened only once, I tend to
> write it off onto a previous silent memory corruption (we have dozens
> of known bugs that corrupt memory). So if several people already
> looked at it and don't see the root cause, it's probably time to stop
> spending time on this until we have more info.
> 
> Although, there was also this one:
> https://groups.google.com/d/msg/syzkaller-bugs/QfCCSxdB1aM/y2cn9IZJCwAJ
> I have not checked if it can be the root cause of this report, but it
> points suspiciously close to this stack and when I looked at it, it
> the report looked legit.

Have you had any more reports of this kind coming from br_multicast?

It looks like

ommit 1515a63fc413f160d20574ab0894e7f1020c7be2
Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date:   Wed Apr 3 23:27:24 2019 +0300

    net: bridge: always clear mcast matching struct on reports and leaves

may have at least fixed the uninitialised value error.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

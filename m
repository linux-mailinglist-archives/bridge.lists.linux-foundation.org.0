Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 132BB2E0E2
	for <lists.bridge@lfdr.de>; Wed, 29 May 2019 17:19:06 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8B44E26CA;
	Wed, 29 May 2019 15:18:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB4B126C3
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 15:14:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 761F4879
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 15:14:32 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w37so4339747edw.4
	for <bridge@lists.linux-foundation.org>;
	Wed, 29 May 2019 08:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=aPd0T4nMPp5+McITAHFhs073CifRxWMUwmwxYGayYkI=;
	b=rjaL1ZpHoM13fKR3np1C2zYZHY/Y2oQB7qrCJbgzJLx1otaUNOCPdZt2rERT+ioe2h
	6KsBPv958jPzU3UQjxbbUNxg+JhtqvT8QFUb8nC9Tz9riw882pzmcTJ95pcRh6y6rgbG
	o/ZtmdtmBJZDGYXEvKbw/+sFLyLcDd+crNUGqH1QIBGQj2sEUqaIR5P3xCcEjUN88426
	jhjg2BM1Lyp/WHJk9iKtt58dMz/+R4bdN91Q1AdwkP7ZJ8yRLbiR5Ml0b/XBI3c2/izS
	iOCznTpQno/RSXF+N/b9FH+igvcKNk86yKp1TQ4uTpz8VbIS/xJuis+Vib2kV5vwTftk
	V0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aPd0T4nMPp5+McITAHFhs073CifRxWMUwmwxYGayYkI=;
	b=BO9LLw2ADV1EQXPEo0ubtbDolw1Ze9hQYPbQjBPIBzOKkeBpLhP1qmn0s+cp1LIjpD
	IUP763To0K7rgtlWe3vTM1kE20luhmn3r37PxDi8ezEa9nvluZcVuQs/+M6xRIynajnj
	iX0CO+aQvzfXu9rVjgwpnOemEE3MfSB/GVfIFwayLW9O/wGn371HsFMQPdnc1xH53rUa
	a2781dK4F0mu+I/laxB6kQk003WCv119+RIrfzypoj9AEsOGNR0LYwfhhkAY8A1TXYWh
	Kjt2OPJAWmoOZVwQ21hLcK2PJ/k+nxy1e07FCcF7Z4FBRMW/a1MJ20IB6Arjv0MiWfIe
	401A==
X-Gm-Message-State: APjAAAXmaLTkQ5Z7scEJi9W8SgmPjFllPOTXWN3GU69SUAMitTM4XltS
	Awv5iHgkIl+vBJNA4NlnczaZA02CiKBxmVNCYzLe4A==
X-Google-Smtp-Source: APXvYqyynSV0LClJSHiSF3L8wh+qYXkrzzzeVxYXPfS7Z6v0cRlPOwAuabI7aVssn3xyKmeIiRGE3kKSsc0Vi1d4jmw=
X-Received: by 2002:a50:bae4:: with SMTP id x91mr137315884ede.76.1559142870576;
	Wed, 29 May 2019 08:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000862b160580765e94@google.com>
	<3c44c1ff-2790-ec06-35c6-3572b92170c7@cumulusnetworks.com>
	<CACT4Y+ZA8gBURbeZaDtrt5NoqFy8a8W3jyaWbs34Qjic4Bu+DA@mail.gmail.com>
	<20190220102327.lq2zyqups2fso75z@gondor.apana.org.au>
	<CACT4Y+bUTWcvqEebNjoagw0JtM77NXwVu+i3cYmhgnntZRWyfg@mail.gmail.com>
	<20190529145845.bcvuc5ows4dedqh3@gondor.apana.org.au>
In-Reply-To: <20190529145845.bcvuc5ows4dedqh3@gondor.apana.org.au>
Date: Wed, 29 May 2019 17:14:17 +0200
Message-ID: <CACT4Y+bWyNawZBQkV3TyyFF0tyHnJ9UPsCW-EzmC7rwwh3yk2g@mail.gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
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
From: Dmitry Vyukov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Wed, May 29, 2019 at 4:58 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> Hi Dmitry:
>
> On Thu, Feb 21, 2019 at 11:54:42AM +0100, Dmitry Vyukov wrote:
> >
> > Taking into account that this still happened only once, I tend to
> > write it off onto a previous silent memory corruption (we have dozens
> > of known bugs that corrupt memory). So if several people already
> > looked at it and don't see the root cause, it's probably time to stop
> > spending time on this until we have more info.
> >
> > Although, there was also this one:
> > https://groups.google.com/d/msg/syzkaller-bugs/QfCCSxdB1aM/y2cn9IZJCwAJ
> > I have not checked if it can be the root cause of this report, but it
> > points suspiciously close to this stack and when I looked at it, it
> > the report looked legit.
>
> Have you had any more reports of this kind coming from br_multicast?
>
> It looks like
>
> ommit 1515a63fc413f160d20574ab0894e7f1020c7be2
> Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date:   Wed Apr 3 23:27:24 2019 +0300
>
>     net: bridge: always clear mcast matching struct on reports and leaves
>
> may have at least fixed the uninitialised value error.


The most up-to-date info is always available here:

>> dashboard link: https://syzkaller.appspot.com/bug?extid=bc5ab0af2dbf3b0ae897

It says no new crashes happened besides the original one.

We now have the following choices:

1. Invalidate with "#syz invalid"
2. Mark as tentatively fixed by that commit (could it fix it?) with
"#syz fix: net: bridge: always clear mcast matching struct on reports
and leaves"
3. Do nothing, then syzbot will auto-close it soon (bugs without
reproducers that did not happen in the past 180 days)

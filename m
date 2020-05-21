Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 876F71DCFB3
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 16:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2738E88643;
	Thu, 21 May 2020 14:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id anlyVcrFF6xW; Thu, 21 May 2020 14:28:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE21788635;
	Thu, 21 May 2020 14:28:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2052C0176;
	Thu, 21 May 2020 14:28:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 456C8C0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FE7788635
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5PuUlV+6qs0 for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 14:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D306988632
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:28:17 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id f13so7402563qkh.2
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 07:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aJY0Ep267ouSAsUGL+ry/Av1nT7Mp2t1Mda3g0C6rV8=;
 b=FpDavvqmhyH4TVpicJ5DzY7zQZsoMuzIrMNXmgE8gmzuiJO21+n4dcBsTqUKWLgS9U
 JPuhtdzwLRQp/Ev48KcLWMiFgNr5j/IpYv5qH7HqqAeyVcwimI7EL0L0p/fpzD9HObuG
 nDbu6X2nt0Ud3Ue2hrhuy0coZEfZbsV8D++7u5huuMy7NrNfv1d4ioZWnSEvvS14SRh7
 emHV+Wk8FllyGlC/poviNGagE9to53QAWhXuNKSbfqUmlJOE15J1+AlXo6se+ti5sOTG
 8OFACe2YHqXk19jTeypQrb5GmoowUVZFULiC0iCI1SFerw8AF9YtNeeYb/q7cq2KmUr1
 xkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aJY0Ep267ouSAsUGL+ry/Av1nT7Mp2t1Mda3g0C6rV8=;
 b=bKU7aHC48+Eg+4I0qU8vS04/pUEKK09RYkCi5c+7ak1vpy42q5VeV92/uBAX5x4wpY
 LNUyvxBhEO15NKOU5GMXdtrw0sdGjp3NCjo4utNiJToV97vLwEWJ/mbqd/kgW0KOGRZI
 Q6V3FEppmjMgiWDgAJngWImQ4a5uVMAaoUMPArGjKPUf5v7YI5nf8BioQgbMdtlgi2Xv
 hzwiAlH0AGftxF2v6dU5HbJ2GjeNnrxFD6bkffVtZcgNT4eoQgG8bpJasVopELNLyOyz
 sfo/jpVlAAWV2jNniIbDBpjIkOxW1U57UFmBoZ/niRnbsjck4Doj5QMSf6OYcIAy3qXv
 f6Ng==
X-Gm-Message-State: AOAM531C4JkAIn/eSfBmLo8rlwoVgMbjSJqSYuJjebTpxqJTwCrFOJuL
 ru7F+k/fEoLY8xi/Y9mEsecAbjpiLlcaTpPtEm9B2Q==
X-Google-Smtp-Source: ABdhPJxrgUvL9r2CtDZP+Dx+xHoFfqIlq1qblS0fwHc9+D/mKy8J+gNQB+Y3hIT2EVRIyQ3hiWL5XITfNJ94tr3Hynk=
X-Received: by 2002:a37:797:: with SMTP id 145mr7147025qkh.8.1590071296446;
 Thu, 21 May 2020 07:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000007b211005a6187dc9@google.com>
 <20200521140803.GI30374@kadam>
In-Reply-To: <20200521140803.GI30374@kadam>
Date: Thu, 21 May 2020 16:28:05 +0200
Message-ID: <CACT4Y+bzz-h5vNGH0rDMUiuGZVX01oXawXAPbjtnNHb1KVWSvg@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, horatiu.vultur@microchip.com,
 syzbot <syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com>,
 syzkaller <syzkaller@googlegroups.com>, kuba@kernel.org,
 David Miller <davem@davemloft.net>
Subject: Re: [Bridge] KASAN: slab-out-of-bounds Read in br_mrp_parse
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
From: Dmitry Vyukov via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Thu, May 21, 2020 at 4:08 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, May 20, 2020 at 11:23:18AM -0700, syzbot wrote:
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    dda18a5c selftests/bpf: Convert bpf_iter_test_kern{3, 4}.c..
> > git tree:       bpf-next
>                   ^^^^^^^^
>
> I can figure out what this is from reading Next/Trees but it would be
> more useful if it were easier to script.

Hi Dan,

Is there a canonical way to refer to a particular branch of a particular tree?
From what I observed on mailing lists people seem to say "linux-next"
or "upstream tree" and that seems to mean specific things that
everybody understands.

What do you want to script? Note syzbot is not promising a specific
stable API wrt these plain text emails. These are flattened into text
format for human consumption and sent over unreliable media.

> > console output: https://syzkaller.appspot.com/x/log.txt?x=10c4e63c100000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=668983fd3dd1087e
> > dashboard link: https://syzkaller.appspot.com/bug?extid=9c6f0f1f8e32223df9a4
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17eaba3c100000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=128598f6100000
> >
>
> regards,
> dan carpenter
>
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/20200521140803.GI30374%40kadam.

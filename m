Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 278D435E60C
	for <lists.bridge@lfdr.de>; Tue, 13 Apr 2021 20:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E7C26074C;
	Tue, 13 Apr 2021 18:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id te1dTKT9NP5S; Tue, 13 Apr 2021 18:12:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE4E3606EA;
	Tue, 13 Apr 2021 18:12:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C6C5C0012;
	Tue, 13 Apr 2021 18:12:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C5E4BC000A
 for <bridge@lists.linux-foundation.org>; Tue, 13 Apr 2021 18:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D60A404BB
 for <bridge@lists.linux-foundation.org>; Tue, 13 Apr 2021 18:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7xtxfXuZVCb for <bridge@lists.linux-foundation.org>;
 Tue, 13 Apr 2021 18:12:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BE9D40476
 for <bridge@lists.linux-foundation.org>; Tue, 13 Apr 2021 18:12:16 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id j3so8538165qvs.1
 for <bridge@lists.linux-foundation.org>; Tue, 13 Apr 2021 11:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J8WTSsefZFW62T22lrlwArgXymqZlxvKILjzLWwjgyM=;
 b=NeRrPp3a6n+7xCPvFIEAmJzlaYcK6H2Ep2acNBn2vO1lIoqyEkSFQZPyk844XLkUcC
 CSJ4wdBUDzbf52DdcpLNnQGRK48SbUStn+UP8xsMDxcSeTFIgnZcN2MUl5BnoMKG9LQh
 CRwrNuvqMypoArtY1NI2wEIBJjHMfzn/dEGYOtIVpVNSxQJfLvcXs/TniO/IVJSNSyhv
 byjFIQyzbMN8CJA8WU/zWKL6p05/5EtXDY5NGxWsaT1OECgCIU7I48szlTUHA/rFdAHr
 aVYht9tuKFMGOF6RKe+TsNrsN+bWZdKi44ptjqa39t4suR13LqINKXw2P70leVxBb/BX
 7xGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J8WTSsefZFW62T22lrlwArgXymqZlxvKILjzLWwjgyM=;
 b=B2tA14Baxf8CAWRIFpjsVIbm3c33vp0UYeiODNGmtDJrxm5kHON3JZMaUyqTF4z2DK
 ZY6h+iPQXN/T5e+ny3YNeKC6/ZagpIm7GCwaNCJPu+BgQDgOuwlvVYSnJ/0l0L+SUwpm
 nUOVSbLO6OhbSlkoD2ePtrgkOuXCqNlrQZfCtXGv6pRhVP8MEw5iUg6Kxo0ovN2jqt/+
 ISn49Vt7fBNfBrs18OsIvHor9Se/VB1O7YtLSYpFDEyxLWtGJq62eHV2roUyRC9/MKfO
 TGYZfhJ8FRQcEdCC813gKPWRmv4pJICVXveKUI5K5XrnJ3wMCLyQYa2KXYzIK28gMMjc
 04vA==
X-Gm-Message-State: AOAM5305i1Jz4Xah3+8OQWh5rmv8uDXG+AjLIHGSnveu3aufP3uPpowI
 bY/wZ2n5kN/pEFCHTMY1ly3MLXtt0X4n3x7xY+P1IQ==
X-Google-Smtp-Source: ABdhPJweJY/IhHFwcUYvXY9MEhVrrzrSZgJDFZPiTnwI0l+K32/ZohkHIF4ruWRCWlpbp9BjsCSuH+U2BMYtiLDb+SE=
X-Received: by 2002:a05:6214:20e8:: with SMTP id
 8mr33453976qvk.13.1618337534807; 
 Tue, 13 Apr 2021 11:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000028104905bf0822ce@google.com>
In-Reply-To: <00000000000028104905bf0822ce@google.com>
Date: Tue, 13 Apr 2021 20:12:03 +0200
Message-ID: <CACT4Y+ZN6ue+qH_5AJ9nFmOaAnAw7tv-TdXxHyJ_TirnChURcw@mail.gmail.com>
To: syzbot <syzbot+b221933e5f9ad5b0e2fd@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: netdev <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, LKML <linux-kernel@vger.kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, coreteam@netfilter.org,
 NetFilter <netfilter-devel@vger.kernel.org>, nikolay@nvidia.com,
 roopa@nvidia.com, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [syzbot] WARNING: suspicious RCU usage in
	find_inlist_lock
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

On Sat, Apr 3, 2021 at 4:22 AM syzbot
<syzbot+b221933e5f9ad5b0e2fd@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    1e43c377 Merge tag 'xtensa-20210329' of git://github.com/j..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=114cdd4ad00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=78ef1d159159890
> dashboard link: https://syzkaller.appspot.com/bug?extid=b221933e5f9ad5b0e2fd
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+b221933e5f9ad5b0e2fd@syzkaller.appspotmail.com

#syz dup: WARNING: suspicious RCU usage in getname_flags

> =============================
> WARNING: suspicious RCU usage
> 5.12.0-rc5-syzkaller #0 Not tainted
> -----------------------------
> kernel/sched/core.c:8294 Illegal context switch in RCU-sched read-side critical section!
>
> other info that might help us debug this:
>
>
> rcu_scheduler_active = 2, debug_locks = 0
> no locks held by syz-executor.1/8425.
>
> stack backtrace:
> CPU: 1 PID: 8425 Comm: syz-executor.1 Not tainted 5.12.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:79 [inline]
>  dump_stack+0x141/0x1d7 lib/dump_stack.c:120
>  ___might_sleep+0x266/0x2c0 kernel/sched/core.c:8294
>  __mutex_lock_common kernel/locking/mutex.c:928 [inline]
>  __mutex_lock+0xa9/0x1120 kernel/locking/mutex.c:1096
>  find_inlist_lock_noload net/bridge/netfilter/ebtables.c:316 [inline]
>  find_inlist_lock.constprop.0+0x26/0x220 net/bridge/netfilter/ebtables.c:330
>  find_table_lock net/bridge/netfilter/ebtables.c:339 [inline]
>  do_ebt_get_ctl+0x208/0x790 net/bridge/netfilter/ebtables.c:2329
>  nf_getsockopt+0x72/0xd0 net/netfilter/nf_sockopt.c:116
>  ip_getsockopt net/ipv4/ip_sockglue.c:1777 [inline]
>  ip_getsockopt+0x164/0x1c0 net/ipv4/ip_sockglue.c:1756
>  tcp_getsockopt+0x86/0xd0 net/ipv4/tcp.c:4239
>  __sys_getsockopt+0x21f/0x5f0 net/socket.c:2161
>  __do_sys_getsockopt net/socket.c:2176 [inline]
>  __se_sys_getsockopt net/socket.c:2173 [inline]
>  __x64_sys_getsockopt+0xba/0x150 net/socket.c:2173
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x467a6a
> Code: 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 37 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffe660d82f8 EFLAGS: 00000202 ORIG_RAX: 0000000000000037
> RAX: ffffffffffffffda RBX: 00000000005401a0 RCX: 0000000000467a6a
> RDX: 0000000000000081 RSI: 0000000000000000 RDI: 0000000000000003
> RBP: 0000000000000000 R08: 00007ffe660d831c R09: 00007ffe660d83a0
> R10: 00007ffe660d8320 R11: 0000000000000202 R12: 0000000000000003
> R13: 00007ffe660d8320 R14: 0000000000540128 R15: 00007ffe660d831c
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/00000000000028104905bf0822ce%40google.com.

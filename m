Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EE124E91E
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BD69864EA;
	Sat, 22 Aug 2020 17:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KMLnljDBMIP; Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57BE385C2E;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2BB16C08A2;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB586C004D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Aug 2020 03:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFF9720489
 for <bridge@lists.linux-foundation.org>; Thu, 13 Aug 2020 03:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRiQDlXrNuTT for <bridge@lists.linux-foundation.org>;
 Thu, 13 Aug 2020 03:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by silver.osuosl.org (Postfix) with ESMTPS id CB3D42042C
 for <bridge@lists.linux-foundation.org>; Thu, 13 Aug 2020 03:45:23 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id e73so3177153iof.5
 for <bridge@lists.linux-foundation.org>; Wed, 12 Aug 2020 20:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=5fOerBOgtCPzRD6DaJSK75fAycF0jkD27NVs0k5zNK8=;
 b=MVl9kIB3Yloo5bfFUdb+ox1+6Tpq7bEVyjcuaYX3OxAQdIow/OsSYd2GwsIQThve/i
 RjWDvspFmcc0xRJ46YV5JRfFBPx/mGu3DqnQUviNzWtfpDq4rcrR/sU5l7ybrCD2aO0M
 PHgj5bAuz+sJvTtBZKCwPRKIY2tc54unjR7exBv14pLNm8Detxqtpv4o++rBmyIsznGY
 glR8FuujPFhf5p4r8z7/VUf38Y70LMC6b+A4UvucIK3zT0rHSqrlcT2e7R27+roTaMws
 L9/TttYeoxtDfV6kD6pLPOaZDnknbKyM2rWSF/5dMr+89cC5OOqor0qkrBpC9CMF0d2E
 PpCw==
X-Gm-Message-State: AOAM533wrC5t4BHJD6R0cZxRwzYhVjnN0JSDzmHr/tWGBtASPZs0DjJg
 LaN4oq/fiYm7Mua/Dv+UMnRg+jcOPPk/EEU6vxXJS1pl/pSS
X-Google-Smtp-Source: ABdhPJxz4SQu4A4rdaQz1JJUS90biGgjK7Mm9sZZE4NzvdVqRmeRD40WWpsBvRjHG3bQJOxi3NZRYHnot5kBb62meeUF8lLcp2uq
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:42:: with SMTP id
 i2mr2552973ilr.184.1597290323164; 
 Wed, 12 Aug 2020 20:45:23 -0700 (PDT)
Date: Wed, 12 Aug 2020 20:45:23 -0700
In-Reply-To: <000000000000ece9db05ac4054e8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000050c61e05acba22b6@google.com>
From: syzbot <syzbot+5accb5c62faa1d346480@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, kadlec@netfilter.org, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@cumulusnetworks.com, 
 pablo@netfilter.org, roopa@cumulusnetworks.com, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Subject: Re: [Bridge] WARNING in compat_do_ebt_get_ctl
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    fb893de3 Merge tag 'tag-chrome-platform-for-v5.9' of git:/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1742b31c900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f1fedc63022bf07e
dashboard link: https://syzkaller.appspot.com/bug?extid=5accb5c62faa1d346480
compiler:       gcc (GCC) 10.1.0-syz 20200507
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13280fd6900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1409f4a6900000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5accb5c62faa1d346480@syzkaller.appspotmail.com

------------[ cut here ]------------
Buffer overflow detected (80 < 137)!
WARNING: CPU: 0 PID: 6853 at include/linux/thread_info.h:134 copy_overflow include/linux/thread_info.h:134 [inline]
WARNING: CPU: 0 PID: 6853 at include/linux/thread_info.h:134 check_copy_size include/linux/thread_info.h:143 [inline]
WARNING: CPU: 0 PID: 6853 at include/linux/thread_info.h:134 copy_to_user include/linux/uaccess.h:151 [inline]
WARNING: CPU: 0 PID: 6853 at include/linux/thread_info.h:134 compat_do_ebt_get_ctl+0x47e/0x500 net/bridge/netfilter/ebtables.c:2270
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 6853 Comm: syz-executor171 Not tainted 5.8.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 panic+0x2e3/0x75c kernel/panic.c:231
 __warn.cold+0x20/0x45 kernel/panic.c:600
 report_bug+0x1bd/0x210 lib/bug.c:198
 handle_bug+0x38/0x90 arch/x86/kernel/traps.c:234
 exc_invalid_op+0x14/0x40 arch/x86/kernel/traps.c:254
 asm_exc_invalid_op+0x12/0x20 arch/x86/include/asm/idtentry.h:536
RIP: 0010:copy_overflow include/linux/thread_info.h:134 [inline]
RIP: 0010:check_copy_size include/linux/thread_info.h:143 [inline]
RIP: 0010:copy_to_user include/linux/uaccess.h:151 [inline]
RIP: 0010:compat_do_ebt_get_ctl+0x47e/0x500 net/bridge/netfilter/ebtables.c:2270
Code: ba fd ff ff 4c 89 f7 e8 60 07 a2 fa e9 ad fd ff ff e8 36 18 62 fa 4c 89 e2 be 50 00 00 00 48 c7 c7 40 b9 0e 89 e8 94 1f 33 fa <0f> 0b e9 dc fd ff ff 41 bc f2 ff ff ff e9 4f fe ff ff e8 3b 07 a2
RSP: 0018:ffffc90005667ae8 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 1ffff92000accf5e RCX: 0000000000000000
RDX: ffff88809458a280 RSI: ffffffff815dbce7 RDI: fffff52000accf4f
RBP: ffffffff8a8faa60 R08: 0000000000000001 R09: ffff8880ae6318e7
R10: 0000000000000000 R11: 0000000035383654 R12: 0000000000000089
R13: 0000000020000000 R14: ffffc90005667d80 R15: ffffc90005667b20
 do_ebt_get_ctl+0x2b4/0x790 net/bridge/netfilter/ebtables.c:2317
 nf_getsockopt+0x72/0xd0 net/netfilter/nf_sockopt.c:116
 ip_getsockopt net/ipv4/ip_sockglue.c:1778 [inline]
 ip_getsockopt+0x164/0x1c0 net/ipv4/ip_sockglue.c:1757
 tcp_getsockopt+0x86/0xd0 net/ipv4/tcp.c:3884
 __sys_getsockopt+0x219/0x4c0 net/socket.c:2179
 __do_sys_getsockopt net/socket.c:2194 [inline]
 __se_sys_getsockopt net/socket.c:2191 [inline]
 __ia32_sys_getsockopt+0xb9/0x150 net/socket.c:2191
 do_syscall_32_irqs_on arch/x86/entry/common.c:84 [inline]
 __do_fast_syscall_32+0x57/0x80 arch/x86/entry/common.c:126
 do_fast_syscall_32+0x2f/0x70 arch/x86/entry/common.c:149
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c
RIP: 0023:0xf7f91569
Code: 10 05 03 74 b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 002b:00000000ffdae08c EFLAGS: 00000292 ORIG_RAX: 000000000000016d
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000000000000
RDX: 0000000000000082 RSI: 0000000020000000 RDI: 0000000020000100
RBP: 0000000000000012 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BCA24E91C
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C5E7864B3;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TlaAuJCMT9YB; Sat, 22 Aug 2020 17:45:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF3DE85BD3;
	Sat, 22 Aug 2020 17:45:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 928C8C0051;
	Sat, 22 Aug 2020 17:45:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADBBAC004D
 for <bridge@lists.linux-foundation.org>; Tue, 11 Aug 2020 17:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C541687DEB
 for <bridge@lists.linux-foundation.org>; Tue, 11 Aug 2020 17:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXb6bD+32o1u for <bridge@lists.linux-foundation.org>;
 Tue, 11 Aug 2020 17:30:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1BA3387C17
 for <bridge@lists.linux-foundation.org>; Tue, 11 Aug 2020 17:30:25 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id m82so10947466ilb.1
 for <bridge@lists.linux-foundation.org>; Tue, 11 Aug 2020 10:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=wYPqHOKiPEiq4c/9oNHWGAHHdoSgKuM8jKVa9B1NydQ=;
 b=hAP++X+6ENafzcpR8oYhOyRM3zRJGWLhCGCdMItUPZ/GOnK7dDAl8e6Wmym46z2tg5
 dy5/uqXe06lq4D+NEJFxCV99DOk1kx7a0fBmLZbQiv5h7hQvMsU2F067MIRwO4daZmGP
 7//mQNzRrGmTcQtKY0w6cpycCCuCZnj5u3dwKMLOtBJRG3roWdWNIhWPmwFYbMVAmvaC
 z4eFd0eX3lEPMwrIQXlfNaxYQVJXR27t47Can7yPMQ9J5pThCPc/oiLzQllMVsOpGGOX
 /mgswumaL/6QazM3l3P7FKGBavJRQ5q5MWU4mNsDNJNRw3luIvWo5AFdZk0Mkm6F71r9
 +iMg==
X-Gm-Message-State: AOAM532SaLVFX+T4hXX+f24HwdlufHCEpS5JpQtpGcPGnXlMdfk3s86z
 Xwo7qETz0kYMZgLidfzSBE1optdH9CuiN1gqbmajkQfm/R2o
X-Google-Smtp-Source: ABdhPJzuvdFF/eryapjz18jWZQjX+uUKxP9iCExAkSrA73P+bYbzt9f9bRI9OkHK+KAxko2TkHzilohTdt46KpJnzPRoeZ3heg2X
MIME-Version: 1.0
X-Received: by 2002:a02:6d5d:: with SMTP id e29mr26421416jaf.139.1597167024410; 
 Tue, 11 Aug 2020 10:30:24 -0700 (PDT)
Date: Tue, 11 Aug 2020 10:30:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000023195505ac9d6d26@google.com>
From: syzbot <syzbot+64d60892aaa4d4c34812@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, kadlec@netfilter.org, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@cumulusnetworks.com, 
 pablo@netfilter.org, roopa@cumulusnetworks.com, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Subject: [Bridge] KASAN: wild-memory-access Read in do_ebt_set_ctl
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

Hello,

syzbot found the following issue on:

HEAD commit:    86cfccb6 Merge tag 'dlm-5.9' of git://git.kernel.org/pub/s..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1419de8a900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bcf489e08c9b8c5e
dashboard link: https://syzkaller.appspot.com/bug?extid=64d60892aaa4d4c34812
compiler:       gcc (GCC) 10.1.0-syz 20200507
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+64d60892aaa4d4c34812@syzkaller.appspotmail.com

BUG: KASAN: wild-memory-access in memcpy include/linux/string.h:406 [inline]
BUG: KASAN: wild-memory-access in copy_from_sockptr_offset include/linux/sockptr.h:71 [inline]
BUG: KASAN: wild-memory-access in copy_from_sockptr include/linux/sockptr.h:77 [inline]
BUG: KASAN: wild-memory-access in compat_update_counters net/bridge/netfilter/ebtables.c:2222 [inline]
BUG: KASAN: wild-memory-access in do_ebt_set_ctl+0x2c0/0x53b net/bridge/netfilter/ebtables.c:2389
Read of size 80 at addr 00000000ffffffff by task syz-executor.3/9621

CPU: 1 PID: 9621 Comm: syz-executor.3 Not tainted 5.8.0-syzkaller #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 __kasan_report mm/kasan/report.c:517 [inline]
 kasan_report.cold+0x5/0x37 mm/kasan/report.c:530
 check_memory_region_inline mm/kasan/generic.c:186 [inline]
 check_memory_region+0x13d/0x180 mm/kasan/generic.c:192
 memcpy+0x20/0x60 mm/kasan/common.c:105
 memcpy include/linux/string.h:406 [inline]
 copy_from_sockptr_offset include/linux/sockptr.h:71 [inline]
 copy_from_sockptr include/linux/sockptr.h:77 [inline]
 compat_update_counters net/bridge/netfilter/ebtables.c:2222 [inline]
 do_ebt_set_ctl+0x2c0/0x53b net/bridge/netfilter/ebtables.c:2389
 nf_setsockopt+0x6f/0xc0 net/netfilter/nf_sockopt.c:101
 ip_setsockopt+0x54d/0x3c10 net/ipv4/ip_sockglue.c:1436
 raw_setsockopt+0x205/0x250 net/ipv4/raw.c:856
 __sys_setsockopt+0x2ad/0x6d0 net/socket.c:2138
 __do_sys_setsockopt net/socket.c:2149 [inline]
 __se_sys_setsockopt net/socket.c:2146 [inline]
 __ia32_sys_setsockopt+0xb9/0x150 net/socket.c:2146
 do_syscall_32_irqs_on arch/x86/entry/common.c:84 [inline]
 __do_fast_syscall_32+0x57/0x80 arch/x86/entry/common.c:126
 do_fast_syscall_32+0x2f/0x70 arch/x86/entry/common.c:149
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c
RIP: 0023:0xf7f19569
Code: c4 01 10 03 03 74 c0 01 10 05 03 74 b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 002b:00000000f55130bc EFLAGS: 00000296 ORIG_RAX: 000000000000016e
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000000000000
RDX: 0000000000000081 RSI: 00000000ffffffff RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

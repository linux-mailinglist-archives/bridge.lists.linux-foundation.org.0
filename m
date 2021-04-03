Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8267C35BB8D
	for <lists.bridge@lfdr.de>; Mon, 12 Apr 2021 10:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C06E608F0;
	Mon, 12 Apr 2021 08:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doGgI-bNXgic; Mon, 12 Apr 2021 08:01:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F46C60681;
	Mon, 12 Apr 2021 08:01:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10784C0011;
	Mon, 12 Apr 2021 08:01:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DED1C000A
 for <bridge@lists.linux-foundation.org>; Sat,  3 Apr 2021 02:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05716400D0
 for <bridge@lists.linux-foundation.org>; Sat,  3 Apr 2021 02:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJjzZpmrJfZB for <bridge@lists.linux-foundation.org>;
 Sat,  3 Apr 2021 02:22:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AABA400B9
 for <bridge@lists.linux-foundation.org>; Sat,  3 Apr 2021 02:22:17 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id y2so7170849ioa.23
 for <bridge@lists.linux-foundation.org>; Fri, 02 Apr 2021 19:22:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=yojHr0LL9tcz8C/ih+uZXwDOxxsE8tJwilH+vxkwGEU=;
 b=o8dQbHMqbWFQ6C2RZx8+GkOspGBhm6y4C6zOOoV97tkhzmxxM079gX7UEMNpkR2wOs
 DqDcl9+OnTC2WJ0SfR/adCLRSOG2HuCAOeA8VqvcnzuEBvBjPe019z0H1FRdGIoLysuf
 7BaayYQrd0p8v7dJ9i9w50/P3juMu39RSO/W3Vf44WVjSR2FSX1Y1e6zOLqYkmQ4bmUe
 +fA0gUm+0Dkcw0PJVDMLoaF6Lv5/2Lx+QOqcy39ze3wRbKU5KkluT/egMjcyNpPM/aoW
 C/SWDW5rnnZo9GO2OSIFhFTnTVpeXTtZaev6WdeKqRUs7LKYOix/1qps3fP3g4QN8gNA
 C6kg==
X-Gm-Message-State: AOAM532S4Vxlm5t4Od1q+GtMQ1kykR419cBQqTs5ugJ598lPJng0rpBZ
 PhgTEdxTLXKhzZEz/AURTWmmEfUxlcosd6wmvEtTNT9Rmh/P
X-Google-Smtp-Source: ABdhPJyBAx5lpsWCs2cfBehnz27AczKqw16RcM1me3OBSZwRId03i5qPHagW0vP7xRMo5UKXyafMcKO0ycDaUet4TolL/MQdcZaA
MIME-Version: 1.0
X-Received: by 2002:a5d:9917:: with SMTP id x23mr12821675iol.22.1617416537245; 
 Fri, 02 Apr 2021 19:22:17 -0700 (PDT)
Date: Fri, 02 Apr 2021 19:22:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000028104905bf0822ce@google.com>
From: syzbot <syzbot+b221933e5f9ad5b0e2fd@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, kadlec@netfilter.org, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, pablo@netfilter.org, 
 roopa@nvidia.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 12 Apr 2021 08:01:54 +0000
Subject: [Bridge] [syzbot] WARNING: suspicious RCU usage in find_inlist_lock
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

HEAD commit:    1e43c377 Merge tag 'xtensa-20210329' of git://github.com/j..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=114cdd4ad00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=78ef1d159159890
dashboard link: https://syzkaller.appspot.com/bug?extid=b221933e5f9ad5b0e2fd

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b221933e5f9ad5b0e2fd@syzkaller.appspotmail.com

=============================
WARNING: suspicious RCU usage
5.12.0-rc5-syzkaller #0 Not tainted
-----------------------------
kernel/sched/core.c:8294 Illegal context switch in RCU-sched read-side critical section!

other info that might help us debug this:


rcu_scheduler_active = 2, debug_locks = 0
no locks held by syz-executor.1/8425.

stack backtrace:
CPU: 1 PID: 8425 Comm: syz-executor.1 Not tainted 5.12.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 ___might_sleep+0x266/0x2c0 kernel/sched/core.c:8294
 __mutex_lock_common kernel/locking/mutex.c:928 [inline]
 __mutex_lock+0xa9/0x1120 kernel/locking/mutex.c:1096
 find_inlist_lock_noload net/bridge/netfilter/ebtables.c:316 [inline]
 find_inlist_lock.constprop.0+0x26/0x220 net/bridge/netfilter/ebtables.c:330
 find_table_lock net/bridge/netfilter/ebtables.c:339 [inline]
 do_ebt_get_ctl+0x208/0x790 net/bridge/netfilter/ebtables.c:2329
 nf_getsockopt+0x72/0xd0 net/netfilter/nf_sockopt.c:116
 ip_getsockopt net/ipv4/ip_sockglue.c:1777 [inline]
 ip_getsockopt+0x164/0x1c0 net/ipv4/ip_sockglue.c:1756
 tcp_getsockopt+0x86/0xd0 net/ipv4/tcp.c:4239
 __sys_getsockopt+0x21f/0x5f0 net/socket.c:2161
 __do_sys_getsockopt net/socket.c:2176 [inline]
 __se_sys_getsockopt net/socket.c:2173 [inline]
 __x64_sys_getsockopt+0xba/0x150 net/socket.c:2173
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x467a6a
Code: 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 37 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe660d82f8 EFLAGS: 00000202 ORIG_RAX: 0000000000000037
RAX: ffffffffffffffda RBX: 00000000005401a0 RCX: 0000000000467a6a
RDX: 0000000000000081 RSI: 0000000000000000 RDI: 0000000000000003
RBP: 0000000000000000 R08: 00007ffe660d831c R09: 00007ffe660d83a0
R10: 00007ffe660d8320 R11: 0000000000000202 R12: 0000000000000003
R13: 00007ffe660d8320 R14: 0000000000540128 R15: 00007ffe660d831c


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

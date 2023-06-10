Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 448FD7311DE
	for <lists.bridge@lfdr.de>; Thu, 15 Jun 2023 10:15:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6375341F1F;
	Thu, 15 Jun 2023 08:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6375341F1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVhRMv8Vadfi; Thu, 15 Jun 2023 08:15:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5408F41F03;
	Thu, 15 Jun 2023 08:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5408F41F03
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 043FFC008C;
	Thu, 15 Jun 2023 08:15:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 041DFC0029
 for <bridge@lists.linux-foundation.org>; Sat, 10 Jun 2023 01:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDD854015E
 for <bridge@lists.linux-foundation.org>; Sat, 10 Jun 2023 01:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDD854015E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoPV5WE8LiRf for <bridge@lists.linux-foundation.org>;
 Sat, 10 Jun 2023 01:34:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D20340154
Received: from mail-io1-f77.google.com (mail-io1-f77.google.com
 [209.85.166.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D20340154
 for <bridge@lists.linux-foundation.org>; Sat, 10 Jun 2023 01:34:59 +0000 (UTC)
Received: by mail-io1-f77.google.com with SMTP id
 ca18e2360f4ac-77ac1af4c54so288081939f.0
 for <bridge@lists.linux-foundation.org>; Fri, 09 Jun 2023 18:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686360898; x=1688952898;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=f5mNW1xz4ir4K+TXk9/cw5gWevzhG4ajUOaVhJJcyOA=;
 b=ZgajRbEnhe/X8XeWugJPR0Sdk+y+68UzfIvIJH5x77svaNM3B5B6oiR3Uz18GuIQcZ
 DOyKgXv6DpDfq/2nhBpcKxiAXu1kKxtx4qL8V1R2NNYA5iIOt+xV/Fcw0NvvvKm0kyTN
 sdiEdDX4Kr9ys+Qp0eJbhr6qxqqsqvVQGAaHAyoJvGJ7HHAlPv8ryws0tjIw+KvANNnk
 ad2MrTkdMI2Xwpged80qWvu2NjsD0NTKgkMeqPvjQmKrCJGtT6d6Gc5PjAtIMyLANGbC
 Trn7K/jw8c0LG/7grVaEjOlsm+TuviaB69bqyAJ5wK3ZJDbOcE0sIE6UHj+2wpydDdwH
 8wuA==
X-Gm-Message-State: AC+VfDz94uYgwUvX+2coxLcXN3U5cvrQ4m6rJkYIAlqvXiIk69fqfpAl
 aaydV2A1TF60NlRg4/wQV+0c5fvSVnC0Gs/91rpkBf0yAyIj
X-Google-Smtp-Source: ACHHUZ5N1vcUonkSxJW+D8dcCzxgbSsr5CPIhX6GAEHBCilclWELJoe1diJ0k/xADhZS7sRySaC+1litczGZyL7c0o4OegxSEjMQ
MIME-Version: 1.0
X-Received: by 2002:a02:b187:0:b0:41f:2aa6:8b17 with SMTP id
 t7-20020a02b187000000b0041f2aa68b17mr1307116jah.2.1686360898474; Fri, 09 Jun
 2023 18:34:58 -0700 (PDT)
Date: Fri, 09 Jun 2023 18:34:58 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000051197705fdbc7e54@google.com>
From: syzbot <syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com>
To: arnd@arndb.de, bridge@lists.linux-foundation.org, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, nikolay@nvidia.com, pabeni@redhat.com, 
 roopa@nvidia.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 15 Jun 2023 08:15:06 +0000
Subject: [Bridge] [syzbot] [net?] unregister_netdevice: waiting for DEV to
	become free (8)
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

HEAD commit:    67faabbde36b selftests/bpf: Add missing prototypes for sev..
git tree:       bpf-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1381363b280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5335204dcdecfda
dashboard link: https://syzkaller.appspot.com/bug?extid=881d65229ca4f9ae8c84
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=132faf93280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10532add280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/751a0490d875/disk-67faabbd.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/2c5106cd9f1f/vmlinux-67faabbd.xz
kernel image: https://storage.googleapis.com/syzbot-assets/62c1154294e4/bzImage-67faabbd.xz

The issue was bisected to:

commit ad2f99aedf8fa77f3ae647153284fa63c43d3055
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Tue Jul 27 13:45:16 2021 +0000

    net: bridge: move bridge ioctls out of .ndo_do_ioctl

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=146de6f1280000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=166de6f1280000
console output: https://syzkaller.appspot.com/x/log.txt?x=126de6f1280000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com
Fixes: ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")

unregister_netdevice: waiting for bridge0 to become free. Usage count = 2
leaked reference.
 __netdev_tracker_alloc include/linux/netdevice.h:4070 [inline]
 netdev_hold include/linux/netdevice.h:4099 [inline]
 dev_ifsioc+0xbc0/0xeb0 net/core/dev_ioctl.c:408
 dev_ioctl+0x250/0x1090 net/core/dev_ioctl.c:605
 sock_do_ioctl+0x15a/0x230 net/socket.c:1215
 sock_ioctl+0x1f8/0x680 net/socket.c:1318
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]
 __se_sys_ioctl fs/ioctl.c:856 [inline]
 __x64_sys_ioctl+0x197/0x210 fs/ioctl.c:856
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup

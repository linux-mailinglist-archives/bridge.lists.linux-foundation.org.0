Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11454473DA5
	for <lists.bridge@lfdr.de>; Tue, 14 Dec 2021 08:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90ACC40165;
	Tue, 14 Dec 2021 07:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rJf44NKiUk3P; Tue, 14 Dec 2021 07:27:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9714240167;
	Tue, 14 Dec 2021 07:27:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 595A5C0070;
	Tue, 14 Dec 2021 07:27:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12FCCC0012
 for <bridge@lists.linux-foundation.org>; Tue, 14 Dec 2021 07:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F014A40302
 for <bridge@lists.linux-foundation.org>; Tue, 14 Dec 2021 07:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avGL_N-O1-HG for <bridge@lists.linux-foundation.org>;
 Tue, 14 Dec 2021 07:27:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EFE4402FF
 for <bridge@lists.linux-foundation.org>; Tue, 14 Dec 2021 07:27:45 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id n66so26254980oia.9
 for <bridge@lists.linux-foundation.org>; Mon, 13 Dec 2021 23:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cJ2so9QDzn8vg83JbvsW0tX7AlVoq1HFatz2VFHz5oY=;
 b=kU947ur/JRQV+6Y1wOIFXiB1lXvyZF9VUlA9quT7fBMWNqQsod7rGX3qdsOJnot+sg
 R9CxK3NFZyTwziiueAq8BrNfdpl1vk3UX133nFjCUSwir8L6QtpEx1QftagxkDs/9mLm
 AkxE2iGFUVTlI28/qYrFwySZcfRpKlxT51m9GIK4z5o4lrWItvcjBkiwJKflwD3InSVq
 cuFSRGDq5IokBfOaZffkLntU6Zq2QX9Y2CN8VnuFQ+Yxeuq5Xzivp9EcM8Xq3O9ehNUM
 uHC5sNhMRxqDdSD30kNAVEMKUccYYCZCcJJQDV4JOzh2deLK7z4S7hK1+gVI5K7mvu+T
 1kZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cJ2so9QDzn8vg83JbvsW0tX7AlVoq1HFatz2VFHz5oY=;
 b=1w+6jWKvEi4M76uFh+LiLdJB4/4NZSl7YQEV1jE3XLhP2i14Oz7BUsrgSvuBQm8+e5
 h4cQdvKjjWVgmY51Gn8uPX9vMJsQYheCrgEneNMrXxt37nQiP8hYaBnwFjL9liufFxFC
 HErISa+KBbnvJ+R0Qto7ESNeTgSitNA9EqfaeQx0Nx6+YtcjShvkqHRhdujXrFAOAiwR
 HHSnsUC0nnotHH3yq9w+iowzrRGnD8bmFB6ousxD8/DE1beBm65VaW4lsFDR95qk6vrp
 KZS2bUZwyKGb8IpqM42o1AMygwjyR0lO+2ThLdD5v1wMH2rftM9Uukb4JewIssspxd3h
 5dNw==
X-Gm-Message-State: AOAM532zxCsZMo4sLBciu1jPWbb//aa6Qkt9DsFPmdQEuhXlNs2WX5VD
 QyF0vx6X7SQBEctJ+gdwT/2JLK9PJVpsu0a7xTfpHQ==
X-Google-Smtp-Source: ABdhPJz+e6wUNcIYoA0XKgPh9iuOUfF7YeU0E0oDFTTUeDKTxpfXSkcU8t/jY0wSjTCJNkfMXax62yxBZ1N8L45jP3M=
X-Received: by 2002:a05:6808:64c:: with SMTP id
 z12mr3311566oih.128.1639466863795; 
 Mon, 13 Dec 2021 23:27:43 -0800 (PST)
MIME-Version: 1.0
References: <000000000000b48a3d05d03040f8@google.com>
In-Reply-To: <000000000000b48a3d05d03040f8@google.com>
Date: Tue, 14 Dec 2021 08:27:32 +0100
Message-ID: <CACT4Y+Y_BJ1hOFy7fctgArZUv4cWEUSUF7wrHeVSC02sF5+u_w@mail.gmail.com>
To: syzbot <syzbot+11e187621fbc19749a18@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [syzbot] BUG: TASK stack guard page was hit at ADDR
	(stack is ADDR..ADDR)
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

On Sun, 7 Nov 2021 at 11:22, syzbot
<syzbot+11e187621fbc19749a18@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    cc0356d6a02e Merge tag 'x86_core_for_v5.16_rc1' of git://g..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=108bb246b00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a5d447cdc3ae81d9
> dashboard link: https://syzkaller.appspot.com/bug?extid=11e187621fbc19749a18
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+11e187621fbc19749a18@syzkaller.appspotmail.com

Kernel output has changed. I've repaired parsing here:
https://github.com/google/syzkaller/commit/7b14e14df007095c58e6be2811d5e4a2ac31f875

#syz invalid

> BUG: TASK stack guard page was hit at ffffc9000d447fc8 (stack is ffffc9000d448000..ffffc9000d450000)
> stack guard page: 0000 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 383 Comm: syz-executor.0 Not tainted 5.15.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:mark_lock+0x23/0x17b0 kernel/locking/lockdep.c:4554
> Code: 84 00 00 00 00 00 90 41 57 41 56 41 55 41 54 41 89 d4 48 ba 00 00 00 00 00 fc ff df 55 53 48 81 ec 18 01 00 00 48 8d 5c 24 38 <48> 89 3c 24 48 c7 44 24 38 b3 8a b5 41 48 c1 eb 03 48 c7 44 24 40
> RSP: 0018:ffffc9000d447fd8 EFLAGS: 00010096
> RAX: 0000000000000000 RBX: ffffc9000d448010 RCX: ffffffff815c419d
> RDX: dffffc0000000000 RSI: ffff88803a27e1d8 RDI: ffff88803a27d700
> RBP: 0000000000000002 R08: 0000000000000000 R09: ffffffff8fd38a07
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000008
> R13: ffff88803a27d700 R14: ffff88803a27e160 R15: dffffc0000000000
> FS:  00007f1792855700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: ffffc9000d447fc8 CR3: 000000017af51000 CR4: 0000000000350ef0
> Call Trace:
>  <TASK>
>  mark_usage kernel/locking/lockdep.c:4514 [inline]
>  __lock_acquire+0x8a7/0x54a0 kernel/locking/lockdep.c:4969
>  lock_acquire kernel/locking/lockdep.c:5625 [inline]
>  lock_acquire+0x1ab/0x510 kernel/locking/lockdep.c:5590
>  rcu_lock_acquire include/linux/rcupdate.h:268 [inline]
>  rcu_read_lock include/linux/rcupdate.h:688 [inline]
>  br_get_link_af_size_filtered+0xa7/0xbe0 net/bridge/br_netlink.c:104
>  rtnl_link_get_af_size net/core/rtnetlink.c:598 [inline]
>  if_nlmsg_size+0x40c/0xa50 net/core/rtnetlink.c:1039
>  rtmsg_ifinfo_build_skb+0x5e/0x1a0 net/core/rtnetlink.c:3808
>  rtmsg_ifinfo_event net/core/rtnetlink.c:3844 [inline]
>  rtmsg_ifinfo_event net/core/rtnetlink.c:3835 [inline]
>  rtnetlink_event+0x123/0x1d0 net/core/rtnetlink.c:5622
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_change_features+0x61/0xb0 net/core/dev.c:10075
>  bond_compute_features+0x56c/0xaa0 drivers/net/bonding/bond_main.c:1471
>  bond_slave_netdev_event drivers/net/bonding/bond_main.c:3638 [inline]
>  bond_netdev_event+0x755/0xae0 drivers/net/bonding/bond_main.c:3678
>  notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
>  call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2002
>  call_netdevice_notifiers_extack net/core/dev.c:2014 [inline]
>  call_netdevice_notifiers net/core/dev.c:2028 [inline]
>  netdev_features_change net/core/dev.c:1374 [inline]
>  netdev_sync_lower_features net/core/dev.c:9851 [inline]
>  __netdev_update_features+0x986/0x1840 net/core/dev.c:10003
>  netdev_update_features net/core/dev.c:10058 [inline]
>  dev_disable_lro+0x8d/0x3e0 net/core/dev.c:1646
>  br_add_if+0xb78/0x1f20 net/bridge/br_if.c:645
>  add_del_if+0x10c/0x140 net/bridge/br_ioctl.c:98
>  br_ioctl_stub+0x1d0/0x7e0 net/bridge/br_ioctl.c:407
>  br_ioctl_call+0x5e/0xa0 net/socket.c:1092
>  dev_ifsioc+0xcf8/0x10c0 net/core/dev_ioctl.c:386
>  dev_ioctl+0x1b9/0xed0 net/core/dev_ioctl.c:585
>  sock_do_ioctl+0x15a/0x230 net/socket.c:1132
>  sock_ioctl+0x2f1/0x640 net/socket.c:1235
>  vfs_ioctl fs/ioctl.c:51 [inline]
>  __do_sys_ioctl fs/ioctl.c:874 [inline]
>  __se_sys_ioctl fs/ioctl.c:860 [inline]
>  __x64_sys_ioctl+0x193/0x200 fs/ioctl.c:860
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f1795321ae9
> Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007f1792855188 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007f17954350e0 RCX: 00007f1795321ae9
> RDX: 0000000020000000 RSI: 00000000000089a2 RDI: 0000000000000004
> RBP: 00007f179537bf25 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
> R13: 00007ffe1c04ac0f R14: 00007f1792855300 R15: 0000000000022000
>  </TASK>
> Modules linked in:
> ---[ end trace 2e97ffe52c6a9452 ]---
> RIP: 0010:mark_lock+0x23/0x17b0 kernel/locking/lockdep.c:4554
> Code: 84 00 00 00 00 00 90 41 57 41 56 41 55 41 54 41 89 d4 48 ba 00 00 00 00 00 fc ff df 55 53 48 81 ec 18 01 00 00 48 8d 5c 24 38 <48> 89 3c 24 48 c7 44 24 38 b3 8a b5 41 48 c1 eb 03 48 c7 44 24 40
> RSP: 0018:ffffc9000d447fd8 EFLAGS: 00010096
> RAX: 0000000000000000 RBX: ffffc9000d448010 RCX: ffffffff815c419d
> RDX: dffffc0000000000 RSI: ffff88803a27e1d8 RDI: ffff88803a27d700
> RBP: 0000000000000002 R08: 0000000000000000 R09: ffffffff8fd38a07
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000008
> R13: ffff88803a27d700 R14: ffff88803a27e160 R15: dffffc0000000000
> FS:  00007f1792855700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: ffffc9000d447fc8 CR3: 000000017af51000 CR4: 0000000000350ef0
> ----------------
> Code disassembly (best guess):
>    0:   84 00                   test   %al,(%rax)
>    2:   00 00                   add    %al,(%rax)
>    4:   00 00                   add    %al,(%rax)
>    6:   90                      nop
>    7:   41 57                   push   %r15
>    9:   41 56                   push   %r14
>    b:   41 55                   push   %r13
>    d:   41 54                   push   %r12
>    f:   41 89 d4                mov    %edx,%r12d
>   12:   48 ba 00 00 00 00 00    movabs $0xdffffc0000000000,%rdx
>   19:   fc ff df
>   1c:   55                      push   %rbp
>   1d:   53                      push   %rbx
>   1e:   48 81 ec 18 01 00 00    sub    $0x118,%rsp
>   25:   48 8d 5c 24 38          lea    0x38(%rsp),%rbx
> * 2a:   48 89 3c 24             mov    %rdi,(%rsp) <-- trapping instruction
>   2e:   48 c7 44 24 38 b3 8a    movq   $0x41b58ab3,0x38(%rsp)
>   35:   b5 41
>   37:   48 c1 eb 03             shr    $0x3,%rbx
>   3b:   48                      rex.W
>   3c:   c7                      .byte 0xc7
>   3d:   44 24 40                rex.R and $0x40,%al
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/000000000000b48a3d05d03040f8%40google.com.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D10F16A06D
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 09:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B7C9203BB;
	Mon, 24 Feb 2020 08:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BaMdqWYDHucn; Mon, 24 Feb 2020 08:51:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 91F3A204D7;
	Mon, 24 Feb 2020 08:51:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 715C2C0177;
	Mon, 24 Feb 2020 08:51:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1570C0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 08:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AFF09848A5
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 08:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GwDppHr9Roqx for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 08:51:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1342852DB
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 08:51:06 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id s23so6205797lfs.10
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 00:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=KLWEf14fFkiQAjlDedJDYa2UcfNURB0g7krL0meTUbY=;
 b=gzMC2BejdKHUp/THkOy7ecLea/x9cfiIXv2cuEQWQIWQbwdJhV7X1cV4xV1XVRjjg9
 VPsfUx2x8QmS5H2g4Xwfi9mkzOuGZrfGDqgAQ5bN6JFztLjlVkP4beFFNJ+sLoRocbf5
 2iR3NwWkZPMFKVb+6KiEf/FYhpGQH9j3q8sbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KLWEf14fFkiQAjlDedJDYa2UcfNURB0g7krL0meTUbY=;
 b=mzfeJCagaDegro17xgxl3zVfS7DJ/y06Q4Mk0yNFpw/OSpISvJ/ydGFlLQWujHAn/M
 pMZ7uA8NDtu79Ia0/RE1kZVOIdenOiQACyuu9WOdc6sd88J3VIkt9Rz36qTpbqAly2Gg
 AilbpI6Rbo1T4f9MMZL3EgHj22r1g/SnMFdM7xlLgoX40fns9IXQkhTNmRTU5Mm8G/IX
 WTaxVLdLqtkEO1tGVQbKhAIVjwA8gdB8kq+nqmlDAdEDMqKUl5mg4KKad464oIPXcLqn
 bGbzvaJnYPL2OR2bsp/o1YkGALv1Zl3wQQgpHDfSGiORE0heIhGrXkmQof4ga1y30zkX
 jaLg==
X-Gm-Message-State: APjAAAUshdGAjlRoS7X6c/tFaNH+AAdg8KuTjBUkrnpscn/I0tmAQjb7
 Pdn4fJ2LhX22YdCYyfB6TZHJWA==
X-Google-Smtp-Source: APXvYqwK+yToU1DJvzqt0Pk1T2d1ecS//2QZbAqw9aCBwel5o5Hh+/G++XEWNRhDYM+zepg6eAiNwg==
X-Received: by 2002:a05:6512:3189:: with SMTP id
 i9mr8116203lfe.60.1582534264507; 
 Mon, 24 Feb 2020 00:51:04 -0800 (PST)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id o20sm3626926lfg.45.2020.02.24.00.51.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 00:51:03 -0800 (PST)
To: syzbot <syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, glider@google.com,
 kuba@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, syzkaller-bugs@googlegroups.com
References: <000000000000c0910e059f4e4a82@google.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <08a2e28b-fcf5-b26c-da75-97df67f51c7c@cumulusnetworks.com>
Date: Mon, 24 Feb 2020 10:51:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <000000000000c0910e059f4e4a82@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] KMSAN: uninit-value in br_dev_xmit
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

On 24/02/2020 10:38, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    8bbbc5cf kmsan: don't compile memmove
> git tree:       https://github.com/google/kmsan.git master
> console output: https://syzkaller.appspot.com/x/log.txt?x=14d9a3d9e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=cd0e9a6b0e555cc3
> dashboard link: https://syzkaller.appspot.com/bug?extid=18c8b623c66fc198c493
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> userspace arch: i386
> 
> Unfortunately, I don't have any reproducer for this crash yet.
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com
> 

br_allowed_ingress() can call skb_vlan_untag() which does pskb_may_pull() and so
the cached eth header can become invalid.
I'll prepare a fix.

Cheers,
 Nik

> =====================================================
> BUG: KMSAN: uninit-value in br_dev_xmit+0x99a/0x1730 net/bridge/br_device.c:64
> CPU: 0 PID: 14704 Comm: syz-executor.1 Not tainted 5.6.0-rc2-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x1c9/0x220 lib/dump_stack.c:118
>  kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:118
>  __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
>  br_dev_xmit+0x99a/0x1730 net/bridge/br_device.c:64
>  __netdev_start_xmit include/linux/netdevice.h:4524 [inline]
>  netdev_start_xmit include/linux/netdevice.h:4538 [inline]
>  xmit_one net/core/dev.c:3470 [inline]
>  dev_hard_start_xmit+0x531/0xab0 net/core/dev.c:3486
>  __dev_queue_xmit+0x37de/0x4220 net/core/dev.c:4063
>  dev_queue_xmit+0x4b/0x60 net/core/dev.c:4096
>  __bpf_tx_skb net/core/filter.c:2061 [inline]
>  __bpf_redirect_common net/core/filter.c:2100 [inline]
>  __bpf_redirect+0x11d5/0x1440 net/core/filter.c:2107
>  ____bpf_clone_redirect net/core/filter.c:2140 [inline]
>  bpf_clone_redirect+0x466/0x620 net/core/filter.c:2112
>  bpf_prog_a481c1313990ee2c+0x5e0/0x1000
>  bpf_dispatcher_nopfunc include/linux/bpf.h:521 [inline]
>  bpf_test_run+0x60c/0xe50 net/bpf/test_run.c:48
>  bpf_prog_test_run_skb+0xcab/0x24a0 net/bpf/test_run.c:388
>  bpf_prog_test_run kernel/bpf/syscall.c:2572 [inline]
>  __do_sys_bpf+0xa684/0x13510 kernel/bpf/syscall.c:3414
>  __se_sys_bpf kernel/bpf/syscall.c:3355 [inline]
>  __ia32_sys_bpf+0xdb/0x120 kernel/bpf/syscall.c:3355
>  do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
>  do_fast_syscall_32+0x3c7/0x6e0 arch/x86/entry/common.c:410
>  entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139
> RIP: 0023:0xf7f79d99
> Code: 90 e8 0b 00 00 00 f3 90 0f ae e8 eb f9 8d 74 26 00 89 3c 24 c3 90 90 90 90 90 90 90 90 90 90 90 90 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
> RSP: 002b:00000000f5d740cc EFLAGS: 00000296 ORIG_RAX: 0000000000000165
> RAX: ffffffffffffffda RBX: 000000000000000a RCX: 0000000020000140
> RDX: 0000000000000040 RSI: 0000000000000000 RDI: 0000000000000000
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> 
> Uninit was created at:
>  kmsan_save_stack_with_flags mm/kmsan/kmsan.c:144 [inline]
>  kmsan_internal_poison_shadow+0x66/0xd0 mm/kmsan/kmsan.c:127
>  kmsan_slab_alloc+0x8a/0xe0 mm/kmsan/kmsan_hooks.c:82
>  slab_alloc_node mm/slub.c:2793 [inline]
>  __kmalloc_node_track_caller+0xb40/0x1200 mm/slub.c:4401
>  __kmalloc_reserve net/core/skbuff.c:142 [inline]
>  pskb_expand_head+0x20b/0x1b00 net/core/skbuff.c:1629
>  skb_ensure_writable+0x3ea/0x490 net/core/skbuff.c:5453
>  __bpf_try_make_writable net/core/filter.c:1635 [inline]
>  bpf_try_make_writable net/core/filter.c:1641 [inline]
>  bpf_try_make_head_writable net/core/filter.c:1649 [inline]
>  ____bpf_clone_redirect net/core/filter.c:2134 [inline]
>  bpf_clone_redirect+0x251/0x620 net/core/filter.c:2112
>  bpf_prog_a481c1313990ee2c+0x5e0/0x1000
>  bpf_dispatcher_nopfunc include/linux/bpf.h:521 [inline]
>  bpf_test_run+0x60c/0xe50 net/bpf/test_run.c:48
>  bpf_prog_test_run_skb+0xcab/0x24a0 net/bpf/test_run.c:388
>  bpf_prog_test_run kernel/bpf/syscall.c:2572 [inline]
>  __do_sys_bpf+0xa684/0x13510 kernel/bpf/syscall.c:3414
>  __se_sys_bpf kernel/bpf/syscall.c:3355 [inline]
>  __ia32_sys_bpf+0xdb/0x120 kernel/bpf/syscall.c:3355
>  do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
>  do_fast_syscall_32+0x3c7/0x6e0 arch/x86/entry/common.c:410
>  entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139
> =====================================================
> 
> 
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> 


Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8265107E
	for <lists.bridge@lfdr.de>; Mon, 24 Jun 2019 17:30:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 114A4D89;
	Mon, 24 Jun 2019 15:30:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61ED4C84
	for <bridge@lists.linux-foundation.org>;
	Wed, 19 Jun 2019 15:47:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
	[209.85.166.71])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA9A3E6
	for <bridge@lists.linux-foundation.org>;
	Wed, 19 Jun 2019 15:47:08 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id i133so21744832ioa.11
	for <bridge@lists.linux-foundation.org>;
	Wed, 19 Jun 2019 08:47:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=hHZuSqbZ2UJO3F7wlo6ZhKddlrieBiNbmp48U00E8fw=;
	b=scydriD8VaNJ0wKLM7Ux+7fJ/76z41Ae/IXjK5HD4V5D8ahw+JLNTivrmFcxMC3O4A
	yGetKhC2ElvgTSG1m/K0kLB3Kf+Yr6DR4L08rS/DsfEwkwJGXFMnqqQku++oLiL7cW9H
	fT5ubTaneeB469MSCB5Wa2rnM64ILiLkbsbJJLrcxC2+s+gmxn2TUsCJRTEkyhfgoiGX
	h/34QqU4osj1ZZMUB6ds+jX3yX6O7ueY4m5Wr//VLEzfT5cc8K9H8JDMtpN5OlBVS24c
	TlLX0hymuJIdXSSkh8wZlIRA3qZUpNybv6c0N7kl/kWMHXUM73SjTEqyjaf9rHk8e3n2
	WdDA==
X-Gm-Message-State: APjAAAWspGzuV/u1gDr7YKSDbVI+wVQ/gYdETjhc0vsN3w+PbzvxiYiC
	DXwtCsy19DTWC6VFcJRbwCKhEcSd+30e4lmzOSGSri+2T19K
X-Google-Smtp-Source: APXvYqwhGg/njNrbsjgF+X1iruI5O5ZpW2m9d6clI7bswQPMf3AcspTNW93k7VEime5skQC4mXueAFfu0Wb6Z06/DJQ1OjXATx0T
MIME-Version: 1.0
X-Received: by 2002:a02:22c6:: with SMTP id o189mr8090464jao.35.1560959227952; 
	Wed, 19 Jun 2019 08:47:07 -0700 (PDT)
Date: Wed, 19 Jun 2019 08:47:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004a8875058baf24f7@google.com>
From: syzbot <syzbot+43a3fa52c0d9c5c94f41@syzkaller.appspotmail.com>
To: a.hajda@samsung.com, airlied@linux.ie, airlied@redhat.com, 
	alexander.deucher@amd.com, bridge@lists.linux-foundation.org, 
	christian.koenig@amd.com, coreteam@netfilter.org, daniel@ffwll.ch, 
	davem@davemloft.net, dri-devel@lists.freedesktop.org, 
	enric.balletbo@collabora.com, fw@strlen.de, harry.wentland@amd.com, 
	heiko@sntech.de, intel-gfx@lists.freedesktop.org,
	jani.nikula@linux.intel.com, 
	jerry.zhang@amd.com, jonas@kwiboo.se, joonas.lahtinen@linux.intel.com, 
	kadlec@netfilter.org, laurent.pinchart@ideasonboard.com, 
	linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, 
	marc.zyngier@arm.com, maxime.ripard@bootlin.com, narmstrong@baylibre.com,
	netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	nikolay@cumulusnetworks.com, pablo@netfilter.org, 
	patrik.r.jakobsson@gmail.com, rodrigo.vivi@intel.com, 
	roopa@cumulusnetworks.com, sam@ravnborg.org, sean@poorly.run, 
	sfr@canb.auug.org.au, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_00,FROM_LOCAL_HEX,
	HEXHASH_WORD, RCVD_IN_DNSWL_NONE,
	SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 24 Jun 2019 15:30:30 +0000
Subject: [Bridge] KASAN: use-after-free Read in brnf_exit_net
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

Hello,

syzbot found the following crash on:

HEAD commit:    1c6b4050 Add linux-next specific files for 20190618
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10126209a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3c614278993de456
dashboard link: https://syzkaller.appspot.com/bug?extid=43a3fa52c0d9c5c94f41
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16291176a00000

The bug was bisected to:

commit b38d37a08ec4b19a9b9ec3a1ff5566781fcae1f1
Author: Stephen Rothwell <sfr@canb.auug.org.au>
Date:   Tue Jun 18 04:19:55 2019 +0000

     Merge remote-tracking branch 'drm/drm-next'

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=146f914ea00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=166f914ea00000
console output: https://syzkaller.appspot.com/x/log.txt?x=126f914ea00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+43a3fa52c0d9c5c94f41@syzkaller.appspotmail.com
Fixes: b38d37a08ec4 ("Merge remote-tracking branch 'drm/drm-next'")

==================================================================
BUG: KASAN: use-after-free in br_netfilter_sysctl_exit_net  
net/bridge/br_netfilter_hooks.c:1121 [inline]
BUG: KASAN: use-after-free in brnf_exit_net+0x38c/0x3a0  
net/bridge/br_netfilter_hooks.c:1141
Read of size 8 at addr ffff8880a4078d60 by task kworker/u4:4/8749

CPU: 0 PID: 8749 Comm: kworker/u4:4 Not tainted 5.2.0-rc5-next-20190618 #17
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: netns cleanup_net
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  print_address_description.cold+0xd4/0x306 mm/kasan/report.c:351
  __kasan_report.cold+0x1b/0x36 mm/kasan/report.c:482
  kasan_report+0x12/0x20 mm/kasan/common.c:614
  __asan_report_load8_noabort+0x14/0x20 mm/kasan/generic_report.c:132
  br_netfilter_sysctl_exit_net net/bridge/br_netfilter_hooks.c:1121 [inline]
  brnf_exit_net+0x38c/0x3a0 net/bridge/br_netfilter_hooks.c:1141
  ops_exit_list.isra.0+0xaa/0x150 net/core/net_namespace.c:154
  cleanup_net+0x3fb/0x960 net/core/net_namespace.c:553
  process_one_work+0x989/0x1790 kernel/workqueue.c:2269
  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
  kthread+0x354/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

Allocated by task 11374:
  save_stack+0x23/0x90 mm/kasan/common.c:71
  set_track mm/kasan/common.c:79 [inline]
  __kasan_kmalloc mm/kasan/common.c:489 [inline]
  __kasan_kmalloc.constprop.0+0xcf/0xe0 mm/kasan/common.c:462
  kasan_kmalloc+0x9/0x10 mm/kasan/common.c:503
  __do_kmalloc mm/slab.c:3645 [inline]
  __kmalloc+0x15c/0x740 mm/slab.c:3654
  kmalloc include/linux/slab.h:552 [inline]
  kzalloc include/linux/slab.h:743 [inline]
  __register_sysctl_table+0xc7/0xef0 fs/proc/proc_sysctl.c:1327
  register_net_sysctl+0x29/0x30 net/sysctl_net.c:121
  br_netfilter_sysctl_init_net net/bridge/br_netfilter_hooks.c:1105 [inline]
  brnf_init_net+0x379/0x6a0 net/bridge/br_netfilter_hooks.c:1126
  ops_init+0xb3/0x410 net/core/net_namespace.c:130
  setup_net+0x2d3/0x740 net/core/net_namespace.c:316
  copy_net_ns+0x1df/0x340 net/core/net_namespace.c:439
  create_new_namespaces+0x400/0x7b0 kernel/nsproxy.c:103
  unshare_nsproxy_namespaces+0xc2/0x200 kernel/nsproxy.c:202
  ksys_unshare+0x444/0x980 kernel/fork.c:2822
  __do_sys_unshare kernel/fork.c:2890 [inline]
  __se_sys_unshare kernel/fork.c:2888 [inline]
  __x64_sys_unshare+0x31/0x40 kernel/fork.c:2888
  do_syscall_64+0xfd/0x680 arch/x86/entry/common.c:301
  entry_SYSCALL_64_after_hwframe+0x49/0xbe

Freed by task 9:
  save_stack+0x23/0x90 mm/kasan/common.c:71
  set_track mm/kasan/common.c:79 [inline]
  __kasan_slab_free+0x102/0x150 mm/kasan/common.c:451
  kasan_slab_free+0xe/0x10 mm/kasan/common.c:459
  __cache_free mm/slab.c:3417 [inline]
  kfree+0x10a/0x2c0 mm/slab.c:3746
  __rcu_reclaim kernel/rcu/rcu.h:215 [inline]
  rcu_do_batch kernel/rcu/tree.c:2092 [inline]
  invoke_rcu_callbacks kernel/rcu/tree.c:2310 [inline]
  rcu_core+0xcc7/0x1500 kernel/rcu/tree.c:2291
  __do_softirq+0x25c/0x94c kernel/softirq.c:292

The buggy address belongs to the object at ffff8880a4078d40
  which belongs to the cache kmalloc-512 of size 512
The buggy address is located 32 bytes inside of
  512-byte region [ffff8880a4078d40, ffff8880a4078f40)
The buggy address belongs to the page:
page:ffffea0002901e00 refcount:1 mapcount:0 mapping:ffff8880aa400a80  
index:0xffff8880a40785c0
flags: 0x1fffc0000000200(slab)
raw: 01fffc0000000200 ffffea0001d636c8 ffffea0001b07308 ffff8880aa400a80
raw: ffff8880a40785c0 ffff8880a40780c0 0000000100000004 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
  ffff8880a4078c00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
  ffff8880a4078c80: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc
> ffff8880a4078d00: fc fc fc fc fc fc fc fc fb fb fb fb fb fb fb fb
                                                        ^
  ffff8880a4078d80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
  ffff8880a4078e00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

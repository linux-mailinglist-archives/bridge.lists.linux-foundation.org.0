Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6011969DB9B
	for <lists.bridge@lfdr.de>; Tue, 21 Feb 2023 09:01:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA91B824DF;
	Tue, 21 Feb 2023 08:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA91B824DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbSVBUxJ1gkc; Tue, 21 Feb 2023 08:01:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 31B7A82468;
	Tue, 21 Feb 2023 08:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31B7A82468
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2FDE4C007E;
	Tue, 21 Feb 2023 08:01:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 042C2C002B
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF0A6410B2
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF0A6410B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8JzgOXbGAxgz for <bridge@lists.linux-foundation.org>;
 Fri, 17 Feb 2023 17:35:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F48B40547
Received: from mail-il1-f205.google.com (mail-il1-f205.google.com
 [209.85.166.205])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F48B40547
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 17:35:50 +0000 (UTC)
Received: by mail-il1-f205.google.com with SMTP id
 r14-20020a922a0e000000b0031530fae00fso704254ile.15
 for <bridge@lists.linux-foundation.org>; Fri, 17 Feb 2023 09:35:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MEfTQWD+Xd9NO9abt6Gu9FLHicfehK5yJjw31ImtgaU=;
 b=3U6D7MqMic0sjL7b3ThpQQx5klEYEdbKgJnbF0dA6Hf76WfsVcidyzCNgGfjAlkxgP
 PkbhqV8TuDhC7ZSCDRleTDLdrenXq/WJ9CryvAqPNR/i4X5C3M/igepll6wFt5LS5jMg
 KI8Pzxywnnn4yafKitZfBMQrkI9L73cMsw6e9Pr3GPRR9gpTI6WK+Q2O7PzZ2izpUuCA
 5Xpesv3Efphe/nSNyYhOaRXbkgt+mYaGMQwPATUjaO7gBiUbbwfMWtzkeSZMYm27pJps
 FIxmCOoPTPPoHG5MqOB6D/TUx4xGoQfVKmIC7H2BMOguuqQkxCtUYi4cY5RgZqTNf6L8
 MEgw==
X-Gm-Message-State: AO0yUKUzBP521lXVTrkYINSzdnFjJX+QTzjHiuwLaHNqpruwq08itDZx
 l9be4F0pQiZu9Ny17DXD8X1lRGJ7Mr6NKUwrvFmERQN3rXVKTpS7BA==
X-Google-Smtp-Source: AK7set8tb2VWTHjWtZjW2lm8L7mdmsXsFIPQ3gizAf4gyMxNmT/l8Z72k6QNZsAclUlRTeGcVhlrkAY74b+j3ukma6SM1GqgHK0I
MIME-Version: 1.0
X-Received: by 2002:a05:6638:229a:b0:3c4:e84b:2a40 with SMTP id
 y26-20020a056638229a00b003c4e84b2a40mr637363jas.6.1676655349622; Fri, 17 Feb
 2023 09:35:49 -0800 (PST)
Date: Fri, 17 Feb 2023 09:35:49 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000866d0e05f4e8be87@google.com>
From: syzbot <syzbot+f61594de72d6705aea03@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, edumazet@google.com, fw@strlen.de, kadlec@netfilter.org, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pabeni@redhat.com, pablo@netfilter.org, 
 razor@blackwall.org, roopa@nvidia.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 21 Feb 2023 08:01:44 +0000
Subject: [Bridge] [syzbot] [bridge?] [coreteam?] KASAN:
	vmalloc-out-of-bounds Read in __ebt_unregister_table
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

HEAD commit:    3ac88fa4605e Merge tag 'net-6.2-final' of git://git.kernel..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=12986e58c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fe56f7d193926860
dashboard link: https://syzkaller.appspot.com/bug?extid=f61594de72d6705aea03
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14123acf480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143058d7480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/37b6278f1cdc/disk-3ac88fa4.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/0a0d5eb58ca1/vmlinux-3ac88fa4.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6c92dbf4b7ab/bzImage-3ac88fa4.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f61594de72d6705aea03@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: vmalloc-out-of-bounds in __ebt_unregister_table+0xc00/0xcd0 net/bridge/netfilter/ebtables.c:1168
Read of size 4 at addr ffffc90005425000 by task kworker/u4:4/74

CPU: 0 PID: 74 Comm: kworker/u4:4 Not tainted 6.2.0-rc8-syzkaller-00083-g3ac88fa4605e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
Workqueue: netns cleanup_net
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:306 [inline]
 print_report+0x15e/0x45d mm/kasan/report.c:417
 kasan_report+0xbf/0x1f0 mm/kasan/report.c:517
 __ebt_unregister_table+0xc00/0xcd0 net/bridge/netfilter/ebtables.c:1168
 ebt_unregister_table+0x35/0x40 net/bridge/netfilter/ebtables.c:1372
 ops_exit_list+0xb0/0x170 net/core/net_namespace.c:169
 cleanup_net+0x4ee/0xb10 net/core/net_namespace.c:613
 process_one_work+0x9bf/0x1710 kernel/workqueue.c:2289
 worker_thread+0x669/0x1090 kernel/workqueue.c:2436
 kthread+0x2e8/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>

Memory state around the buggy address:
 ffffc90005424f00: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
 ffffc90005424f80: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
>ffffc90005425000: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
                   ^
 ffffc90005425080: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
 ffffc90005425100: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

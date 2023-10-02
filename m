Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1877C03C0
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 421CE61450;
	Tue, 10 Oct 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 421CE61450
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRoeZLWhmMfr; Tue, 10 Oct 2023 18:53:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 480686144B;
	Tue, 10 Oct 2023 18:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 480686144B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 293BCC0DD8;
	Tue, 10 Oct 2023 18:53:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E003C0032
 for <bridge@lists.linux-foundation.org>; Mon,  2 Oct 2023 13:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CA158217D
 for <bridge@lists.linux-foundation.org>; Mon,  2 Oct 2023 13:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CA158217D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GFB6I64ihJqH for <bridge@lists.linux-foundation.org>;
 Mon,  2 Oct 2023 13:08:30 +0000 (UTC)
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 284DB82179
 for <bridge@lists.linux-foundation.org>; Mon,  2 Oct 2023 13:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 284DB82179
Received: by mail-oa1-f71.google.com with SMTP id
 586e51a60fabf-1d66b019a27so33853766fac.0
 for <bridge@lists.linux-foundation.org>; Mon, 02 Oct 2023 06:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696252109; x=1696856909;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rorPIP5j5NnvLe/VG3SBvJuviukORjr0ptic0PGw4zI=;
 b=bA5bzWIs8pLL932/4fdCC2rOFLWyFrrw0AOIdZNCGm5H07QEM+Plee3Tsj0zDAqUMf
 MqeYJepV9yKznKgEKCVoWtRamym+U1UDGwYi2uwpGhEtHJKz3r33cyuuBmXPtd3iXVRj
 WjkAc50127gyOcwVxCEp9hbXG5jIBIKPfbXuMtHF1iFJNTZnmg835WCQ2oLLw8WbM+b5
 EtNNERen+SCnZFsGcU8EECHp57vjw5Ye/QuYZpOGoE9MSTcSlwoaG+8C8Tip9Vpkicg+
 XrB8a2M3qGHGMT5SUsBMgy/rVRApxdo5RkiTc8y0f482BJaaXdfSJCp6hi3It5LwQK2J
 +qtA==
X-Gm-Message-State: AOJu0YzMl1NFRSsIj52A74kHknkajvtXqerIOc17Rs/ccyJ3gfiVoTfp
 TrzUtNUp4WK3K3Uh0QLczVPuOC9By5t6pS36zYWXPDPXadds
X-Google-Smtp-Source: AGHT+IH15olfXP89zOaUgPnZ+A3LWHTnmJnCU4ut1cZEZzpYg/G4sHkoNl3GWJ2A8/7WTnzttgIAQ3N4O8oSXKkeG9zcRAHK4fyE
MIME-Version: 1.0
X-Received: by 2002:a05:6870:5aad:b0:1c0:e7d3:3b2d with SMTP id
 dt45-20020a0568705aad00b001c0e7d33b2dmr4872328oab.7.1696252109232; Mon, 02
 Oct 2023 06:08:29 -0700 (PDT)
Date: Mon, 02 Oct 2023 06:08:29 -0700
In-Reply-To: <000000000000c4c9d405f2643e01@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006ba21a0606bb78f9@google.com>
From: syzbot <syzbot+d7b7f1412c02134efa6d@syzkaller.appspotmail.com>
To: amcohen@nvidia.com, axboe@fb.com, bridge@lists.linux-foundation.org, 
 davem@davemloft.net, dsahern@kernel.org, edumazet@google.com, hch@lst.de, 
 hdanton@sina.com, idosch@nvidia.com, ivecera@redhat.com, jiri@resnulli.us, 
 kbusch@kernel.org, kuba@kernel.org, lengchao@huawei.com, 
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, 
 llvm@lists.linux.dev, nathan@kernel.org, ndesaulniers@google.com, 
 netdev@vger.kernel.org, pabeni@redhat.com, razor@blackwall.org, 
 roopa@nvidia.com, sagi@grimberg.me, syzkaller-bugs@googlegroups.com, 
 trix@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 10 Oct 2023 18:53:02 +0000
Subject: Re: [Bridge] [syzbot] [bridge?] possible deadlock in
	br_multicast_rcv (3)
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

syzbot has bisected this issue to:

commit 0ae3eb7b4611207e140e9772398b9f88b72d6839
Author: Amit Cohen <amcohen@nvidia.com>
Date:   Mon Feb 1 19:47:49 2021 +0000

    netdevsim: fib: Perform the route programming in a non-atomic context

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13afdae6680000
start commit:   2faac9a98f01 Merge tag 'keys-fixes-20230321' of git://git...
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=106fdae6680000
console output: https://syzkaller.appspot.com/x/log.txt?x=17afdae6680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aaa4b45720ca0519
dashboard link: https://syzkaller.appspot.com/bug?extid=d7b7f1412c02134efa6d
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14aea34ec80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13001e91c80000

Reported-by: syzbot+d7b7f1412c02134efa6d@syzkaller.appspotmail.com
Fixes: 0ae3eb7b4611 ("netdevsim: fib: Perform the route programming in a non-atomic context")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

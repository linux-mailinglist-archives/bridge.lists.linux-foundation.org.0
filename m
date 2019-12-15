Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8890D126671
	for <lists.bridge@lfdr.de>; Thu, 19 Dec 2019 17:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0995F86FCC;
	Thu, 19 Dec 2019 16:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4iWdpTWswN5; Thu, 19 Dec 2019 16:12:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51A6C86FD6;
	Thu, 19 Dec 2019 16:12:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FF66C077D;
	Thu, 19 Dec 2019 16:12:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D63DC077D
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 06:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8568F8638F
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 06:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EO0vEK9xYcgy for <bridge@lists.linux-foundation.org>;
 Sun, 15 Dec 2019 06:31:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5A7E85A76
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 06:31:01 +0000 (UTC)
Received: by mail-il1-f199.google.com with SMTP id 12so3526548iln.23
 for <bridge@lists.linux-foundation.org>; Sat, 14 Dec 2019 22:31:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=uPjooTBgtNtcDU16+HUh9j8DUTREFvIUsjeh8i5zb8c=;
 b=shn31KEU/wVNXk4RStFGw1+dzAzP+YxDRrwdW0QTa0P7fGqiuJrWRXydMGUszMC5vf
 evec1JYMMZIwxKfGq+qXEOy0PjGD7kui99zUyTV1Au4SbSfR74JknYNNT30GOmnlim68
 wRiHeRr1wWPOuvu8jeQZ2ANq5rY3dSZM5I5wABBPM1QXkjwwfVAbXQkfgUQo6hpa+vn2
 oRnB2yrBKr0PDbdo0hf27WBk50f+ONZEuNxljWzeuRdngKpztYuUyj1AO1bdR7Acfxzf
 J7U8KvgryFNwOGIZvbcTyhzc68OeN38oY3lDFNQ0Eu1WugyBYanN+P/kgb2CCzAEtQn9
 lKLg==
X-Gm-Message-State: APjAAAVGIFobGP2aX2OteXIh2WrjJogNnNbxxD6eG229W9kozWKHWtcf
 /sLKe585ztskjIbZWKOUXgSGG8uPOmXfoxe7FEgxnj0sUMvV
X-Google-Smtp-Source: APXvYqww0KZklP/HZPASxOh1ECBAek11I/mQkvDmtxWf0F+hizPdRYifxpJhSeQt7ZuoAXuoj1TH6U4YiqD2qQs428uaZ4+Q3wAV
MIME-Version: 1.0
X-Received: by 2002:a6b:16c5:: with SMTP id 188mr13807757iow.195.1576391461017; 
 Sat, 14 Dec 2019 22:31:01 -0800 (PST)
Date: Sat, 14 Dec 2019 22:31:01 -0800
In-Reply-To: <000000000000cd9e600599b051e5@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000f9d220599b83d18@google.com>
From: syzbot <syzbot+f68108fed972453a0ad4@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, aryabinin@virtuozzo.com, 
 bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, dja@axtens.net, dvyukov@google.com, fw@strlen.de, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@cumulusnetworks.com, 
 pablo@netfilter.org, roopa@cumulusnetworks.com, 
 syzkaller-bugs@googlegroups.com, torvalds@linux-foundation.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Thu, 19 Dec 2019 16:12:40 +0000
Subject: Re: [Bridge] KASAN: vmalloc-out-of-bounds Read in
	compat_copy_entries
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

syzbot has bisected this bug to:

commit 0609ae011deb41c9629b7f5fd626dfa1ac9d16b0
Author: Daniel Axtens <dja@axtens.net>
Date:   Sun Dec 1 01:55:00 2019 +0000

     x86/kasan: support KASAN_VMALLOC

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=166d43dee00000
start commit:   e31736d9 Merge tag 'nios2-v5.5-rc2' of git://git.kernel.or..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=156d43dee00000
console output: https://syzkaller.appspot.com/x/log.txt?x=116d43dee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=79f79de2a27d3e3d
dashboard link: https://syzkaller.appspot.com/bug?extid=f68108fed972453a0ad4
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16bc5946e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17302361e00000

Reported-by: syzbot+f68108fed972453a0ad4@syzkaller.appspotmail.com
Fixes: 0609ae011deb ("x86/kasan: support KASAN_VMALLOC")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

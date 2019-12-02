Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC33110214
	for <lists.bridge@lfdr.de>; Tue,  3 Dec 2019 17:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7092687E63;
	Tue,  3 Dec 2019 16:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gszooBiEqVCb; Tue,  3 Dec 2019 16:23:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 209F887E75;
	Tue,  3 Dec 2019 16:23:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4F91C1798;
	Tue,  3 Dec 2019 16:23:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9536C087F
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 04:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 999028762E
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 04:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vTPpMCcpN8a7 for <bridge@lists.linux-foundation.org>;
 Mon,  2 Dec 2019 04:07:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16E4B860BC
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 04:07:02 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id z10so15139114ilm.2
 for <bridge@lists.linux-foundation.org>; Sun, 01 Dec 2019 20:07:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=oWsENjm7d/+QABjuPHBYSJPPMCuN6XI9dZYPsoGDEJo=;
 b=WlfC70teP7yxOfFBb7LZQT5wCdkDiv2P5IMDSRCKbQfRAb1Th0vUAFXxGc52D/79o9
 FKMLlZt9W3n0tWuo7cd3B9DkZHEGfGvZgDhiYRPd7nVg27y+mhwq/WIt4IukQ71z9r3T
 6Vfcwas2mTjWwe4z1hroXYL9l9SC1/HHz0UDyWD//yPTIORyIsIHJGiy2DPXrRNoEc8U
 Y+bEQFcNgMBN55A/+uePVEwVtitPhvt8NVPUkjKEc8AswROao0/D8I+0Z7eHgtwgzNrM
 2UDJkIBkJ7SVzWaCApcD9Jrm6xUYuemd++CJgL1xD/CLNA3OMrKC4YmLeFpNvKYWqGu6
 vdDg==
X-Gm-Message-State: APjAAAWgfZluk0mJDrW79h539mfjSM65+PZGrLkT/5bi9oUyvZYYYTvG
 hw4sn8z6d6D17Xpp4Dby4/g5jjEdtiQ2qPir1LFbt3pImcf6
X-Google-Smtp-Source: APXvYqwbNau2iLq/cBIAuQInsyrPMPEuwnt2BDzeyB8yqBtnk0ZK4FLDDa7c3GeQTvUxRw7rZ0iE6vluQVplMVvE3Si4+oaVnUb7
MIME-Version: 1.0
X-Received: by 2002:a5d:8184:: with SMTP id u4mr50614802ion.155.1575259621372; 
 Sun, 01 Dec 2019 20:07:01 -0800 (PST)
Date: Sun, 01 Dec 2019 20:07:01 -0800
In-Reply-To: <000000000000c280ba05988b6242@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000293e9f0598b0b69d@google.com>
From: syzbot <syzbot+4925d60532bf4c399608@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, alex.aring@gmail.com, 
 allison@lohutok.net, andrew@lunn.ch, andy@greyhouse.net, ap420073@gmail.com, 
 aryabinin@virtuozzo.com, ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, christophe.leroy@c-s.fr, cleech@redhat.com, 
 daniel@iogearbox.net, davem@davemloft.net, dja@axtens.net, 
 dsa@cumulusnetworks.com, dvyukov@google.com, edumazet@google.com, 
 f.fainelli@gmail.com, fw@strlen.de, glider@google.com, gor@linux.ibm.com, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, gvaradar@cisco.com, 
 haiyangz@microsoft.com, hdanton@sina.com, idosch@mellanox.com, info@metux.net, 
 j.vosburgh@gmail.com, j@w1.fi, jakub.kicinski@netronome.com, jhs@mojatatu.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 jwi@linux.ibm.com, kasan-dev@googlegroups.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, lariel@mellanox.com, 
 linmiaohe@huawei.com, linux-bluetooth@vger.kernel.org, 
 linux-hams@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Tue, 03 Dec 2019 16:23:37 +0000
Subject: Re: [Bridge] BUG: sleeping function called from invalid context in
	__alloc_pages_nodemask
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

commit ab92d68fc22f9afab480153bd82a20f6e2533769
Author: Taehee Yoo <ap420073@gmail.com>
Date:   Mon Oct 21 18:47:51 2019 +0000

     net: core: add generic lockdep keys

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15769712e00000
start commit:   419593da Add linux-next specific files for 20191129
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17769712e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13769712e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7c04b0959e75c206
dashboard link: https://syzkaller.appspot.com/bug?extid=4925d60532bf4c399608
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16148e9ce00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12a1f786e00000

Reported-by: syzbot+4925d60532bf4c399608@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

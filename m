Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A722A14448C
	for <lists.bridge@lfdr.de>; Tue, 21 Jan 2020 19:48:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D4E02035D;
	Tue, 21 Jan 2020 18:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y858PC4TmFgQ; Tue, 21 Jan 2020 18:48:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0458D20514;
	Tue, 21 Jan 2020 18:48:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD81CC0174;
	Tue, 21 Jan 2020 18:48:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 166F7C0174
 for <bridge@lists.linux-foundation.org>; Sun, 19 Jan 2020 20:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F081D84483
 for <bridge@lists.linux-foundation.org>; Sun, 19 Jan 2020 20:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8+LYyxik8tG1 for <bridge@lists.linux-foundation.org>;
 Sun, 19 Jan 2020 20:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F27384442
 for <bridge@lists.linux-foundation.org>; Sun, 19 Jan 2020 20:21:01 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id x69so23617950ill.14
 for <bridge@lists.linux-foundation.org>; Sun, 19 Jan 2020 12:21:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=tB8tVCfxWFIVfqWEsKuHgi0liSe9R1RZ+UBErAfoDaU=;
 b=WqwieOfRL5qucLTT2uXb1W6b1gn/NvEBM0XJVxNfJi6yOLv3YOgWuOMIw14icqpyDs
 iNLIuDv5w0Y+0CCt3LUjC5HDkNjx6eSKk07lOpV3YcaDhQiAsarYT7t6L5Dc3XPg2lcq
 SagE9T+iZFKNwbhoV+NHOLaAxPSVWvloif2NEIpxk7x00oblmnUDLfQZu83/O4AkwpEa
 PTSRvAt+eRPyh2hWaJ4zidIc38/BI9LUJ+03Z723RHkJ57pwqf5nnsWMEm+u4sMGLvAO
 obC/Rn4englyfV5lSms+cnbQ51DhXMyeE6UXZUlBV6EwjKxuM4Vok/hkKFT/VyjExhP/
 UeaA==
X-Gm-Message-State: APjAAAVvOinJRApRlokayF6hBZ+nuRnPf5rMD50yK6n0u5s0F8eyr/bR
 YajwJB26lbvLL9tUATNkllVGrrK49mDo/xS9kjIX5PlLCdb6
X-Google-Smtp-Source: APXvYqyBW0ANY5otx8x2mkJHYLCBShYafFG9L0jcSxJr3/w8Z3m4XgrA+Nba0kwQlcnkDJsAXjzzdqX7oGV/luxPfoRNInuKbPwk
MIME-Version: 1.0
X-Received: by 2002:a6b:b74a:: with SMTP id h71mr15932229iof.212.1579465260652; 
 Sun, 19 Jan 2020 12:21:00 -0800 (PST)
Date: Sun, 19 Jan 2020 12:21:00 -0800
In-Reply-To: <0000000000006d7b1e059c7db653@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cbfd34059c83e917@google.com>
From: syzbot <syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 nikolay@cumulusnetworks.com, pablo@netfilter.org, roopa@cumulusnetworks.com, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 21 Jan 2020 18:48:48 +0000
Subject: Re: [Bridge] KASAN: use-after-free Read in bitmap_ip_ext_cleanup
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

commit 3d26eb8ad1e9b906433903ce05f775cf038e747f
Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date:   Tue Jul 2 12:00:20 2019 +0000

    net: bridge: don't cache ether dest pointer on input

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17bb1cc9e00000
start commit:   9aaa2949 Merge branch '1GbE' of git://git.kernel.org/pub/s..
git tree:       net-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=147b1cc9e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=107b1cc9e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=66d8660c57ff3c98
dashboard link: https://syzkaller.appspot.com/bug?extid=b554d01b6c7870b17da2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15db12a5e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15316faee00000

Reported-by: syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com
Fixes: 3d26eb8ad1e9 ("net: bridge: don't cache ether dest pointer on input")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

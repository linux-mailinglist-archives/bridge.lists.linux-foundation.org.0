Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41E13163E
	for <lists.bridge@lfdr.de>; Mon,  6 Jan 2020 17:41:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ED4086D9A;
	Mon,  6 Jan 2020 16:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ip44+PGMgfLU; Mon,  6 Jan 2020 16:41:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 061ED86D72;
	Mon,  6 Jan 2020 16:41:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0C00C0881;
	Mon,  6 Jan 2020 16:41:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9A51BC0881
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jan 2020 22:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9221386747
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jan 2020 22:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ie3SFVAVJZN6 for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jan 2020 22:58:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 67D8D86542
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jan 2020 22:58:01 +0000 (UTC)
Received: by mail-il1-f198.google.com with SMTP id h18so27148982ilc.2
 for <bridge@lists.linux-foundation.org>; Sun, 05 Jan 2020 14:58:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=MybccZLowdSuY610EZVsc1I89suuz7NXH7uvIv0mFvY=;
 b=gsVjcj47aqLg/YMpdJ8W6HHE1/jyzuZe81QTfJslm4ZdbEDJ91XHCyAjUSfff2FcQ1
 fRb4+Gpc3a2/enHbkWZZcRXsJdJ8QQaCSmSn7Z01l9uqPuPcIF7kv5QeoqQFkxGhcqNQ
 NOeb4XpsmpvKHC7ogb/cMPXBXkesc+QquaO9F4H16pZF2ZacwWO2aYExAi5rccaAO41g
 iAxy3As8gPYeuYxOIVP58NaQ7BVXr33YYKXIGIxXfklejUIAsygeWhExQsdGcfy0N5KF
 nj60YQS5U9u8c42EE0bV4qcO8mfUSyMqk1EaWI2gzyrqzahiQmaaPmpP5A1yfB28DNXb
 T6+w==
X-Gm-Message-State: APjAAAWcek+B0/ENW08Tr2V1uSEEffDMtqXb2dUniSp8v4XeF8n3wNiu
 ghI+rV6EGF9U5C0ekTEa2v7dcNosPRX4Ivd/NyzY2UB+cMf1
X-Google-Smtp-Source: APXvYqwI1kaOaU+6OhN9mHkSBgJLPiiG9E2oMRL3MMauj8xdpOQ/nYJTOKJNppAbqi17MDpHQfb0GrThss7Ve4NxONRpCk4GrB8O
MIME-Version: 1.0
X-Received: by 2002:a92:3996:: with SMTP id h22mr81182568ilf.129.1578265080765; 
 Sun, 05 Jan 2020 14:58:00 -0800 (PST)
Date: Sun, 05 Jan 2020 14:58:00 -0800
In-Reply-To: <000000000000ab3f800598cec624@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000802598059b6c7989@google.com>
From: syzbot <syzbot+4ec99438ed7450da6272@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, ast@domdv.de, 
 b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org, 
 cleech@redhat.com, daniel@iogearbox.net, davem@davemloft.net, 
 dsa@cumulusnetworks.com, f.fainelli@gmail.com, fw@strlen.de, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, haiyangz@microsoft.com, 
 info@metux.net, j.vosburgh@gmail.com, j@w1.fi, jakub.kicinski@netronome.com, 
 jhs@mojatatu.com, jiri@resnulli.us, johan.hedberg@gmail.com, 
 johannes.berg@intel.com, jwi@linux.ibm.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, linmiaohe@huawei.com, 
 linux-bluetooth@vger.kernel.org, linux-hams@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org, 
 mareklindner@neomailbox.ch, mkubecek@suse.cz, mmanning@vyatta.att-mail.com, 
 netdev@vger.kernel.org, nikolay@cumulusnetworks.com, 
 oss-drivers@netronome.com, paulus@samba.org, ralf@linux-mips.org, 
 roopa@cumulusnetworks.com, sashal@kernel.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Mon, 06 Jan 2020 16:41:14 +0000
Subject: Re: [Bridge] WARNING: bad unlock balance in sch_direct_xmit
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15e88ec6e00000
start commit:   36487907 Merge branch 'akpm' (patches from Andrew)
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17e88ec6e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13e88ec6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f2f3ef188b7e16cf
dashboard link: https://syzkaller.appspot.com/bug?extid=4ec99438ed7450da6272
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1722c5c1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=167aee3ee00000

Reported-by: syzbot+4ec99438ed7450da6272@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

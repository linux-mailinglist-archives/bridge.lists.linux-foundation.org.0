Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D29A11D501
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 19:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED2EE88890;
	Thu, 12 Dec 2019 18:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocvCjkiH+aDn; Thu, 12 Dec 2019 18:14:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AEEA88876;
	Thu, 12 Dec 2019 18:14:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08282C0881;
	Thu, 12 Dec 2019 18:14:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1784CC0881
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 11:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF3FA88817
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 11:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bIxOBsSUU3tP for <bridge@lists.linux-foundation.org>;
 Thu, 12 Dec 2019 11:35:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A1AE87079
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 11:35:01 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id i8so1330419ioi.0
 for <bridge@lists.linux-foundation.org>; Thu, 12 Dec 2019 03:35:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=zFl6E7DmT67W68XqVzR2aCsqjcFpWexNUq+6/CXmVUk=;
 b=SUO5XLL9FE839cL+vBLzH1voFpsaWAPUOyDOOqj7Jr7wac961WuGCfkyHw1CQSCd3N
 QKWdvOK+EFGgpIGe78ZrZgnLypuLF+/O7iXyTjj6FwFnGkcuWVb2mrqcDv9z6HU+FjWx
 doWITNp75RC1kQxDdkNqOZelqA6OLR/vLDrOaklDLNWMShsCvcvFoBTT/vxbIEzR500h
 XKSnTNZJyZ72WpT/9s5b5Y8B5hTZD3hkAyNFPPwFVzemdgBu7OI1AL0HXX7RYc7uizHl
 Qwb/1O45cS/kYEiVe5W+7kIMysjE+wAPqqt3jH/AZSk0uMMTQiAehwlv3WbhzaekyXPH
 11Hw==
X-Gm-Message-State: APjAAAUzd+9L7V8CRSb+mEpTUC25ZzJxmipiq1KaNj+jwy6aFRbz5mJG
 vwhHtCv2vzEeOl12DHAXsTpJa+eX3dAkvfC3xH1/TiDvZ/En
X-Google-Smtp-Source: APXvYqx7tAF42179GqyQGzxmn7mnoZxL7LgtxR3PNlsI/lOpd2FmYULEa+vakNib69tHnoQvSF7+iHISpB+uiby7hAsvBYRTiqDc
MIME-Version: 1.0
X-Received: by 2002:a92:3b19:: with SMTP id i25mr7844146ila.85.1576150500982; 
 Thu, 12 Dec 2019 03:35:00 -0800 (PST)
Date: Thu, 12 Dec 2019 03:35:00 -0800
In-Reply-To: <000000000000b6b03205997b71cf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b949ee0599802274@google.com>
From: syzbot <syzbot+31043da7725b6ec210f1@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, ast@domdv.de, ast@kernel.org, 
 b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, 
 bridge@lists.linux-foundation.org, cleech@redhat.com, daniel@iogearbox.net, 
 davem@davemloft.net, dsa@cumulusnetworks.com, dsahern@gmail.com, 
 dvyukov@google.com, f.fainelli@gmail.com, fw@strlen.de, 
 gregkh@linuxfoundation.org, haiyangz@microsoft.com, hawk@kernel.org, 
 hdanton@sina.com, idosch@mellanox.com, info@metux.net, j.vosburgh@gmail.com, 
 j@w1.fi, jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 john.fastabend@gmail.com, john.hurley@netronome.com, jwi@linux.ibm.com, 
 kafai@fb.com, kstewart@linuxfoundation.org, kvalo@codeaurora.org, 
 kys@microsoft.com, linux-bluetooth@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-hams@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Thu, 12 Dec 2019 18:14:30 +0000
Subject: Re: [Bridge] BUG: corrupted list in __dentry_kill (2)
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d37cb6e00000
start commit:   938f49c8 Add linux-next specific files for 20191211
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11d37cb6e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16d37cb6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=96834c884ba7bb81
dashboard link: https://syzkaller.appspot.com/bug?extid=31043da7725b6ec210f1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12dc83dae00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16ac8396e00000

Reported-by: syzbot+31043da7725b6ec210f1@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

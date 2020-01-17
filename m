Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A63A9141896
	for <lists.bridge@lfdr.de>; Sat, 18 Jan 2020 18:05:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FDAE85B3B;
	Sat, 18 Jan 2020 17:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gjo7YH3MkWGk; Sat, 18 Jan 2020 17:05:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17DF385B11;
	Sat, 18 Jan 2020 17:05:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EC730C077D;
	Sat, 18 Jan 2020 17:05:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33705C077D
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jan 2020 18:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F24B868CB
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jan 2020 18:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDRPsy3ocUnK for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jan 2020 18:57:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 74040868C9
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jan 2020 18:57:39 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id 144so15774692iou.3
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jan 2020 10:57:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=0XaH1mXR999mQNU6K6YWrbLPoIkTydrY/Z5TzvdEIoo=;
 b=ppb1U1kEp0hPdalQWxkGx56bVNPToQf5T1SCEEogIk+dbnVAeTHwNM/kFTpNaD89o6
 jBjmGikfkNeMzqMdnH/7lZ+ZGdXMdyk9zFNU+PChBtuzYLlA/6X4rB+sXqoUV2l0p6hu
 i8SGTCy/EFWVC23U4OAy3Ik76mYf3XMpjaatyl8Knd4fFtE5opWYstmvD0KdyD+55rBf
 XTI/CbmggdGzzt7/r3JuEaz/fBgX16MToKKn4uCRhzjXywHhP5MMTQSCj81Fr4WYjEEf
 tgu3MtB7kj5HxPoUzw9bqTRtDBhqSUFWdmcbE584zV4Qzx+jglAV4C0HMEKZHezmfhxI
 ZzVQ==
X-Gm-Message-State: APjAAAXkyZVQ63wBg4h3OXhYDEVJMptgd/ACBZita7i+PpPaiROL2vF3
 M+PEflJQEajKcP3tqGas+1wJuysFqvpAZHv3fjelzA/GygyV
X-Google-Smtp-Source: APXvYqwdJblA4HS+sQAcyDnaZpEyamvRHPNZVLzTjCRJ1fUtjR6kwtPkrmKO+XSfDHOH8bobb3s8OKTAC0ffD9Ym4OsrWFyRFSsI
MIME-Version: 1.0
X-Received: by 2002:a92:2907:: with SMTP id l7mr4151886ilg.140.1579287458817; 
 Fri, 17 Jan 2020 10:57:38 -0800 (PST)
Date: Fri, 17 Jan 2020 10:57:38 -0800
In-Reply-To: <00000000000074ed27059c33dedc@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fb2c4f059c5a8309@google.com>
From: syzbot <syzbot+156a04714799b1d480bc@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, kuznet@ms2.inr.ac.ru, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 stephen@networkplumber.org, syzkaller-bugs@googlegroups.com, 
 yoshfuji@linux-ipv6.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Sat, 18 Jan 2020 17:05:03 +0000
Subject: Re: [Bridge] general protection fault in nft_chain_parse_hook
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

commit 98319cb9089844d76e65a6cce5bfbd165e698735
Author: Pablo Neira Ayuso <pablo@netfilter.org>
Date:   Tue Jan 9 01:48:47 2018 +0000

     netfilter: nf_tables: get rid of struct nft_af_info abstraction

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13d38159e00000
start commit:   f5ae2ea6 Fix built-in early-load Intel microcode alignment
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=10338159e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=17d38159e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d9290aeb7e6cf1c4
dashboard link: https://syzkaller.appspot.com/bug?extid=156a04714799b1d480bc
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15a7e669e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11102356e00000

Reported-by: syzbot+156a04714799b1d480bc@syzkaller.appspotmail.com
Fixes: 98319cb90898 ("netfilter: nf_tables: get rid of struct nft_af_info  
abstraction")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

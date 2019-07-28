Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 568628200D
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:26:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2B7E8DC6;
	Mon,  5 Aug 2019 15:25:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5EA99EE
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 14:20:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
	[209.85.166.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AE136CE
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 14:20:01 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id y13so64605157iol.6
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 07:20:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
	:from:to;
	bh=hnSE0IkAtQQd9LTTGkd+F6q8mkeCAgFd7SlsTWCyTMI=;
	b=gUiUvVYQXNcWf/wh49gtHY1VRpw4W9a4wdhn8wrX/u6uo69ASrQoijq8lauQF+f7DW
	+pyc/P2ZLPGe9oxuRNUcEBOsPykf9/EB/TBC6RkWYYDtA33VG2H5S+5ZMMNuT0VKMC2G
	E6G1HHXlye5u4vWvufWpFPhNJcDP2KmWb2BA9+XWKWZ+Ymu0PWt2rIl0/qvU65zQqVdO
	jNGKk8vRCUeI+0I9f84cIREl2yiEAYPFhVJT0/U98uIh7faaG4PZpZPO6kPF9juK+bFh
	JasEn3yHCNaGJLYGuEvsTD8D4zk+AhqnCqMOsAD41gHOW76a8GXTtz+/eYdop/bul1d5
	3CpQ==
X-Gm-Message-State: APjAAAWHPxjqrHKHyHWBZbPwFrWbOxFzNxvUsAz8KrOaL7dIf8ZKxkPp
	H8MZ+qH6KdSxlFF3LVMmHeUZ/h4xajSQuC12cLPF+WKxLrUx
X-Google-Smtp-Source: APXvYqzqsQPOZw9eJjrE3cvYQcF0WB7rEVn52ueiw3GFmGkorKwxWzihfkn52GZd9Jx4mk8mOoeNflmypz7lP+W90dHc9moAjCoN
MIME-Version: 1.0
X-Received: by 2002:a5d:924e:: with SMTP id e14mr88096039iol.215.1564323600914;
	Sun, 28 Jul 2019 07:20:00 -0700 (PDT)
Date: Sun, 28 Jul 2019 07:20:00 -0700
In-Reply-To: <0000000000005e6124058c0cbdbe@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008be1b2058ebe7805@google.com>
From: syzbot <syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, bsingharora@gmail.com, 
	coreteam@netfilter.org, davem@davemloft.net, duwe@suse.de,
	kaber@trash.net, 
	kadlec@blackhole.kfki.hu, linux-kernel@vger.kernel.org, mingo@redhat.com,
	mpe@ellerman.id.au, netdev@vger.kernel.org,
	netfilter-devel@vger.kernel.org, 
	nikolay@cumulusnetworks.com, pablo@netfilter.org,
	roopa@cumulusnetworks.com, 
	rostedt@goodmis.org, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00,FROM_LOCAL_HEX,
	RCVD_IN_DNSWL_NONE,SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 05 Aug 2019 15:25:47 +0000
Subject: Re: [Bridge] memory leak in fdb_create
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

syzbot has bisected this bug to:

commit 04cf31a759ef575f750a63777cee95500e410994
Author: Michael Ellerman <mpe@ellerman.id.au>
Date:   Thu Mar 24 11:04:01 2016 +0000

     ftrace: Make ftrace_location_range() global

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1538c778600000
start commit:   abf02e29 Merge tag 'pm-5.2-rc6' of git://git.kernel.org/pu..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1738c778600000
console output: https://syzkaller.appspot.com/x/log.txt?x=1338c778600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=56f1da14935c3cce
dashboard link: https://syzkaller.appspot.com/bug?extid=88533dc8b582309bf3ee
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16de5c06a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10546026a00000

Reported-by: syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Fixes: 04cf31a759ef ("ftrace: Make ftrace_location_range() global")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

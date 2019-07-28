Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553F78087
	for <lists.bridge@lfdr.de>; Sun, 28 Jul 2019 18:51:22 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 75398B8E;
	Sun, 28 Jul 2019 16:51:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04D32B3E
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 16:51:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5AE88AF
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 16:51:07 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n9so34179325wrr.4
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 09:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=5K+SuxpGvXfQ///N9XK1+tF5GqeC/HVgCK0aC6WVZtU=;
	b=OfC8vdkx64xyhbGpo8KCxYo+Lm9vikgIF+jEkc9Nv6Yxn4gP0DjP/kIQg51vfl7xGC
	jV8WoJ2HAmWTP3kg4XrVF4jk+AGlMOm8gSNklsPETgCIJkZwo7ReZmIX238PnP9Qyin9
	yd0vAmYMJBw9QIB5VddDz14pj4cZtz7R9nCvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=5K+SuxpGvXfQ///N9XK1+tF5GqeC/HVgCK0aC6WVZtU=;
	b=SUCXNpMYVV2j+VXB2HkWLUcT0hwsH2Hmcjy/yr9uUZpL3+Jz1JCLyXryXCLsFzEF4M
	WcJsrcG8h8NpoFCc0m3KeAEGjY/neWrn+/jtCQTJQY5Vt4QyPjKiuutl5X+YBTYpsmUo
	7d1m6M9rYDJg7MCl+eFfvkG6RQFLTaeoSbM0IBkG8z5OAdc8zhmGEbtDmCysmVMkFLVk
	G7lkqPe6kuBwveK6u5DxbAZZfvIfqAv/CnfeYsjiFCrM+a20Nfh5Ocl1xfB0RVu0+is5
	NetQ31IMz2ckzsXQxiYvIqClguyT0FQ16Xj07DHcWYObQvbfZ/fgvMU9pDh9EAmBuMdR
	sd3Q==
X-Gm-Message-State: APjAAAUFvfBlmkSY2rbT2kw5u19SqBCuIeJ/OLGYt7z22DXuLXUpEgi+
	7cTfvUZfqdd66cLyQqE+NLLV+Q==
X-Google-Smtp-Source: APXvYqw83tJg77hrak37KuOXdaRIdcSuKl5v2EFRFUxMzT6hdmsmAZ/ogHbPEp7hpFDY2TYo5CjGUQ==
X-Received: by 2002:adf:ea87:: with SMTP id s7mr116716538wrm.24.1564332666403; 
	Sun, 28 Jul 2019 09:51:06 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	i12sm69356215wrx.61.2019.07.28.09.51.04
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Jul 2019 09:51:05 -0700 (PDT)
To: syzbot <syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com>,
	bridge@lists.linux-foundation.org, bsingharora@gmail.com,
	coreteam@netfilter.org, davem@davemloft.net, duwe@suse.de,
	kaber@trash.net, 
	kadlec@blackhole.kfki.hu, linux-kernel@vger.kernel.org, mingo@redhat.com,
	mpe@ellerman.id.au, netdev@vger.kernel.org,
	netfilter-devel@vger.kernel.org, 
	pablo@netfilter.org, roopa@cumulusnetworks.com, rostedt@goodmis.org,
	syzkaller-bugs@googlegroups.com
References: <0000000000008be1b2058ebe7805@google.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <d16a3297-d651-0a32-e803-774a9c8c61bf@cumulusnetworks.com>
Date: Sun, 28 Jul 2019 19:51:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <0000000000008be1b2058ebe7805@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
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

On 28/07/2019 17:20, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit 04cf31a759ef575f750a63777cee95500e410994
> Author: Michael Ellerman <mpe@ellerman.id.au>
> Date:   Thu Mar 24 11:04:01 2016 +0000
> 
>     ftrace: Make ftrace_location_range() global
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1538c778600000
> start commit:   abf02e29 Merge tag 'pm-5.2-rc6' of git://git.kernel.org/pu..
> git tree:       upstream
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=1738c778600000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1338c778600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=56f1da14935c3cce
> dashboard link: https://syzkaller.appspot.com/bug?extid=88533dc8b582309bf3ee
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16de5c06a00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10546026a00000
> 
> Reported-by: syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
> Fixes: 04cf31a759ef ("ftrace: Make ftrace_location_range() global")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

I see the problem, it'd happen if the multicast stats memory allocation fails on bridge
init then the fdb added due to the default vlan would remain and the bridge kmem cache
would be destroyed while not empty (you can even trigger a BUG because of that).
I'll post a patch shortly after running a few tests.

Thanks,
 Nik


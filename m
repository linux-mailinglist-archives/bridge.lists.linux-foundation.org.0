Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4830EEB482
	for <lists.bridge@lfdr.de>; Thu, 31 Oct 2019 17:16:35 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE2E6CCE;
	Thu, 31 Oct 2019 16:16:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A0B241C
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 09:52:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
	[209.85.166.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B37068A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 09:52:05 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id 18so10735680ioo.4
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 02:52:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
	:from:to;
	bh=KhTni5i4fWNYOrXXdKRZL7n4/+Q2oXySWZR+SGDk+1M=;
	b=F4cJ+Gi4QmShDIiaX1j64s8BDIJwoalzJbHuwo2rn00SVf8AQJyZpX8l8OcJUVqWQ5
	NqB2Nps5V0z0zxRN/CjsNhI2L6HFAdUJQTZmSSutTwTQCYcJtzWySJdbQTnW12QKT+EK
	XX1eHZGv5tAON6uR0Pnr5/yHSDQIZbRddlcK1ysEIZGmKrok14aFRBAWCp3SD54fF2II
	EjtwTCEI09UuJihRR9ofQ7HEUKSVdJbU/G/LNYi6pOAFPDS8mhR5WXwmRaBERjFbu6H8
	hrF8xAe+bY0JMsXB3YTQVSCKjXHOwnSOieweM5QM2p26qKq/huByX7nvJLOxALgjNuy9
	in1A==
X-Gm-Message-State: APjAAAXz6r/0EefAlE2hWKt+jkzmtt52YWxTwGsQZegoVRZpWkkXeOkb
	TCYuaTzZccoDBcWEg0cjo50WN1RkhNRg1mWatNNJpNxD4KFl
X-Google-Smtp-Source: APXvYqxJ9xrCQYDM3zjASN2O14TUYOL1Vq099EpzYllPSctTMS5wHjd4pXl9VmehlTUaytj82L6S0Af4Z1CPJkWAD5Rc60MY47Nk
MIME-Version: 1.0
X-Received: by 2002:a92:8dd9:: with SMTP id w86mr25132844ill.93.1572342721346; 
	Tue, 29 Oct 2019 02:52:01 -0700 (PDT)
Date: Tue, 29 Oct 2019 02:52:00 -0700
In-Reply-To: <000000000000044a7f0595fbaf2c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006db1370596099128@google.com>
From: syzbot <syzbot+8da67f407bcba2c72e6e@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
	andy@greyhouse.net, ap420073@gmail.com, aroulin@cumulusnetworks.com, 
	ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
	bridge@lists.linux-foundation.org, cleech@redhat.com,
	daniel@iogearbox.net, 
	davem@davemloft.net, dcaratti@redhat.com, dsa@cumulusnetworks.com, 
	edumazet@google.com, f.fainelli@gmail.com, fw@strlen.de, 
	gbastien@versatic.net, gregkh@linuxfoundation.org, gustavo@embeddedor.com, 
	haiyangz@microsoft.com, idosch@mellanox.com, info@metux.net, 
	ivan.khoronzhuk@linaro.org, j.vosburgh@gmail.com, j@w1.fi, 
	jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
	jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
	john.hurley@netronome.com, jwi@linux.ibm.com,
	kstewart@linuxfoundation.org, 
	kvalo@codeaurora.org, kys@microsoft.com, linmiaohe@huawei.com, 
	linux-bluetooth@vger.kernel.org, linux-hams@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org, 
	mareklindner@neomailbox.ch, mcroce@redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_00, DOS_RCVD_IP_TWICE_B, 
	FROM_LOCAL_HEX, RCVD_IN_DNSWL_NONE,
	SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Thu, 31 Oct 2019 16:16:05 +0000
Subject: Re: [Bridge] INFO: trying to register non-static key in
	bond_3ad_update_ad_actor_settings
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

commit ab92d68fc22f9afab480153bd82a20f6e2533769
Author: Taehee Yoo <ap420073@gmail.com>
Date:   Mon Oct 21 18:47:51 2019 +0000

     net: core: add generic lockdep keys

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b54d70e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11b54d70e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16b54d70e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=8da67f407bcba2c72e6e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d43a04e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16be3b9ce00000

Reported-by: syzbot+8da67f407bcba2c72e6e@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 06496EB483
	for <lists.bridge@lfdr.de>; Thu, 31 Oct 2019 17:16:50 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DE65FCDB;
	Thu, 31 Oct 2019 16:16:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72E709E7
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 14:09:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
	[209.85.166.200])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D05089E
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 14:09:02 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id i74so9410803ild.13
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 07:09:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
	:from:to;
	bh=ZXDP0wwnNkRnGcZ/hxzyUBVhVAKO5MP3N/7b/HrN89M=;
	b=Lo6TRRawxzCZyZV2st+qIv5aiatI+3YJQ9CmiFgPcHuRthR/juBTOORh+H6erty1Fz
	4+FK94vCXcwHAh69vXuYGZo9AAWP1v70sWwRycMrZfDJsqKPv0Gvmv9Hy7v4vRsdmjNU
	1N5++aGmTEZCCz4ntLyeHbj62NUzNJUHJNGdmCmIK9mWhLypY33El+DgrRcduzEsaK97
	/Vu9UIXCSZqQlsSRVZ6jzFlZ9VomBf07UUG+iwm1+SGYQcszQDRehP98ZMgD3iTkIed/
	iQjeiJF8bsffE7chuopAs4NOsaCSf4ADIbE+PTZm4sAmDQGcdXxUbP8ZMAFg9Fs+iGdu
	/H3Q==
X-Gm-Message-State: APjAAAXys+vwjqwNB9+19hq0T/BIAjpd+/YnO9qfBGKWs8eLAwDYTdja
	CVc79wgpOT7OIxU/R1Cf8DJ9bceD60TbZjYyRnXW7BuJOq0I
X-Google-Smtp-Source: APXvYqyEO6WTdX2TT1MAC5wh+aMxnQAZiQ9NAP9Ue+ASML0EMHR89Lk5xJp5JZTyc5Ij4tXWW9iYcXeag4DdS0UpQCxA/Rt7L8JZ
MIME-Version: 1.0
X-Received: by 2002:a92:8394:: with SMTP id p20mr28056667ilk.73.1572358141217; 
	Tue, 29 Oct 2019 07:09:01 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:09:01 -0700
In-Reply-To: <0000000000009ea5720595dc03a3@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007792ff05960d289d@google.com>
From: syzbot <syzbot+692f39f040c1f415567b@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
	andy@greyhouse.net, ap420073@gmail.com, aroulin@cumulusnetworks.com, 
	ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
	bridge@lists.linux-foundation.org, cleech@redhat.com,
	daniel@iogearbox.net, 
	davem@davemloft.net, dcaratti@redhat.com, dsa@cumulusnetworks.com, 
	edumazet@google.com, f.fainelli@gmail.com, fw@strlen.de, 
	gregkh@linuxfoundation.org, gustavo@embeddedor.com, gvaradar@cisco.com, 
	haiyangz@microsoft.com, idosch@mellanox.com, info@metux.net, 
	ivan.khoronzhuk@linaro.org, j.vosburgh@gmail.com, j@w1.fi, 
	jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
	jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
	john.hurley@netronome.com, jwi@linux.ibm.com,
	kstewart@linuxfoundation.org, 
	kvalo@codeaurora.org, kys@microsoft.com, lariel@mellanox.com, 
	linmiaohe@huawei.com, linux-bluetooth@vger.kernel.org, 
	linux-hams@vger.kernel.org, linux-hyperv@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-ppp@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, 
	liuhangbin@gmail.com, marcel@holtmann.org, mareklindner@neomailbox.ch
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_00, DOS_RCVD_IP_TWICE_B, 
	FROM_LOCAL_HEX, RCVD_IN_DNSWL_NONE,
	SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Thu, 31 Oct 2019 16:16:05 +0000
Subject: Re: [Bridge] BUG: MAX_LOCKDEP_KEYS too low!
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12e05224e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11e05224e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16e05224e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=692f39f040c1f415567b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10be9ed0e00000

Reported-by: syzbot+692f39f040c1f415567b@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

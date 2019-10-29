Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A237DEB481
	for <lists.bridge@lfdr.de>; Thu, 31 Oct 2019 17:16:19 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 04DFCCC1;
	Thu, 31 Oct 2019 16:16:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B286E949
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:46:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
	[209.85.166.200])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61B008A
	for <bridge@lists.linux-foundation.org>;
	Tue, 29 Oct 2019 04:46:02 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id s17so11855860ili.1
	for <bridge@lists.linux-foundation.org>;
	Mon, 28 Oct 2019 21:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
	:from:to;
	bh=YLV8f9ZsfAXyIIZYYq3+IarNtK/1IHU/hb3TF47qpcU=;
	b=G6We0hHd3ndtJBws6BEJcF+vTKxPGqfdzpaY108PB2upVjTi4CKAoStiDy0g7vOU1g
	BkSeXxQbrXSbbhiqK0eqsnspLBmKB/c5M53/2rxwF4orYuihnjwFPgJ0WGRhycV4Ij4Z
	yXU+qI1S758g5QvTHLCCo2gBT/oiXcU73pnaiwSAzzWHV0+9hvsAxww1bcJw5JcJ54CN
	fFib+YALtrW12plgDHxZIliKzXeUu97G2+BXHIk7SrUtxYbodzM1txBTKc4Sx4+Xk1uC
	4J2eYArRibDos0QZYKWVAB2B8RhtNyEtt0EWuWyEcsMsLYcTOnQOLlLmvRlaZLx+37mR
	IClg==
X-Gm-Message-State: APjAAAWTa0ykH4AHBaRXM4W0hn76WN+wIagabUob8eBg0fXMUMX8BDCc
	E6BHlhH8IJUSAMZsMznP0twlLcRASo8YrA4575/5tQWBzP7z
X-Google-Smtp-Source: APXvYqy8A5HcqCyEPL5dtBElWBUVccfpfDJnoTHkuyLyMyzE3tC2AL+v78u811xV2KkRr1yWR23ZU1ZAqiGqqPS8jMwtkIRFFbuv
MIME-Version: 1.0
X-Received: by 2002:a5e:d90c:: with SMTP id n12mr1656385iop.140.1572324361470; 
	Mon, 28 Oct 2019 21:46:01 -0700 (PDT)
Date: Mon, 28 Oct 2019 21:46:01 -0700
In-Reply-To: <000000000000fc25a1059602460a@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000987900596054b0f@google.com>
From: syzbot <syzbot+0d083911ab18b710da71@syzkaller.appspotmail.com>
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
X-Spam-Status: No, score=3.7 required=5.0 tests=BAYES_00, DOS_RCVD_IP_TWICE_B, 
	FROM_LOCAL_HEX, RCVD_IN_DNSWL_NONE,
	SORTED_RECIPS autolearn=no version=3.3.1
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Thu, 31 Oct 2019 16:16:05 +0000
Subject: Re: [Bridge] INFO: trying to register non-static key in
	bond_3ad_update_lacp_rate
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467f674e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667f674e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1267f674e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=0d083911ab18b710da71
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15381ee0e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11571570e00000

Reported-by: syzbot+0d083911ab18b710da71@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

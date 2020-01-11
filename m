Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CBA13AE1E
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 16:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F369A860BE;
	Tue, 14 Jan 2020 15:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-ewqK8YSFWa; Tue, 14 Jan 2020 15:56:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id F421786094;
	Tue, 14 Jan 2020 15:56:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D58F9C1D8B;
	Tue, 14 Jan 2020 15:56:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98DEFC0881
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D20987A34
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdd1vSQJO7vI for <bridge@lists.linux-foundation.org>;
 Sat, 11 Jan 2020 23:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9AA3C83DD9
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 23:38:32 +0000 (UTC)
Received: by mail-il1-f199.google.com with SMTP id h18so4749687ilc.2
 for <bridge@lists.linux-foundation.org>; Sat, 11 Jan 2020 15:38:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:cc;
 bh=HG8PSEk+Nu2G0yzQ1sauBjh8yX4UWlbofl1tNDseMog=;
 b=ny+tHhH3d+0ueal/te/N7jc+0lyD3UhAApBa/BIXYBcMb6jcEuMlRTaQAmWBS6xuQN
 dvZRsTL4EM4CJgn32rD/FsoXpy84sfZOrXn3Lzw8JZ84hqIUcYH48acxu5yoUBG6Rhs5
 Gl76zU4agAZr3ZlPtpG3dirHAC+yqgYceOSKRMihFW3xUqGIQ38vq0G3/LZxto6sNarS
 d9NJEDL3NPFqGRisQQpCEmq8WXTZDZmZ51q/DdGpowaDH3yViliM+bwEUdX0jkOuozpE
 Rbp/W4sofVjTUTfKA6EBoIjhZPuoA3Aas+t2tsWPaiTbM84bdgBQBoTPhOZPZWxSVZOj
 WLzw==
X-Gm-Message-State: APjAAAXdVV6UdB540aHgdoFioRDOlQUFm6ADgiFhyyuWjdKuNRB40/LF
 qokAQv549Hs7QVmGkuz20tEtQkzvrivzKbMiQIcfSDbB+QVi
X-Google-Smtp-Source: APXvYqzY3G/r7L2fdqmCj2j/h1C1sHPcBcM4PyU4coxfrfPzxUmQUqHGDBOKiBTJVPd2Dc1kvuMmxK6iFOuHlz4BJK9Zg+ciJv/g
MIME-Version: 1.0
X-Received: by 2002:a6b:c804:: with SMTP id y4mr7776396iof.210.1578785911931; 
 Sat, 11 Jan 2020 15:38:31 -0800 (PST)
Date: Sat, 11 Jan 2020 15:38:31 -0800
In-Reply-To: <CAM_iQpWN-SKjjrG_7EQ-x+7UMiu6foaNWMJuwQuwN0BGmayB+A@mail.gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000751268059be5bdfc@google.com>
From: syzbot <syzbot+ad4ea1dd5d26131a58a6@syzkaller.appspotmail.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Tue, 14 Jan 2020 15:56:50 +0000
Cc: kstewart@linuxfoundation.org, andrew@lunn.ch, alex.aring@gmail.com,
 jakub.kicinski@netronome.com, ast@domdv.de, linmiaohe@huawei.com,
 gustavo@embeddedor.com, oss-drivers@netronome.com,
 linux-wireless@vger.kernel.org, a@unstable.cc, linux-hyperv@vger.kernel.org,
 netdev@vger.kernel.org, paulus@samba.org, linux-hams@vger.kernel.org,
 kys@microsoft.com, mareklindner@neomailbox.ch, f.fainelli@gmail.com,
 daniel@iogearbox.net, bridge@lists.linux-foundation.org, jwi@linux.ibm.com,
 linux-wpan@vger.kernel.org, kvalo@codeaurora.org, kuznet@ms2.inr.ac.ru,
 pabeni@redhat.com, nikolay@cumulusnetworks.com, marcel@holtmann.org,
 mkubecek@suse.cz, jiri@resnulli.us, johan.hedberg@gmail.com,
 johannes.berg@intel.com, j@w1.fi, j.vosburgh@gmail.com, haiyangz@microsoft.com,
 syzkaller-bugs@googlegroups.com, jhs@mojatatu.com, john.hurley@netronome.com,
 liuhangbin@gmail.com, dsa@cumulusnetworks.com, allison@lohutok.net,
 cleech@redhat.com, gregkh@linuxfoundation.org, b.a.t.m.a.n@lists.open-mesh.org,
 fw@strlen.de, linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mmanning@vyatta.att-mail.com, linux-ppp@vger.kernel.org, info@metux.net,
 davem@davemloft.net, ap420073@gmail.com
Subject: Re: [Bridge] WARNING: bad unlock balance in __dev_queue_xmit
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

> #syz dup: WARNING: bad unlock balance in sch_direct_xmit

Your 'dup:' command is accepted, but please keep  
syzkaller-bugs@googlegroups.com mailing list in CC next time. It serves as  
a history of what happened with each bug report. Thank you.


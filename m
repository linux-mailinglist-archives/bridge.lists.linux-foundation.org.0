Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B810F170
	for <lists.bridge@lfdr.de>; Mon,  2 Dec 2019 21:20:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6797020423;
	Mon,  2 Dec 2019 20:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtGTK5N8YpMa; Mon,  2 Dec 2019 20:20:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A09A92044E;
	Mon,  2 Dec 2019 20:20:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71B7CC1797;
	Mon,  2 Dec 2019 20:20:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D125CC087F
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 20:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD4F285FED
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 20:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0R34Y6wjxJ9Q for <bridge@lists.linux-foundation.org>;
 Mon,  2 Dec 2019 20:20:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 164818647A
 for <bridge@lists.linux-foundation.org>; Mon,  2 Dec 2019 20:20:43 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id m30so884723lfp.8
 for <bridge@lists.linux-foundation.org>; Mon, 02 Dec 2019 12:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=A7xwm8gC8IFcmIwrDFz1mUiBMU42HvgoLpPYOdX1CWQ=;
 b=ZOtyJo+O+ea+CUdCTEPU394bFqI2NW2JOOFXR228offjrOPoiKp17JEx7YHrvCwtxL
 ayfcNnftnWN18v0ZWzqlEVSXvl0U0g6v+VfVLIsH1m6m9VNtPL7xBsrJ0HhQ/HWCx51P
 Zlt6UvKJNGWGnBcUfO9q/briMSRbhlOnfg3UU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A7xwm8gC8IFcmIwrDFz1mUiBMU42HvgoLpPYOdX1CWQ=;
 b=TUxlGMpOhffuSFESVCbthJ9xlj+t20rJt9BK9vSR///tb/3/lD7XWhTnRR1Y4a3o/j
 KT4PT0IxY/zYx5TrxKO+KXMJy6hGqHx/SjsheNXrmYBjttjM9TQ8iuWNlr6PGaYVOVom
 1Zi1GjW6iYd8r42pFheoGZWMrM5NGOhC3SmMUfZykCmkQ8MM2WaV14Vmmm9RRKXbheD1
 c/LD0GwM8glqqryOC3w113aBSZN96lSWEHRswqHbSwYQwHiUNuu1Vta+hz/ICFyt4+ZG
 0uvut/qVJosQqiv8HHxB1W3H/I6O/kyBuUW+35Z8Cn0J3vUobO0jN3hDyYwzN+XbWE8V
 fOXg==
X-Gm-Message-State: APjAAAWaQmDzxiusDzRYErKXH8pL7LwCH2sj4jHVJs3VFnr8irs6BZYN
 ZUxjgL88nPhSen0rf5Q583AOJA==
X-Google-Smtp-Source: APXvYqzYCEj2kZH16mtMuXRGmli0G8tPPG/NBLbJgg0WFCJMLXzE9JuYVqkrlEByD7jomy4ge/9QiA==
X-Received: by 2002:ac2:5462:: with SMTP id e2mr522201lfn.181.1575318041077;
 Mon, 02 Dec 2019 12:20:41 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id r4sm272840ljn.64.2019.12.02.12.20.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 12:20:40 -0800 (PST)
To: syzbot <syzbot+2add91c08eb181fea1bf@syzkaller.appspotmail.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, syzkaller-bugs@googlegroups.com
References: <0000000000001821bf0598bb955c@google.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <76434004-ca0b-0917-78bd-a0332af2a716@cumulusnetworks.com>
Date: Mon, 2 Dec 2019 22:20:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <0000000000001821bf0598bb955c@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Bridge] memory leak in fdb_create (2)
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

On 02/12/2019 19:05, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    ceb30747 Merge tag 'y2038-cleanups-5.5' of git://git.kerne..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=142b3e7ee00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=26f873e40f2b4134
> dashboard link: https://syzkaller.appspot.com/bug?extid=2add91c08eb181fea1bf
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12976feee00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10604feee00000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+2add91c08eb181fea1bf@syzkaller.appspotmail.com
> 
> BUG: memory leak
> unreferenced object 0xffff888124fa7080 (size 128):
>   comm "syz-executor163", pid 7170, jiffies 4294954254 (age 12.500s)

I'll look into this tomorrow, I think see the issue.

Thanks!

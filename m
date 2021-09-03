Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B8C4024F8
	for <lists.bridge@lfdr.de>; Tue,  7 Sep 2021 10:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26FF44062E;
	Tue,  7 Sep 2021 08:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQvfL0zt65gH; Tue,  7 Sep 2021 08:18:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9B7B2404E8;
	Tue,  7 Sep 2021 08:18:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2679C000D;
	Tue,  7 Sep 2021 08:18:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16F98C000E
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 11:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F21D460684
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 11:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDBYCVeYuPdM for <bridge@lists.linux-foundation.org>;
 Fri,  3 Sep 2021 11:42:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03F6760677
 for <bridge@lists.linux-foundation.org>; Fri,  3 Sep 2021 11:42:07 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id
 y8-20020a92c748000000b00224811cb945so3320311ilp.6
 for <bridge@lists.linux-foundation.org>; Fri, 03 Sep 2021 04:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=e+HyKsU19yRq9dTTGzaiihO1RDbY/pEio/YxB+y4wlQ=;
 b=l29XDNOby3OBN/9ppCvaqj09WsJC7FYnZsUlyj2T1qTl/DxHUZzVUR/uFMb8x/JbIZ
 B4+EB6KIwXemNzK4zPEe8+i5aZqik/452hFfrxLCWgZE0qRCvEZvX1sPH6OV0HYfyM1X
 U5pyLWsHaWRl6/2XbQWvc/VA/dCJU/OKXFXZ0JDVaH/zjBsmM+HlozDYra8TKwk6e2Ba
 TYGWy9xv6s59N6crolRzkZbgfTlKaVfaHVediJ/fzWqTl1DSIC72UURzLnXQ2sy9jThS
 1yDuJe8gv13ft3vKdx+ZwECBLHYBRjPQvFBYMlzVNIRrP5X3schK0GnN5d/frhEBbdti
 jMkA==
X-Gm-Message-State: AOAM532mdWhT/zD7ZmGlNhwU7gMxTry6+s/66jlpRD28NlINHVWSmOs+
 7yPmGrxsMPpyreRpfDYf6m9OlU/GFnfyUQ6k5GIeyRnjcnd0
X-Google-Smtp-Source: ABdhPJyVGKWtZ/XNFnPfV1DJyHrVWvrUw1gcWV/6Ek254iAr3SZHr33nQjI3GFtlrzCzJ1/87getEFBZvKiyVflC5YPCMch6/ZSX
MIME-Version: 1.0
X-Received: by 2002:a02:93aa:: with SMTP id z39mr2241987jah.29.1630669327150; 
 Fri, 03 Sep 2021 04:42:07 -0700 (PDT)
Date: Fri, 03 Sep 2021 04:42:07 -0700
In-Reply-To: <10b89a9f-443c-98d1-ca01-add5f6dd3355@nvidia.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fdb19d05cb15c938@google.com>
From: syzbot <syzbot+24b98616278c31afc800@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, davem@davemloft.net, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, nikolay@nvidia.com, 
 roopa@nvidia.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 07 Sep 2021 08:18:05 +0000
Subject: Re: [Bridge] [syzbot] KASAN: slab-out-of-bounds Read in add_del_if
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+24b98616278c31afc800@syzkaller.appspotmail.com

Tested on:

commit:         d15040a3 Merge branch 'bridge-ioctl-fixes'
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
kernel config:  https://syzkaller.appspot.com/x/.config?x=aba0c23f8230e048
dashboard link: https://syzkaller.appspot.com/bug?extid=24b98616278c31afc800
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1

Note: testing is done by a robot and is best-effort only.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F3B165929
	for <lists.bridge@lfdr.de>; Thu, 20 Feb 2020 09:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAE2286566;
	Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1081CSIXYutN; Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1247C81B7E;
	Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F1761C013E;
	Thu, 20 Feb 2020 08:26:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4CFCFC013E
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 07:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3614A20506
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 07:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vvwqy0JUI+Cf for <bridge@lists.linux-foundation.org>;
 Wed, 19 Feb 2020 07:54:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 22475203BB
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 07:54:04 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id p7so19243447ilq.16
 for <bridge@lists.linux-foundation.org>; Tue, 18 Feb 2020 23:54:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=bhiLhZ0hGFmHCjOA0xxswOfkox27Yu7xmMOMfRdjKnY=;
 b=NdztAZuaB9xCy0EWkfekpP1KgdpbbeFrNRRCnNTl3gfhbBJqSFjMAp47Ui84zEKDWp
 0zNUkX45Cz3Z7iau6PKRzgvPgVIb4JwQ0GLDSXDGCIAq4SjTiTg7UFzdlYkl32Fgs/8H
 fjObOGxuqSN36fk88FHYTZG0pO5emWAHxJMEj/bdm41NH3rIJUmtNs0UVqlFYDL+YOEz
 D2VOmmtJQ2PSMSlLPN7Iiwwip2qoqDFkTlvTvwvwV10qZg5IVSPYN8xSaGrFYhUPre40
 3CSvE/H5EDJpo+Eg0oW+hZsLLSE3A27oDKaEQlcUtcaMoeUxjKeLLsm5Psf+6UtM9jFt
 Osfw==
X-Gm-Message-State: APjAAAX05F+y+rr4BCYHUt05fBJC+YS2ns/sqUUomH8rWxQsJd8kXBxC
 3+tOtP3BNwM6s7wP37qf9wNEN6dHST1EtbdLf4P+7bbJugYD
X-Google-Smtp-Source: APXvYqxGYY13aZOMM0BSOmDQMzSYZrf2qmPLxLF8eTHCcZFD8r1N2DfCNIuzDx8cL8jZ8cKMDsJUm0ShbBazBm0Pcb2Lzvn6MzqR
MIME-Version: 1.0
X-Received: by 2002:a02:2101:: with SMTP id e1mr19970446jaa.29.1582098843467; 
 Tue, 18 Feb 2020 23:54:03 -0800 (PST)
Date: Tue, 18 Feb 2020 23:54:03 -0800
In-Reply-To: <0000000000006d7b1e059c7db653@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000908c50059ee9173a@google.com>
From: syzbot <syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@cumulusnetworks.com, 
 pablo@netfilter.org, roopa@cumulusnetworks.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 20 Feb 2020 08:26:06 +0000
Subject: Re: [Bridge] KASAN: use-after-free Read in bitmap_ip_ext_cleanup
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

syzbot suspects this bug was fixed by commit:

commit 32c72165dbd0e246e69d16a3ad348a4851afd415
Author: Kadlecsik J=C3=B3zsef <kadlec@blackhole.kfki.hu>
Date:   Sun Jan 19 21:06:49 2020 +0000

    netfilter: ipset: use bitmap infrastructure completely

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D17079245e000=
00
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dd9290aeb7e6cf1c=
4
dashboard link: https://syzkaller.appspot.com/bug?extid=3Db554d01b6c7870b17=
da2
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D145948d6e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D16202cc9e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n

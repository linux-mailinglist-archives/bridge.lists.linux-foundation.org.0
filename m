Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 700FF3DD228
	for <lists.bridge@lfdr.de>; Mon,  2 Aug 2021 10:41:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91D174033D;
	Mon,  2 Aug 2021 08:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rf3Pf3MScrP8; Mon,  2 Aug 2021 08:41:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3ADB7403D7;
	Mon,  2 Aug 2021 08:41:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DEEC3C0022;
	Mon,  2 Aug 2021 08:41:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C098C000E
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 08:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29B2240193
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 08:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouAd3m9-PMtr for <bridge@lists.linux-foundation.org>;
 Mon,  2 Aug 2021 08:41:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9840F400DB
 for <bridge@lists.linux-foundation.org>; Mon,  2 Aug 2021 08:41:02 +0000 (UTC)
Received: from mail-wm1-f45.google.com ([209.85.128.45]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mf0Ru-1mpafx1ApW-00gZoJ for <bridge@lists.linux-foundation.org>; Mon, 02 Aug
 2021 10:40:59 +0200
Received: by mail-wm1-f45.google.com with SMTP id x17so3646968wmc.5
 for <bridge@lists.linux-foundation.org>; Mon, 02 Aug 2021 01:40:58 -0700 (PDT)
X-Gm-Message-State: AOAM531N+agThwxiw5kKiZMPEWz0F1LZ98xl7rQI/xAhqLnyeqx/7cW+
 w4tAZs+Ai7EMlCQtlZ/KyFtbdt7c29EBrn56Ds0=
X-Google-Smtp-Source: ABdhPJz5worb+3mDgS5BfVO7ARMLM4dzAlkpaueUK5XPmilhwkpYyqD2IgZhtv48MM0fLgUXIA9RUQdA6/gsZXu3Zf4=
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr15307818wmm.120.1627893658610; 
 Mon, 02 Aug 2021 01:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000014105005c87cffdc@google.com>
 <20210801131406.1750-1-hdanton@sina.com>
 <6f05c1a9-801a-6174-048a-90688a23941d@nvidia.com>
In-Reply-To: <6f05c1a9-801a-6174-048a-90688a23941d@nvidia.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 2 Aug 2021 10:40:42 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0dX1GRDTUp50kW81dD-dUw_=H4sx6tyeCVJea-FOBCQA@mail.gmail.com>
Message-ID: <CAK8P3a0dX1GRDTUp50kW81dD-dUw_=H4sx6tyeCVJea-FOBCQA@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:lEmt4Vgyl+6oDTVOuElFGWBn980/8TaPhfaZV2MXG3UgnMpfvhz
 AF9ZoDfUiAG0nma4M52S/k0d2jtFZtRRNwOvItmgcZIjT+sosFqk3nhEooCyyEqSuvUyMmZ
 aMwWONOMIEWQUnBKKX+4PWcmzfMIP6RspoTWUEOGuRduKHxcsjvirjtlR6svCooFQXJMhZa
 F91a68I7KRSgFnrh9GN1Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Li4SAbdXTgA=:I6Lo29MMzYwyLHGkhHkHvt
 eyVt+j+e/3YRw6cagcWG1fNRJMHWfEIieGmCeFTguFL47jYHN4mk5qiRtGXGzrAqs1FKoMLVJ
 tgNAMbL/A5khKEQlWL9ziug/5lzcL3+hSopzkz0KonCfCQQsuTFkJQ6ijzdbx6lbq19eTSRqK
 0aaCiLUwY3WZ18Jyd9k3pOg9u8L4OfpMzhmCu+ZRloBxECntfcR/TUioFIIIwA5sLk5xX+bUN
 7ICzHxkrpfdoNrdbSa2kHFiuEqZ7YSRGrNLcY0MqOJJSM4dGFl8mkkvSMwQuocpzbFa8JmV0V
 U7nGg3AFILvN50YFOyf8TQqPjex+n8lpNh4KrHNNcm3vCwwTePWiQzg9DkDDL8ckjsbneHaxi
 SI31KgNbwMV96eVk20QVHTZCI7YoY3MH2bKiFN6QK9ihV+mHjejCk6pDnHliU7NdghrjQrukG
 E/YHM5MbmQBRPAUViF701j/byXJqLF2Cg6rBEYzUnnV+PsmWA69yizee4xxvrxfKGuggDbDy9
 00y7D5+ld2aEi/WCMJNzbJvuJRqr7QtjDFfOrfCgbLCPpjzXHXsK0aZ1M8wmtizXg5EVe9M48
 KIuS5FPrr/ASiRjRqQQXW08mYxjtJ2Zy9eM7AxFV7+6XyluxF8iHy2fDzjp1pILaKRZX/TIYa
 Dtw/OJ4uSUJd6Rq7oPgJaaGz4BWJD8XYzg6Alr8eKDeeKiVLXs+UVjW27ziRkuOHvBItHezch
 WTEvIHKShaZVSBpEUQjcc62FX96aIVO47egFMC4Q6pIOft30eD9bKMzyZ1kfSUuMX80sxGbGU
 ZyDL3REWuI9HuLuJEP7pah7wDVu4MnnUHBmNbkBuJaKqM/OktXrKKxyXCfnq8gW/ZTUqa00
Cc: Hillf Danton <hdanton@sina.com>, Arnd Bergmann <arnd@arndb.de>,
 Networking <netdev@vger.kernel.org>,
 syzbot <syzbot+34fe5894623c4ab1b379@syzkaller.appspotmail.com>,
 bridge@lists.linux-foundation.org,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Bridge] [syzbot] possible deadlock in br_ioctl_call
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

On Mon, Aug 2, 2021 at 10:30 AM Nikolay Aleksandrov <nikolay@nvidia.com> wrote:
> On 01/08/2021 16:14, Hillf Danton wrote:
> > On Sun, 01 Aug 2021 03:34:24 -0700
> >> syzbot found the following issue on:
>
> Thanks, but it will need more work, the bridge ioctl calls were divided in two parts
> before: one was deviceless called by sock_ioctl and didn't expect rtnl to be held, the other was
> with a device called by dev_ifsioc() and expected rtnl to be held.
> Then ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
> united them in a single ioctl stub, but didn't take care of the locking expectations.
> For sock_ioctl now we acquire  (1) br_ioctl_mutex, (2) rtnl and for dev_ifsioc we
> acquire (1) rtnl, (2) br_ioctl_mutex as the lockdep warning has demonstrated.

Right, sorry about causing problems here.

> That fix above can work if rtnl gets reacquired by the ioctl in the proper switch cases.
> To avoid playing even more locking games it'd probably be best to always acquire and
> release rtnl by the bridge ioctl which will need a bit more work.
>
> Arnd, should I take care of it?

That would be best I think. As you have already analyzed the problem and come
up with a possible solution, I'm sure you will get to a better fix
more quickly than
I would.

Thanks,

       Arnd

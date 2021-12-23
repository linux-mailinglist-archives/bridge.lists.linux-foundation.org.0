Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F34A47E266
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 12:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F2AD82433;
	Thu, 23 Dec 2021 11:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjBySOTSSHvW; Thu, 23 Dec 2021 11:38:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4429A82422;
	Thu, 23 Dec 2021 11:38:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5BDBC006E;
	Thu, 23 Dec 2021 11:38:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED309C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 11:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D369D60EFD
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 11:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BeysfwmHnO6y for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 11:38:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A412660EF7
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 11:38:33 +0000 (UTC)
Received: from mail-wr1-f50.google.com ([209.85.221.50]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N4Qg2-1mHuTJ1bcc-011VkI for <bridge@lists.linux-foundation.org>; Thu, 23 Dec
 2021 12:38:31 +0100
Received: by mail-wr1-f50.google.com with SMTP id q16so10887931wrg.7
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 03:38:31 -0800 (PST)
X-Gm-Message-State: AOAM530f6hKKk3gH9DQqwcHUdVWST9hU43iMG1wQLk+Z9ugUcxwwgNwe
 huKnw6fhtwN5fYXd/h/CtXYNF1ytk+0IV13zQKc=
X-Google-Smtp-Source: ABdhPJz/EpzdpL4OwAijGaY2yhvM6m2rm6Cp3Bwh8cBWlM6S2bv5UYWdoP+HEsItUHqn5+Rq8IYuUkQcTmRnzbUfFRc=
X-Received: by 2002:a5d:6d0e:: with SMTP id e14mr1562661wrq.407.1640259510755; 
 Thu, 23 Dec 2021 03:38:30 -0800 (PST)
MIME-Version: 1.0
References: <20211222191320.17662-1-repk@triplefau.lt>
 <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
 <YcRW1ckSr3ZSCDf9@pilgrim>
In-Reply-To: <YcRW1ckSr3ZSCDf9@pilgrim>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 23 Dec 2021 12:38:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0PTu2qCHGr63TBMgnjL9fQwn4=7CrURKMHQufffwOg9Q@mail.gmail.com>
Message-ID: <CAK8P3a0PTu2qCHGr63TBMgnjL9fQwn4=7CrURKMHQufffwOg9Q@mail.gmail.com>
To: Remi Pommarel <repk@triplefau.lt>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:GApc67zFP9icZqDiCaoEkLOfh0yc/OTrzdnEmN/VdjzwnuaFgFR
 jEYp/3s4Y0I/ZJxJ0eZMgnU49YcNd3240SYwwB+4w58ZyIWWKgJMAQ2Q0y7PrbXbF3159aE
 V2MgCLCcmCxs/Tz1+nFXs+eaBmLRgxxf2iv3yFU2dZhwyWb3/c3lctG8UptCL+srmEyEaIF
 jCMRX6oIzv2RcQo6N/ybA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZGy+vtvjCI4=:rMI87FF06xrmTXNiS9YXT4
 Jfs2grYrULJS9Cq1dwcmi+2EkN+Qpa68/r+gyhVUwTziLJmrhlnw4u0rsjetP2cxz30zde9aE
 4YfISLpncW3J71MAXIxuT8dBib02UkeXuooX+JwUVoO1n0zzkItmbkaazK7Snel6Tk2vl8hiO
 0tUqQSMvnodxmYjHTLhQyEdOwJvwQnqvk0q9IC6Kq6SZMbgRKcRVTI5RSwFbW9MulnV4gQfKZ
 Q2+iO1kgNSZlyEqff80Ly1s4+r0qZNcdQXCAJ+3dIJVxIPMtFkOeWtH0OJcn8vAzoslIITxFs
 2QYeRRgHqA6y7WPc3BJQc9dzIMKQTirQGlmudkJQXKnYNBcccOSf6w01S8Ho+1BGyLZeYn2/N
 yy2ZQQEi1RKgoP72Ev2xpLYhpXkNKTYn7SkysFtfy2IXe3U+kCzm0m31SJpdNA69KiPxFJYWI
 ZDRmD5aKeLHSvlop57KF9Tjj4tOwKrbGawrU5h1w1V/bOuX3WxWyP63zuDA6iMf/its60jYeO
 8UiDFsJmoVNuxNxhiDFeuQlsbi0OWm6tXL4FwP08bVZXXqxEH+MmFPmk38f0R+S/rMtqncZKy
 n0u0heq4zo2yZxiyyliwOUU0ZZXwMLziYtseX1Y5hIs8XRPygaPIWcVOFLzsXYEnmod7kExXw
 0Z38a3TnG+tEMhsk3xNynpDg6LlBy3Xt4EkAaUIfYWea8+hUIGLc48HWF/N/hGGP689g=
Cc: Arnd Bergmann <arnd@arndb.de>, Networking <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: fix ioctl old_deviceless
	bridge argument
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

On Thu, Dec 23, 2021 at 12:00 PM Remi Pommarel <repk@triplefau.lt> wrote:
>
> On Wed, Dec 22, 2021 at 10:52:20PM +0100, Arnd Bergmann wrote:
> > On Wed, Dec 22, 2021 at 8:13 PM Remi Pommarel <repk@triplefau.lt> wrote:
> [...]
> >
> > The intention of my broken patch was to make it work for compat mode as I did
> > in br_dev_siocdevprivate(), as this is now the only bit that remains broken.
> >
> > This could be done along the lines of the patch below, if you see any value in
> > it. (not tested, probably not quite right).
>
> Oh ok, because SIOC{S,G}IFBR compat ioctl was painfully done with
> old_bridge_ioctl() I didn't think those needed compat. So I adapted and
> fixed your patch to get that working.

Ok, thanks!

> Here is my test results.
>
> With my initial patch only :
>   - 64bit busybox's brctl (working)
>     # brctl show
>     bridge name     bridge id               STP enabled     interfaces
>     br0             8000.000000000000       n
>
>   - CONFIG_COMPAT=y + 32bit busybox's brctl (not working)
>     # brctl show
>     brctl: SIOCGIFBR: Invalid argument
>
> With both my intial patch and the one below :
>   - 64bit busybox's brctl (working)
>     # brctl show
>     bridge name     bridge id               STP enabled     interfaces
>     br0             8000.000000000000       n
>
>   - CONFIG_COMPAT=y + 32bit busybox's brctl (working)
>     # brctl show
>     bridge name     bridge id               STP enabled     interfaces
>     br0             8000.000000000000       n
>
> If you think this has enough value to fix those compatility issues I can
> either send the below patch as a V2 replacing my initial one for net
> or sending it as a separate patch for net-next. What would you rather
> like ?

If 32-bit busybox still uses those ioctls in moderately recent
versions, then it's probably worth doing this, but that would
be up to the bridge maintainers.

Your patch looks good to me, I see you caught a few mistakes
in my prototype. I would however suggest basing it on top of
your original fix, so that can be applied first and backported
to stable kernels, while the new patch would go on top and
not get backported.

If that works with everyone, please submit those two, and add
these tags to the second patch:

Co-developed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAB073B235
	for <lists.bridge@lfdr.de>; Fri, 23 Jun 2023 10:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A4FF60B8E;
	Fri, 23 Jun 2023 08:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A4FF60B8E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=gUOgcNgD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7ouipnVq5yd; Fri, 23 Jun 2023 08:01:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8885860AA7;
	Fri, 23 Jun 2023 08:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8885860AA7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 47792C0089;
	Fri, 23 Jun 2023 08:01:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94C30C0029
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 08:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6926140472
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 08:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6926140472
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=gUOgcNgD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3jR07AOxM0qe for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jun 2023 08:50:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F553400B8
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F553400B8
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 08:50:10 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-25e836b733eso2968000a91.0
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 01:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687337410; x=1689929410;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lFfbVhmX+rRlnfYZflmEzqdlANTovVuTRalq5Bwba3g=;
 b=gUOgcNgDy6mx9Wys0vaBKGuyhmyiklAP7sAQKRn/l5VGoOm3XUNvFJ8QT6L3gx8uZk
 +YlexuNp9Pu2Q2obpiBMBPNi/LX+5GnpYYPIPyx4owgYs5Qt8m1wG2lXYddfv5DGP4pe
 Em7HdmQhWLSlN//gqyu1erJOwpZjOZXrmJu+Do8YqvGCd/Z2gY9Dg/094I12jOZzfTYM
 dsWFv94O4+QNbYxkRj6Scbqc8XzsJDUhDHWMcZ+mJnLSwCh/I7rPBf8h8RPEHZvBtTyJ
 WOR0LQq0nuag5RQRS+0q4Tw68z6PKEXzvOdqcsbe82K4I9RVYbp1auUmhZIO3RxM5UUa
 fVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687337410; x=1689929410;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lFfbVhmX+rRlnfYZflmEzqdlANTovVuTRalq5Bwba3g=;
 b=OGtlL8faPqNanqhFc02WcD6qL7dngmSrUhk3jnagc1GV3QipLygOiMLP+g3zrwS2+f
 NxnEQKsYO21dg+HjXXfpj2IsIQurmD/5uV2hgaa0ODONQAd4OaOP7HB2S4qjXwxrsNrI
 VDYB0qfqr9OgBGpQIZDZJodkUEme+P3o28HxaDWc17jtLZGOJni0/QRNoXeeISn0TIBu
 j0uyvS3CuslyAPG8QsuWb4bux5C+DhHPA/CMD8JQ1HwWhvRhZwQ8woH6pOcAoA5rFLul
 AMiekeDFx+2pMTyXrcPfIGUJ2fDO3bbXrNOcMIAoUAXWOnfRd6UmFU8WOOWf7bCw7M/H
 wKCQ==
X-Gm-Message-State: AC+VfDzY948MA8NDYGcvV+Sg6cP4LOhLlGmjp8GEV2i6gjva6L66975Q
 1C3pFUMwKvwc0RLZxL04N5a0ZdCiCLljDIw0X88=
X-Google-Smtp-Source: ACHHUZ7V6OsQfpEdCg1TMZD1Tx9riuhvSXWOLmE8oQVIwYR42vLRipuKolNWNt5MbQfWxvS0/ztdciV4l6uTfmChAUA=
X-Received: by 2002:a17:90b:a46:b0:25b:ec0c:bf2 with SMTP id
 gw6-20020a17090b0a4600b0025bec0c0bf2mr11378446pjb.20.1687337409583; Wed, 21
 Jun 2023 01:50:09 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000051197705fdbc7e54@google.com>
 <20230621070710.380373-1-astrajoan@yahoo.com>
In-Reply-To: <20230621070710.380373-1-astrajoan@yahoo.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Wed, 21 Jun 2023 16:46:14 +0800
Message-ID: <CAD-N9QXZFMFGp3Vw4449Bx1-ttDVSF3hiwSw=e6+D096UDNfvw@mail.gmail.com>
To: Ziqi Zhao <astrajoan@yahoo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 23 Jun 2023 08:01:14 +0000
Cc: ivan.orlov0322@gmail.com, arnd@arndb.de, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, nikolay@nvidia.com,
 roopa@nvidia.com, syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com,
 kuba@kernel.org, skhan@linuxfoundation.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [syzbot] [net?] unregister_netdevice: waiting for DEV
 to become free (8)
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

On Wed, Jun 21, 2023 at 3:38=E2=80=AFPM 'Ziqi Zhao' via syzkaller-bugs
<syzkaller-bugs@googlegroups.com> wrote:
>
> Hi all,
>
> I'm taking a look at this bug as part of the exercice for the Linux
> Kernel Bug Fixing Summer 2023 program. Thanks to the help from my

This is an interesting program. There are many kernel crashes on the
syzbot dashboard, which needs help.

> mentor, Ivan Orlov and Shuah Khan, I've already obtained a reproduction
> of the issue using the provided C reproducer, and I should be able to
> submit a patch by the end of this week to fix the highlighted error. If
> you have any information or suggestions, please feel free to reply to
> this thread. Any help would be greatly appreciated!

Please carefully read the guidance of submitting patches to linux
kernel [1]. Be careful about your coding style before sending.

Note that, Syzbot has the feature: patch testing. You can upload and
test your own patch to confirm that your patch is working properly.

[1] https://docs.kernel.org/process/submitting-patches.html
>
> Best regards,
> Ziqi
>
> --
> You received this message because you are subscribed to the Google Groups=
 "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/syzkaller-bugs/20230621070710.380373-1-astrajoan%40yahoo.com.

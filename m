Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 584462C5780
	for <lists.bridge@lfdr.de>; Thu, 26 Nov 2020 15:53:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D756D87283;
	Thu, 26 Nov 2020 14:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jizV8R10veQ2; Thu, 26 Nov 2020 14:53:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 703E987034;
	Thu, 26 Nov 2020 14:53:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5921DC0052;
	Thu, 26 Nov 2020 14:53:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7C6B3C0052;
 Thu, 26 Nov 2020 14:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 572AC878D5;
 Thu, 26 Nov 2020 14:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRFMUlvGhCrR; Thu, 26 Nov 2020 14:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2754E875AF;
 Thu, 26 Nov 2020 14:53:40 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id o144so1866052ybg.7;
 Thu, 26 Nov 2020 06:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DTotsfb8u+PB0eT0g4gTrA/vgT4HfiDZTYQ/geteWC4=;
 b=QWuS1TBfImi/m9J+5lB37414TjwoB+kfRyX/7ohuLNDuEazbBA4fEE506RPmuhzrQT
 KCYao+uRLv4Su9SW/eKLjGfymcNDAcVP9irkT5MfO/ys+N1YXqwwODp/at6Hjf5mbn7y
 sEjBq+fitA5RwLT9szzutyPemHxF/3vzz+qMkDnIA1HF+rIjtAU7PcoRO+GQ0ANzP2/3
 4RgPAdoGGim7svP8Zrp9IWC0s7kVtrSQn/PXobh5aGfJoVk3uyVZYliED/q0Nk6tCoA8
 W9fyUHPup50QVVdVd9NqYx0m2pkDUcyuxLwwV68mOS3NFLJOgvtFKpngAgg7rBEfKLyO
 Kn5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DTotsfb8u+PB0eT0g4gTrA/vgT4HfiDZTYQ/geteWC4=;
 b=P5xl4IQFBbLJfaAfyz7ND/juFcZg87fp4i0w6PCcm+euMkfgl6X14XDTNBNApXriKF
 31R73ZhlTJT2mn/UYWiFq/xeiGKymCJlnGab/qJVmhPiDWmnB8BGzEXCcKpRdOqIfKWV
 /cQggMrN3ehkKakR2bl7i23Itl6E6b/+IqFbAFoNjBnIhualAFJQwefZz2gsAsQG1eLJ
 XA27vNtsUl15W1LOiVTFWNNxjOPMZLxB84o5ybvj6TmIZdmHVbvn7y8/bT2UImunGpgo
 oJyLUS2KOuVfB751hrv3osvj/SlCxQPfcv/q//TKSxH5q3D/J51DicBdsBc8bUTM3JeV
 bK8A==
X-Gm-Message-State: AOAM531hlr+yuGOzxA7WwN1UXIl78BB1yuArR6qqVcGAItFSIvD+rX32
 WHnsFMjvwDI4KFpGDwHyskZ3xa+//ITXm9JAK+A=
X-Google-Smtp-Source: ABdhPJxnOXTYq+iR4KCiqWmvI5brXjGTtWFP5n3J8AJAa70YoLiXvitjZtrbfPlByRts+Q0mJZBucXgMnTrbOCoAA44=
X-Received: by 2002:a25:aac5:: with SMTP id t63mr5128050ybi.22.1606402419264; 
 Thu, 26 Nov 2020 06:53:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
 <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
In-Reply-To: <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 26 Nov 2020 15:53:27 +0100
Message-ID: <CANiq72nobq=ptWK-qWxU91JHqkKhMcRtJNnw2XJd5-vSJWZd8Q@mail.gmail.com>
To: Edward Cree <ecree.xilinx@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, samba-technical@lists.samba.org,
 linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH 000/141] Fix fall-through warnings for Clang
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

On Wed, Nov 25, 2020 at 11:44 PM Edward Cree <ecree.xilinx@gmail.com> wrote=
:
>
> To make the intent clear, you have to first be certain that you
>  understand the intent; otherwise by adding either a break or a
>  fallthrough to suppress the warning you are just destroying the
>  information that "the intent of this code is unknown".

If you don't know what the intent of your own code is, then you
*already* have a problem in your hands.

> Figuring out the intent of a piece of unfamiliar code takes more
>  than 1 minute; just because
>     case foo:
>         thing;
>     case bar:
>         break;
>  produces identical code to
>     case foo:
>         thing;
>         break;
>     case bar:
>         break;
>  doesn't mean that *either* is correct =E2=80=94 maybe the author meant

What takes 1 minute is adding it *mechanically* by the author, i.e. so
that you later compare whether codegen is the same.

>  to write
>     case foo:
>         return thing;
>     case bar:
>         break;
>  and by inserting that break you've destroyed the marker that
>  would direct someone who knew what the code was about to look
>  at that point in the code and spot the problem.

Then it means you already have a bug. This patchset gives the
maintainer a chance to notice it, which is a good thing. The "you've
destroyed the market" claim is bogus, because:
  1. you were not looking into it
  2. you didn't notice the bug so far
  3. is implicit -- harder to spot
  4. is only useful if you explicitly take a look at this kind of bug.
So why don't you do it now?

> Thus, you *always* have to look at more than just the immediate
>  mechanical context of the code, to make a proper judgement that
>  yes, this was the intent.

I find that is the responsibility of the maintainers and reviewers for
tree-wide patches like this, assuming they want. They can also keep
the behavior (and the bugs) without spending time. Their choice.

> If you think that that sort of thing
>  can be done in an *average* time of one minute, then I hope you
>  stay away from code I'm responsible for!

Please don't accuse others of recklessness or incompetence, especially
if you didn't understand what they said.

> A warning is only useful because it makes you *think* about the
>  code.  If you suppress the warning without doing that thinking,
>  then you made the warning useless; and if the warning made you
>  think about code that didn't *need* it, then the warning was
>  useless from the start.

We are not suppressing the warning. Quite the opposite, in fact.

> So make your mind up: does Clang's stricter -Wimplicit-fallthrough
>  flag up code that needs thought (in which case the fixes take
>  effort both to author and to review)

As I said several times already, it does take time to review if the
maintainer wants to take the chance to see if they had a bug to begin
with, but it does not require thought for the author if they just go
for equivalent codegen.

> or does it flag up code
>  that can be mindlessly "fixed" (in which case the warning is
>  worthless)?  Proponents in this thread seem to be trying to
>  have it both ways.

A warning is not worthless just because you can mindlessly fix it.
There are many counterexamples, e.g. many
checkpatch/lint/lang-format/indentation warnings, functional ones like
the `if (a =3D b)` warning...

Cheers,
Miguel

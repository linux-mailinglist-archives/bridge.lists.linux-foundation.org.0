Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156F72C1B0C
	for <lists.bridge@lfdr.de>; Tue, 24 Nov 2020 02:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6FA3871E1;
	Tue, 24 Nov 2020 01:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwsKw-6+1ZNW; Tue, 24 Nov 2020 01:46:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B7C787143;
	Tue, 24 Nov 2020 01:46:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 539D1C0052;
	Tue, 24 Nov 2020 01:46:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9509C0052;
 Tue, 24 Nov 2020 01:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B78A486108;
 Tue, 24 Nov 2020 01:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3d_km5jLGXd6; Tue, 24 Nov 2020 01:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F9DC84FB0;
 Tue, 24 Nov 2020 01:46:54 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0FEE206FA;
 Tue, 24 Nov 2020 01:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606182413;
 bh=l8PzaObySRRsk8Qr2VGSW2cE2KYLeZxGCFjBrnWF/Lc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UW7qkn00cv0wKiMaPmt66xG3QkCT8bOVJt7eg3jDQbxlQGPJk4mx/VqCDN8ptUhlR
 dhn0h/4nyOm1M8zdsuA37E4QjM+7Riaqfpsc9IapZPm4KcMQtw7px4ieszGaMfwO0Z
 lfMGoIgQ4EohQhNLmkPGid0CCriQVWDtDbY9z+UQ=
Date: Mon, 23 Nov 2020 17:46:48 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20201123174648.6a22575b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, dm-devel@redhat.com,
 keyrings@vger.kernel.org, GR-everest-linux-l2@marvell.com,
 "maintainer:X86"@osuosl.org, linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 bridge@lists.linux-foundation.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, ARCHITECTURE@osuosl.org,
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, 32-BIT AND 64-BIT <" <x86@kernel.org>,
 xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
 Nathan  Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
 Joe  Perches <joe@perches.com>"@osuosl.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-block@vger.kernel.org,
 ceph-devel@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 GR-Linux-NIC-Dev@marvell.com, LKML <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE\"
 <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 Linux Memory Management List  <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
 linux-rdma@vger.kernel.org, Linux-Renesas  <linux-renesas-soc@vger.kernel.org>,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-wireless  <linux-wireless@vger.kernel.
 org>, Network Development  <netdev@vger.kernel.org>,
 netfilter-devel@vger.kernel.org, nouveau@lists.freedesktop.org,
 op-tee@lists.trustedfirmware.org, oss-drivers@netronome.com,
 patches@opensource.cirrus.com, rds-devel@oss.oracle.com,
 reiserfs-devel@vger.kernel.org, samba-technical@lists.samba.org,
 selinux@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org,
 "@osuosl.org
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

On Mon, 23 Nov 2020 17:32:51 -0800 Nick Desaulniers wrote:
> On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
> > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote: =20
> > > If none of the 140 patches here fix a real bug, and there is no change
> > > to machine code then it sounds to me like a W=3D2 kind of a warning. =
=20
> >
> > FWIW, this series has found at least one bug so far:
> > https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5kvFFFrxzhPSM6qKAO=
8gxSp=3DKr_CQ@mail.gmail.com/ =20
>=20
> So looks like the bulk of these are:
> switch (x) {
>   case 0:
>     ++x;
>   default:
>     break;
> }
>=20
> I have a patch that fixes those up for clang:
> https://reviews.llvm.org/D91895

=F0=9F=98=8D

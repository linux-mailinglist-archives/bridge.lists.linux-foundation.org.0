Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2552C44DA
	for <lists.bridge@lfdr.de>; Wed, 25 Nov 2020 17:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AB5B876BC;
	Wed, 25 Nov 2020 16:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CM3f0DcJYEYd; Wed, 25 Nov 2020 16:24:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69753876B3;
	Wed, 25 Nov 2020 16:24:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D34BC0052;
	Wed, 25 Nov 2020 16:24:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4D4EC0052;
 Wed, 25 Nov 2020 16:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C20B42E18B;
 Wed, 25 Nov 2020 16:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bSofywQZYVx; Wed, 25 Nov 2020 16:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 44CD92E0FE;
 Wed, 25 Nov 2020 16:24:11 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 867952067C;
 Wed, 25 Nov 2020 16:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606321450;
 bh=GZ2k+AA6ahSTxK1Lb66nxQ5QpMsxQMwUtXM6UrJuD5k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o0jPLXU5vRd5gkErOG+l7hZeBdnc0mPNkdd6O5DWsXDAKIVZ2C96zG0tcOWSvOOEW
 +aPDAqgCVL2k+j5MKH8XxKfk9jsHh44ZvIyml45/mV5SL7Kf2RcLQB8xCvtxafIM4N
 usaGZavY91klVUpIE9ogGjcSBu1B0MRmyXV9nrIc=
Date: Wed, 25 Nov 2020 08:24:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <20201125082405.1d8c23dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
References: <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook>
 <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
 <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: alsa-devel@alsa-project.org, bridge@lists.linux-foundation.org,
 linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE\"
 <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org,
 Jonathan Cameron  <Jonathan.Cameron@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>"@osuosl.org, linux-fbdev@vger.kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 linux-atm-general@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 usb-storage@lists.one-eyed-alien.net, linux-mmc@vger.kernel.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netfilter-devel@vger.kernel.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 selinux@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-watchdog@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, Joe Perches <joe@perches.com>,
 linux-nfs@vger.kernel.org
Subject: Re: [Bridge] [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
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

On Wed, 25 Nov 2020 04:24:27 -0800 Nick Desaulniers wrote:
> I even agree that most of the churn comes from
> 
> case 0:
>   ++x;
> default:
>   break;

And just to spell it out,

case ENUM_VALUE1:
	bla();
	break;
case ENUM_VALUE2:
	bla();
default:
	break;

is a fairly idiomatic way of indicating that not all values of the enum
are expected to be handled by the switch statement. 

I really hope the Clang folks are reasonable and merge your patch.

> If trivial patches are adding too much to your workload, consider
> training a co-maintainer or asking for help from one of your reviewers
> whom you trust.  I don't doubt it's hard to find maintainers, but
> existing maintainers should go out of their way to entrust
> co-maintainers especially when they find their workload becomes too
> high.  And reviewing/picking up trivial patches is probably a great
> way to get started.  If we allow too much knowledge of any one
> subsystem to collect with one maintainer, what happens when that
> maintainer leaves the community (which, given a finite lifespan, is an
> inevitability)?

The burn out point is about enjoying your work and feeling that it
matters. It really doesn't make much difference if you're doing
something you don't like for 12 hours every day or only in shifts with
another maintainer. You'll dislike it either way.

Applying a real patch set and then getting a few follow ups the next day
for trivial coding things like fallthrough missing or static missing,
just because I didn't have the full range of compilers to check with
before applying makes me feel pretty shitty, like I'm not doing a good
job. YMMV.

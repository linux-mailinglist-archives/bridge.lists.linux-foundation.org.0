Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD712C3995
	for <lists.bridge@lfdr.de>; Wed, 25 Nov 2020 08:05:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14F2F84D74;
	Wed, 25 Nov 2020 07:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Q5iAszoTouH; Wed, 25 Nov 2020 07:05:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6091480C93;
	Wed, 25 Nov 2020 07:05:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 386E6C0052;
	Wed, 25 Nov 2020 07:05:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 109BFC0052;
 Wed, 25 Nov 2020 07:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDB3A27230;
 Wed, 25 Nov 2020 07:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FatEya16kkyM; Wed, 25 Nov 2020 07:05:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CF5B2052C;
 Wed, 25 Nov 2020 07:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 313DE1280408;
 Tue, 24 Nov 2020 23:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1606287940;
 bh=PpyvloC8ztllb7q8ndtGKJRs78ChiB3jg6tteM0zYL0=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=DUjk2u5mMxkvusJZ7TUknDmT+9jEkjAK5Du54VYrLnX3ZVAsqbXKInJF3+bjbWxe1
 sPTOm9Jo8O4FiM37EcbSbGJ09Z6i3toRLj70BanOqmx/doOouqQw1ofRfirJ315HKN
 ACp6UaCD/rMf1rqLOvr/v7W+FqOYQZREI5LkhaoU=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 8AuMCu2vLv9Z; Tue, 24 Nov 2020 23:05:40 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id A873112803EC;
 Tue, 24 Nov 2020 23:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1606287940;
 bh=PpyvloC8ztllb7q8ndtGKJRs78ChiB3jg6tteM0zYL0=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=DUjk2u5mMxkvusJZ7TUknDmT+9jEkjAK5Du54VYrLnX3ZVAsqbXKInJF3+bjbWxe1
 sPTOm9Jo8O4FiM37EcbSbGJ09Z6i3toRLj70BanOqmx/doOouqQw1ofRfirJ315HKN
 ACp6UaCD/rMf1rqLOvr/v7W+FqOYQZREI5LkhaoU=
Message-ID: <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 24 Nov 2020 23:05:35 -0800
In-Reply-To: <202011241327.BB28F12F6@keescook>
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
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: alsa-devel@alsa-project.org, bridge@lists.linux-foundation.org,
 target-devel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org, samba-technical@lists.samba.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 linux-atm-general@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, usb-storage@lists.one-eyed-alien.net,
 linux-mmc@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, virtualization@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
 nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-mm@kvack.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-usb@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, x86@kernel.org,
 linux-hardening@vger.kernel.org
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

On Tue, 2020-11-24 at 13:32 -0800, Kees Cook wrote:
> On Mon, Nov 23, 2020 at 08:31:30AM -0800, James Bottomley wrote:
> > Really, no ... something which produces no improvement has no value
> > at all ... we really shouldn't be wasting maintainer time with it
> > because it has a cost to merge.  I'm not sure we understand where
> > the balance lies in value vs cost to merge but I am confident in
> > the zero value case.
> 
> What? We can't measure how many future bugs aren't introduced because
> the kernel requires explicit case flow-control statements for all new
> code.

No but we can measure how vulnerable our current coding habits are to
the mistake this warning would potentially prevent.  I don't think it's
wrong to extrapolate that if we had no instances at all of prior coding
problems we likely wouldn't have any in future either making adopting
the changes needed to enable the warning valueless ... that's the zero
value case I was referring to above.

Now, what we have seems to be about 6 cases (at least what's been shown
in this thread) where a missing break would cause potentially user
visible issues.  That means the value of this isn't zero, but it's not
a no-brainer massive win either.  That's why I think asking what we've
invested vs the return isn't a useless exercise.

> We already enable -Wimplicit-fallthrough globally, so that's not the
> discussion. The issue is that Clang is (correctly) even more strict
> than GCC for this, so these are the remaining ones to fix for full
> Clang coverage too.
> 
> People have spent more time debating this already than it would have
> taken to apply the patches. :)

You mean we've already spent 90% of the effort to come this far so we
might as well go the remaining 10% because then at least we get some
return? It's certainly a clinching argument in defence procurement ...

> This is about robustness and language wrangling. It's a big code-
> base, and this is the price of our managing technical debt for
> permanent robustness improvements. (The numbers I ran from Gustavo's
> earlier patches were that about 10% of the places adjusted were
> identified as legitimate bugs being fixed. This final series may be
> lower, but there are still bugs being found from it -- we need to
> finish this and shut the door on it for good.)

I got my six patches by analyzing the lwn.net report of the fixes that
was cited which had 21 of which 50% didn't actually change the emitted
code, and 25% didn't have a user visible effect.

But the broader point I'm making is just because the compiler people
come up with a shiny new warning doesn't necessarily mean the problem
it's detecting is one that causes us actual problems in the code base. 
I'd really be happier if we had a theory about what classes of CVE or
bug we could eliminate before we embrace the next new warning.

James




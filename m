Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41E71FDA81
	for <lists.bridge@lfdr.de>; Thu, 18 Jun 2020 02:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C3F688698;
	Thu, 18 Jun 2020 00:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rbr9mSGFC1hb; Thu, 18 Jun 2020 00:43:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4F1988661;
	Thu, 18 Jun 2020 00:43:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C0ABC016E;
	Thu, 18 Jun 2020 00:43:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F3C6C016E
 for <bridge@lists.linux-foundation.org>; Thu, 18 Jun 2020 00:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 212C687ECA
 for <bridge@lists.linux-foundation.org>; Thu, 18 Jun 2020 00:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxyLn7tKA+ra for <bridge@lists.linux-foundation.org>;
 Thu, 18 Jun 2020 00:43:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9220587942
 for <bridge@lists.linux-foundation.org>; Thu, 18 Jun 2020 00:43:51 +0000 (UTC)
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B88521556;
 Thu, 18 Jun 2020 00:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592441031;
 bh=z8URL52jsUeVV4acHgb8mhAwfXotlh0gswF4QwIowhc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lFr7x6WrpgmRN4lzyjuvDZG/zGaopYG62aB1wPAszZtJjQPV9FdWelscdkKZ1qRgQ
 AvtBQETgA+y3uFWv09ZMZ8o39Xuvl5i+wHRZRgNpcmzkR8W9OqNit+yo8ORkU4fGBb
 M3YbM5M6BVVRc9kul9eNloay4TPH74oCLloXGYj4=
Date: Wed, 17 Jun 2020 17:43:48 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-Id: <20200617174348.70710c3ecb14005fb1b9ec39@linux-foundation.org>
In-Reply-To: <20200610154923.27510-1-mcgrof@kernel.org>
References: <20200610154923.27510-1-mcgrof@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, keyrings@vger.kernel.org,
 christian.brauner@ubuntu.com, bridge@lists.linux-foundation.org,
 jmorris@namei.org, kuba@kernel.org, serge@hallyn.com, keescook@chromium.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com, josh@joshtriplett.org,
 slyfox@gentoo.org, viro@zeniv.linux.org.uk, axboe@kernel.dk,
 bfields@fieldses.org, linux-nfs@vger.kernel.org, chainsaw@gentoo.org,
 ravenexp@gmail.com, gregkh@linuxfoundation.org, philipp.reisner@linbit.com,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
 linux-fsdevel@vger.kernel.org, lars.ellenberg@linbit.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 0/5] kmod/umh: a few fixes
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

On Wed, 10 Jun 2020 15:49:18 +0000 "Luis R. Rodriguez" <mcgrof@kernel.org> wrote:

> Tiezhu Yang had sent out a patch set with a slew of kmod selftest
> fixes, and one patch which modified kmod to return 254 when a module
> was not found. This opened up pandora's box about why that was being
> used for and low and behold its because when UMH_WAIT_PROC is used
> we call a kernel_wait4() call but have never unwrapped the error code.
> The commit log for that fix details the rationale for the approach
> taken. I'd appreciate some review on that, in particular nfs folks
> as it seems a case was never really hit before.
> 
> This goes boot tested, selftested with kmod, and 0-day gives its
> build blessings.

Any thoughts on which kernel version(s) need some/all of these fixes?

>  drivers/block/drbd/drbd_nl.c         | 20 +++++------
>  fs/nfsd/nfs4recover.c                |  2 +-
>  include/linux/sched/task.h           | 13 ++++++++
>  kernel/kmod.c                        |  5 ++-
>  kernel/umh.c                         |  4 +--
>  lib/test_kmod.c                      |  2 +-
>  net/bridge/br_stp_if.c               | 10 ++----
>  security/keys/request_key.c          |  2 +-
>  tools/testing/selftests/kmod/kmod.sh | 50 +++++++++++++++++++++++-----

I'm not really sure who takes kmod changes - I'll grab these unless
someone shouts at me.


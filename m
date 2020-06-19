Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE5322CCE3
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 102D1871F4;
	Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uod5r6pA6u-D; Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B6F487255;
	Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6685DC004C;
	Fri, 24 Jul 2020 18:21:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC82BC016E
 for <bridge@lists.linux-foundation.org>; Fri, 19 Jun 2020 20:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FDAB88DFB
 for <bridge@lists.linux-foundation.org>; Fri, 19 Jun 2020 20:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbQlZkuH46IQ for <bridge@lists.linux-foundation.org>;
 Fri, 19 Jun 2020 20:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 053A588DFA
 for <bridge@lists.linux-foundation.org>; Fri, 19 Jun 2020 20:46:30 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p3so2289188pgh.3
 for <bridge@lists.linux-foundation.org>; Fri, 19 Jun 2020 13:46:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+ig1uMooEc7hJ7T4tJda0UtWOL236yx/7EtI4v6obG4=;
 b=BNWpMkK88n6UGElfvuty08l3abz/Gs5XIa4FskZb4MPTQNIbRtYQeNXA4aCRZZbT24
 aDsjzI7dLVntNX6Z5zFqCgjP5W1xKcl35dsAr6GBi2rFA5IPe1ZbfF3DgdUTH8UZTPRG
 xYbbGLyuxRvizMvVH4bVvnKP68PHDzFqCyRt49+owLN5AK4Snyaj/BUJO0XxrIsykmvP
 +Pl5L+O6oa7VVlCch9zpg+IMsi5EMjCplbPxHDkZuwiJ+7NovtEql/96njXJIUMmc5mk
 oZo4ew77x9rUp5c+f1LtBvgCQNJUrOkaPGqwNeHi4jfNDlv3hPtnYviGigrS9suUKpXC
 OqKg==
X-Gm-Message-State: AOAM531L7nklK51bolyLA8vZExGxtVojgSpUM2oa2YK5yLgoLp+n4wvH
 r7npIEVoGRRl8PFH3udjdQg=
X-Google-Smtp-Source: ABdhPJzKNPWlIV0nmO+CTspxV1ueBsq/MLwS42z81TaqEce+i1mqYn5aUJ4K080LEjB7u0IDfz6xvA==
X-Received: by 2002:aa7:8145:: with SMTP id d5mr9453904pfn.196.1592599589431; 
 Fri, 19 Jun 2020 13:46:29 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id n9sm6138891pjj.23.2020.06.19.13.46.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 13:46:27 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id CAC654063E; Fri, 19 Jun 2020 20:46:26 +0000 (UTC)
Date: Fri, 19 Jun 2020 20:46:26 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20200619204626.GK11244@42.do-not-panic.com>
References: <20200610154923.27510-1-mcgrof@kernel.org>
 <20200617174348.70710c3ecb14005fb1b9ec39@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200617174348.70710c3ecb14005fb1b9ec39@linux-foundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, keyrings@vger.kernel.org,
 christian.brauner@ubuntu.com, bridge@lists.linux-foundation.org,
 jmorris@namei.org, kuba@kernel.org, serge@hallyn.com, keescook@chromium.org,
 nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com, josh@joshtriplett.org,
 slyfox@gentoo.org, viro@zeniv.linux.org.uk, axboe@kernel.dk,
 chainsaw@gentoo.org, ravenexp@gmail.com, gregkh@linuxfoundation.org,
 philipp.reisner@linbit.com, linux-security-module@vger.kernel.org,
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

On Wed, Jun 17, 2020 at 05:43:48PM -0700, Andrew Morton wrote:
> On Wed, 10 Jun 2020 15:49:18 +0000 "Luis R. Rodriguez" <mcgrof@kernel.org> wrote:
> 
> > Tiezhu Yang had sent out a patch set with a slew of kmod selftest
> > fixes, and one patch which modified kmod to return 254 when a module
> > was not found. This opened up pandora's box about why that was being
> > used for and low and behold its because when UMH_WAIT_PROC is used
> > we call a kernel_wait4() call but have never unwrapped the error code.
> > The commit log for that fix details the rationale for the approach
> > taken. I'd appreciate some review on that, in particular nfs folks
> > as it seems a case was never really hit before.
> > 
> > This goes boot tested, selftested with kmod, and 0-day gives its
> > build blessings.
> 
> Any thoughts on which kernel version(s) need some/all of these fixes?

Well, in so far as fixes, this is the real important part:

* request_module() used to fail with an error code of
  256 when a module was not found. Now it properly
  returns 1.

* fs/nfsd/nfs4recover.c: we never were disabling the
  upcall as the error code of -ENOENT or -EACCES was
  *never* properly checked for error code

Since the request_module() fix is only affecting userspace
for the kmod tests, through the kmod test driver, ie, we don't expose
this to userspace in any other place, I don't see that as critical.
Let me be clear, we have a test_kmod driver which exposes knobs
and one of the knobs lets userspace query the return value of a
request_module() call, and we use this test_kmod driver to stress
test kmod loader. Let us also recall that the fix is *iff* an error
*did* occur. I *cannot* think of a reason why this would be critical
to merge to older stable kernels for this reason for request_module()'s
sake.

Bruce, Chuck:

But... for NFS... I'd like the NFS folks to really look at that
and tell us is some folks really should care about that. I also
find it perplexing there was a comment in place there to *ensure*
the error was checked for, and so it seemed someone cared for that
condition.

> >  drivers/block/drbd/drbd_nl.c         | 20 +++++------
> >  fs/nfsd/nfs4recover.c                |  2 +-
> >  include/linux/sched/task.h           | 13 ++++++++
> >  kernel/kmod.c                        |  5 ++-
> >  kernel/umh.c                         |  4 +--
> >  lib/test_kmod.c                      |  2 +-
> >  net/bridge/br_stp_if.c               | 10 ++----
> >  security/keys/request_key.c          |  2 +-
> >  tools/testing/selftests/kmod/kmod.sh | 50 +++++++++++++++++++++++-----
> 
> I'm not really sure who takes kmod changes - I'll grab these unless
> someone shouts at me.

Greg usually takes it, but as usual, thanks for picking up the slack ;)

  Luis

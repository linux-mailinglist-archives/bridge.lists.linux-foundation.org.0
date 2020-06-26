Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6165E22CD18
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA4B488C0C;
	Fri, 24 Jul 2020 18:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nj+kZTgag--6; Fri, 24 Jul 2020 18:22:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C4CB865B0;
	Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15305C004C;
	Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F5AEC016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54EB21FDAF
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2wJ4TOCMpT4 for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 11:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F3AD241C8
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:40:11 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id b92so4836387pjc.4
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 04:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wnn5CPE1OQI5MbFdoVeNzug5Y/E4qNsr7nm00pkYjsg=;
 b=Qz59g0v2zJvM4dQR3Sl945I1GWfsqx3K9bvglOyCBiIC5T8cxM9UM7kl/A9FneDLhf
 DO/05wTaga2qZ9qvqT/lsHwtxMWiWUAfccldOf0NydbzaS5kjDbGe/tdtQQ/USthMKwF
 42QaltrGAJe1mTT8993xhu5ePHHM42GSJi+yJyU19bg2KinLCEMMbcfeBZIe9SwQ6vGT
 DVXVelrceIZi16OjKCzWEtpJisckeSMowvXVKmEzsQlxz0KIoJNRX2CsFzV2mk9T1wdg
 IwKcHiwvTKIMr2C1W4zyYzlCMDiYqQqZ5F7KaT9YM1l7+EE8QB6z+nPJqClx8jb4DWbd
 lc4A==
X-Gm-Message-State: AOAM530rVCb9CnVkl5cqERT1OhMhD66oJgkx4t5mvwMe08l+5q+D8LDy
 ffZZW0aBjWCTNVV6IV19Mmc=
X-Google-Smtp-Source: ABdhPJwGnA6i8X9De1IIY6uo4WMjc9fcRybYmtI1FEyCJ5SkbsL4wzndlVbt12ryEpm7GBivRrC8Cw==
X-Received: by 2002:a17:90b:1292:: with SMTP id
 fw18mr2901992pjb.183.1593171610835; 
 Fri, 26 Jun 2020 04:40:10 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id g21sm25348911pfh.134.2020.06.26.04.40.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 04:40:09 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 8D0D340B24; Fri, 26 Jun 2020 11:40:08 +0000 (UTC)
Date: Fri, 26 Jun 2020 11:40:08 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20200626114008.GK4332@42.do-not-panic.com>
References: <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <feb6a8c4-2b94-3f95-6637-679e089a71ca@de.ibm.com>
 <20200626090001.GA30103@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200626090001.GA30103@infradead.org>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 dhowells@redhat.com, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, bfields@fieldses.org,
 linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, davem@davemloft.net
Subject: Re: [Bridge] linux-next: umh: fix processed error when
 UMH_WAIT_PROC is used seems to break linux bridge on s390x (bisected)
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

On Fri, Jun 26, 2020 at 10:00:01AM +0100, Christoph Hellwig wrote:
> On Fri, Jun 26, 2020 at 07:22:34AM +0200, Christian Borntraeger wrote:
> > 
> > 
> > On 26.06.20 04:54, Luis Chamberlain wrote:
> > > On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
> > >>
> > >>
> > >> On 24.06.20 20:32, Christian Borntraeger wrote:
> > >> [...]> 
> > >>> So the translations look correct. But your change is actually a sematic change
> > >>> if(ret) will only trigger if there is an error
> > >>> if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
> > >>> and we did not do it before. 
> > >>>
> > >>
> > >> So the right fix is
> > >>
> > >> diff --git a/kernel/umh.c b/kernel/umh.c
> > >> index f81e8698e36e..a3a3196e84d1 100644
> > >> --- a/kernel/umh.c
> > >> +++ b/kernel/umh.c
> > >> @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
> > >>                  * the real error code is already in sub_info->retval or
> > >>                  * sub_info->retval is 0 anyway, so don't mess with it then.
> > >>                  */
> > >> -               if (KWIFEXITED(ret))
> > >> +               if (KWEXITSTATUS(ret))
> > >>                         sub_info->retval = KWEXITSTATUS(ret);
> > >>         }
> > >>  
> > >> I think.
> > > 
> > > Nope, the right form is to check for WIFEXITED() before using WEXITSTATUS().
> > 
> > But this IS a change over the previous code, no?
> > I will test next week as I am travelling right now. 
> 
> I'm all for reverting back to the previous behavior.  If someone wants
> a behavior change it should be a separate patch.  And out of pure self
> interest I'd like to see that change after my addition of the
> kernel_wait helper to replace the kernel_wait4 abuse :)

Yeah sure, this will be *slightly* cleaner after that. Today we
implicitly return -ECHLD as well under the assumption the kernel_wait4()
call failed.

Andrew, can you please revert these two for now:

selftests: simplify kmod failure value
umh: fix processed error when UMH_WAIT_PROC is used

Later, we'll add Christoph's simplier kernel wait, and make the change
directly there to catpure the right error. That still won't fix this reported
issue, but it will be cleaner and will go tested by Christian Borntraeger
before.

  Luis

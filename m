Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 882F722CD21
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 044E888C26;
	Fri, 24 Jul 2020 18:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1UlOgi3nQRC; Fri, 24 Jul 2020 18:22:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D04788AA6;
	Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 47F8AC004E;
	Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32073C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20DD089089
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1UvFz7P1FaM for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 15:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8041189026
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 15:58:22 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id h4so3990468plt.9
 for <bridge@lists.linux-foundation.org>; Wed, 01 Jul 2020 08:58:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vhjTDAhbhu56LOxVyk2itTItRi0VSUk3vpRCYOsvLps=;
 b=Yq2/tnocnaLTWyosypVdqlmmBgv/URFARbptkXbgs5fZyZKHZK2hud1PXlR6wy4Pkj
 6vW/qb8CNcVWA7Ej+t221Uo7p5Tr+c2qBK0DFwlukSLQddkbh8dyyuhVJsjdCzKFsElZ
 3m33W0QvH+PJ2x8cuCmFbvjTs0+096hEtYm8uachhHVLt2p5vax8S+vmSws6K9DU9bO6
 3Z48fN9Y4HZTiUGU12PvbiGMW24U3b2I1+iTkilQF2I+ngUZed7E9/1lPwWy1ElCLNP6
 FGoTLXG40iPMe/PgNj8VqG/NRGhQn5le1sOjZPinaqNYL0HJEhWdT14gtomfDJA9OBq4
 APrQ==
X-Gm-Message-State: AOAM531kKlhHl94J4yxSRXobzq7+a9mh+xE4vD1963bIAOosWT1XkK92
 NJoAmCDlVVAPW2QOF4uzvhY=
X-Google-Smtp-Source: ABdhPJxvf5MuNk7GstFk4o8V8i6QVmoWUER1GnE9OdBRmndl8MWc4FrVkJpuazefUlO6cRHWSimmKg==
X-Received: by 2002:a17:90b:3547:: with SMTP id
 lt7mr2756806pjb.181.1593619102016; 
 Wed, 01 Jul 2020 08:58:22 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id c2sm6046631pgk.77.2020.07.01.08.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 08:58:20 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 08F13403DC; Wed,  1 Jul 2020 15:58:20 +0000 (UTC)
Date: Wed, 1 Jul 2020 15:58:19 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200701155819.GU4332@42.do-not-panic.com>
References: <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
 <20200701153859.GT4332@42.do-not-panic.com>
 <f9f0f868-e511-990a-2a74-1806ac0cb7ac@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f9f0f868-e511-990a-2a74-1806ac0cb7ac@de.ibm.com>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, ast@kernel.org,
 jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, kuba@kernel.org, serge@hallyn.com,
 keescook@chromium.org, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 josh@joshtriplett.org, slyfox@gentoo.org, viro@zeniv.linux.org.uk,
 axboe@kernel.dk, dhowells@redhat.com, linux-nfs@vger.kernel.org,
 chainsaw@gentoo.org, ravenexp@gmail.com, gregkh@linuxfoundation.org,
 markward@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, lars.ellenberg@linbit.com, davem@davemloft.net
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

On Wed, Jul 01, 2020 at 05:48:48PM +0200, Christian Borntraeger wrote:
> 
> 
> On 01.07.20 17:38, Luis Chamberlain wrote:
> > On Wed, Jul 01, 2020 at 11:08:57PM +0900, Tetsuo Handa wrote:
> >> On 2020/07/01 22:53, Luis Chamberlain wrote:
> >>>> Well, it is not br_stp_call_user() but br_stp_start() which is expecting
> >>>> to set sub_info->retval for both KWIFEXITED() case and KWIFSIGNALED() case.
> >>>> That is, sub_info->retval needs to carry raw value (i.e. without "umh: fix
> >>>> processed error when UMH_WAIT_PROC is used" will be the correct behavior).
> >>>
> >>> br_stp_start() doesn't check for the raw value, it just checks for err
> >>> or !err. So the patch, "umh: fix processed error when UMH_WAIT_PROC is
> >>> used" propagates the correct error now.
> >>
> >> No. If "/sbin/bridge-stp virbr0 start" terminated due to e.g. SIGSEGV
> >> (for example, by inserting "kill -SEGV $$" into right after "#!/bin/sh" line),
> >> br_stp_start() needs to select BR_KERNEL_STP path. We can't assume that
> >> /sbin/bridge-stp is always terminated by exit() syscall (and hence we can't
> >> ignore KWIFSIGNALED() case in call_usermodehelper_exec_sync()).
> > 
> > Ah, well that would be a different fix required, becuase again,
> > br_stp_start() does not untangle the correct error today really.
> > I also I think it would be odd odd that SIGSEGV or another signal 
> > is what was terminating Christian's bridge stp call, but let's
> > find out!
> > 
> > Note we pass 0 to the options to wait so the mistake here could indeed
> > be that we did not need KWIFSIGNALED(). I was afraid of this prospect...
> > as it other implications.
> > 
> > It means we either *open code* all callers, or we handle this in a
> > unified way on the umh. And if we do handle this in a unified way, it
> > then begs the question as to *what* do we pass for the signals case and
> > continued case. Below we just pass the signal, and treat continued as
> > OK, but treating continued as OK would also be a *new* change as well.
> > 
> > For instance (this goes just boot tested, but Christian if you can
> > try this as well that would be appreciated):
> 
> 
> Does not help, the bridge stays in DOWN state. 

OK thanks for testing, that was fast! Does your code go through the
STP kernel path or userpath? If it is taking the STP kernel path
then this is not the real culprit to your issue then.

  Luis

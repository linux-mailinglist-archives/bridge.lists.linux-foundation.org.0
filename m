Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C722CCEB
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 570D187E1D;
	Fri, 24 Jul 2020 18:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MNgiit8vfkkV; Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0630687DC2;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6E51C004E;
	Fri, 24 Jul 2020 18:21:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E7ED7C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 12:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3BB988609
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 12:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cI5gr7wPh7uL for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 12:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AD198682F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 12:05:49 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id y18so989080plr.4
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 05:05:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4rW66tKgMxqam/uZ0Bz8Bt7qxGkjsWEZUtUfdcWMRhc=;
 b=r4aLovLh854uuAPjvMtEcUYbZI7ddTEr+CcQZOGX4TaKwfFvEogfWfZe/gwZzNkdD8
 lbraHRKEBcUIH57Qc9gc3rXp9KDAq7vckS770VAgF6V+pyNo2Jws4roJQX5QrQzFPu/F
 bEykc42WahfhXiLNDfZ+ehMnf5467Dhr+jq4qRZJvRP+EjS+PcQ4VDi4TULaJxAlb7ML
 pSTXkiqhuaOB8EkJdoA57rpASjQa+G78ExdkQ0dSOF1Y9kTA6sY6t5qffIhf2ZgVnP52
 elXYy78+g3S0/T9N/hn2vcTZvV745UtcHP9QjO2diPNjYzFcNhWWEZm700Gps/IBoXbW
 cXNQ==
X-Gm-Message-State: AOAM5331tXKhaLxnPg6Rx8xbVXEL3k2gcUMTAZ4b7WKeyiFjE06+nkJn
 Sb7ztGEYy4BCTryo1WBjgfI=
X-Google-Smtp-Source: ABdhPJx9eNUtUf3wuLMsAQaZO33hgDdcCinYPWgXgNxzY43C5jkpxbcvMxqvxkaY5VupgSIqvNCnfQ==
X-Received: by 2002:a17:90a:30c2:: with SMTP id
 h60mr3388528pjb.23.1593000348658; 
 Wed, 24 Jun 2020 05:05:48 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id y3sm20167541pff.37.2020.06.24.05.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 05:05:47 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 3F48940430; Wed, 24 Jun 2020 12:05:46 +0000 (UTC)
Date: Wed, 24 Jun 2020 12:05:46 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20200624120546.GC4332@42.do-not-panic.com>
References: <20200610154923.27510-5-mcgrof@kernel.org>
 <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 dhowells@redhat.com, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org, kuba@kernel.org,
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

On Wed, Jun 24, 2020 at 01:11:54PM +0200, Christian Borntraeger wrote:
> 
> 
> On 23.06.20 16:23, Christian Borntraeger wrote:
> > 
> > 
> > On 23.06.20 16:11, Christian Borntraeger wrote:
> >> Jens Markwardt reported a regression in the linux-next runs.  with "umh: fix
> >> processed error when UMH_WAIT_PROC is used" (from linux-next) a linux bridge
> >> with an KVM guests no longer activates :
> >>
> >> without patch
> >> # ip addr show dev virbr1
> >> 6: virbr1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
> >>     link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
> >>     inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
> >>        valid_lft forever preferred_lft forever
> >>
> >> with this patch the bridge stays DOWN with NO-CARRIER
> >>
> >> # ip addr show dev virbr1
> >> 6: virbr1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
> >>     link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
> >>     inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
> >>        valid_lft forever preferred_lft forever
> >>
> >> This was bisected in linux-next. Reverting from linux-next also fixes the issue.
> >>
> >> Any idea?
> > 
> > FWIW, s390 is big endian. Maybe some of the shifts inn the __KW* macros are wrong.
> 
> Does anyone have an idea why "umh: fix processed error when UMH_WAIT_PROC is used" breaks the
> linux-bridge on s390?

glibc for instance defines __WEXITSTATUS in only one location: bits/waitstatus.h
and it does not special case it per architecture, so at this point I'd
have to say we have to look somewhere else for why this is happening.

The commmit which caused this is issuing a correct error code down the
pipeline, nothing more. I'll make taking a look at this a priority right
now. Let us see what I come up with today.

  Luis

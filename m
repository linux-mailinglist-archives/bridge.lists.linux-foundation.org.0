Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C31B22CCF7
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 622A988B04;
	Fri, 24 Jul 2020 18:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfJKqLUj3BPI; Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5645687E76;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 299ECC004C;
	Fri, 24 Jul 2020 18:21:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53516C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 13:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 28EE9204F3
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 13:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STbW-7C6m3na for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 13:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 48A6420398
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 13:17:28 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x11so1049469plo.7
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 06:17:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AmTxCuZjvcdiVEVhuLvvhfsJ8oNVmZ/lVyIOEYHWB0Y=;
 b=nLGxH0Vms7mAQazjbJQNDz5V9nScXi79j2SDOKPHLKFalyHFQ25RrCnI74jp5Fr+vN
 1UEdwDe3vMsAOWOF2sVZ7+ZMq0igOZn0q0rZQlHbbxTkOqSwX/Ll+wpoxWqWWbCaMzVs
 5UyebtA9bgdJ96HpX6gTpdAVmOf5OfgnkEXE34kJ7QX+OQclzHLjYvLDGBYj36s+z0Fj
 6Dlmpk6aNYiDktxivHDSvLAK8eXhtw+uMPZMgrGrmDHMIjhjM6zjyew1Ixjl5jeQF88H
 UVOevuCHAW9LOrCpSwyOgxEka+HVyWtQBFW8wlYofC+2NCdDLXzxFxrfzH0/EshXElYz
 Eoww==
X-Gm-Message-State: AOAM533tN/H+koiq3qK3P8lCghWlX+nRyQuNG4DqsFygJYeRsyRac0x2
 P7Pf9RPXr3jipjWXjhwNqlQ=
X-Google-Smtp-Source: ABdhPJz52oTL2B/3PLmnDoI2vugPQaT+ieV89E/RBDP6y5SvM7SHzDqNhk7CAkBkvaU94q6GXPDJhQ==
X-Received: by 2002:a17:90a:2622:: with SMTP id
 l31mr29954851pje.18.1593004647767; 
 Wed, 24 Jun 2020 06:17:27 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id b71sm10617893pfb.125.2020.06.24.06.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 06:17:26 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 46E1340430; Wed, 24 Jun 2020 13:17:25 +0000 (UTC)
Date: Wed, 24 Jun 2020 13:17:25 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Martin Doucha <mdoucha@suse.cz>
Message-ID: <20200624131725.GL13911@42.do-not-panic.com>
References: <20200610154923.27510-5-mcgrof@kernel.org>
 <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624120546.GC4332@42.do-not-panic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200624120546.GC4332@42.do-not-panic.com>
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

Martin, your eyeballs would be appreciated for a bit on this.

On Wed, Jun 24, 2020 at 12:05:46PM +0000, Luis Chamberlain wrote:
> On Wed, Jun 24, 2020 at 01:11:54PM +0200, Christian Borntraeger wrote:
> > 
> > 
> > On 23.06.20 16:23, Christian Borntraeger wrote:
> > > 
> > > 
> > > On 23.06.20 16:11, Christian Borntraeger wrote:
> > >> Jens Markwardt reported a regression in the linux-next runs.  with "umh: fix
> > >> processed error when UMH_WAIT_PROC is used" (from linux-next) a linux bridge
> > >> with an KVM guests no longer activates :
> > >>
> > >> without patch
> > >> # ip addr show dev virbr1
> > >> 6: virbr1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
> > >>     link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
> > >>     inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
> > >>        valid_lft forever preferred_lft forever
> > >>
> > >> with this patch the bridge stays DOWN with NO-CARRIER
> > >>
> > >> # ip addr show dev virbr1
> > >> 6: virbr1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
> > >>     link/ether 52:54:00:1e:3f:c0 brd ff:ff:ff:ff:ff:ff
> > >>     inet 192.168.254.254/24 brd 192.168.254.255 scope global virbr1
> > >>        valid_lft forever preferred_lft forever
> > >>
> > >> This was bisected in linux-next. Reverting from linux-next also fixes the issue.
> > >>
> > >> Any idea?
> > > 
> > > FWIW, s390 is big endian. Maybe some of the shifts inn the __KW* macros are wrong.
> > 
> > Does anyone have an idea why "umh: fix processed error when UMH_WAIT_PROC is used" breaks the
> > linux-bridge on s390?
> 
> glibc for instance defines __WEXITSTATUS in only one location: bits/waitstatus.h
> and it does not special case it per architecture, so at this point I'd
> have to say we have to look somewhere else for why this is happening.

I found however an LTP bug indicating the need to test for
s390 wait macros [0] in light of a recent bug in glibc for s390.
I am asking for references to that issue given I cannot find
any mention of this on glibc yet.

I'm in hopes Martin might be aware of that mentioned s390 glic bug.

[0] https://github.com/linux-test-project/ltp/issues/605

  Luis

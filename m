Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D3922CD07
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BC51892B4;
	Fri, 24 Jul 2020 18:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTY8PvcjrRZz; Fri, 24 Jul 2020 18:21:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91F6A89168;
	Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 67816C0053;
	Fri, 24 Jul 2020 18:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B090CC016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A30E1875AD
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MCRusp6pKolI for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 11:50:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AC37875A0
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 11:50:43 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id k6so4184740pll.9
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 04:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m6IlfQ2e8V9TPNspezYLF8SplDOhvC9AL7TcXaCoLTk=;
 b=lnvSAJe6qfEmU63zGHKyl2jrkuGr9p/Rb9vrjRU/iEfrlx3XFt4QHu5Y/difbvE/5s
 Ao80bVlC2wHFqR4eQL9rcY2O+A7AYSVgM1I3/VZXFGspE8LqzA2sf65vA/kpIOvRKmCt
 SZ/4FyyDJWF5a9ommrUIQ/ujMPidovRd0JYMutVWZRCuqBxrW6uet04BJ9pP/aEkxQ9G
 MZbD04ij1oOwM5Jk6NKhejA5nBaBmeQUu+y9EmJWN373myM8Jy+DlLhsvzFLu6r8TixJ
 O2CmtCPO4prPvvTdOaKwx7Pw2NIC1AfqiE8IxcgfSc3Q6yLWgIiAdf6ITEkqqC0Im2Ox
 KdVg==
X-Gm-Message-State: AOAM532PsF4xIbHphJMeoAhRUjjSEPI2UTZeUVcKR7y/4VTjaLjrFZ+6
 hDSlA5QUjRaOoT555RjM8jE=
X-Google-Smtp-Source: ABdhPJw+vfjYwkjyjOXkCMgArijGLXv7vSz+rOJhbL995GWA76AlNmn2PvrbvK5DZHp9UnPtP91fyw==
X-Received: by 2002:a17:902:7896:: with SMTP id
 q22mr2327903pll.237.1593172243027; 
 Fri, 26 Jun 2020 04:50:43 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id m136sm11584572pfd.218.2020.06.26.04.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 04:50:41 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BD85E40B24; Fri, 26 Jun 2020 11:50:40 +0000 (UTC)
Date: Fri, 26 Jun 2020 11:50:40 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20200626115040.GN13911@42.do-not-panic.com>
References: <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <feb6a8c4-2b94-3f95-6637-679e089a71ca@de.ibm.com>
 <20200626090001.GA30103@infradead.org>
 <20200626114008.GK4332@42.do-not-panic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200626114008.GK4332@42.do-not-panic.com>
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

On Fri, Jun 26, 2020 at 11:40:08AM +0000, Luis Chamberlain wrote:
> Andrew, can you please revert these two for now:
> 
> selftests: simplify kmod failure value
> umh: fix processed error when UMH_WAIT_PROC is used
> 
> Later, we'll add Christoph's simplier kernel wait, and make the change
> directly there to catpure the right error. That still won't fix this reported
> issue, but it will be cleaner and will go tested by Christian Borntraeger
> before.

However, note that the only consideration to make here against this
approach of the fix later going in with the simpler kernel wait is
if this actually is fixing a real issue, and if we'd want this going to
stable.

We should for sure revert though, so Andrew please do proceed to revert
or drop those two patches alone for now.

It was unclear to me if this should go to stable given I was not sure
how severe that NFS case mentioned on the commit log was, and no one on
the NFS side has replied about that yet, however there may be other
areas where code inspection of callsites was not sufficient to find the
real critical areas.

I'm now very curious what this issue that Christian with bridge on s390
found will be.

  Luis

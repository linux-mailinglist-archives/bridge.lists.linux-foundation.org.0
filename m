Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B459222CCF5
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D0EC88AF2;
	Fri, 24 Jul 2020 18:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCYOH2Bvrd5p; Fri, 24 Jul 2020 18:21:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8162D87FD9;
	Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6EEB8C004C;
	Fri, 24 Jul 2020 18:21:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB77CC0888
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA0E588303
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpQ+a5dbtI5H for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 16:13:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B148882CC
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 16:13:22 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u128so1617855pgu.13
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 09:13:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K5HA5pFN0d7RWrFcMOeZ4eZsZOCwgkaKOKIyoGUunJA=;
 b=ek2LIS9bar/Ez3lHLh4ogI2UqCit2L2/FJnOe0EpsEtEBi+FT7vyvl8mTNCPjQFteG
 PQGdA5gP41H0f9UhU3MR+mMuJ3bR8ejIY2VvDRgpJppZWthwJEacN33brIG5ctFhZb8J
 e5sKRPgBuqYbk3Z/AcrVrFkANBi04uxpx6nb8vHL6hHSz+YMu0lxU96Uy9AuEhWxnXQh
 9UkODUOc16I1fgH7mxeg8y0pOXIOzl7D5vTt06P8I84Wwm9DjCvyVPUvBS/H7f0eUeE6
 Tkl5TufHglYBVWu/ykGDHTQI9lkGxAP6CPcvdOrJCoVgAKdpBLl/OKmO9yl+RTsq2klF
 /SLw==
X-Gm-Message-State: AOAM530xBSKllxoImm96WmGu78ND6AVng3fDD7A4EGYNz6/TyHrf+0js
 bWDClMjVSdiCq7x1/SllDTU=
X-Google-Smtp-Source: ABdhPJxE1ygpkPiPc7c+3/yQpwGQm5PBcnPHrRJMZIslGuNTvYjGLTfGT0VAXd0ojktX0RNgdf5uBw==
X-Received: by 2002:a63:7f5a:: with SMTP id p26mr15162576pgn.117.1593015201848; 
 Wed, 24 Jun 2020 09:13:21 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 23sm20626008pfy.199.2020.06.24.09.13.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 09:13:20 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id B918940430; Wed, 24 Jun 2020 16:13:19 +0000 (UTC)
Date: Wed, 24 Jun 2020 16:13:19 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin Doucha <mdoucha@suse.cz>, hch@infradead.org
Message-ID: <20200624161319.GM13911@42.do-not-panic.com>
References: <20200610154923.27510-5-mcgrof@kernel.org>
 <20200623141157.5409-1-borntraeger@de.ibm.com>
 <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624120546.GC4332@42.do-not-panic.com>
 <20200624131725.GL13911@42.do-not-panic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200624131725.GL13911@42.do-not-panic.com>
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

On Wed, Jun 24, 2020 at 01:17:25PM +0000, Luis Chamberlain wrote:
> I found however an LTP bug indicating the need to test for
> s390 wait macros [0] in light of a recent bug in glibc for s390.
> I am asking for references to that issue given I cannot find
> any mention of this on glibc yet.
> 
> [0] https://github.com/linux-test-project/ltp/issues/605

I looked into this and the bug associated was:

https://sourceware.org/bugzilla/show_bug.cgi?id=19613

The commit in question was upstream glibc commit
b49ab5f4503f36dcbf43f821f817da66b2931fe6 ("Remove union wait [BZ
#19613]"), and while I don't see anything s390 mentioned there,
the issue there was due to the caller of the wait using a long
instead of an int for the return value.

In other words, that'd not the droid we are looking for.

So the issue is something else.

  Luis

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9157C22D1E9
	for <lists.bridge@lfdr.de>; Sat, 25 Jul 2020 00:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DF4288C15;
	Fri, 24 Jul 2020 22:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NlO2lFQmCBeq; Fri, 24 Jul 2020 22:43:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF99688C07;
	Fri, 24 Jul 2020 22:43:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA765C004C;
	Fri, 24 Jul 2020 22:43:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C79E6C004C
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jul 2020 22:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B633386DAD
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jul 2020 22:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8_xKHcm2J17 for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jul 2020 22:43:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9DFFD86D03
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jul 2020 22:43:46 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7C0081274F734;
 Fri, 24 Jul 2020 15:26:58 -0700 (PDT)
Date: Fri, 24 Jul 2020 15:43:42 -0700 (PDT)
Message-Id: <20200724.154342.1433271593505001306.davem@davemloft.net>
To: hch@lst.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200723060908.50081-1-hch@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 24 Jul 2020 15:26:59 -0700 (PDT)
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 kuznet@ms2.inr.ac.ru, linux-can@vger.kernel.org, kuba@kernel.org,
 linux-hams@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, edumazet@google.com, yoshfuji@linux-ipv6.org,
 netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Subject: Re: [Bridge] get rid of the address_space override in setsockopt v2
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

From: Christoph Hellwig <hch@lst.de>
Date: Thu, 23 Jul 2020 08:08:42 +0200

> setsockopt is the last place in architecture-independ code that still
> uses set_fs to force the uaccess routines to operate on kernel pointers.
> 
> This series adds a new sockptr_t type that can contained either a kernel
> or user pointer, and which has accessors that do the right thing, and
> then uses it for setsockopt, starting by refactoring some low-level
> helpers and moving them over to it before finally doing the main
> setsockopt method.
> 
> Note that apparently the eBPF selftests do not even cover this path, so
> the series has been tested with a testing patch that always copies the
> data first and passes a kernel pointer.  This is something that works for
> most common sockopts (and is something that the ePBF support relies on),
> but unfortunately in various corner cases we either don't use the passed
> in length, or in one case actually copy data back from setsockopt, or in
> case of bpfilter straight out do not work with kernel pointers at all.
> 
> Against net-next/master.
> 
> Changes since v1:
>  - check that users don't pass in kernel addresses
>  - more bpfilter cleanups
>  - cosmetic mptcp tweak

Series applied to net-next, I'm build testing and will push this out when
that is done.

Thanks.

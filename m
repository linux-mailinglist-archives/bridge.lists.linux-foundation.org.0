Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D7222CD72
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5FDE8948D;
	Fri, 24 Jul 2020 18:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnxvsmrVnIpA; Fri, 24 Jul 2020 18:22:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5280289590;
	Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F0F2C004C;
	Fri, 24 Jul 2020 18:22:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C72CDC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 16:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BF9D920434
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 16:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlCfefNZnDaI for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 16:38:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F75220426
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 16:38:39 +0000 (UTC)
Received: from gmail.com (unknown [104.132.1.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2634122CBB;
 Mon, 20 Jul 2020 16:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595263119;
 bh=wlqo7kAx+og7PtKyjy/9X5uYlujAIR96QYTi8/c6yXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KedFP10soudJd9FGCXk2UQ6mwGYV9FfLgr9Jehpfqo3DeBMYh9Cg2T64ka4vLb/9E
 yZE0kTEtUh1mwFGolpaTN3qJTAigCNeN60HjhesQSQimi39aadhKkQmY9ZpzWdIGAc
 DM8CICk2pF95QKtAIcFlAv4SRPp0hIAXO+8S+9xE=
Date: Mon, 20 Jul 2020 09:38:36 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200720163836.GB1292162@gmail.com>
References: <20200720124737.118617-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200720124737.118617-1-hch@lst.de>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] get rid of the address_space override in setsockopt
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

On Mon, Jul 20, 2020 at 02:47:13PM +0200, Christoph Hellwig wrote:
> Hi Dave,
> 
> setsockopt is the last place in architecture-independ code that still
> uses set_fs to force the uaccess routines to operate on kernel pointers.
> 
> This series adds a new sockptr_t type that can contained either a kernel
> or user pointer, and which has accessors that do the right thing, and
> then uses it for setsockopt, starting by refactoring some low-level
> helpers and moving them over to it before finally doing the main
> setsockopt method.
> 
> Note that I could not get the eBPF selftests to work, so this has been
> tested with a testing patch that always copies the data first and passes
> a kernel pointer.  This is something that works for most common sockopts
> (and is something that the ePBF support relies on), but unfortunately
> in various corner cases we either don't use the passed in length, or in
> one case actually copy data back from setsockopt, so we unfortunately
> can't just always do the copy in the highlevel code, which would have
> been much nicer.
> 

Please mention what git tree your patchset applies to.

- Eric

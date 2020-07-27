Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD55822F4F2
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 18:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A9E088263;
	Mon, 27 Jul 2020 16:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svDCDPwdaQTO; Mon, 27 Jul 2020 16:24:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D31F787EB8;
	Mon, 27 Jul 2020 16:24:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C18B2C004D;
	Mon, 27 Jul 2020 16:24:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9092C004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 16:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C42CE87EB8
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 16:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r+1qa3J-r3fZ for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 16:24:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4C8387EB5
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 16:24:02 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 213DF68B05; Mon, 27 Jul 2020 18:23:58 +0200 (CEST)
Date: Mon, 27 Jul 2020 18:23:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <20200727162357.GA8022@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-13-hch@lst.de> <20200727150310.GA1632472@zx2c4.com>
 <20200727150601.GA3447@lst.de>
 <CAHmME9ric=chLJayn7Erve7WBa+qCKn-+Gjri=zqydoY6623aA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9ric=chLJayn7Erve7WBa+qCKn-+Gjri=zqydoY6623aA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Netdev <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, bpf@vger.kernel.org,
 linux-wpan@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 12/26] netfilter: switch nf_setsockopt to
	sockptr_t
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

On Mon, Jul 27, 2020 at 06:16:32PM +0200, Jason A. Donenfeld wrote:
> Maybe sockptr_advance should have some safety checks and sometimes
> return -EFAULT? Or you should always use the implementation where
> being a kernel address is an explicit bit of sockptr_t, rather than
> being implicit?

I already have a patch to use access_ok to check the whole range in
init_user_sockptr.

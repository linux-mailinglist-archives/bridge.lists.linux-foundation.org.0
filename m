Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF9223E7CE
	for <lists.bridge@lfdr.de>; Fri,  7 Aug 2020 09:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C2D02045A;
	Fri,  7 Aug 2020 07:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wugKmdwELIDV; Fri,  7 Aug 2020 07:21:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 5608720444;
	Fri,  7 Aug 2020 07:21:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E9BAC004C;
	Fri,  7 Aug 2020 07:21:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5D61C004C
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 07:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFBF22045A
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 07:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dxfPMSIW0J3N for <bridge@lists.linux-foundation.org>;
 Fri,  7 Aug 2020 07:21:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by silver.osuosl.org (Postfix) with ESMTPS id 874A320444
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 07:21:25 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A67A168D0F; Fri,  7 Aug 2020 09:21:20 +0200 (CEST)
Date: Fri, 7 Aug 2020 09:21:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <20200807072120.GB2086@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-26-hch@lst.de>
 <6357942b-0b6e-1901-7dce-e308c9fac347@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6357942b-0b6e-1901-7dce-e308c9fac347@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Stefan Schmidt <stefan@datenfreihafen.org>,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com,
 Daniel Borkmann <daniel@iogearbox.net>, dccp@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-afs@lists.infradead.org,
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
Subject: Re: [Bridge] [PATCH 25/26] net: pass a sockptr_t into ->setsockopt
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

On Thu, Aug 06, 2020 at 03:21:25PM -0700, Eric Dumazet wrote:
> converting get_user(...)   to  copy_from_sockptr(...) really assumed the optlen
> has been validated to be >= sizeof(int) earlier.
> 
> Which is not always the case, for example here.

Yes.  And besides the bpfilter mess the main reason I even had to add
the sockptr vs just copying optlen in the high-level socket code.

Please take a look at the patch in the other thread to just revert to
the "dumb" version everywhere.

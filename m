Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 466B536B377
	for <lists.bridge@lfdr.de>; Mon, 26 Apr 2021 14:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47E7A833A3;
	Mon, 26 Apr 2021 12:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMVQvGGJ-f4t; Mon, 26 Apr 2021 12:48:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B0888380B;
	Mon, 26 Apr 2021 12:48:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37D70C0020;
	Mon, 26 Apr 2021 12:48:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40B7FC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 12:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21D2A404D8
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 12:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFt6dohDeg3O for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 12:48:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from deadmen.hmeau.com (helcar.hmeau.com [216.24.177.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 753F140416
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 12:48:35 +0000 (UTC)
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtp (Exim 4.89 #2 (Debian))
 id 1lb0er-0008Cs-KL; Mon, 26 Apr 2021 20:48:13 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1lb0ek-0000lg-Dq; Mon, 26 Apr 2021 20:48:06 +0800
Date: Mon, 26 Apr 2021 20:48:06 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210426124806.4zqhtn4wewair4ua@gondor.apana.org.au>
References: <20210425155742.30057-1-ap420073@gmail.com>
 <20210425155742.30057-3-ap420073@gmail.com>
 <ed54816f-2591-d8a7-61d8-63b7f49852c1@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed54816f-2591-d8a7-61d8-63b7f49852c1@nvidia.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: bridge@lists.linux-foundation.org, cong.wang@bytedance.com,
 daniel@iogearbox.net, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 dsahern@kernel.org, roopa@nvidia.com, ast@kernel.org, bjorn@kernel.org,
 vfalico@gmail.com, j.vosburgh@gmail.com, kuba@kernel.org, weiwan@google.com,
 andriin@fb.com, davem@davemloft.net, Taehee Yoo <ap420073@gmail.com>
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: fix lockdep
 multicast_lock false positive splat
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

On Sun, Apr 25, 2021 at 07:45:27PM +0300, Nikolay Aleksandrov wrote:
>
> Ugh.. that's just very ugly. :) The setup you've described above is by all means invalid, but
> possible unfortunately. The bridge already checks if it's being added as a port to another
> bridge, but not through multiple levels of indirection. These locks are completely unrelated
> as they're in very different contexts (different devices).

Surely we should forbid this? Otherwise what's to stop someone
from creating a loop?

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

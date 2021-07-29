Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4383D9F31
	for <lists.bridge@lfdr.de>; Thu, 29 Jul 2021 10:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDB8C605D8;
	Thu, 29 Jul 2021 08:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mLgXkXPa3AR; Thu, 29 Jul 2021 08:08:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 74541606AF;
	Thu, 29 Jul 2021 08:08:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30F32C0022;
	Thu, 29 Jul 2021 08:08:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8B0EC000E
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 08:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A974A606AF
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 08:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6gbE9AaiFBfR for <bridge@lists.linux-foundation.org>;
 Thu, 29 Jul 2021 08:08:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B63460629
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 08:08:35 +0000 (UTC)
Received: from netfilter.org (bl11-146-165.dsl.telepac.pt [85.244.146.165])
 by mail.netfilter.org (Postfix) with ESMTPSA id 50C916411D;
 Thu, 29 Jul 2021 10:08:03 +0200 (CEST)
Date: Thu, 29 Jul 2021 10:08:29 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Yajun Deng <yajun.deng@linux.dev>
Message-ID: <20210729080829.GA16912@salvia>
References: <20210729074658.8538-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210729074658.8538-1-yajun.deng@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2] netfilter: nf_conntrack_bridge: Fix memory
 leak when error
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

On Thu, Jul 29, 2021 at 03:46:58PM +0800, Yajun Deng wrote:
> It should be added kfree_skb_list() when err is not equal to zero
> in nf_br_ip_fragment().
> 
> v2: keep this aligned with IPv6.
> 
> Fixes: 3c171f496ef5 ("netfilter: bridge: add connection tracking system")
> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
> ---
>  net/bridge/netfilter/nf_conntrack_bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
> index 8d033a75a766..3cf5457919c6 100644
> --- a/net/bridge/netfilter/nf_conntrack_bridge.c
> +++ b/net/bridge/netfilter/nf_conntrack_bridge.c
> @@ -88,6 +88,11 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
>  
>  			skb = ip_fraglist_next(&iter);
>  		}
> +
> +		if (!err)
> +			return 0;
> +
> +		kfree_skb_list(iter.frag_list);

Actually:
		kfree_skb_list(iter.frag);

I used frag_list instead of frag in my snippet.

>  		return err;
>  	}
>  slow_path:
> -- 
> 2.32.0
> 

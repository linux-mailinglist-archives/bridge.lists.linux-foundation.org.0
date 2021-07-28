Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECB13D932B
	for <lists.bridge@lfdr.de>; Wed, 28 Jul 2021 18:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72CB8401C7;
	Wed, 28 Jul 2021 16:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Gtb66vJ7gDB; Wed, 28 Jul 2021 16:26:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D2A16401DB;
	Wed, 28 Jul 2021 16:26:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7AD4CC0022;
	Wed, 28 Jul 2021 16:26:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85A0BC000E
 for <bridge@lists.linux-foundation.org>; Wed, 28 Jul 2021 16:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A38B401C7
 for <bridge@lists.linux-foundation.org>; Wed, 28 Jul 2021 16:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMTUtQFcTicB for <bridge@lists.linux-foundation.org>;
 Wed, 28 Jul 2021 16:26:43 +0000 (UTC)
X-Greylist: delayed 00:07:46 by SQLgrey-1.8.0
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
 by smtp2.osuosl.org (Postfix) with ESMTP id 136A04013C
 for <bridge@lists.linux-foundation.org>; Wed, 28 Jul 2021 16:26:43 +0000 (UTC)
Received: from netfilter.org (bl11-146-165.dsl.telepac.pt [85.244.146.165])
 by mail.netfilter.org (Postfix) with ESMTPSA id 8C071642C6;
 Wed, 28 Jul 2021 18:18:23 +0200 (CEST)
Date: Wed, 28 Jul 2021 18:18:49 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Yajun Deng <yajun.deng@linux.dev>
Message-ID: <20210728161849.GA10433@salvia>
References: <20210726035702.11964-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
In-Reply-To: <20210726035702.11964-1-yajun.deng@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] netfilter: nf_conntrack_bridge: Fix not free
	when error
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Jul 26, 2021 at 11:57:02AM +0800, Yajun Deng wrote:
> It should be added kfree_skb_list() when err is not equal to zero
> in nf_br_ip_fragment().
> 
> Fixes: 3c171f496ef5 ("netfilter: bridge: add connection tracking system")
> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
> ---
>  net/bridge/netfilter/nf_conntrack_bridge.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
> index 8d033a75a766..059f53903eda 100644
> --- a/net/bridge/netfilter/nf_conntrack_bridge.c
> +++ b/net/bridge/netfilter/nf_conntrack_bridge.c
> @@ -83,12 +83,16 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
>  
>  			skb->tstamp = tstamp;
>  			err = output(net, sk, data, skb);
> -			if (err || !iter.frag)
> -				break;
> -
> +			if (err) {
> +				kfree_skb_list(iter.frag);
> +				return err;
> +			}
> +
> +			if (!iter.frag)
> +				return 0;
> +
>  			skb = ip_fraglist_next(&iter);
>  		}
> -		return err;

Why removing this line above? It enters slow_path: on success.

This patch instead will keep this aligned with IPv6.

>  	}
>  slow_path:
>  	/* This is a linearized skbuff, the original geometry is lost for us.
> -- 
> 2.32.0
> 

--y0ulUmNC+osPPQO6
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="x.patch"

diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c b/net/bridge/netfilter/nf_conntrack_bridge.c
index 8d033a75a766..3cf5457919c6 100644
--- a/net/bridge/netfilter/nf_conntrack_bridge.c
+++ b/net/bridge/netfilter/nf_conntrack_bridge.c
@@ -88,6 +88,11 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
 
 			skb = ip_fraglist_next(&iter);
 		}
+
+		if (!err)
+			return 0;
+
+		kfree_skb_list(iter.frag_list);
 		return err;
 	}
 slow_path:

--y0ulUmNC+osPPQO6--

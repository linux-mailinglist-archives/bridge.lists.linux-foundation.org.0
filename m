Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC49E22EBD6
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 14:15:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85A67876C4;
	Mon, 27 Jul 2020 12:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rya26yM7PBOS; Mon, 27 Jul 2020 12:15:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 324D8876CF;
	Mon, 27 Jul 2020 12:15:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 136F9C004D;
	Mon, 27 Jul 2020 12:15:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FFA9C004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 12:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 11FF3876CF
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 12:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUprteQz49o5 for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 12:15:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 08539876C4
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 12:15:12 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 858ED580626;
 Mon, 27 Jul 2020 08:15:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 27 Jul 2020 08:15:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=zQ5cK+
 UyqnfJ5Bs5mc2l5CGTYqkVGioSJ7/rqh6pAKo=; b=cz67FKlM5wTYH6ZHs8cumN
 6Lloe5U6Wof104VdSstoZvBZVPQWGdAx/fMZfPQxIwG0p8iESwpGeuM7tUbH7y0c
 5nwF6SEQIGjZVO/5CmL/kqzdqg9Btv1iK/m/DFBcSQvbdxe/OqRzITPeS2TcH/Y+
 Rprx9Vp4fYTO6goik0AFPtlzp/RTh1KyjaQJAaV4CWXK+yEGSMO73vw2Bvs3jvH/
 xn05lT9HilG+7jY3vY3UhaljUx6pT7HHVwgspZ5cqQnXh6v+NBrjfYm4b9qLqHRM
 BmrV61GpLVJpu1JgeZoeM7zuzyCKx+b8Xqsjra7JohU70SIOprEe6DltCaWHoeSQ
 ==
X-ME-Sender: <xms:TcUeX_6kVxk3W7PFyY8aD2OpbpNtNrYvJvqdVELMLD3-WQTkXX8Hmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedriedtgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeejledrudekuddrvddrudejleenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:TcUeX06Qqy5aEJFW6Jpg_LZa1dJ4eY6nkkQcVlz4XOtHLjqmQNDxTw>
 <xmx:TcUeX2fd-qWfehY8_YaMTYqQAxXos584gd2IyW8HI9rJNz3B9JOvMg>
 <xmx:TcUeXwI7ksA1oOAl1pVV8mG18oLCDmnkFZDN6_zUljX6iXpa1GFghA>
 <xmx:T8UeXw5_98Jq_Ux1_bj8TbKmStoIGlRImlxpRg8bsqiWWADoZ6hKgA>
Received: from localhost (bzq-79-181-2-179.red.bezeqint.net [79.181.2.179])
 by mail.messagingengine.com (Postfix) with ESMTPA id 80C84328005D;
 Mon, 27 Jul 2020 08:15:08 -0400 (EDT)
Date: Mon, 27 Jul 2020 15:15:05 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200727121505.GA1804864@shredder>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-20-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200723060908.50081-20-hch@lst.de>
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
Subject: Re: [Bridge] [PATCH 19/26] net/ipv6: switch ipv6_flowlabel_opt to
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

On Thu, Jul 23, 2020 at 08:09:01AM +0200, Christoph Hellwig wrote:
> Pass a sockptr_t to prepare for set_fs-less handling of the kernel
> pointer from bpf-cgroup.
> 
> Note that the get case is pretty weird in that it actually copies data
> back to userspace from setsockopt.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/net/ipv6.h       |  2 +-
>  net/ipv6/ip6_flowlabel.c | 16 +++++++++-------
>  net/ipv6/ipv6_sockglue.c |  2 +-
>  3 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/include/net/ipv6.h b/include/net/ipv6.h
> index 262fc88dbd7e2f..4c9d89b5d73268 100644
> --- a/include/net/ipv6.h
> +++ b/include/net/ipv6.h
> @@ -406,7 +406,7 @@ struct ipv6_txoptions *fl6_merge_options(struct ipv6_txoptions *opt_space,
>  					 struct ip6_flowlabel *fl,
>  					 struct ipv6_txoptions *fopt);
>  void fl6_free_socklist(struct sock *sk);
> -int ipv6_flowlabel_opt(struct sock *sk, char __user *optval, int optlen);
> +int ipv6_flowlabel_opt(struct sock *sk, sockptr_t optval, int optlen);
>  int ipv6_flowlabel_opt_get(struct sock *sk, struct in6_flowlabel_req *freq,
>  			   int flags);
>  int ip6_flowlabel_init(void);
> diff --git a/net/ipv6/ip6_flowlabel.c b/net/ipv6/ip6_flowlabel.c
> index 27ee6de9beffc4..6b3c315f3d461a 100644
> --- a/net/ipv6/ip6_flowlabel.c
> +++ b/net/ipv6/ip6_flowlabel.c
> @@ -371,7 +371,7 @@ static int fl6_renew(struct ip6_flowlabel *fl, unsigned long linger, unsigned lo
>  
>  static struct ip6_flowlabel *
>  fl_create(struct net *net, struct sock *sk, struct in6_flowlabel_req *freq,
> -	  char __user *optval, int optlen, int *err_p)
> +	  sockptr_t optval, int optlen, int *err_p)
>  {
>  	struct ip6_flowlabel *fl = NULL;
>  	int olen;
> @@ -401,7 +401,8 @@ fl_create(struct net *net, struct sock *sk, struct in6_flowlabel_req *freq,
>  		memset(fl->opt, 0, sizeof(*fl->opt));
>  		fl->opt->tot_len = sizeof(*fl->opt) + olen;
>  		err = -EFAULT;
> -		if (copy_from_user(fl->opt+1, optval+CMSG_ALIGN(sizeof(*freq)), olen))
> +		sockptr_advance(optval, CMSG_ALIGN(sizeof(*freq)));
> +		if (copy_from_sockptr(fl->opt + 1, optval, olen))
>  			goto done;
>  
>  		msg.msg_controllen = olen;
> @@ -604,7 +605,7 @@ static int ipv6_flowlabel_renew(struct sock *sk, struct in6_flowlabel_req *freq)
>  }
>  
>  static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
> -		void __user *optval, int optlen)
> +		sockptr_t optval, int optlen)
>  {
>  	struct ipv6_fl_socklist *sfl, *sfl1 = NULL;
>  	struct ip6_flowlabel *fl, *fl1 = NULL;
> @@ -702,8 +703,9 @@ static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
>  		goto recheck;
>  
>  	if (!freq->flr_label) {
> -		if (copy_to_user(&((struct in6_flowlabel_req __user *) optval)->flr_label,
> -				 &fl->label, sizeof(fl->label))) {
> +		sockptr_advance(optval,
> +				offsetof(struct in6_flowlabel_req, flr_label));

Christoph,

I see a regression with IPv6 flowlabel that I bisected to this patch.
When passing '-F 0' to 'ping' the flow label should be random, yet it's
the same every time after this patch.

It seems that the pointer is never advanced after the call to
sockptr_advance() because it is passed by value and not by reference.
Even if you were to pass it by reference I think you would later need to
call sockptr_decrease() or something similar. Otherwise it is very
error-prone.

Maybe adding an offset to copy_to_sockptr() and copy_from_sockptr() is
better?

Thanks

> +		if (copy_to_sockptr(optval, &fl->label, sizeof(fl->label))) {
>  			/* Intentionally ignore fault. */
>  		}
>  	}
> @@ -716,13 +718,13 @@ static int ipv6_flowlabel_get(struct sock *sk, struct in6_flowlabel_req *freq,
>  	return err;
>  }
>  
> -int ipv6_flowlabel_opt(struct sock *sk, char __user *optval, int optlen)
> +int ipv6_flowlabel_opt(struct sock *sk, sockptr_t optval, int optlen)
>  {
>  	struct in6_flowlabel_req freq;
>  
>  	if (optlen < sizeof(freq))
>  		return -EINVAL;
> -	if (copy_from_user(&freq, optval, sizeof(freq)))
> +	if (copy_from_sockptr(&freq, optval, sizeof(freq)))
>  		return -EFAULT;
>  
>  	switch (freq.flr_action) {
> diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
> index 119dfaf5f4bb26..3897fb55372d38 100644
> --- a/net/ipv6/ipv6_sockglue.c
> +++ b/net/ipv6/ipv6_sockglue.c
> @@ -929,7 +929,7 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
>  		retv = 0;
>  		break;
>  	case IPV6_FLOWLABEL_MGR:
> -		retv = ipv6_flowlabel_opt(sk, optval, optlen);
> +		retv = ipv6_flowlabel_opt(sk, USER_SOCKPTR(optval), optlen);
>  		break;
>  	case IPV6_IPSEC_POLICY:
>  	case IPV6_XFRM_POLICY:
> -- 
> 2.27.0
> 

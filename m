Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F36222F365
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 17:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CBD8862BC;
	Mon, 27 Jul 2020 15:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EC7TWQLfS0g6; Mon, 27 Jul 2020 15:06:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C6228780F;
	Mon, 27 Jul 2020 15:06:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29E07C0864;
	Mon, 27 Jul 2020 15:06:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36D3EC004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 15:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31EA9877A6
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 15:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BACp0uQYVf7F for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 15:06:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89B26862BC
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 15:06:08 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8445868B05; Mon, 27 Jul 2020 17:06:01 +0200 (CEST)
Date: Mon, 27 Jul 2020 17:06:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <20200727150601.GA3447@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-13-hch@lst.de> <20200727150310.GA1632472@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200727150310.GA1632472@zx2c4.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
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

On Mon, Jul 27, 2020 at 05:03:10PM +0200, Jason A. Donenfeld wrote:
> Hi Christoph,
> 
> On Thu, Jul 23, 2020 at 08:08:54AM +0200, Christoph Hellwig wrote:
> > diff --git a/net/ipv4/ip_sockglue.c b/net/ipv4/ip_sockglue.c
> > index da933f99b5d517..42befbf12846c0 100644
> > --- a/net/ipv4/ip_sockglue.c
> > +++ b/net/ipv4/ip_sockglue.c
> > @@ -1422,7 +1422,8 @@ int ip_setsockopt(struct sock *sk, int level,
> >  			optname != IP_IPSEC_POLICY &&
> >  			optname != IP_XFRM_POLICY &&
> >  			!ip_mroute_opt(optname))
> > -		err = nf_setsockopt(sk, PF_INET, optname, optval, optlen);
> > +		err = nf_setsockopt(sk, PF_INET, optname, USER_SOCKPTR(optval),
> > +				    optlen);
> >  #endif
> >  	return err;
> >  }
> > diff --git a/net/ipv4/netfilter/ip_tables.c b/net/ipv4/netfilter/ip_tables.c
> > index 4697d09c98dc3e..f2a9680303d8c0 100644
> > --- a/net/ipv4/netfilter/ip_tables.c
> > +++ b/net/ipv4/netfilter/ip_tables.c
> > @@ -1102,7 +1102,7 @@ __do_replace(struct net *net, const char *name, unsigned int valid_hooks,
> >  }
> >  
> >  static int
> > -do_replace(struct net *net, const void __user *user, unsigned int len)
> > +do_replace(struct net *net, sockptr_t arg, unsigned int len)
> >  {
> >  	int ret;
> >  	struct ipt_replace tmp;
> > @@ -1110,7 +1110,7 @@ do_replace(struct net *net, const void __user *user, unsigned int len)
> >  	void *loc_cpu_entry;
> >  	struct ipt_entry *iter;
> >  
> > -	if (copy_from_user(&tmp, user, sizeof(tmp)) != 0)
> > +	if (copy_from_sockptr(&tmp, arg, sizeof(tmp)) != 0)
> >  		return -EFAULT;
> >  
> >  	/* overflow check */
> > @@ -1126,8 +1126,8 @@ do_replace(struct net *net, const void __user *user, unsigned int len)
> >  		return -ENOMEM;
> >  
> >  	loc_cpu_entry = newinfo->entries;
> > -	if (copy_from_user(loc_cpu_entry, user + sizeof(tmp),
> > -			   tmp.size) != 0) {
> > +	sockptr_advance(arg, sizeof(tmp));
> > +	if (copy_from_sockptr(loc_cpu_entry, arg, tmp.size) != 0) {
> >  		ret = -EFAULT;
> >  		goto free_newinfo;
> >  	}
> 
> Something along this path seems to have broken with this patch. An
> invocation of `iptables -A INPUT -m length --length 1360 -j DROP` now
> fails, with
> 
> nf_setsockopt->do_replace->translate_table->check_entry_size_and_hooks:
>   (unsigned char *)e + e->next_offset > limit  ==>  TRUE
> 
> resulting in the whole call chain returning -EINVAL. It bisects back to
> this commit. This is on net-next.

This is another use o sockptr_advance that Ido already found a problem
in.  I'm looking into this at the moment..

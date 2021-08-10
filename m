Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7678C3D9E58
	for <lists.bridge@lfdr.de>; Thu, 29 Jul 2021 09:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA6EC83ADF;
	Thu, 29 Jul 2021 07:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2po6b6YlCO1V; Thu, 29 Jul 2021 07:24:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6D71083AE0;
	Thu, 29 Jul 2021 07:24:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2557CC0022;
	Thu, 29 Jul 2021 07:24:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 287C1C000E
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00C9540219
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_yvZX6-ffdf for <bridge@lists.linux-foundation.org>;
 Thu, 29 Jul 2021 07:24:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
 by smtp2.osuosl.org (Postfix) with ESMTP id B07824019B
 for <bridge@lists.linux-foundation.org>; Thu, 29 Jul 2021 07:24:30 +0000 (UTC)
Received: from netfilter.org (bl11-146-165.dsl.telepac.pt [85.244.146.165])
 by mail.netfilter.org (Postfix) with ESMTPSA id E8DA86411D;
 Thu, 29 Jul 2021 09:23:56 +0200 (CEST)
Date: Thu, 29 Jul 2021 09:24:20 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: yajun.deng@linux.dev
Message-ID: <20210729072420.GA16265@salvia>
References: <20210728161849.GA10433@salvia>
 <20210726035702.11964-1-yajun.deng@linux.dev>
 <eaeec889b3a07cea1347d48269e5964e@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <eaeec889b3a07cea1347d48269e5964e@linux.dev>
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

On Thu, Jul 29, 2021 at 03:19:01AM +0000, yajun.deng@linux.dev wrote:
> July 29, 2021 12:18 AM, "Pablo Neira Ayuso" <pablo@netfilter.org> wrote:
> 
> > On Mon, Jul 26, 2021 at 11:57:02AM +0800, Yajun Deng wrote:
> > 
> >> It should be added kfree_skb_list() when err is not equal to zero
> >> in nf_br_ip_fragment().
> >> 
> >> Fixes: 3c171f496ef5 ("netfilter: bridge: add connection tracking system")
> >> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
> >> ---
> >> net/bridge/netfilter/nf_conntrack_bridge.c | 12 ++++++++----
> >> 1 file changed, 8 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/net/bridge/netfilter/nf_conntrack_bridge.c
> >> b/net/bridge/netfilter/nf_conntrack_bridge.c
> >> index 8d033a75a766..059f53903eda 100644
> >> --- a/net/bridge/netfilter/nf_conntrack_bridge.c
> >> +++ b/net/bridge/netfilter/nf_conntrack_bridge.c
> >> @@ -83,12 +83,16 @@ static int nf_br_ip_fragment(struct net *net, struct sock *sk,
> >> 
> >> skb->tstamp = tstamp;
> >> err = output(net, sk, data, skb);
> >> - if (err || !iter.frag)
> >> - break;
> >> -
> >> + if (err) {
> >> + kfree_skb_list(iter.frag);
> >> + return err;
> >> + }
> >> +
> >> + if (!iter.frag)
> >> + return 0;
> >> +
> >> skb = ip_fraglist_next(&iter);
> >> }
> >> - return err;
> > 
> > Why removing this line above? It enters slow_path: on success.
> > 
> I used return rather than break, it wouldn't enter the slow_path.

Right, your patch is correct.

> > This patch instead will keep this aligned with IPv6.
> > 
> I think err and !iter.frag are not related, there is no need to put
> them in an if statement, We still need to separate them after loop.
> So I separate them in loop and use return instead of break. In
> addition, if you insist, I will accept your patch.

Thanks. Yes, I'd prefer to keep it consistent with existing users of
the fragment iterator, see:

net/ipv4/ip_output.c
net/ipv6/netfilter.c
net/ipv6/ip6_output.c

they are roughly using the same programming idiom to iterate over the
fragments.

Would you send a v2?

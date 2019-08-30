Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADC7A3F34
	for <lists.bridge@lfdr.de>; Fri, 30 Aug 2019 22:57:22 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 181376418;
	Fri, 30 Aug 2019 20:57:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81CC9645E
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 20:55:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E27941FB
	for <bridge@lists.linux-foundation.org>;
	Fri, 30 Aug 2019 20:55:48 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1i3nvp-0006RE-4L; Fri, 30 Aug 2019 22:55:41 +0200
Date: Fri, 30 Aug 2019 22:55:41 +0200
From: Florian Westphal <fw@strlen.de>
To: Leonardo Bras <leonardo@linux.ibm.com>
Message-ID: <20190830205541.GR20113@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-3-leonardo@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190830181354.26279-3-leonardo@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH v4 2/2] net: br_netfiler_hooks: Drops IPv6
 packets if IPv6 module is not loaded
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Leonardo Bras <leonardo@linux.ibm.com> wrote:
> A kernel panic can happen if a host has disabled IPv6 on boot and have to
> process guest packets (coming from a bridge) using it's ip6tables.
> 
> IPv6 packets need to be dropped if the IPv6 module is not loaded.
> 
> Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> ---
>  net/bridge/br_netfilter_hooks.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
> index d3f9592f4ff8..5e8693730df1 100644
> --- a/net/bridge/br_netfilter_hooks.c
> +++ b/net/bridge/br_netfilter_hooks.c
> @@ -493,6 +493,8 @@ static unsigned int br_nf_pre_routing(void *priv,
>  	brnet = net_generic(state->net, brnf_net_id);
>  	if (IS_IPV6(skb) || is_vlan_ipv6(skb, state->net) ||
>  	    is_pppoe_ipv6(skb, state->net)) {
> +		if (!ipv6_mod_enabled())
> +			return NF_DROP;
>  		if (!brnet->call_ip6tables &&
>  		    !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
>  			return NF_ACCEPT;

No, thats too aggressive and turns the bridge into an ipv6 blackhole.

There are two solutions:
1. The above patch, but use NF_ACCEPT instead
2. keep the DROP, but move it below the call_ip6tables test,
   so that users can tweak call-ip6tables to accept packets.

Perhaps it would be good to also add a pr_warn_once() that
tells that ipv6 was disabled on command line and
call-ip6tables isn't supported in this configuration.

I would go with option two.

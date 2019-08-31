Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AC934A435F
	for <lists.bridge@lfdr.de>; Sat, 31 Aug 2019 10:40:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 88F8865A4;
	Sat, 31 Aug 2019 08:40:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A27F46599
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 08:39:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7DABE13A
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 08:39:03 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1i3yuR-0000g8-4S; Sat, 31 Aug 2019 10:38:59 +0200
Date: Sat, 31 Aug 2019 10:38:59 +0200
From: Florian Westphal <fw@strlen.de>
To: Leonardo Bras <leonardo@linux.ibm.com>
Message-ID: <20190831083859.GT20113@breakpoint.cc>
References: <20190831044032.31931-1-leonardo@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190831044032.31931-1-leonardo@linux.ibm.com>
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
Subject: Re: [Bridge] [PATCH v5 1/1] net: br_netfiler_hooks: Drops IPv6
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
> IPv6 packets need to be dropped if the IPv6 module is not loaded, and the
> host ip6tables will be used.
> 
> Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> ---
> Changes from v4:
> - Check if the host ip6tables is going to be used before testing 
>   ipv6 module presence 
> - Adds a warning about ipv6 module disabled.
> 
> 
>  net/bridge/br_netfilter_hooks.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
> index d3f9592f4ff8..af7800103e51 100644
> --- a/net/bridge/br_netfilter_hooks.c
> +++ b/net/bridge/br_netfilter_hooks.c
> @@ -496,6 +496,10 @@ static unsigned int br_nf_pre_routing(void *priv,
>  		if (!brnet->call_ip6tables &&
>  		    !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
>  			return NF_ACCEPT;
> +		if (!ipv6_mod_enabled()) {
> +			pr_warn_once("Module ipv6 is disabled, so call_ip6tables is not supported.");
> +			return NF_DROP;
> +		}

pr_warn_once needs a '\n'.  Pablo, can you mangle this locally when
applying?

Patch looks good to me, so:

Acked-by: Florian Westphal <fw@strlen.de>

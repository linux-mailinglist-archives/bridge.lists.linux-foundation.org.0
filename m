Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7BAA74FB
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 22:35:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8FFF6FA9;
	Tue,  3 Sep 2019 20:35:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EB32E9E
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 20:35:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB8D0712
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 20:35:37 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1i5FWV-0004op-J2; Tue, 03 Sep 2019 22:35:31 +0200
Date: Tue, 3 Sep 2019 22:35:31 +0200
From: Florian Westphal <fw@strlen.de>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20190903203531.GF13660@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-2-leonardo@linux.ibm.com>
	<20190830205802.GS20113@breakpoint.cc>
	<99e3ef9c5ead1c95df697d49ab9cc83a95b0ac7c.camel@linux.ibm.com>
	<20190903164948.kuvtpy7viqhcmp77@salvia>
	<20190903170550.GA13660@breakpoint.cc>
	<20190903193155.v74ws47zcn6zrwpr@salvia>
	<20190903194809.GD13660@breakpoint.cc>
	<20190903201904.npna6dt25ug5gwvd@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190903201904.npna6dt25ug5gwvd@salvia>
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
	netfilter-devel@vger.kernel.org, Leonardo Bras <leonardo@linux.ibm.com>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v4 1/2] netfilter: Terminate rule eval if
 protocol=IPv6 and ipv6 module is disabled
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

Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Tue, Sep 03, 2019 at 09:48:09PM +0200, Florian Westphal wrote:
> > We could do that from nft_do_chain_netdev().
> 
> Indeed, this is all about the netdev case.
> 
> Probably add something similar to nf_ip6_route() to deal with
> ip6_route_lookup() case? This is the one trigering the problem, right?

Yes, this particular problem is caused by ipv6 fib not being
initialized due to ipv6.disable=1.  I don't know if there are cases
other than FIB.

> BTW, how does nft_fib_ipv6 module kicks in if ipv6 module is not
> loaded? The symbol dependency would pull in the IPv6 module anyway.

ipv6.disabled=1 does load the ipv6 module, but its non-functional.

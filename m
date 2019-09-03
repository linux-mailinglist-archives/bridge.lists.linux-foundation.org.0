Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C56FA7153
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 19:06:07 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 99F94E54;
	Tue,  3 Sep 2019 17:05:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4B3AD9F
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 17:05:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D523709
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 17:05:55 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1i5CFa-0003c1-IC; Tue, 03 Sep 2019 19:05:50 +0200
Date: Tue, 3 Sep 2019 19:05:50 +0200
From: Florian Westphal <fw@strlen.de>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20190903170550.GA13660@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-2-leonardo@linux.ibm.com>
	<20190830205802.GS20113@breakpoint.cc>
	<99e3ef9c5ead1c95df697d49ab9cc83a95b0ac7c.camel@linux.ibm.com>
	<20190903164948.kuvtpy7viqhcmp77@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190903164948.kuvtpy7viqhcmp77@salvia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	FlorianWestphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
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
> On Tue, Sep 03, 2019 at 01:46:50PM -0300, Leonardo Bras wrote:
> > On Fri, 2019-08-30 at 22:58 +0200, Florian Westphal wrote:
> > > Leonardo Bras <leonardo@linux.ibm.com> wrote:
> > > > If IPv6 is disabled on boot (ipv6.disable=1), but nft_fib_inet ends up
> > > > dealing with a IPv6 packet, it causes a kernel panic in
> > > > fib6_node_lookup_1(), crashing in bad_page_fault.
> > > > 
> > > > The panic is caused by trying to deference a very low address (0x38
> > > > in ppc64le), due to ipv6.fib6_main_tbl = NULL.
> > > > BUG: Kernel NULL pointer dereference at 0x00000038
> > > > 
> > > > The kernel panic was reproduced in a host that disabled IPv6 on boot and
> > > > have to process guest packets (coming from a bridge) using it's ip6tables.
> > > > 
> > > > Terminate rule evaluation when packet protocol is IPv6 but the ipv6 module
> > > > is not loaded.
> > > > 
> > > > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> > > 
> > > Acked-by: Florian Westphal <fw@strlen.de>
> > > 
> > 
> > Hello Pablo,
> > 
> > Any trouble with this patch? 
> > I could see the other* one got applied, but not this one.
> > *(The other did not get acked, so i released it alone as v5)
> > 
> > Is there any fix I need to do in this one?
> 
> Hm, I see, so this one:
> 
> https://patchwork.ozlabs.org/patch/1156100/
> 
> is not enough?

No, its not.

> I was expecting we could find a way to handle this from br_netfilter
> alone itself.

We can't because we support ipv6 fib lookups from the netdev family
as well.

Alternative is to auto-accept ipv6 packets from the nf_tables eval loop,
but I think its worse.

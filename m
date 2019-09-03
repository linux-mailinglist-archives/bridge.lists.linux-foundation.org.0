Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EF8A7100
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 18:50:13 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A9972DC6;
	Tue,  3 Sep 2019 16:49:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55D23CBA
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 16:49:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (correo.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8616709
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 16:49:53 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 9F774DA3CD
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 18:49:49 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 91647B8009
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 18:49:49 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 84A47B7FF6; Tue,  3 Sep 2019 18:49:49 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E356AD1929;
	Tue,  3 Sep 2019 18:49:46 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Tue, 03 Sep 2019 18:49:46 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id AEF35426CCBC;
	Tue,  3 Sep 2019 18:49:46 +0200 (CEST)
Date: Tue, 3 Sep 2019 18:49:48 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Leonardo Bras <leonardo@linux.ibm.com>
Message-ID: <20190903164948.kuvtpy7viqhcmp77@salvia>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-2-leonardo@linux.ibm.com>
	<20190830205802.GS20113@breakpoint.cc>
	<99e3ef9c5ead1c95df697d49ab9cc83a95b0ac7c.camel@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <99e3ef9c5ead1c95df697d49ab9cc83a95b0ac7c.camel@linux.ibm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	FlorianWestphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
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

On Tue, Sep 03, 2019 at 01:46:50PM -0300, Leonardo Bras wrote:
> On Fri, 2019-08-30 at 22:58 +0200, Florian Westphal wrote:
> > Leonardo Bras <leonardo@linux.ibm.com> wrote:
> > > If IPv6 is disabled on boot (ipv6.disable=1), but nft_fib_inet ends up
> > > dealing with a IPv6 packet, it causes a kernel panic in
> > > fib6_node_lookup_1(), crashing in bad_page_fault.
> > > 
> > > The panic is caused by trying to deference a very low address (0x38
> > > in ppc64le), due to ipv6.fib6_main_tbl = NULL.
> > > BUG: Kernel NULL pointer dereference at 0x00000038
> > > 
> > > The kernel panic was reproduced in a host that disabled IPv6 on boot and
> > > have to process guest packets (coming from a bridge) using it's ip6tables.
> > > 
> > > Terminate rule evaluation when packet protocol is IPv6 but the ipv6 module
> > > is not loaded.
> > > 
> > > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> > 
> > Acked-by: Florian Westphal <fw@strlen.de>
> > 
> 
> Hello Pablo,
> 
> Any trouble with this patch? 
> I could see the other* one got applied, but not this one.
> *(The other did not get acked, so i released it alone as v5)
> 
> Is there any fix I need to do in this one?

Hm, I see, so this one:

https://patchwork.ozlabs.org/patch/1156100/

is not enough?

I was expecting we could find a way to handle this from br_netfilter
alone itself.

Thanks.

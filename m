Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 744F8A4369
	for <lists.bridge@lfdr.de>; Sat, 31 Aug 2019 10:44:49 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DEED165B2;
	Sat, 31 Aug 2019 08:44:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 930676599
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 08:43:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39CFB6CE
	for <bridge@lists.linux-foundation.org>;
	Sat, 31 Aug 2019 08:43:18 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1i3yyZ-0000iW-BO; Sat, 31 Aug 2019 10:43:15 +0200
Date: Sat, 31 Aug 2019 10:43:15 +0200
From: Florian Westphal <fw@strlen.de>
To: Leonardo Bras <leonardo@linux.ibm.com>
Message-ID: <20190831084315.GU20113@breakpoint.cc>
References: <20190830181354.26279-1-leonardo@linux.ibm.com>
	<20190830181354.26279-3-leonardo@linux.ibm.com>
	<20190830205541.GR20113@breakpoint.cc>
	<2ba876f9ad6597e640df68f09659dce3c4b5ce03.camel@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ba876f9ad6597e640df68f09659dce3c4b5ce03.camel@linux.ibm.com>
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
> > There are two solutions:
> > 1. The above patch, but use NF_ACCEPT instead
> > 2. keep the DROP, but move it below the call_ip6tables test,
> >    so that users can tweak call-ip6tables to accept packets.
> 
> Q: Does 2 mean that it will only be dropped if bridge intents to use
> host's ip6tables? Else, it will be accepted by previous if?

Yes, thats the idea: Let users decide if ipv6.disable or call-ip6tables
is more important to them.

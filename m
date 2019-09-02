Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BDABDA5D7D
	for <lists.bridge@lfdr.de>; Mon,  2 Sep 2019 23:20:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 65586CC8;
	Mon,  2 Sep 2019 21:20:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 312E0CB0
	for <bridge@lists.linux-foundation.org>;
	Mon,  2 Sep 2019 21:20:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (correo.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6AAB5D3
	for <bridge@lists.linux-foundation.org>;
	Mon,  2 Sep 2019 21:20:13 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 05DE2172C86
	for <bridge@lists.linux-foundation.org>;
	Mon,  2 Sep 2019 23:20:10 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E7B97B8019
	for <bridge@lists.linux-foundation.org>;
	Mon,  2 Sep 2019 23:20:09 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id DCD43B7FFE; Mon,  2 Sep 2019 23:20:09 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D7A50D2B1F;
	Mon,  2 Sep 2019 23:20:07 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Mon, 02 Sep 2019 23:20:07 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id A7AB742EF4E0;
	Mon,  2 Sep 2019 23:20:07 +0200 (CEST)
Date: Mon, 2 Sep 2019 23:20:08 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Leonardo Bras <leonardo@linux.ibm.com>
Message-ID: <20190902212008.gy4ejl4bj5fhdqfm@salvia>
References: <20190831044032.31931-1-leonardo@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190831044032.31931-1-leonardo@linux.ibm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
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

On Sat, Aug 31, 2019 at 01:40:33AM -0300, Leonardo Bras wrote:
> A kernel panic can happen if a host has disabled IPv6 on boot and have to
> process guest packets (coming from a bridge) using it's ip6tables.
> 
> IPv6 packets need to be dropped if the IPv6 module is not loaded, and the
> host ip6tables will be used.

Applied, thanks.

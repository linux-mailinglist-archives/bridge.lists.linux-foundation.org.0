Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFA76F4D8
	for <lists.bridge@lfdr.de>; Sun, 21 Jul 2019 21:00:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 84022A7A;
	Sun, 21 Jul 2019 19:00:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 781AF504
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 19:00:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1488FE6
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 18:59:55 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 7623BC330C
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 20:59:50 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 674DA11510D
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 20:59:50 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 45A2E115109; Sun, 21 Jul 2019 20:59:50 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D618CDA704;
	Sun, 21 Jul 2019 20:59:47 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Sun, 21 Jul 2019 20:59:47 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [31.4.214.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 8999F4265A2F;
	Sun, 21 Jul 2019 20:59:47 +0200 (CEST)
Date: Sun, 21 Jul 2019 20:59:45 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Wenwen Wang <wang6495@umn.edu>
Message-ID: <20190721185945.76vsrm6ruge64das@salvia>
References: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Wenwen Wang <wenwen@cs.uga.edu>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	"open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	"moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
	Florian Westphal <fw@strlen.de>, open list <linux-kernel@vger.kernel.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	"open list:NETFILTER" <coreteam@netfilter.org>,
	"open list:NETFILTER" <netfilter-devel@vger.kernel.org>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] netfilter: ebtables: compat: fix a memory leak
	bug
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

On Sat, Jul 20, 2019 at 07:22:45AM -0500, Wenwen Wang wrote:
> From: Wenwen Wang <wenwen@cs.uga.edu>
> 
> In compat_do_replace(), a temporary buffer is allocated through vmalloc()
> to hold entries copied from the user space. The buffer address is firstly
> saved to 'newinfo->entries', and later on assigned to 'entries_tmp'. Then
> the entries in this temporary buffer is copied to the internal kernel
> structure through compat_copy_entries(). If this copy process fails,
> compat_do_replace() should be terminated. However, the allocated temporary
> buffer is not freed on this path, leading to a memory leak.
> 
> To fix the bug, free the buffer before returning from compat_do_replace().

Applied, thanks.

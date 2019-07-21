Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FAD6F127
	for <lists.bridge@lfdr.de>; Sun, 21 Jul 2019 02:56:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6782AD07;
	Sun, 21 Jul 2019 00:56:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 52704CC8
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 00:56:08 +0000 (UTC)
X-Greylist: delayed 00:29:27 by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
	[193.142.43.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB5B4180
	for <bridge@lists.linux-foundation.org>;
	Sun, 21 Jul 2019 00:56:07 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.89)
	(envelope-from <fw@strlen.de>)
	id 1hozgF-0001k4-W7; Sun, 21 Jul 2019 02:26:24 +0200
Date: Sun, 21 Jul 2019 02:26:23 +0200
From: Florian Westphal <fw@strlen.de>
To: Wenwen Wang <wang6495@umn.edu>
Message-ID: <20190721002623.27wac36rkwa5v5lg@breakpoint.cc>
References: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563625366-3602-1-git-send-email-wang6495@umn.edu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Wenwen Wang <wenwen@cs.uga.edu>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	"open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	"moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
	Florian Westphal <fw@strlen.de>, open list <linux-kernel@vger.kernel.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	"open list:NETFILTER" <coreteam@netfilter.org>,
	"open list:NETFILTER" <netfilter-devel@vger.kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Pablo Neira Ayuso <pablo@netfilter.org>
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

Wenwen Wang <wang6495@umn.edu> wrote:
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
> 
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>

Reviewed-by: Florian Westphal <fw@strlen.de>

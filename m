Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F59A5A4EC2
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 16:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 346A3402BB;
	Mon, 29 Aug 2022 14:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 346A3402BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1P7Ur16fAbbv; Mon, 29 Aug 2022 14:03:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0C97F4032A;
	Mon, 29 Aug 2022 14:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C97F4032A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9ABBEC0078;
	Mon, 29 Aug 2022 14:03:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95684C002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 14:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6361540500
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 14:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6361540500
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fnnoYiUyyjel for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 14:03:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6647040393
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6647040393
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 14:03:27 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1oSfMG-0000t9-Ln; Mon, 29 Aug 2022 16:03:20 +0200
Date: Mon, 29 Aug 2022 16:03:20 +0200
From: Florian Westphal <fw@strlen.de>
To: john.p.donnelly@oracle.com
Message-ID: <20220829140320.GB27814@breakpoint.cc>
References: <20220820070331.48817-1-harshit.m.mogalapalli@oracle.com>
 <20220820173555.131326-1-fw@strlen.de>
 <93eca5ab-46ee-241a-b01c-a6131b28ba29@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93eca5ab-46ee-241a-b01c-a6131b28ba29@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: vegard.nossum@oracle.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, george.kennedy@oracle.com,
 syzkaller@googlegroups.com, netfilter-devel@vger.kernel.org,
 Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Subject: Re: [Bridge] [PATCH nf] netfilter: ebtables: reject blobs that
 don't provide all entry points
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

john.p.donnelly@oracle.com <john.p.donnelly@oracle.com> wrote:
> On 8/20/22 12:35 PM, Florian Westphal wrote:
> > For some reason ebtables reject blobs that provide entry points that are
> > not supported by the table.
> > 
> > What it should instead reject is the opposite, i.e. rulesets that
> > DO NOT provide an entry point that is supported by the table.
> > 
> > t->valid_hooks is the bitmask of hooks (input, forward ...) that will
> > see packets.  So, providing an entry point that is not support is
> > harmless (never called/used), but the reverse is NOT, this will cause
> > crash because the ebtables traverser doesn't expect a NULL blob for
> > a location its receiving packets for.
> > 
> > Instead of fixing all the individual checks, do what iptables is doing and
> > reject all blobs that doesn't provide the expected hooks.
> > 
> > Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> > Reported-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
> > Signed-off-by: Florian Westphal <fw@strlen.de>
> 
> Hi,
> 
>  Could you please add the panic stack mentioned above  and syzkaller
> reproducer ID to the commit text ?

I did not see a reproducer ID.  What ended up in the tree is this:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7997eff82828304b780dc0a39707e1946d6f1ebf

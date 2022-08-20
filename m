Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F1259AF05
	for <lists.bridge@lfdr.de>; Sat, 20 Aug 2022 18:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 367D383366;
	Sat, 20 Aug 2022 16:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 367D383366
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gQ6BCvC7W4VR; Sat, 20 Aug 2022 16:27:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C49D882A83;
	Sat, 20 Aug 2022 16:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C49D882A83
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6F134C007B;
	Sat, 20 Aug 2022 16:27:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9162C002D
 for <bridge@lists.linux-foundation.org>; Sat, 20 Aug 2022 16:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DD3A41765
 for <bridge@lists.linux-foundation.org>; Sat, 20 Aug 2022 16:27:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DD3A41765
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbrAFVfXZFus for <bridge@lists.linux-foundation.org>;
 Sat, 20 Aug 2022 16:27:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F64840977
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F64840977
 for <bridge@lists.linux-foundation.org>; Sat, 20 Aug 2022 16:27:15 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1oPRJJ-0006ky-Aj; Sat, 20 Aug 2022 18:26:57 +0200
Date: Sat, 20 Aug 2022 18:26:57 +0200
From: Florian Westphal <fw@strlen.de>
To: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Message-ID: <YwELUWJw1qTatIiI@strlen.de>
References: <20220820070331.48817-1-harshit.m.mogalapalli@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820070331.48817-1-harshit.m.mogalapalli@oracle.com>
Cc: john.p.donnelly@oracle.com, vegard.nossum@oracle.com,
 coreteam@netfilter.org, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 george.kennedy@oracle.com, Eric Dumazet <edumazet@google.com>,
 syzkaller@googlegroups.com, netfilter-devel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH] netfilter: ebtables: fix a NULL pointer
 dereference in ebt_do_table()
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

Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com> wrote:
> In ebt_do_table() function dereferencing 'private->hook_entry[hook]'
> can lead to NULL pointer dereference. So add a check to prevent that.

This looks incorrect, i.e. paperimg over the problem.

If hook_entry[hook] is NULL, how did this make it to the eval loop?

I guess ebtables lacks a sanity check on incoming ruleset?

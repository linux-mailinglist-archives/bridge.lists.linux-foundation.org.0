Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5944CFE34
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 13:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8994C60E4E;
	Mon,  7 Mar 2022 12:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCf8N6lgk2-Q; Mon,  7 Mar 2022 12:23:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3DF3860E4B;
	Mon,  7 Mar 2022 12:23:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08DFBC0073;
	Mon,  7 Mar 2022 12:23:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BCF2C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 12:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 468DE402CE
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 12:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPY_Yowshg_K for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 12:23:30 +0000 (UTC)
X-Greylist: delayed 00:39:43 by SQLgrey-1.8.0
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73FAC401FE
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 12:23:30 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1nRBm4-0006DZ-WB; Mon, 07 Mar 2022 12:43:37 +0100
Date: Mon, 7 Mar 2022 12:43:36 +0100
From: Florian Westphal <fw@strlen.de>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <20220307114336.GA21350@breakpoint.cc>
References: <20220307004149.25171-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220307004149.25171-1-jiapeng.chong@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, fw@strlen.de, linux-kernel@vger.kernel.org,
 kadlec@netfilter.org, Abaci Robot <abaci@linux.alibaba.com>,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH] netfilter: bridge: clean up some inconsistent
	indenting
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

Jiapeng Chong <jiapeng.chong@linux.alibaba.com> wrote:
> Eliminate the follow smatch warning:
> 
> net/bridge/netfilter/nf_conntrack_bridge.c:385 nf_ct_bridge_confirm()
> warn: inconsistent indenting.

Applied to nf-next, thanks.
